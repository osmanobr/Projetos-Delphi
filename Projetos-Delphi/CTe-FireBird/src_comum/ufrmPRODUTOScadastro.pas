unit ufrmPRODUTOScadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.DBCtrls, JvDBImage,
  Vcl.StdCtrls, JvToolEdit, JvDBControls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, JvDBCheckBox, JvDBLookup, Vcl.Mask, JvExMask, JvMaskEdit,
  JvExExtCtrls, JvShape, JvLabel, JvgGroupBox, JvBaseEdits, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPRODUTOScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    lbRazaoSocial: TJvLabel;
    JvLabel14: TJvLabel;
    lbCNPJ: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel22: TJvLabel;
    JvLabel23: TJvLabel;
    JvLabel24: TJvLabel;
    JvLabel25: TJvLabel;
    JvLabel26: TJvLabel;
    JvLabel27: TJvLabel;
    JvLabel28: TJvLabel;
    DESCRICAO: TJvDBMaskEdit;
    EAN: TJvDBMaskEdit;
    EX_TIPI: TJvDBMaskEdit;
    EAN_TRIB: TJvDBMaskEdit;
    GENERO: TJvDBMaskEdit;
    NCM: TJvDBMaskEdit;
    CEST: TJvDBMaskEdit;
    UN_COM: TJvDBMaskEdit;
    UN_TRIB: TJvDBMaskEdit;
    QT_TRIB: TJvDBMaskEdit;
    VL_COM: TJvDBCalcEdit;
    VL_TRIB: TJvDBCalcEdit;
    JvgGroupBox2: TJvgGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    IPI_COD_ENQUADRAMENTO: TJvDBMaskEdit;
    IPI_CNPJ_PRODUTOR: TJvDBMaskEdit;
    JvgGroupBox3: TJvgGroupBox;
    Panel2: TPanel;
    dtstabPRODUTO: TDataSource;
    Label1: TLabel;
    dtsqryORIGEM: TDataSource;
    ORIGEM: TDBLookupComboBox;
    JvPageControl1: TJvPageControl;
    tabSIMPLES: TTabSheet;
    tabNORMAL: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    JvgGroupBox5: TJvgGroupBox;
    dtsqryCSOSN: TDataSource;
    Label4: TLabel;
    NORMAL_CST: TDBLookupComboBox;
    dtsqryCST: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    SIMPLES_CSOSN: TDBLookupComboBox;
    Panel3: TPanel;
    grpSIMPLESicmsst: TJvgGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SIMPLES_ST_RBASE: TJvDBCalcEdit;
    SIMPLES_ST_MVA: TJvDBCalcEdit;
    SIMPLES_ST_ALIQUOTA: TJvDBCalcEdit;
    grpSIMPLESicms: TJvgGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    SIMPLES_ICMS_RBASE: TJvDBCalcEdit;
    SIMPLES_ICMS_ALIQUOTA: TJvDBCalcEdit;
    grpNORMALicms: TJvgGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    NORMAL_ICMS_RBASE: TJvDBCalcEdit;
    NORMAL_ICMS_ALIQUOTA: TJvDBCalcEdit;
    grpNORMALicmsST: TJvgGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    NORMAL_ICMSST_RBASE: TJvDBCalcEdit;
    NORMAL_ICMSST_MVA: TJvDBCalcEdit;
    NORMAL_ICMSST_ALIQUOTA: TJvDBCalcEdit;
    dtsqryUF: TDataSource;
    qryUF: TFDQuery;
    qryUFID_CIDADES_UF: TStringField;
    qryUFCODIBGE: TIntegerField;
    qryUFDESCRICAO: TStringField;
    qryORIGEM: TFDQuery;
    qryORIGEMID_ORIGEM: TIntegerField;
    qryORIGEMDESCRICAO: TStringField;
    qryCST: TFDQuery;
    qryCSTID_CST: TStringField;
    qryCSTDESCRICAO: TStringField;
    qryCSOSN: TFDQuery;
    qryCSOSNID_CSOSN: TStringField;
    qryCSOSNDESCRICAO: TStringField;
    SIMPLES_ICMS_PBASE: TJvDBCalcEdit;
    SIMPLES_ST_PBASE: TJvDBCalcEdit;
    qryORIGEMcalcDESCRICAO: TStringField;
    qryCSOSNcalcDESCRICAO: TStringField;
    qryCSTcalcDESCRICAO: TStringField;
    Label2: TLabel;
    NORMAL_ICMS_PBASE: TJvDBCalcEdit;
    Label12: TLabel;
    NORMAL_ICMSST_PBASE: TJvDBCalcEdit;
    JvLabel4: TJvLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SIMPLES_CSOSNClick(Sender: TObject);
    procedure NORMAL_CSTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryORIGEMAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryORIGEMCalcFields(DataSet: TDataSet);
    procedure qryCSOSNCalcFields(DataSet: TDataSet);
    procedure qryCSTCalcFields(DataSet: TDataSet);
  private
  public
    { Public declarations }
  end;

