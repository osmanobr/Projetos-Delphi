unit ufrmBACKUP;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrmDefaultClean,
  ACBrBase,
  ACBrEnterTab,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvMaskEdit,
  JvDBControls,
  Vcl.StdCtrls,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvExExtCtrls,
  JvImage,
  FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBWrapper,
  FireDAC.Phys,
  FireDAC.Phys.IBBase,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvDateTimePicker,
  JvDBDateTimePicker,
  dxGDIPlusClasses;

type
  TfrmBACKUP = class(TfrmDefaultClean)
    tabCONTROLE: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    dtstabCONTROLE: TDataSource;
    FDIBBackup1: TFDIBBackup;
    OpenDialog: TOpenDialog;
    BACKUP_DATA: TJvDBDateTimePicker;
    tabCONTROLEID_CONTROLE: TIntegerField;
    tabCONTROLEBACKUP_DATA: TSQLTimeStampField;
    JvImage1: TJvImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
  private
    vArquivo: TextFile;
    vErros  : Integer;
    procedure Status(fTxt: String);
    procedure Form1Progress(ASender: TFDPhysDriverService; const AMessage: String);
  public
      { Public declarations }
  end;

var
  frmBACKUP: TfrmBACKUP;

implementation

uses
  udtmDefault,
  uclassCONFIGini;

{$R *.dfm}

procedure TfrmBACKUP.btnConfirmarClick(Sender: TObject);
var
  vArquivoBak, vArquivoLog: String;

  Server, Server_Name, Server_Path, Server_Porta, Server_Protocolo: String;
begin
    //parametros da conexao com o banco
  Server_Protocolo := 'TCP/IP';
  Server_Porta     := oConfigINI.Conexao.Server_Port;

  Server      := oConfigINI.Conexao.Server;
  Server_Name := oConfigINI.Conexao.Server;
  Server_Path := oConfigINI.Conexao.LocalBanco;

    //seta banco local
  if Server = 'LOCAL' then
  begin
    Server           := EmptyStr;
    Server_Protocolo := 'LOCAL';
    Server_Name      := '127.0.0.1';
    Server_Path      := ExtractfilePath(Application.ExeName) + 'bd.fdb';
  end;

    //seta nome do arquivo de backup
  vArquivoBak         := FormatDateTime('"WRK_"YYYYMMDD', Date);
  vArquivoLog         := FormatDateTime('"WRK_"YYYYMMDD', Date);
  OpenDialog.FileName := vArquivoBak;

  try
    if OpenDialog.Execute then
    begin
      vArquivoBak := OpenDialog.FileName;

      if FileExists(vArquivoBak) then
      begin
        if Application.MessageBox('Arquivo já existe, deseja deleta-lo ?', 'Backup', MB_YESNO + MB_ICONQUESTION) = ID_NO then
          Exit;

        if not DeleteFile(vArquivoBak) then
        begin
          raise EFilerError.Create('Erro ao excluir o arquivo zip já existente:' + sLineBreak + IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError));
        end;
      end;
      vArquivoLog := ExtractfilePath(OpenDialog.FileName) + vArquivoLog + '.Log';

      AssignFile(vArquivo, vArquivoLog);
      Rewrite(vArquivo);

      Status('Iniciando backup.');
      Status('Iniciando backup - Excluindo arquivo : ' + vArquivoBak);

      Application.ProcessMessages;

      vErros := 0;

      FDIBBackup1.DriverLink := dtmDefault.fLink;
      FDIBBackup1.UserName   := 'sysdba';
      FDIBBackup1.Password   := 'masterkey';
      FDIBBackup1.Host       := Server_Name;
      FDIBBackup1.Protocol   := ipTCPIP;
      FDIBBackup1.Verbose    := True;
      FDIBBackup1.OnProgress := Form1Progress;
      FDIBBackup1.Database   := Server_Path;
      FDIBBackup1.BackupFiles.Add(vArquivoBak);
      FDIBBackup1.Backup;

      Status('Backup finalizado.' + vArquivoBak);

      dtmDefault.cnx_BD.ExecSQL(Format('UPDATE OR INSERT INTO CONTROLE (ID_CONTROLE, BACKUP_DATA ) '#13 + '                        VALUES (1, CURRENT_TIMESTAMP     ) '#13 +
            '                      MATCHING (ID_CONTROLE);              ', [ 1, QuotedStr('Admin') ]));

      if vErros > 0 then
        raise Exception.Create('O Backup foi efetuado com erros, favor efetuar novamente.');

      CloseFile(vArquivo);
      Application.MessageBox(PChar('Backup efetuado com sucesso!' + sLineBreak + sLineBreak + 'Local: ' + vArquivoBak), 'Aviso!', MB_ICONINFORMATION);
      FFecharOK := True;
      Close;

      dtmDefault.cnx_BD.CommitRetaining;
    end;
  except
    on e: Exception do
    begin
      Application.MessageBox(PChar('Ocorreu erro ao efetuar o Backup' + #13 + e.Message), 'Backup', MB_ICONWARNING);

      CloseFile(vArquivo);
    end;
  end;
end;

procedure TfrmBACKUP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tabCONTROLE.Close;

  inherited;
end;

procedure TfrmBACKUP.FormCreate(Sender: TObject);
begin
  inherited;

  tabCONTROLE.Open;
end;

procedure TfrmBACKUP.Status(fTxt: String);
begin
  Self.Caption := Trim(fTxt);
end;

procedure TfrmBACKUP.Form1Progress(ASender: TFDPhysDriverService; const AMessage: String);
begin
  WriteLn(vArquivo, AMessage);

  if Pos('ERRO', UpperCase(AMessage)) > 0 then
    vErros := vErros + 1;

  Self.Caption := 'Processando...: ' + AMessage;
  Self.Update;

  Application.ProcessMessages;
end;

end.
