unit ufrmPESSOAScadastro;

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
  Vcl.DBCtrls,
  JvDBImage,
  Vcl.StdCtrls,
  JvDBCheckBox,
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  JvToolEdit,
  JvDBControls,
  JvDBLookup,
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
  JvBaseEdits;

type
  TfrmPESSOAScadastro = class(TfrmDefaultCadastro)
    tabFisica: TTabSheet;
    tabJuridica: TTabSheet;
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
    JvgGroupBox2: TJvgGroupBox;
    JvLabel19: TJvLabel;
    JvLabel21: TJvLabel;
    JvLabel31: TJvLabel;
    IE: TJvDBMaskEdit;
    NOMEFANTASIA: TJvDBMaskEdit;
    CONTATO: TJvDBMaskEdit;
    ID_JURIDICA: TJvDBCheckBox;
    ID_FORNECEDOR: TJvDBCheckBox;
    ID_TRANSPORTADORA: TJvDBCheckBox;
    ID_PRODUTOR: TJvDBCheckBox;
    JvLabel1: TJvLabel;
    ID_TIPO_CONTRIBUINTE: TJvDBComboBox;
    JvDBImage1: TJvDBImage;
    ID_ATIVO: TJvDBCheckBox;
    JvLabel2: TJvLabel;
    TELEFONETRABALHO: TJvDBMaskEdit;
    JvLabel3: TJvLabel;
    CELULAR: TJvDBMaskEdit;
    TELEFONEFIXO: TJvDBMaskEdit;
    JvLabel4: TJvLabel;
    JvgGroupBox3: TJvgGroupBox;
    JvLabel7: TJvLabel;
    JvLabel15: TJvLabel;
    JvLabel41: TJvLabel;
    RG: TJvDBMaskEdit;
    NASCIMENTO: TJvDBDateEdit;
    CONJUGE: TJvDBMaskEdit;
    MAE: TJvDBMaskEdit;
    JvLabel6: TJvLabel;
    ESTADOCIVIL: TJvDBComboBox;
    JvLabel8: TJvLabel;
    JvLabel16: TJvLabel;
    PAI: TJvDBMaskEdit;
    lbCNPJ: TJvLabel;
    JvLabel18: TJvLabel;
    ABERTURA: TJvDBDateEdit;
    JvgGroupBox4: TJvgGroupBox;
    OBSERVACOES: TDBMemo;
    JvLabel20: TJvLabel;
    CONJUGE_NASCIMENTO: TJvDBDateEdit;
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
    JvLabel5: TJvLabel;
    IM: TJvDBMaskEdit;
    TabSheet1: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    JvLabel17: TJvLabel;
    JvLabel22: TJvLabel;
    CBR_HISTORICO: TJvDBMaskEdit;
    CBR_VALOR: TJvDBCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure ID_CIDADES_UFChange(Sender: TObject);
    procedure ID_JURIDICAChange(Sender: TObject);
  private
    procedure SetFisica;
    procedure SetJuridica;
    procedure SetarMascaraIE;
  public
    procedure PosOnShow; override;
      { Public declarations }
  end;

var
  frmPESSOAScadastro: TfrmPESSOAScadastro;

implementation

{$R *.dfm}

uses
  udtmDefault,
  ufuncoes,
  ACBrUtil,
  ufrmMensagemEspera;

procedure TfrmPESSOAScadastro.FormCreate(Sender: TObject);
begin
  inherited;

  AtualizarTabela(cnsCIDADES_UF);
end;

procedure TfrmPESSOAScadastro.ID_CIDADES_UFChange(Sender: TObject);
begin
  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [ dsInsert, dsEdit, dsBrowse ] then
    begin
      cnsCIDADES.Close;
      cnsCIDADES.Params[ 0 ].AsString := cnsCIDADES_UFID_CIDADES_UF.AsString.Trim;
      cnsCIDADES.Open;
    end
  end;
end;

procedure TfrmPESSOAScadastro.ID_JURIDICAChange(Sender: TObject);
begin
  if TipoOperacao <> TExcluir then
  begin
    case ID_JURIDICA.Checked.ToInteger of
      0:
        SetFisica;
      1:
        SetJuridica;
    end;
    SetarMascaraIE;
  end;
end;

procedure TfrmPESSOAScadastro.PosOnShow;
begin
  inherited;

  ID_CIDADES_UFChange(ID_CIDADES_UF);
  ID_JURIDICAChange(ID_JURIDICA);
end;

procedure TfrmPESSOAScadastro.SetFisica;
begin
  lbCNPJ.Caption         := 'CPF';
  CPF_CNPJ.OnChange      := TEditMascaraCPF;
  CPF_CNPJ.MaxLength     := 14;
  tabFisica.TabVisible   := True;
  lbRazaoSocial.Caption  := 'Nome';
  tabJuridica.TabVisible := False;

  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [ dsEdit, dsInsert ] then
    begin
      dtmDefault.tabPESSOASIE_RG.Clear;
      dtmDefault.tabPESSOASCPF_CNPJ.Clear;
      dtmDefault.tabPESSOASID_JURIDICA.AsInteger := 0;
      dtmDefault.tabPESSOASNOMEFANTASIA.Clear;
      dtmDefault.tabPESSOASNASCIMENTO_ABERTURA.Clear;
      CPF_CNPJ.SetFocus;
    end;
  end;

  ID_JURIDICA.Checked := False;
end;

procedure TfrmPESSOAScadastro.SetJuridica;
begin
  lbCNPJ.Caption         := 'CNPJ';
  CPF_CNPJ.OnChange      := TEditMascaraCNPJ;
  CPF_CNPJ.MaxLength     := 18;
  tabFisica.TabVisible   := False;
  tabJuridica.TabVisible := True;
  lbRazaoSocial.Caption  := 'Razão Social';

  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [ dsEdit, dsInsert ] then
    begin
      dtmDefault.tabPESSOASIE_RG.Clear;
      dtmDefault.tabPESSOASCONTATO.Clear;
      dtmDefault.tabPESSOASCONJUGE.Clear;
      dtmDefault.tabPESSOASCPF_CNPJ.Clear;
      dtmDefault.tabPESSOASNOMEFANTASIA.Clear;
      dtmDefault.tabPESSOASNASCIMENTO_ABERTURA.Clear;
      dtmDefault.tabPESSOASID_JURIDICA.AsInteger := 1;
      dtmDefault.tabPESSOASCONJUGE_NASCIMENTO.Clear;

      CPF_CNPJ.SetFocus;
    end;
  end;

  ID_JURIDICA.Checked := False;
end;

procedure TfrmPESSOAScadastro.SetarMascaraIE;
begin
  if Assigned(dtsDefault.DataSet) then
  begin
    if dtsDefault.DataSet.State in [ dsEdit, dsInsert, dsBrowse ] then
    begin
      if not VarIsNull(dtmDefault.tabPESSOASID_JURIDICA.AsVariant) then
      begin
        dtmDefault.tabPESSOASIE_RG.EditMask := '';
        if dtmDefault.tabPESSOASID_JURIDICA.AsInteger = 1 then
        begin
          if not VarIsNull(ID_CIDADES_UF.Value) then
            dtmDefault.tabPESSOASIE_RG.EditMask := ufuncoes.MascaraInscEstadual(ID_CIDADES_UF.Value.Trim)
        end;
      end;
    end;
  end;
end;

end.