var
  frmPRODUTOScadastro: TfrmPRODUTOScadastro;

implementation

{$R *.dfm}

uses
  udtmDefault, uclassPRODUTO, ACBrValidador, uclassEMPRESA;

procedure TfrmPRODUTOScadastro.btnConfirmarClick(Sender: TObject);
var
  vValidacao: String;
begin
  if pageDefault.Enabled then
    FocusControl(pageDefault);

  if dtsDefault.DataSet.State in [dsInsert] then
  begin
    dtsDefault.DataSet.FieldByName('ID_PRODUTO').AsInteger := oProduto.GetNewID;
    dtsDefault.DataSet.FieldByName('ID_CODIGO').AsInteger := oProduto.GetNewID_CODIGO;
  end;

  if dtsDefault.DataSet.FieldByName('ID_EMPRESA').AsString.Trim.Length = 0 then
    raise Exception.Create('ID da empresa não foi preenchida.');

  if dtsDefault.DataSet.FieldByName('ID_PRODUTO').AsString.Trim.Length = 0 then
    raise Exception.Create('ID do produto não informado.');

  if dtsDefault.DataSet.FieldByName('DESCRICAO').AsString.Trim.Length < 5 then
    raise Exception.Create('A descrição do produto tem menos que 5 caracteres, favor corrigir.');

  if dtsDefault.DataSet.FieldByName('NCM').AsString.Trim.Length = 0 then
    raise Exception.Create('NCM não foi preenchido.');

  if dtsDefault.DataSet.FieldByName('UN_COM').AsString.Trim.Length = 0 then
    raise Exception.Create('Unidade comercial não foi preenchida.');

  if dtsDefault.DataSet.FieldByName('UN_TRIB').AsString.Trim.Length = 0 then
    raise Exception.Create('Unidade tributável não foi preenchida.');

  if dtsDefault.DataSet.FieldByName('VL_COM').AsString.Trim.Length = 0 then
    raise Exception.Create('Valor comercial não foi preenchido.');

  if dtsDefault.DataSet.FieldByName('VL_TRIB').AsString.Trim.Length = 0 then
    raise Exception.Create('Valor tributado não foi preenchido.');

  if dtsDefault.DataSet.FieldByName('IPI_CNPJ_PRODUTOR').AsString.Trim.Length > 0 then
    vValidacao := ACBrValidador.ValidarCNPJ(dtsDefault.DataSet.FieldByName('IPI_CNPJ_PRODUTOR').AsString.Trim);

  if vValidacao.Trim.Length > 0 then
    raise Exception.Create(vValidacao.Trim);

  inherited;
end;

procedure TfrmPRODUTOScadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryORIGEM.Close;

  inherited;
end;

procedure TfrmPRODUTOScadastro.FormCreate(Sender: TObject);
begin
  inherited;

  qryORIGEM.Open;
end;

procedure TfrmPRODUTOScadastro.FormShow(Sender: TObject);
begin
  inherited;

  tabSIMPLES.TabVisible := oEmpresa.REGIME_TRIBUTARIO in [1,2];
  tabNORMAL.TabVisible := oEmpresa.REGIME_TRIBUTARIO in [3];

  case oEmpresa.REGIME_TRIBUTARIO  of
    1,2:
      begin
        SIMPLES_CSOSNClick(Sender);
      end;
      3:
      begin
        NORMAL_CSTClick(Sender);
      end;
  end;
end;

