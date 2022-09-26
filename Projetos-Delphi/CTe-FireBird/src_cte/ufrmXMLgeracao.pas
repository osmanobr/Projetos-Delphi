unit ufrmXMLgeracao;

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
  Vcl.StdCtrls,
  dxGDIPlusClasses,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,

  pcnNFe,
  pcnConversao,
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
  Vcl.ComCtrls,
  RLFilters,
  RLPDFFilter,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  ACBrDFe,
  ACBrNFe,
  ACBrCTeDACTEClass,
  ACBrCTeDACTeRLClass,
  ACBrCTe;

type
  TfrmXMLgeracao = class(TfrmDefaultClean)
    chkCONFIRMACAO: TCheckBox;
    Label11: TLabel;
    edtEMAILdestinatario: TJvMaskEdit;
    edtDataInicial: TJvDateEdit;
    edtDataFinal: TJvDateEdit;
    Label1: TLabel;
    qryXML_CTE: TFDQuery;
    OpenDialog: TOpenDialog;
    RLPDFFilter1: TRLPDFFilter;
    chkAnexarPDF: TCheckBox;
    ACBrCTe: TACBrCTe;
    ACBrCTeDACTeRL: TACBrCTeDACTeRL;
    qryXML_CTEXML_STRING: TMemoField;
    qryXML_CTEXML_CHAVE: TStringField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FEMAIL            : String;
    FPathArquivoZipTMP: string;
    FPathDirTMP       : string;
    FPathArquivoZip   : string;
    FPathDirTMP_NFE   : string;
    procedure WriteXML_NFEtoTMP(PathSalvar: String);
  public
    class procedure Gerar(AEMAIL: String);
    property PathArquivoZipTMP: string read FPathArquivoZipTMP write FPathArquivoZipTMP;
    property PathArquivoZip: string Read FPathArquivoZip Write FPathArquivoZip;
    property PathDirTMP: string read FPathDirTMP write FPathDirTMP;
    property PathDirTMP_NFE: string read FPathDirTMP_NFE write FPathDirTMP_NFE;
  end;

var
  frmXMLgeracao: TfrmXMLgeracao;

implementation

{$R *.dfm}

uses
  udtmCTe,
  uclassCTE,
  ufrmMENSAGEMespera,
  ufuncoes,
  udtmDefault,
  ACBrUtil,
  uclassEMPRESA,
  System.Zip,
  System.DateUtils,
  uclassCONFIGini;

function GetTempDir: TFileName;
var
  Buffer: array [ 0 .. 255 ] of char;
begin
  Buffer := #0;
  GetTempPath(256, Buffer);

  Result := Buffer;
end;

procedure TfrmXMLgeracao.WriteXML_NFEtoTMP(PathSalvar: String);
var
  PathArquivo: String;
  Chave      : String;
  XMLStr     : String;
