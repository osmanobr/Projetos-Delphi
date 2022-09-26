unit ufrmPRODUTOSmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, Vcl.DBCtrls, JvDBControls, JvLabel,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvExControls, JvSpeedButton, JvExExtCtrls, JvImage, JvExStdCtrls, JvGroupBox;

type
  TfrmPRODUTOSmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_PRODUTO: TLargeintField;
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_CODIGO: TIntegerField;
    qryDefaultDESCRICAO: TStringField;
    qryDefaultEAN: TStringField;
    qryDefaultEAN_TRIB: TStringField;
    qryDefaultEX_TIPI: TStringField;
    qryDefaultGENERO: TStringField;
    qryDefaultNCM: TStringField;
    qryDefaultCEST: TStringField;
    qryDefaultUN_COM: TStringField;
    qryDefaultUN_TRIB: TStringField;
    qryDefaultVL_COM: TFMTBCDField;
    qryDefaultVL_TRIB: TFMTBCDField;
    qryDefaultQT_TRIB: TFMTBCDField;
    qryDefaultIPI_COD_ENQUADRAMENTO: TStringField;
    qryDefaultIPI_CNPJ_PRODUTOR: TStringField;
    qryDefaultORIGEM: TIntegerField;
    qryDefaultSIMPLES_CSOSN: TStringField;
    qryDefaultSIMPLES_ST_PBASE: TCurrencyField;
    qryDefaultSIMPLES_ST_RBASE: TCurrencyField;
    qryDefaultSIMPLES_ST_MVA: TCurrencyField;
    qryDefaultSIMPLES_ST_ALIQUOTA: TFMTBCDField;
    qryDefaultSIMPLES_ICMS_PBASE: TCurrencyField;
    qryDefaultSIMPLES_ICMS_RBASE: TFMTBCDField;
    qryDefaultSIMPLES_ICMS_ALIQUOTA: TFMTBCDField;
    qryDefaultNORMAL_CST: TStringField;
    qryDefaultNORMAL_ICMS_PBASE: TCurrencyField;
    qryDefaultNORMAL_ICMS_RBASE: TCurrencyField;
    qryDefaultNORMAL_ICMS_ALIQUOTA: TCurrencyField;
    qryDefaultNORMAL_ICMS_MOTIVO_DES: TIntegerField;
    qryDefaultNORMAL_ICMSST_PBASE: TCurrencyField;
    qryDefaultNORMAL_ICMSST_RBASE: TCurrencyField;
    qryDefaultNORMAL_ICMSST_MVA: TCurrencyField;
    qryDefaultNORMAL_ICMSST_ALIQUOTA: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPRODUTOSmanutencao: TfrmPRODUTOSmanutencao;

implementation

{$R *.dfm}

uses ufrmPRODUTOScadastro, uclassEMPRESA, udtmDefault;

procedure TfrmPRODUTOSmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  TabelaNome := 'PRODUTO';
  TabelaCpChave := 'ID_PRODUTO';
  FormCadastro := TfrmPRODUTOScadastro;
end;

procedure TfrmPRODUTOSmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
