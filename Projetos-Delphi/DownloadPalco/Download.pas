unit Download;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdComponent, IdBaseComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, IdAntiFreezeBase, Vcl.IdAntiFreeze, dxGDIPlusClasses, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    btnBaixar: TButton;
    IdHTTP: TIdHTTP;
    IdAntiFreeze: TIdAntiFreeze;
    edtUrl: TEdit;
    pbProgresso: TProgressBar;
    Image1: TImage;
    lblStatus: TLabel;
    Image2: TImage;
    Memo: TMemo;
    ListBox: TListBox;
    EditHost: TEdit;
    EdtPath: TEdit;
    PopupMenu1: TPopupMenu;
    LocalizarMsicas1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Baixaressamsica1: TMenuItem;
    BaixarTodasasmsicas1: TMenuItem;
    N1: TMenuItem;
    PopupMenu3: TPopupMenu;
    CancelarDownload1: TMenuItem;
    Button1: TButton;
    procedure btnBaixarClick(Sender: TObject);
    procedure IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure ListBoxClick(Sender: TObject);
    procedure LocalizarMsicas1Click(Sender: TObject);
    procedure Baixaressamsica1Click(Sender: TObject);
    procedure CancelarDownload1Click(Sender: TObject);
    procedure BaixarTodasasmsicas1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function RetornaKiloBytes(ValorAtual: real): string;
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

function GetNameFileFromLink(Url: String): String;
var
   pos: ShortInt;
begin
   pos := LastDelimiter('/', Url);
   Result := Copy(url, pos + 1, MaxInt);
end;

function TfrmPrincipal.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
resultado: Real;
begin
resultado := ((ValorAtual * 100) / ValorMaximo);
Result    := FormatFloat('0%', resultado);
end;

function TfrmPrincipal.RetornaKiloBytes(ValorAtual: real): string;
var
resultado : real;
begin
resultado := ((ValorAtual / 1024) / 1024);
Result    := FormatFloat('0.000 KBs', resultado);
end;

procedure TFrmPrincipal.Baixaressamsica1Click(Sender: TObject);
begin
 EdtUrl.text := GetNameFileFromLink(ListBox.items[ListBox.ItemIndex]);
 BtnBaixar.Click;
end;

procedure TFrmPrincipal.BaixarTodasasmsicas1Click(Sender: TObject);
 var i:integer;
begin
  for I := 0 to ListBox.Count-1 do
    begin
       EdtUrl.Text :=  ListBox.items[i];
       btnBaixar.Click;
    end;
end;

procedure TFrmPrincipal.btnBaixarClick(Sender: TObject);
var
fileDownload : TFileStream;
arquivo : string;
begin

arquivo := GetNameFileFromLink(edtUrl.Text)  ;

begin
  fileDownload := TFileStream.Create((EdtPath.text+arquivo) + ExtractFileExt(edtUrl.Text), fmCreate);
  try
    pbprogresso.Visible := True;
    lblStatus.Visible   := True;
    btnBaixar.Enabled   := false;
    IdHTTP.Get(edtUrl.Text, fileDownload);
    finally
    FreeAndNil(fileDownload);
    end;
  end;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
Var
   Consulta: String;
   Resposta, Rescue: TStringStream;
   TSConsulta:Tstringlist;
begin
     Resposta   := TStringStream.Create('');
     Rescue     := TStringStream.Create('');
     TSConsulta := TStringList.Create;
     IdHTTP.Request.UserAgent:='Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV2';

     IdHTTP.Post('http://palcomp3.com.br/?', TSConsulta, Resposta);
     ShowMessage(TSConsulta.Text);
     //Memo1.Lines.Add(TSConsulta.Text);
     Memo.Lines.Add(Resposta.DataString);
     TSConsulta.Free;
     Resposta.Free;
     Rescue.Free;
end;

procedure TFrmPrincipal.CancelarDownload1Click(Sender: TObject);
begin
  IdHTTP.Disconnect;
end;

procedure TFrmPrincipal.IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pbprogresso.Position := AWorkCount;
  lblStatus.Caption    := 'Baixando ... ' + RetornaKiloBytes(AWorkCount);
  frmPrincipal.Caption := 'Download em ... ' + RetornaPorcentagem(pbprogresso.Max, AWorkCount);
end;

procedure TFrmPrincipal.IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  pbprogresso.Max := AWorkCountMax;
end;

procedure TFrmPrincipal.IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  pbprogresso.Position := 0;
  frmPrincipal.Caption := 'Finalizado ...';
  lblStatus.Caption    := 'Download Finalizado ...';
  btnBaixar.Enabled    := true;
end;

procedure TFrmPrincipal.ListBoxClick(Sender: TObject);
begin
  EdtUrl.Text :=  ListBox.items[ListBox.ItemIndex];
end;

procedure TFrmPrincipal.LocalizarMsicas1Click(Sender: TObject);
 var i:integer;
 linha, url: string;
begin
  ListBox.Clear;
  linha := '';
  url := '';

  for I := 0 to memo.Lines.Count -1 do
  begin
    linha := trim(memo.Lines[i]);
     if(copy(linha, 0,5)='<Key>')     then
       begin
         url := StringReplace(linha, '<key>', '',[rfReplaceAll, rfIgnoreCase]);
         url := StringReplace(url, '</key>', '',[rfReplaceAll, rfIgnoreCase]);
         if copy(url,(url.Length-2),3)='mp3' then
            ListBox.Items.Add(EditHost.text+url);
       end;
  end;


end;


end.