begin
  qryXML_CTE.First;
  try
    while not qryXML_CTE.Eof do
    begin
      XMLStr      := qryXML_CTEXML_STRING.AsString;
      Chave       := qryXML_CTEXML_CHAVE.AsString;
      PathArquivo := IncludeTrailingPathDelimiter(PathSalvar) + Chave + '-procCTe.xml';
        // salvar para o arquivo
      WriteToTXT(PathArquivo, ansistring(XMLStr), False);

      if chkAnexarPDF.Checked then
      begin
        ACBrCTe.Conhecimentos.Clear;
        if ACBrCTe.Conhecimentos.LoadFromString(XMLStr, False) then
        begin
          ACBrCTe.DACTE.PathPDF := PathSalvar;
          ACBrCTe.Conhecimentos.ImprimirPDF;
        end;
      end;

      qryXML_CTE.Next;
    end;

    qryXML_CTE.Close;
  except
    on E: Exception do
    begin
      qryXML_CTE.Close;

      Application.MessageBox(PWideChar('Ocorreu o seguinte erro ao tentar salvar as conhecimentos:' + sLineBreak + E.Message), 'Erro', MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TfrmXMLgeracao.btnConfirmarClick(Sender: TObject);
var
  CopiaEmail     : TStringList;
  NomeEmitente   : String;
  AssuntoMensagem: String;
  CorpoMensagem  : TStringList;

  ZipFile: TZipFile;
begin

  if edtDataFinal.Date < edtDataInicial.Date then
    raise Exception.Create('Atenção!!! O Periodo foi informado icorretamente, verifique e tente novamente!');

  if Trim(edtEMAILdestinatario.Text) = EmptyStr then
  begin
    edtEMAILdestinatario.SetFocus;
    raise Exception.Create('Destinatário da mensagem não informado.');
  end;

  with qryXML_CTE do
  begin
    Close;
    Params[ 0 ].AsDate := edtDataInicial.Date;
    Params[ 1 ].AsDate := edtDataFinal.Date;
    Open;
    FetchAll;
  end;

  if qryXML_CTE.IsEmpty then
    raise Exception.Create('Aviso!!! Registros nao localizados pra o Periodo informado, verifique e tente novamente!');

  try
    try
      PathDirTMP     := GetTempDir + FormatDateTime('"VBS_DIR_"YYMMDDHHMMSS"', Now);
      PathDirTMP_NFE := PathDirTMP + '\CTE';

      if DirectoryExists(PathDirTMP_NFE) then
      begin
        DeleteFiles(PathDirTMP_NFE + '\*.*');
        RmDir(PathDirTMP_NFE);
      end;

      if not DirectoryExists(PathDirTMP) then
        MkDir(PathDirTMP);

      if not DirectoryExists(PathDirTMP_NFE) then
        MkDir(PathDirTMP_NFE);

      WriteXML_NFEtoTMP(PathDirTMP_NFE);

      OpenDialog.FileName := oEmpresa.CNPJ + FormatDateTime('"_XML_"YYYYMMDD"_', edtDataInicial.Date) + FormatDateTime('YYYYMMDD', edtDataFinal.Date);
      if OpenDialog.Execute then
      begin
        PathArquivoZip := OpenDialog.FileName;

        if FileExists(PathArquivoZip) then
        begin
          if not DeleteFile(PathArquivoZip) then
          begin
            raise EFilerError.Create('Erro ao excluir o arquivo já existente:' + sLineBreak + IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError));
          end;
        end;

        PathArquivoZipTMP := GetTempDir + FormatDateTime('"VBS"YYYYMMDD".tmp"', Date);
        if FileExists(PathArquivoZipTMP) then
        begin
          if not DeleteFile(PathArquivoZipTMP) then
          begin
            raise EFilerError.Create('Erro ao excluir arquivo temporário compactado:' + sLineBreak + IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError));
          end;
        end;

          // zipar o arquivo
        ZipFile := TZipFile.Create;
        try
          ZipFile.ZipDirectoryContents(PathArquivoZipTMP, PathDirTMP);
        finally
          ZipFile.Close;
          ZipFile.Free;
        end;

        if not CopyFile(PWideChar(PathArquivoZipTMP), PWideChar(PathArquivoZip), False) then
        begin
          raise EFilerError.Create('Erro ao mover o arquivo temporário de backup:' + sLineBreak + IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError));
        end;

        Application.ProcessMessages;

        if FileExists(PathArquivoZipTMP) then
          DeleteFile(PathArquivoZipTMP);

        if DirectoryExists(PathDirTMP_NFE) then
        begin
          DeleteFiles(PathDirTMP_NFE + '\*.*');
          RmDir(PathDirTMP_NFE);
          RmDir(PathDirTMP);
        end;

        Application.ProcessMessages;
      end;
    finally
    end;
  except
    on E: Exception do
    begin
      Application.MessageBox(PWideChar('Ocorreu o seguinte erro ao efetuar a geração dos arquivos:' + sLineBreak + E.Message), 'Erro', MB_ICONERROR + MB_OK)
    end;
  end;

    //envio da mensagem
  CopiaEmail := TStringList.Create;
  try
      // configura a confirmaçã de leitura como o usuário achar melhor
    dtmCTe.ACBrMail.ReadingConfirmation := chkCONFIRMACAO.Checked;
    try
      CorpoMensagem := TStringList.Create;
      try
        NomeEmitente    := oEmpresa.RAZAO_SOCIAL;
        AssuntoMensagem := 'Nota Fiscal eletrônica: ' + NomeEmitente;

        CorpoMensagem := TStringList.Create;
        CorpoMensagem.Clear;
        CorpoMensagem.Add('Prezados,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('O Anexo contem os arquivos XML dos documentos emitidos no periodo de: ' + FormatDateTime('DD/MM/YYY', edtDataInicial.Date) + ' - ' +
            FormatDateTime('DD/MM/YYY', edtDataFinal.Date));
        CorpoMensagem.Add('Emitente: ' + oEmpresa.RAZAO_SOCIAL);
        CorpoMensagem.Add('CNPJ: ' + FormatarCNAE(oEmpresa.CNPJ));
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Atenciosamente,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(oEmpresa.RAZAO_SOCIAL);
        CorpoMensagem.Add(FormatarFone(oEmpresa.TELEFONE));
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(StringOfChar('-', 30));
        CorpoMensagem.Add('Enviado automaticamente por: Nome do meu Sistema!');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');

          // envio do email
          //        dtmNFe.ACBrMail.Clear;
        with dtmCTe.ACBrMail do
        begin
          dtmCTe.qryCERTIFICADO_CONFIG.Close;
          dtmCTe.qryCERTIFICADO_CONFIG.Open;
          dtmCTe.qryCERTIFICADO_CONFIG.FetchAll;

          if dtmCTe.qryCERTIFICADO_CONFIG.IsEmpty then
            raise Exception.Create('Servidor de E-Mail não configurado, favor conferir.');
          try
            Clear;
            From     := oEmpresa.EMAIL.Trim;
            FromName := oEmpresa.RAZAO_SOCIAL;
            Host     := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_SERVIDOR.AsString.Trim;
            Username := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_USUARIO.AsString.Trim;
            Password := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_SENHA.AsString.Trim;
            Port     := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_PORTA.AsString.Trim;
            SetTLS   := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS.AsString.Trim = 'S';
            SetSSL   := dtmCTe.qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA.AsString.Trim = 'S';
            AddAddress(edtEMAILdestinatario.Text, EmptyStr);
          finally
            dtmCTe.qryCERTIFICADO_CONFIG.Close;
          end;
        end;

        dtmCTe.ACBrMail.IsHTML  := True;
        dtmCTe.ACBrMail.Subject := 'Arquivos XML.';

        dtmCTe.ACBrMail.AltBody.Assign(CorpoMensagem);
        dtmCTe.ACBrMail.AddAttachment(PathArquivoZip);
        dtmCTe.ACBrMail.Send(False);

        FecharEspera;
        ShowMessage('Enviado com sucesso!');
      finally
        FecharEspera;
        CorpoMensagem.Free;
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar('Ocorreu o seguinte erro ao enviar a nota eletrônica:' + sLineBreak + sLineBreak + E.Message), 'Erro', MB_ICONERROR + MB_OK);
      end;
    end;
  finally
    CopiaEmail.Free;
  end;
end;

class procedure TfrmXMLgeracao.Gerar(AEMAIL: String);
begin
  frmXMLgeracao := TfrmXMLgeracao.Create(Nil);
  try
    frmXMLgeracao.FEMAIL := AEMAIL;
    frmXMLgeracao.ShowModal;
  finally
    FreeAndNil(frmXMLgeracao);
  end;
end;

procedure TfrmXMLgeracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oConfigINI.EMAILcontabilidade := edtEMAILdestinatario.Text;

  inherited;
end;

procedure TfrmXMLgeracao.FormCreate(Sender: TObject);
begin
  inherited;
  edtDataInicial.Date := StartOfTheMonth(Date - 30);
  edtDataFinal.Date   := EndOfTheMonth(Date - 30);

  edtEMAILdestinatario.Text := FEMAIL;
end;

procedure TfrmXMLgeracao.FormShow(Sender: TObject);
begin
  inherited;

  edtEMAILdestinatario.Text := oConfigINI.EMAILcontabilidade;
end;

end.