procedure TfrmPRODUTOScadastro.NORMAL_CSTClick(Sender: TObject);
begin
  grpNORMALicmsST.Visible := False;
  grpNORMALicms.Visible := False;

  NORMAL_ICMS_PBASE.Enabled := False;
  NORMAL_ICMS_RBASE.Enabled := False;
  NORMAL_ICMS_ALIQUOTA.Enabled := False;

  NORMAL_ICMSST_PBASE.Enabled := False;
  NORMAL_ICMSST_RBASE.Enabled := False;
  NORMAL_ICMSST_MVA.Enabled := False;
  NORMAL_ICMSST_ALIQUOTA.Enabled := False;

  if VarIsNull(NORMAL_CST.KeyValue) then
    exit;

  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
    begin
      dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMS_RBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMS_ALIQUOTA').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_PBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_RBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_MVA').Value := 0.00;
      dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_ALIQUOTA').Value := 0.00;
    end;
  end;

  case StrToIntDef(NORMAL_CST.KeyValue,999) of
    0:
    begin
      grpNORMALicms.Visible := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100;
      end;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;
    end;
    10:
    begin
      grpNORMALicms.Visible := True;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;

      grpNORMALicmsST.Visible := True;
      NORMAL_ICMSST_RBASE.Enabled := True;
      NORMAL_ICMSST_MVA.Enabled := True;
      NORMAL_ICMSST_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
        begin
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100.00;
          dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_PBASE').Value := 100.00;
        end;
      end;
    end;
    20:
    begin
      grpNORMALicms.Visible := True;
      NORMAL_ICMS_RBASE.Enabled := True;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100.00;
       end;
    end;
    30:
    begin
      grpNORMALicmsST.Visible := True;
      NORMAL_ICMSST_RBASE.Enabled := True;
      NORMAL_ICMSST_MVA.Enabled := True;
      NORMAL_ICMSST_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
          dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_PBASE').Value := 100.00;

      end;
    end;
    40,41,50:
    begin
      grpNORMALicms.Visible := True;
    end;
    51:
    begin
      grpNORMALicms.Visible := True;
      NORMAL_ICMS_RBASE.Enabled := True;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100.00;
      end;
    end;
    70:
    begin
      grpNORMALicms.Visible := True;
      NORMAL_ICMS_RBASE.Enabled := True;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;

      grpNORMALicmsST.Visible := True;
      NORMAL_ICMSST_RBASE.Enabled := True;
      NORMAL_ICMSST_MVA.Enabled := True;
      NORMAL_ICMSST_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
        begin
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100.00;
          dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_PBASE').Value := 100.00;
        end;
      end;
    end;
    90:
    begin
      grpNORMALicms.Visible := True;
      NORMAL_ICMS_RBASE.Enabled := True;
      NORMAL_ICMS_ALIQUOTA.Enabled := True;

      grpNORMALicmsST.Visible := True;
      NORMAL_ICMSST_RBASE.Enabled := True;
      NORMAL_ICMSST_MVA.Enabled := True;
      NORMAL_ICMSST_ALIQUOTA.Enabled := True;
      if Assigned(dtsDefault.DataSet) then
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
        begin
          dtsDefault.DataSet.FieldByName('NORMAL_ICMS_PBASE').Value := 100.00;
          dtsDefault.DataSet.FieldByName('NORMAL_ICMSST_PBASE').Value := 100.00;
        end;
      end;
    end;
  end;
end;

procedure TfrmPRODUTOScadastro.qryCSOSNCalcFields(DataSet: TDataSet);
begin
  qryCSOSNcalcDESCRICAO.AsString :=
    qryCSOSNID_CSOSN.AsString.Trim + ' - ' + qryCSOSNDESCRICAO.AsString.Trim;
end;

procedure TfrmPRODUTOScadastro.qryCSTCalcFields(DataSet: TDataSet);
begin
  qryCSTcalcDESCRICAO.AsString :=
    qryCSTID_CST.AsString.Trim + ' - ' + qryCSTDESCRICAO.AsString.Trim;
end;

procedure TfrmPRODUTOScadastro.qryORIGEMAfterOpen(DataSet: TDataSet);
begin
  qryUF.Active := DataSet.Active;
  qryCST.Active := DataSet.Active;
  qryCSOSN.Active := DataSet.Active;
end;

procedure TfrmPRODUTOScadastro.qryORIGEMCalcFields(DataSet: TDataSet);
begin
  qryORIGEMcalcDESCRICAO.AsString :=
    qryORIGEMID_ORIGEM.AsString + ' - ' +qryORIGEMDESCRICAO.AsString.Trim;
end;

procedure TfrmPRODUTOScadastro.SIMPLES_CSOSNClick(Sender: TObject);
begin
  grpSIMPLESicms.Visible := False;
  grpSIMPLESicmsst.Visible := False;

  if VarIsNull(SIMPLES_CSOSN.KeyValue) then
    exit;

  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
    begin
      dtsDefault.DataSet.FieldByName('SIMPLES_ICMS_PBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ICMS_RBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ICMS_ALIQUOTA').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ST_PBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ST_RBASE').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ST_MVA').Value := 0.00;
      dtsDefault.DataSet.FieldByName('SIMPLES_ST_ALIQUOTA').Value := 0.00;
    end;
  end;

  case StrToIntDef(SIMPLES_CSOSN.KeyValue,999) of
    201:
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
          dtsDefault.DataSet.FieldByName('SIMPLES_ST_PBASE').Value := 100.00;
        grpSIMPLESicmsst.Visible := True;
      end;
    202:
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
           dtsDefault.DataSet.FieldByName('SIMPLES_ST_PBASE').Value := 100.00;
        grpSIMPLESicmsst.Visible := True;
      end;
    900:
      begin
        if dtsDefault.DataSet.State in [dsEdit,dsInsert] then
        begin
          dtsDefault.DataSet.FieldByName('SIMPLES_ST_PBASE').Value := 100.00;
          dtsDefault.DataSet.FieldByName('SIMPLES_ICMS_PBASE').Value := 100.00;
        end;
        grpSIMPLESicms.Visible := True;
        grpSIMPLESicmsst.Visible := True;
      end;
  end;
end;

end.
