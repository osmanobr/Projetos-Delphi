unit ufrmEMPRESAScadastro;

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
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvComCtrls,
  JvStatusBar,
  JvDBLookup,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  JvDBCheckBox,
  JvToolEdit,
  JvDBControls,
  Vcl.Mask,
  JvExMask,
  JvMaskEdit,
  JvExExtCtrls,
  JvShape,
  JvLabel,
  JvgGroupBox,
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
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  JvSpin,
  JvDBSpinEdit,
  JvBaseEdits;

type
  TfrmEMPRESAScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvShape1: TJvShape;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    CNPJ: TJvDBMaskEdit;
    DATA_ABERTURA: TJvDBDateEdit;
    IE_ESTADUAL: TJvDBMaskEdit;
    IE_MUNICIPAL: TJvDBMaskEdit;
    RAZAOSOCIAL: TJvDBMaskEdit;
    CELULAR: TJvDBMaskEdit;
    CEP: TJvDBMaskEdit;
    ENDERECO: TJvDBMaskEdit;
    COMPLEMENTO: TJvDBMaskEdit;
    NUMERO: TJvDBMaskEdit;
    BAIRRO: TJvDBMaskEdit;
    ID_CIDADES_UF: TJvDBLookupCombo;
    ID_CIDADES_IBGE: TJvDBLookupCombo;
    TELEFONE: TJvDBMaskEdit;
    cnsCIDADES: TFDQuery;
    cnsCIDADESID_CIDADES_IBGE: TIntegerField;
    cnsCIDADESID_CIDADES_UF: TStringField;
    cnsCIDADESID_PAIS: TIntegerField;
    cnsCIDADESDESCRICAO: TStringField;
    dtscnsCIDADES: TDataSource;
    JvLabel6: TJvLabel;
    IE_ESTADUAL_ST: TJvDBMaskEdit;
    JvLabel14: TJvLabel;
    NOMEFANTASIA: TJvDBMaskEdit;
    JvLabel15: TJvLabel;
    RESPONSAVEL: TJvDBMaskEdit;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    ID_REGIME: TJvDBComboBox;
    ID_INDICADOR_ATIVIDADE: TJvDBComboBox;
    JvShape2: TJvShape;
    JvLabel18: TJvLabel;
    CNAE_FISCAL: TJvDBMaskEdit;
    TabSheet1: TTabSheet;
    JvgGroupBox2: TJvgGroupBox;
    JvLabel19: TJvLabel;
    MDFE_ID_SERIE: TJvDBSpinEdit;
    TabSheet2: TTabSheet;
    JvgGroupBox3: TJvgGroupBox;
    JvLabel20: TJvLabel;
    CTEOS_ID_SERIE: TJvDBSpinEdit;
    TabSheet3: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    JvLabel21: TJvLabel;
    CTE_ID_SERIE: TJvDBSpinEdit;
    TabSheet4: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    JvLabel22: TJvLabel;
    JvLabel23: TJvLabel;
    SIMPLES_ALIQ_CREDITO: TJvDBCalcEdit;
    TabSheet5: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    JvDBSpinEdit1: TJvDBSpinEdit;
    NFSE_LCP116: TJvDBMaskEdit;
    JvLabel25: TJvLabel;
    NFSE_ID_SERIE: TJvDBSpinEdit;
    JvLabel26: TJvLabel;
    JvLabel27: TJvLabel;
    NFSE_PCISSQN: TJvDBCalcEdit;
    procedure ID_CIDADES_UFChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ID_REGIMEChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure showCidade;
  public
    procedure PosOnShow; override;
  end;

var
  frmEMPRESAScadastro: TfrmEMPRESAScadastro;

implementation

{$R *.dfm}

uses
  udtmDefault,
  ufrmMensagemEspera,
  ACBrUtil,
  ACBrValidador,
  uclassPESSOA;

procedure TfrmEMPRESAScadastro.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  if dtsDefault.DataSet.FieldByName('RAZAOSOCIAL').AsString.Trim.Length = 0 then
    raise Exception.Create('Razão Social não informada!');

  inherited;
end;

procedure TfrmEMPRESAScadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFDQuery(dtsDefault.DataSet).Close;

  inherited;
end;

procedure TfrmEMPRESAScadastro.FormShow(Sender: TObject);
begin
  inherited;

  ID_REGIMEChange(Sender);
end;

procedure TfrmEMPRESAScadastro.ID_CIDADES_UFChange(Sender: TObject);
begin
  if Assigned(dtsDefault.DataSet) then
    if dtsDefault.DataSet.State in [ dsEdit, dsInsert ] then
      showCidade;
end;

procedure TfrmEMPRESAScadastro.ID_REGIMEChange(Sender: TObject);
begin
  SIMPLES_ALIQ_CREDITO.Enabled := ID_REGIME.ItemIndex in [ 0, 1 ];
end;

procedure TfrmEMPRESAScadastro.PosOnShow;
begin
  inherited;

  showCidade;
end;

procedure TfrmEMPRESAScadastro.showCidade;
var
  vID_CIDADES_UF: String;
begin
  if Assigned(ID_CIDADES_UF) then
  begin
    vID_CIDADES_UF := ID_CIDADES_UF.Value;

    if vID_CIDADES_UF.Trim.Length = 2 then
    begin
      cnsCIDADES.Close;
      cnsCIDADES.Params[ 0 ].AsString := vID_CIDADES_UF;
      cnsCIDADES.Open;
    end;
  end;
end;

end.
