unit ufrmCERTIFICADOconfig;

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
  ufrmDefaultCadastro,
  Data.DB,
  ACBrBase,
  ACBrEnterTab,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvStatusBar,
  JvComCtrls,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvDBControls,
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  Vcl.DBCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvDBCheckBox,
  ACBrDFe,
  ACBrNFe;

type
  TDocModelo = (mMDFe, mCTeOS, mCTe, mNFe);

  TfrmCERTIFICADOconfig = class(TfrmDefaultCadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    CERTIFICADO_NUMERO: TJvDBMaskEdit;
    CERTIFICADO_SENHA: TJvDBMaskEdit;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    WS_UF_DESTINO: TJvDBComboBox;
    ID_TIPO_AMBIENTE: TDBRadioGroup;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    WS_PROXY_HOST: TJvDBMaskEdit;
    WS_PROXY_PORTA: TJvDBMaskEdit;
    WS_PROXY_USUARIO: TJvDBMaskEdit;
    WS_PROXY_SENHA: TJvDBMaskEdit;
    lSSLLib1: TLabel;
    ID_SSL_TYPE: TJvDBComboBox;
    ID_FORMA_EMISSAO: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    MANTER_ARQUIVOS_TEMPORARIOS: TJvDBCheckBox;
    TabSheet2: TTabSheet;
    EMAIL_ENVIAR: TJvDBCheckBox;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EMAIL_SERVIDOR: TJvDBMaskEdit;
    EMAIL_USUARIO: TJvDBMaskEdit;
    EMAIL_SENHA: TJvDBMaskEdit;
    EMAIL_PORTA: TJvDBMaskEdit;
    EMAIL_SENHA_SEGURA: TJvDBCheckBox;
    TIME_ZONE_MODO: TDBRadioGroup;
    Label3: TLabel;
    TIMEZONE_MANUAL: TJvDBComboBox;
    ACBrNFe1: TACBrNFe;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    LOGOMARCA: TJvDBMaskEdit;
    OpenDialog: TOpenDialog;
    CAMPOS_FAT_OBRIGATORIO: TJvDBCheckBox;
    EMAIL_SENHA_TLS: TJvDBCheckBox;
    procedure sbtnGetCertClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EMAIL_ENVIARChange(Sender: TObject);
    procedure TIME_ZONE_MODOChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FDocModelo: TDocModelo;
  public
    class procedure showConfig(ADocModelo: TDocModelo);
  end;

var
  frmCERTIFICADOconfig: TfrmCERTIFICADOconfig;

implementation

uses
  ufrmDefault,
  udtmDefault,
  ACBrDFeSSL;

{$R *.dfm}

procedure TfrmCERTIFICADOconfig.EMAIL_ENVIARChange(Sender: TObject);
begin
  EMAIL_SENHA.Enabled        := EMAIL_ENVIAR.Checked;
  EMAIL_PORTA.Enabled        := EMAIL_ENVIAR.Checked;
  EMAIL_USUARIO.Enabled      := EMAIL_ENVIAR.Checked;
  EMAIL_SERVIDOR.Enabled     := EMAIL_ENVIAR.Checked;
  EMAIL_SENHA_SEGURA.Enabled := EMAIL_ENVIAR.Checked;
end;

procedure TfrmCERTIFICADOconfig.FormShow(Sender: TObject);
begin
    //inherited;

  TFDQuery(dtsDefault.DataSet).Close;
  case FDocModelo of
    mCTe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 57;
    mCTeOS:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 67;
    mMDFe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 58;
    mNFe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 55;
  end;
  TFDQuery(dtsDefault.DataSet).Prepare;
  TFDQuery(dtsDefault.DataSet).Open;

  if TFDQuery(dtsDefault.DataSet).IsEmpty then
  begin
    TipoOperacao := TIncluir;
    TFDQuery(dtsDefault.DataSet).Append;

    case FDocModelo of
      mCTe:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 57;
      mCTeOS:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 67;
      mMDFe:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 58;
      mNFe:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 55;
    end;
  end
  else
    TipoOperacao := TEditar;

  EMAIL_ENVIARChange(Sender);
end;

procedure TfrmCERTIFICADOconfig.sbtnGetCertClick(Sender: TObject);
var
  ACBrDFe: TACBrNFe;
begin
  ACBrDFe := TACBrNFe.Create(Nil);
  try
    ACBrDFe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
    ACBrDFe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
    ACBrDFe.Configuracoes.Geral.SSLLib        := libWinCrypt;
    ACBrDFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;

    if dtsDefault.DataSet.State in [ dsBrowse ] then
      dtsDefault.DataSet.Edit;

    dtsDefault.DataSet.FieldByName('CERTIFICADO_NUMERO').AsString := ACBrDFe.SSL.SelecionarCertificado;
  finally
    FreeAndNil(ACBrDFe);
  end;
end;

class procedure TfrmCERTIFICADOconfig.showConfig(ADocModelo: TDocModelo);
begin
  frmCERTIFICADOconfig := TfrmCERTIFICADOconfig.Create(Nil);
  try
    frmCERTIFICADOconfig.FDocModelo := ADocModelo;
    frmCERTIFICADOconfig.ShowModal;
  finally
    FreeAndNil(frmCERTIFICADOconfig);
  end;
end;

procedure TfrmCERTIFICADOconfig.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    if dtsDefault.DataSet.State in [ dsBrowse ] then
      dtsDefault.DataSet.Edit;

    dtsDefault.DataSet.FieldByName('LOGOMARCA').AsAnsiString := AnsiString(OpenDialog.FileName);
  end;
end;

procedure TfrmCERTIFICADOconfig.TIME_ZONE_MODOChange(Sender: TObject);
begin
  TIMEZONE_MANUAL.Enabled := TIME_ZONE_MODO.ItemIndex = 2;
end;

end.
