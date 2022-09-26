unit ufrmTRANSPcadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.DBCtrls, JvDBImage,
  Vcl.StdCtrls, JvDBCheckBox, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvToolEdit, JvDBControls, JvDBLookup, Vcl.Mask, JvExMask, JvMaskEdit,
  JvExExtCtrls, JvShape, JvLabel, JvgGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTRANSPcadastro = class(TfrmDefaultCadastro)
    TabSheet3: TTabSheet;
    JvgGroupBox1: TJvgGroupBox;
    lbRazaoSocial: TJvLabel;
    JvShape1: TJvShape;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    CPF_CNPJ: TJvDBMaskEdit;
    RAZAOSOCIAL: TJvDBMaskEdit;
    CEP: TJvDBMaskEdit;
    ENDERECO: TJvDBMaskEdit;
    COMPLEMENTO: TJvDBMaskEdit;
    NUMERO: TJvDBMaskEdit;
    BAIRRO: TJvDBMaskEdit;
    ID_CIDADES_UF: TJvDBLookupCombo;
    ID_CIDADES_IBGE: TJvDBLookupCombo;
    EMAIL: TJvDBMaskEdit;
    ID_ATIVO: TJvDBCheckBox;
    TELEFONEFIXO: TJvDBMaskEdit;
    JvLabel4: TJvLabel;
    lbCNPJ: TJvLabel;
    JvgGroupBox4: TJvgGroupBox;
    OBSERVACOES: TDBMemo;
    dtscnsCIDADES_UF: TDataSource;
    cnsCIDADES_UF: TFDQuery;
    cnsCIDADES: TFDQuery;
    dtscnsCIDADES: TDataSource;
    cnsCIDADES_UFID_CIDADES_UF: TStringField;
    cnsCIDADES_UFCODIBGE: TIntegerField;
    cnsCIDADES_UFDESCRICAO: TStringField;
    cnsCIDADESID_CIDADES_IBGE: TIntegerField;
    cnsCIDADESID_CIDADES_UF: TStringField;
    cnsCIDADESID_PAIS: TIntegerField;
    cnsCIDADESDESCRICAO: TStringField;
    JvLabel21: TJvLabel;
    IE: TJvDBMaskEdit;
    JvLabel31: TJvLabel;
    CONTATO: TJvDBMaskEdit;
    JvLabel19: TJvLabel;
    NOMEFANTASIA: TJvDBMaskEdit;
    JvLabel1: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure ID_CIDADES_UFChange(Sender: TObject);
  private
  public
    procedure PosOnShow; override;
    { Public declarations }
  end;

var
  frmTRANSPcadastro: TfrmTRANSPcadastro;

implementation

{$R *.dfm}

uses udtmDefault, ufuncoes, ACBrUtil, ufrmMensagemEspera;

procedure TfrmTRANSPcadastro.FormCreate(Sender: TObject);
begin
  inherited;

  AtualizarTabela(cnsCIDADES_UF);
end;

procedure TfrmTRANSPcadastro.ID_CIDADES_UFChange(Sender: TObject);
begin
  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [dsInsert,dsEdit,dsBrowse] then
    begin
      cnsCIDADES.Close;
      cnsCIDADES.Params[0].AsString := cnsCIDADES_UFID_CIDADES_UF.AsString.Trim;
      cnsCIDADES.Open;
    end
  end;
end;

procedure TfrmTRANSPcadastro.PosOnShow;
begin
  inherited;

  ID_CIDADES_UFChange(ID_CIDADES_UF);
end;

end.
