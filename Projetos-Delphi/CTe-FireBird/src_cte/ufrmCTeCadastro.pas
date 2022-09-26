unit ufrmCTeCadastro;

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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  JvBaseEdits,
  JvDBControls,
  JvDateTimePicker,
  JvDBDateTimePicker,
  JvDBLookup,
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvGroupBox,
  Vcl.Buttons,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvgGroupBox,
  JvDBCheckBox,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid;

type
  TfrmCTeCadastro = class(TfrmDefaultCadastro)
    dtsqryUF: TDataSource;
    qryMunicipioEmissao: TFDQuery;
    dtsqryMunicipioEmissao: TDataSource;
    dtsqryNATUREZAS: TDataSource;
    qryMunicipioEmissaoID_CIDADES_IBGE: TIntegerField;
    qryMunicipioEmissaoID_CIDADES_UF: TStringField;
    qryMunicipioEmissaoID_PAIS: TIntegerField;
    qryMunicipioEmissaoDESCRICAO: TStringField;
    tabObservacoes: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    OBSERVACOES_FISCO: TDBMemo;
    JvgGroupBox1: TJvgGroupBox;
    OBSERVACOES_GERAIS: TDBMemo;
    JvgGroupBox10: TJvgGroupBox;
    OBSERVACOES_CONTRIBUINTE: TDBMemo;
    tabRodoviario: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    JvgGroupBox3: TJvgGroupBox;
    Label21: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    ID_CTE: TJvDBMaskEdit;
    ID_SERIE: TJvDBMaskEdit;
    DT_HORA_EMISSAO: TJvDBDateTimePicker;
    ID_IND_CTE_GLOBALIZADO: TJvDBCheckBox;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    JvgGroupBox2: TJvgGroupBox;
    Label12: TLabel;
    Label8: TLabel;
    ID_UF_EMISSAO: TJvDBLookupCombo;
    ID_MUNICIPIO_EMISSAO: TJvDBLookupCombo;
    TabSheet4: TTabSheet;
    JvgGroupBox8: TJvgGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    ID_UF_INICIO_PRESTACAO: TJvDBLookupCombo;
    ID_MUNICIPIO_INICIO_PRESTACAO: TJvDBLookupCombo;
    JvgGroupBox9: TJvgGroupBox;
    Label25: TLabel;
    Label29: TLabel;
    ID_UF_TERMINO_PRESTACAO: TJvDBLookupCombo;
    ID_MUNICIPIO_TERMINO_PRESTACA: TJvDBLookupCombo;
    JvPageControl2: TJvPageControl;
    TabSheet5: TTabSheet;
    JvgGroupBox11: TJvgGroupBox;
    JvPageControl3: TJvPageControl;
    Panel1: TPanel;
    Label30: TLabel;
    CARACTERISTICA_ADICIONAL_TRANSP: TJvDBMaskEdit;
    Label31: TLabel;
    CARACTERISTICA_ADICIONAL_SERVIC: TJvDBMaskEdit;
    Label32: TLabel;
    FUNCIONARIO_EMISSOR_CTE: TJvDBMaskEdit;
    Label33: TLabel;
    ID_MUNICIPIO_ORIGEM_CALC_FRETE: TJvDBMaskEdit;
    Label34: TLabel;
    ID_MUNICIPIO_DESTINO_CALC_FRETE: TJvDBMaskEdit;
    TabSheet6: TTabSheet;
    Panel15: TPanel;
    Label35: TLabel;
    FLUXO_CODIGO_ROTA: TJvDBMaskEdit;
    TabSheet7: TTabSheet;
    JvgGroupBox12: TJvgGroupBox;
    Panel2: TPanel;
    Label36: TLabel;
    FLUXO_MUNICIPIO_ORIGEM: TJvDBMaskEdit;
    FLUXO_MUNICIPIO_DESTINO: TJvDBMaskEdit;
    Label37: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvgGroupBox13: TJvgGroupBox;
    Panel8: TPanel;
    btnPassagemExcluir: TJvSpeedButton;
    btnPassagemIncluir: TJvSpeedButton;
    Panel3: TPanel;
    JvDBGrid1: TJvDBGrid;
    JvgGroupBox14: TJvgGroupBox;
    Label38: TLabel;
    PREVISAO_ENTREGA_HORA_INICIO: TJvDBDateTimePicker;
    PREVISAO_ENTREGA_HORA_FINAL: TJvDBDateTimePicker;
    lbPRVhoraA: TLabel;
    lbPRVhoraB: TLabel;
    JvgGroupBox15: TJvgGroupBox;
    Label45: TLabel;
    lbPRVdataA: TLabel;
    lbPRVdataB: TLabel;
    PREVISAO_ENTREGA_DATA_INICIO: TJvDBDateTimePicker;
    PREVISAO_ENTREGA_DATA_FINAL: TJvDBDateTimePicker;
    JvgGroupBox16: TJvgGroupBox;
    Panel6: TPanel;
    Panel7: TPanel;
    JvgGroupBox17: TJvgGroupBox;
    Panel10: TPanel;
    RECEBEDOR_DETALHES: TDBMemo;
    Panel9: TPanel;
    Panel11: TPanel;
    JvgGroupBox18: TJvgGroupBox;
    RECEBEDOR_RETIRA: TJvDBCheckBox;
    Panel18: TPanel;
    Label6: TLabel;
    RODO_RNTRC: TJvDBMaskEdit;
    Panel19: TPanel;
    JvgGroupBox6: TJvgGroupBox;
    Panel20: TPanel;
    btnORDEMCOLETAexcluir: TJvSpeedButton;
    btnORDEMCOLETAincluir: TJvSpeedButton;
    btnORDEMCOLETAeditar: TJvSpeedButton;
    Panel21: TPanel;
    JvDBGrid3: TJvDBGrid;
    Panel22: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    VALOR_TOTAL_PRETACAO_SERVICO: TJvDBCalcEdit;
    VALOR_A_RECEBER: TJvDBCalcEdit;
    VALOR_TOTAL_DOS_TRIBUTOS: TJvDBCalcEdit;
    Panel23: TPanel;
    JvgGroupBox19: TJvgGroupBox;
    Panel12: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    JvgGroupBox7: TJvgGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    ICMS_I_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    ICMS_I_ALIQUOTA_INTERNA_UF_TERM: TJvDBCalcEdit;
    ICMS_I_ALIQUOTA_INTERESTADUAL: TJvDBCalcEdit;
    ICMS_I_COBR_OPER_INTERESTADUAL: TJvDBCheckBox;
    ICMS_I_PORC_PARTILHA_UF_TERMINO: TJvDBCalcEdit;
    ICMS_I_VLR_ICMS_PARTILH_UF_INIC: TJvDBCalcEdit;
    ICMS_I_VLR_ICMS_PARTILH_UF_TERM: TJvDBCalcEdit;
    ICMS_I_PORC_FCP_UF_TERMINO: TJvDBCalcEdit;
    ICMS_I_VLR_FCP_UF_TERMINO: TJvDBCalcEdit;
    JvgGroupBox22: TJvgGroupBox;
    Panel26: TPanel;
    Label14: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    ICMS_ID_CST: TJvDBComboBox;
    ICMS_PERCENTUAL_RED_DA_BC: TJvDBCalcEdit;
    ICMS_VALOR_DA_BC: TJvDBCalcEdit;
    ICMS_ALIQUOTA: TJvDBCalcEdit;
    ICMS_VALOR: TJvDBCalcEdit;
    ICMS_VALOR_CREDITO_OUT_REC: TJvDBCalcEdit;
    Panel27: TPanel;
    JvgGroupBox21: TJvgGroupBox;
    Panel24: TPanel;
    ICMS_INF_ADICIONAIS_FISCO: TDBMemo;
    Panel25: TPanel;
    ID_MODAL: TJvDBComboBox;
    ID_TIPO_SERVICO: TJvDBComboBox;
    ID_FINALIDADE_EMISSAO: TJvDBComboBox;
    ID_FORMA_EMISSAO: TJvDBComboBox;
    lbCTJ1: TLabel;
    CONTIGENCIA_DT_HORA: TJvDBDateTimePicker;
    ID_CHAVE_CTE_REFERENCIADO: TJvDBMaskEdit;
    lbCTJ2: TLabel;
    CONTIGENCIA_MOTIVO: TJvDBMaskEdit;
    Panel28: TPanel;
    Label3: TLabel;
    PASS_NUMERO: TJvMaskEdit;
    PREVISAO_ENTREGA_DATA_ID_TIPO: TJvDBComboBox;
    PREVISAO_ENTREGA_HORA_ID_TIPO: TJvDBComboBox;
    CPN_NOME: TJvMaskEdit;
    CPN_VALOR: TJvCalcEdit;
    JvDBGrid2: TJvDBGrid;
    Panel16: TPanel;
    btnCPNexcluir: TJvSpeedButton;
    btnCPNincluir: TJvSpeedButton;
    ID_CFOP: TJvDBComboBox;
    NAT_OPERACAO: TJvDBMaskEdit;
    qryMunicipioInicioPrestacao: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsqryMunicipioInicioPrestacao: TDataSource;
    qryMunicipioTerminoPrestacao: TFDQuery;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    dtsqryMunicipioTerminoPrestacao: TDataSource;
    ICMS_I_IDPORC_PARTILHA: TJvDBComboBox;
    dtsqryCTeEVENTOS: TDataSource;
    dtstabCTe_FLUXO_PASSAGENS: TDataSource;
    dtstabCTE_COMPONENTES: TDataSource;
    dtstabCTE_ORDEM_COLETA: TDataSource;
    dtstbCTE_CARGA_QUANTIDADES: TDataSource;
    TabSheet8: TTabSheet;
    JvPageControl4: TJvPageControl;
    TabSheet9: TTabSheet;
    Panel17: TPanel;
    Label18: TLabel;
    CARGA_VALOR: TJvDBCalcEdit;
    Label39: TLabel;
    CARGA_PRODUTO_PREDOMINANTE: TJvDBMaskEdit;
    Label40: TLabel;
    CARGA_PRODUTO_CARACTERISTICAS: TJvDBMaskEdit;
    JvgGroupBox20: TJvgGroupBox;
    Panel30: TPanel;
    btnINFCARGAexcluir: TJvSpeedButton;
    btnINFCARGAincluir: TJvSpeedButton;
    btnINFCARGAeditar: TJvSpeedButton;
    Panel31: TPanel;
    JvDBGrid5: TJvDBGrid;
    TabSheet10: TTabSheet;
    JvgGroupBox23: TJvgGroupBox;
    Panel29: TPanel;
    btnVEICULOexcluir: TJvSpeedButton;
    btnVEICULOincluir: TJvSpeedButton;
    btnVEICULOeditar: TJvSpeedButton;
    Panel32: TPanel;
    JvDBGrid6: TJvDBGrid;
    TabSheet11: TTabSheet;
    Panel33: TPanel;
    Panel34: TPanel;
    Label42: TLabel;
    CTE_SUB_CHAVE_ORIGINAL: TJvDBMaskEdit;
    CTE_SUB_TOMADOR_NCONTRIBUINTE: TDBCheckBox;
    JvgGroupBox24: TJvgGroupBox;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    JvgGroupBox25: TJvgGroupBox;
    Panel38: TPanel;
    CTE_SUB_TOMADOR_CONTRIBUINTE: TDBCheckBox;
    JvgGroupBox27: TJvgGroupBox;
    Panel39: TPanel;
    JvgGroupBox28: TJvgGroupBox;
    Panel40: TPanel;
    JvgGroupBox29: TJvgGroupBox;
    Panel41: TPanel;
    CTE_SUB_CHAVE_CTE_SUBSTITUTO: TJvDBMaskEdit;
    CTE_SUB_CHAVE_NFE_SUBSTITUTO: TJvDBMaskEdit;
    CTE_SUB_CHAVE_ANULACAO: TJvDBMaskEdit;
    dtstabCTE_VEICULOS_NOVOS: TDataSource;
    TabSheet12: TTabSheet;
    JvPageControl5: TJvPageControl;
    TabSheet13: TTabSheet;
    Panel42: TPanel;
    btnNFEexcluir: TJvSpeedButton;
    btnNFEincluir: TJvSpeedButton;
    btnNFEeditar: TJvSpeedButton;
    Panel43: TPanel;
    JvDBGrid7: TJvDBGrid;
    dtstabCTE_NFE: TDataSource;
    dtsqryPESSOA: TDataSource;
    JvgGroupBox30: TJvgGroupBox;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    ID_TOMADOR_TIPO: TJvDBComboBox;
    ID_REMETENTE_TIPO: TJvDBComboBox;
    ID_EXPEDIDOR_TIPO: TJvDBComboBox;
    ID_TOMADOR_OUTROS: TDBLookupComboBox;
    ID_REMETENTE: TDBLookupComboBox;
    ID_EXPEDIDOR: TDBLookupComboBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    ID_RECEBEDOR_TIPO: TJvDBComboBox;
    ID_DESTINATARIO_TIPO: TJvDBComboBox;
    ID_RECEBEDOR: TDBLookupComboBox;
    ID_DESTINATARIO: TDBLookupComboBox;
    tabDOCANT: TTabSheet;
    JvPageControl6: TJvPageControl;
    TabSheet14: TTabSheet;
    Panel44: TPanel;
    btnDOCANTexcluir: TJvSpeedButton;
    btnDOCANTincluir: TJvSpeedButton;
    btnDOCANTeditar: TJvSpeedButton;
    Panel45: TPanel;
    JvDBGrid4: TJvDBGrid;
    dtstabCTE_DOCANT: TDataSource;
    procedure ID_UF_EMISSAOChange(Sender: TObject);
    procedure ID_FORMA_EMISSAOChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ID_UF_INICIO_PRESTACAOChange(Sender: TObject);
    procedure ID_UF_TERMINO_PRESTACAOChange(Sender: TObject);
    procedure PREVISAO_ENTREGA_DATA_ID_TIPOChange(Sender: TObject);
    procedure PREVISAO_ENTREGA_HORA_ID_TIPOChange(Sender: TObject);
    procedure RECEBEDOR_RETIRAChange(Sender: TObject);
    procedure ICMS_ID_CSTChange(Sender: TObject);
    procedure ICMS_VALOR_DA_BCChange(Sender: TObject);
    procedure ICMS_I_IDPORC_PARTILHAChange(Sender: TObject);
    procedure btnPassagemIncluirClick(Sender: TObject);
    procedure btnPassagemExcluirClick(Sender: TObject);
    procedure dtstabCTe_FLUXO_PASSAGENSDataChange(Sender: TObject; Field: TField);
    procedure dtstabCTE_COMPONENTESDataChange(Sender: TObject; Field: TField);
    procedure btnCPNexcluirClick(Sender: TObject);
    procedure btnCPNincluirClick(Sender: TObject);
    procedure dtstabCTE_ORDEM_COLETADataChange(Sender: TObject; Field: TField);
    procedure btnORDEMCOLETAincluirClick(Sender: TObject);
    procedure btnORDEMCOLETAeditarClick(Sender: TObject);
    procedure dtstbCTE_CARGA_QUANTIDADESDataChange(Sender: TObject; Field: TField);
    procedure btnINFCARGAeditarClick(Sender: TObject);
    procedure btnINFCARGAincluirClick(Sender: TObject);
    procedure btnINFCARGAexcluirClick(Sender: TObject);
    procedure btnORDEMCOLETAexcluirClick(Sender: TObject);
    procedure dtstabCTE_VEICULOS_NOVOSDataChange(Sender: TObject; Field: TField);
    procedure btnVEICULOexcluirClick(Sender: TObject);
    procedure btnVEICULOincluirClick(Sender: TObject);
    procedure btnVEICULOeditarClick(Sender: TObject);
    procedure CTE_SUB_TOMADOR_CONTRIBUINTEClick(Sender: TObject);
    procedure CTE_SUB_TOMADOR_NCONTRIBUINTEClick(Sender: TObject);
    procedure dtstabCTE_NFEDataChange(Sender: TObject; Field: TField);
    procedure btnNFEincluirClick(Sender: TObject);
    procedure btnNFEeditarClick(Sender: TObject);
    procedure btnNFEexcluirClick(Sender: TObject);
    procedure ID_TOMADOR_TIPOChange(Sender: TObject);
    procedure ID_REMETENTE_TIPOChange(Sender: TObject);
    procedure ID_EXPEDIDOR_TIPOChange(Sender: TObject);
    procedure ID_RECEBEDOR_TIPOChange(Sender: TObject);
    procedure ID_DESTINATARIO_TIPOChange(Sender: TObject);
    procedure ID_CFOPClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ICMS_I_COBR_OPER_INTERESTADUALClick(Sender: TObject);
    procedure dtstabCTE_DOCANTDataChange(Sender: TObject; Field: TField);
    procedure btnDOCANTincluirClick(Sender: TObject);
    procedure ID_TIPO_SERVICOChange(Sender: TObject);
    procedure btnDOCANTexcluirClick(Sender: TObject);
    procedure btnDOCANTeditarClick(Sender: TObject);
  private
  public
  end;

var
  frmCTeCadastro: TfrmCTeCadastro;

implementation

{$R *.dfm}

uses
  udtmCTe,
  udtmDefault,
  ufuncoes,
  ACBrUtil,
  ufrmCTEordemcoletaCADASTRO,
  ufrmCTEinfcargaCADASTRO,
  ufrmCTEveiculosnovosCADASTRO,
  ufrmCTEnfeCADASTRO,
  uclassCTE,
  ufrmCTEDOCantCADASTRO;

procedure TfrmCTeCadastro.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  case FOperacao of
    TIncluir, TEditar:
      begin
        if dtsDefault.DataSet.State in [ dsBrowse ] then
          dtsDefault.DataSet.Edit;

        with dtsDefault.DataSet do
        begin
            // cotigência
          FieldByName('CONTIGENCIA_DT_HORA').Required := FieldByName('ID_FORMA_EMISSAO').AsInteger = 1;
          FieldByName('CONTIGENCIA_MOTIVO').Required  := FieldByName('ID_FORMA_EMISSAO').AsInteger = 1;

          if FieldByName('ID_CFOP').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_CFOP').FocusControl;
            raise Exception.Create('Favor informar o CFOP');
          end;

          if FieldByName('NAT_OPERACAO').AsString.Trim.Length < 10 then
          begin
            FieldByName('NAT_OPERACAO').FocusControl;
            raise Exception.Create('Favor informar a Natureza da Operação');
          end;

            // local de emissão
          if FieldByName('ID_UF_EMISSAO').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_UF_EMISSAO').FocusControl;
            raise Exception.Create('Favor informar a UF do Local da emissão');
          end;

          if FieldByName('ID_MUNICIPIO_EMISSAO').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_MUNICIPIO_EMISSAO').FocusControl;
            raise Exception.Create('Favor informar o Municipio do Local da emissão');
          end;

            // local de inicio de prestação
          if FieldByName('ID_UF_INICIO_PRESTACAO').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_UF_INICIO_PRESTACAO').FocusControl;
            raise Exception.Create('Favor informar a UF do Local de início da prestação');
          end;

          if FieldByName('ID_MUNICIPIO_INICIO_PRESTACAO').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_MUNICIPIO_INICIO_PRESTACAO').FocusControl;
            raise Exception.Create('Favor informar o Municipio do Local de inicio da prestação');
          end;

            // local de termino de prestação
          if FieldByName('ID_UF_TERMINO_PRESTACAO').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_UF_TERMINO_PRESTACAO').FocusControl;
            raise Exception.Create('Favor informar a UF do Local de termino da prestação');
          end;

          if FieldByName('ID_MUNICIPIO_TERMINO_PRESTACA').AsString.Trim.Length = 0 then
          begin
            FieldByName('ID_MUNICIPIO_TERMINO_PRESTACA').FocusControl;
            raise Exception.Create('Favor informar o Municipio do Local de termino da prestação');
          end;

          if FieldByName('CARGA_PRODUTO_PREDOMINANTE').AsString.Trim.Length < 3 then
          begin
            FieldByName('CARGA_PRODUTO_PREDOMINANTE').FocusControl;
            raise Exception.Create('Favor informar o Produto predominante');
          end;

          if FieldByName('RODO_RNTRC').AsString.Trim.Length <> 8 then
          begin
            FieldByName('RODO_RNTRC').FocusControl;
            raise Exception.Create('RNTRC informado não é válido, favor verificar');
          end;

          if dtstabCTE_NFE.DataSet.IsEmpty then
            raise Exception.Create('Nenhum documento informado na página "Inf. Documentos"');

          if dtstbCTE_CARGA_QUANTIDADES.DataSet.IsEmpty then
            raise Exception.Create('Nenhuma informação da CARGA informada na página "Inf. da Carga"');
        end;

        if FOperacao = TIncluir then
          dtmCTe.tabCTEID_CTE.AsInteger := oCTe.GetNEW_ID_CTe;
      end;
  end;

  inherited;
end;

procedure TfrmCTeCadastro.btnCPNexcluirClick(Sender: TObject);
begin
  dtstabCTE_COMPONENTES.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnCPNincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  if (Trim(CPN_NOME.Text) = '') or (CPN_VALOR.Value <= 0.00) then
  begin
    CPN_NOME.SetFocus;
    Exit;
  end;

  try
    TFDQuery(dtstabCTE_COMPONENTES.DataSet).Append;
    TFDQuery(dtstabCTE_COMPONENTES.DataSet).FieldByName('NOME').Value := Trim(CPN_NOME.Text);
    TFDQuery(dtstabCTE_COMPONENTES.DataSet).FieldByName('VALOR').Value := CPN_VALOR.Value;
    TFDQuery(dtstabCTE_COMPONENTES.DataSet).Prepare;
    TFDQuery(dtstabCTE_COMPONENTES.DataSet).Post;

    CPN_NOME.Clear;
    CPN_VALOR.Value := 0.00;
    CPN_NOME.SetFocus;
  except
    on e: Exception do
    begin
      TFDQuery(dtstabCTE_COMPONENTES.DataSet).Cancel;

      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TfrmCTeCadastro.btnDOCANTeditarClick(Sender: TObject);
begin
  TfrmCteDOCANTCadastro.Alterar;
end;

procedure TfrmCTeCadastro.btnDOCANTexcluirClick(Sender: TObject);
begin
  dtstabCTE_DOCANT.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnDOCANTincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert, dsEdit ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  TfrmCteDOCANTCadastro.Novo;
end;

procedure TfrmCTeCadastro.btnINFCARGAeditarClick(Sender: TObject);
begin
  TfrmCteInfCargaCadastro.Alterar;
end;

procedure TfrmCTeCadastro.btnINFCARGAexcluirClick(Sender: TObject);
begin
  dtstbCTE_CARGA_QUANTIDADES.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnINFCARGAincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert, dsEdit ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  TfrmCteInfCargaCadastro.Novo;
end;

procedure TfrmCTeCadastro.btnNFEeditarClick(Sender: TObject);
begin
  TfrmCteNFeCadastro.Alterar;
end;

procedure TfrmCTeCadastro.btnNFEexcluirClick(Sender: TObject);
begin
  dtstabCTE_NFE.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnNFEincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert, dsEdit ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  TfrmCteNFeCadastro.Novo;
end;

procedure TfrmCTeCadastro.btnORDEMCOLETAeditarClick(Sender: TObject);
begin
  TfrmCteOrdemColetaCadastro.Alterar;
end;

procedure TfrmCTeCadastro.btnORDEMCOLETAexcluirClick(Sender: TObject);
begin
  dtstabCTE_ORDEM_COLETA.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnORDEMCOLETAincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert, dsEdit ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  TfrmCteOrdemColetaCadastro.Novo;
end;

procedure TfrmCTeCadastro.btnPassagemExcluirClick(Sender: TObject);
begin
  dtstabCTe_FLUXO_PASSAGENS.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnPassagemIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  if Trim(PASS_NUMERO.Text) = '' then
    PASS_NUMERO.SetFocus;

  try
    TFDQuery(dtstabCTe_FLUXO_PASSAGENS.DataSet).Append;
    TFDQuery(dtstabCTe_FLUXO_PASSAGENS.DataSet).FieldByName('PASSAGEM').Value := Trim(PASS_NUMERO.Text);
    TFDQuery(dtstabCTe_FLUXO_PASSAGENS.DataSet).Prepare;
    TFDQuery(dtstabCTe_FLUXO_PASSAGENS.DataSet).Post;

    PASS_NUMERO.Clear;
    PASS_NUMERO.SetFocus;
  except
    on e: Exception do
    begin
      dtstabCTe_FLUXO_PASSAGENS.DataSet.Cancel;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TfrmCTeCadastro.btnVEICULOeditarClick(Sender: TObject);
begin
  TfrmCteVeiculosNovosCadastro.Alterar;
end;

procedure TfrmCTeCadastro.btnVEICULOexcluirClick(Sender: TObject);
begin
  dtstabCTE_VEICULOS_NOVOS.DataSet.Delete;
end;

procedure TfrmCTeCadastro.btnVEICULOincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [ dsInsert, dsEdit ] then
  begin
    dtsDefault.DataSet.Post;
    dtsDefault.DataSet.Edit;
  end;

  TfrmCteVeiculosNovosCadastro.Novo;
end;

procedure TfrmCTeCadastro.CTE_SUB_TOMADOR_CONTRIBUINTEClick(Sender: TObject);
begin
  CTE_SUB_CHAVE_CTE_SUBSTITUTO.Enabled := CTE_SUB_TOMADOR_CONTRIBUINTE.Checked;
  CTE_SUB_CHAVE_NFE_SUBSTITUTO.Enabled := CTE_SUB_TOMADOR_CONTRIBUINTE.Checked;
  CTE_SUB_CHAVE_ANULACAO.Enabled       := CTE_SUB_TOMADOR_NCONTRIBUINTE.Checked;

  if Assigned(dtsDefault.DataSet) then
    if CTE_SUB_TOMADOR_CONTRIBUINTE.Checked then
      CTE_SUB_TOMADOR_NCONTRIBUINTE.Checked := False;
end;

procedure TfrmCTeCadastro.CTE_SUB_TOMADOR_NCONTRIBUINTEClick(Sender: TObject);
begin
  CTE_SUB_CHAVE_CTE_SUBSTITUTO.Enabled := CTE_SUB_TOMADOR_CONTRIBUINTE.Checked;
  CTE_SUB_CHAVE_NFE_SUBSTITUTO.Enabled := CTE_SUB_TOMADOR_CONTRIBUINTE.Checked;
  CTE_SUB_CHAVE_ANULACAO.Enabled       := CTE_SUB_TOMADOR_NCONTRIBUINTE.Checked;

  if Assigned(dtsDefault.DataSet) then
    if CTE_SUB_TOMADOR_NCONTRIBUINTE.Checked then
      CTE_SUB_TOMADOR_CONTRIBUINTE.Checked := False;
end;

procedure TfrmCTeCadastro.dtstabCTE_COMPONENTESDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_COMPONENTES.DataSet) then
    btnCPNexcluir.Enabled := not dtstabCTE_COMPONENTES.DataSet.IsEmpty;
end;

procedure TfrmCTeCadastro.dtstabCTE_DOCANTDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_NFE.DataSet) then
  begin
    btnDOCANTeditar.Enabled  := not dtstabCTE_NFE.DataSet.IsEmpty;
    btnDOCANTexcluir.Enabled := not dtstabCTE_NFE.DataSet.IsEmpty;
  end;
end;

procedure TfrmCTeCadastro.dtstabCTe_FLUXO_PASSAGENSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTe_FLUXO_PASSAGENS.DataSet) then
    btnPassagemExcluir.Enabled := not dtstabCTe_FLUXO_PASSAGENS.DataSet.IsEmpty;
end;

procedure TfrmCTeCadastro.dtstabCTE_NFEDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_NFE.DataSet) then
  begin
    btnNFEeditar.Enabled  := not dtstabCTE_NFE.DataSet.IsEmpty;
    btnNFEexcluir.Enabled := not dtstabCTE_NFE.DataSet.IsEmpty;
  end;
end;

procedure TfrmCTeCadastro.dtstabCTE_ORDEM_COLETADataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_ORDEM_COLETA.DataSet) then
  begin
    btnORDEMCOLETAeditar.Enabled  := not dtstabCTE_ORDEM_COLETA.DataSet.IsEmpty;
    btnORDEMCOLETAexcluir.Enabled := not dtstabCTE_ORDEM_COLETA.DataSet.IsEmpty;
  end;
end;

procedure TfrmCTeCadastro.dtstabCTE_VEICULOS_NOVOSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_VEICULOS_NOVOS.DataSet) then
  begin
    btnVEICULOeditar.Enabled  := not dtstabCTE_VEICULOS_NOVOS.DataSet.IsEmpty;
    btnVEICULOexcluir.Enabled := not dtstabCTE_VEICULOS_NOVOS.DataSet.IsEmpty;
  end;
end;

procedure TfrmCTeCadastro.dtstbCTE_CARGA_QUANTIDADESDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstbCTE_CARGA_QUANTIDADES.DataSet) then
  begin
    btnINFCARGAeditar.Enabled  := not dtstbCTE_CARGA_QUANTIDADES.DataSet.IsEmpty;
    btnINFCARGAexcluir.Enabled := not dtstbCTE_CARGA_QUANTIDADES.DataSet.IsEmpty;
  end;
end;

procedure TfrmCTeCadastro.FormShow(Sender: TObject);
begin
  inherited;

  ID_UF_EMISSAOChange(Sender);
  ID_UF_INICIO_PRESTACAOChange(Sender);
  ID_UF_TERMINO_PRESTACAOChange(Sender);
  ID_FORMA_EMISSAOChange(Sender);
  PREVISAO_ENTREGA_DATA_ID_TIPOChange(Sender);
  PREVISAO_ENTREGA_HORA_ID_TIPOChange(Sender);
  RECEBEDOR_RETIRAChange(Sender);
  ICMS_ID_CSTChange(Sender);
  ICMS_I_IDPORC_PARTILHAChange(Sender);
  ID_TOMADOR_TIPOChange(Sender);
  ID_REMETENTE_TIPOChange(Sender);
  ID_EXPEDIDOR_TIPOChange(Sender);
  ID_RECEBEDOR_TIPOChange(Sender);
  ICMS_I_COBR_OPER_INTERESTADUALClick(Sender);
  ID_TIPO_SERVICOChange(Sender);
end;

procedure TfrmCTeCadastro.ID_DESTINATARIO_TIPOChange(Sender: TObject);
begin
  ID_DESTINATARIO.Enabled := ID_DESTINATARIO_TIPO.ItemIndex = 0;
  if Assigned(dtsDefault.DataSet) then
  begin
    if ID_DESTINATARIO_TIPO.ItemIndex <> 0 then
      dtsDefault.DataSet.FieldByName('ID_DESTINATARIO').Clear;
  end;
end;

procedure TfrmCTeCadastro.ID_EXPEDIDOR_TIPOChange(Sender: TObject);
begin
  ID_EXPEDIDOR.Enabled := ID_EXPEDIDOR_TIPO.ItemIndex = 0;
  if Assigned(dtsDefault.DataSet) then
  begin
    if ID_EXPEDIDOR_TIPO.ItemIndex <> 0 then
      dtsDefault.DataSet.FieldByName('ID_EXPEDIDOR').Clear;
  end;
end;

procedure TfrmCTeCadastro.ID_FORMA_EMISSAOChange(Sender: TObject);
begin
  lbCTJ1.Visible              := ID_FORMA_EMISSAO.ItemIndex = 1;
  lbCTJ2.Visible              := ID_FORMA_EMISSAO.ItemIndex = 1;
  CONTIGENCIA_DT_HORA.Visible := ID_FORMA_EMISSAO.ItemIndex = 1;
  CONTIGENCIA_MOTIVO.Visible  := ID_FORMA_EMISSAO.ItemIndex = 1;
end;

procedure TfrmCTeCadastro.ID_RECEBEDOR_TIPOChange(Sender: TObject);
begin
  ID_RECEBEDOR.Enabled := ID_RECEBEDOR_TIPO.ItemIndex = 0;
  if Assigned(dtsDefault.DataSet) then
  begin
    if ID_RECEBEDOR_TIPO.ItemIndex <> 0 then
      dtsDefault.DataSet.FieldByName('ID_RECEBEDOR').Clear;
  end;
end;

procedure TfrmCTeCadastro.ID_REMETENTE_TIPOChange(Sender: TObject);
begin
  ID_REMETENTE.Enabled := ID_REMETENTE_TIPO.ItemIndex = 0;
  if Assigned(dtsDefault.DataSet) then
  begin
    if ID_REMETENTE_TIPO.ItemIndex <> 0 then
      dtsDefault.DataSet.FieldByName('ID_REMETENTE').Clear;
  end;
end;

procedure TfrmCTeCadastro.ID_TIPO_SERVICOChange(Sender: TObject);
begin
  tabDOCANT.TabVisible := ID_TIPO_SERVICO.ItemIndex = 1;
end;

procedure TfrmCTeCadastro.ID_TOMADOR_TIPOChange(Sender: TObject);
begin
  ID_TOMADOR_OUTROS.Enabled := ID_TOMADOR_TIPO.ItemIndex = 4;
  if Assigned(dtsDefault.DataSet) then
  begin
    if ID_TOMADOR_TIPO.ItemIndex <> 4 then
    begin
      if dtsDefault.DataSet.State in [ dsBrowse ] then
        dtsDefault.DataSet.Edit;

      dtsDefault.DataSet.FieldByName('ID_TOMADOR_OUTROS').Clear;
    end;
  end;
end;

procedure TfrmCTeCadastro.ID_UF_EMISSAOChange(Sender: TObject);
begin
  if Assigned(qryMunicipioEmissao) then
  begin
    if ID_UF_EMISSAO.Text <> '' then
    begin
      qryMunicipioEmissao.Close;
      qryMunicipioEmissao.Params[ 0 ].Value := ID_UF_EMISSAO.Text;
      qryMunicipioEmissao.Prepare;
      qryMunicipioEmissao.Open;
    end;
  end;
end;

procedure TfrmCTeCadastro.ID_UF_INICIO_PRESTACAOChange(Sender: TObject);
begin
  if Assigned(qryMunicipioInicioPrestacao) then
  begin
    if ID_UF_INICIO_PRESTACAO.Text <> '' then
    begin
      qryMunicipioInicioPrestacao.Close;
      qryMunicipioInicioPrestacao.Params[ 0 ].Value := ID_UF_INICIO_PRESTACAO.Text;
      qryMunicipioInicioPrestacao.Prepare;
      qryMunicipioInicioPrestacao.Open;
    end;
  end;
end;

procedure TfrmCTeCadastro.ID_UF_TERMINO_PRESTACAOChange(Sender: TObject);
begin
  if Assigned(qryMunicipioTerminoPrestacao) then
  begin
    if ID_UF_TERMINO_PRESTACAO.Text <> '' then
    begin
      qryMunicipioTerminoPrestacao.Close;
      qryMunicipioTerminoPrestacao.Params[ 0 ].Value := ID_UF_TERMINO_PRESTACAO.Text;
      qryMunicipioTerminoPrestacao.Prepare;
      qryMunicipioTerminoPrestacao.Open;
    end;
  end;
end;

procedure TfrmCTeCadastro.ID_CFOPClick(Sender: TObject);
begin
  if Assigned(dtsDefault.DataSet) then
    dtsDefault.DataSet.FieldByName('NAT_OPERACAO').AsString := Trim(COPY(ID_CFOP.Text, 7, 61));
end;

procedure TfrmCTeCadastro.ICMS_I_COBR_OPER_INTERESTADUALClick(Sender: TObject);
begin
  ICMS_I_VALOR_BASE_CALCULO.Enabled       := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_ALIQUOTA_INTERNA_UF_TERM.Enabled := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_ALIQUOTA_INTERESTADUAL.Enabled   := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_PORC_PARTILHA_UF_TERMINO.Enabled := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_VLR_ICMS_PARTILH_UF_INIC.Enabled := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_VLR_ICMS_PARTILH_UF_TERM.Enabled := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_PORC_FCP_UF_TERMINO.Enabled      := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_VLR_FCP_UF_TERMINO.Enabled       := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
  ICMS_I_IDPORC_PARTILHA.Enabled          := ICMS_I_COBR_OPER_INTERESTADUAL.Checked;
end;

procedure TfrmCTeCadastro.ICMS_I_IDPORC_PARTILHAChange(Sender: TObject);
begin
  ICMS_I_PORC_PARTILHA_UF_TERMINO.Enabled := ICMS_I_IDPORC_PARTILHA.ItemIndex in [ 5 ];
end;

procedure TfrmCTeCadastro.ICMS_ID_CSTChange(Sender: TObject);
begin
  ICMS_PERCENTUAL_RED_DA_BC.Enabled  := ICMS_ID_CST.ItemIndex in [ 1, 6, 7 ];
  ICMS_VALOR_DA_BC.Enabled           := ICMS_ID_CST.ItemIndex in [ 0, 1, 5, 6, 7 ];
  ICMS_ALIQUOTA.Enabled              := ICMS_ID_CST.ItemIndex in [ 0, 1, 5, 6, 7 ];
  ICMS_VALOR.Enabled                 := ICMS_ID_CST.ItemIndex in [ 0, 1, 5, 6, 7 ];
  ICMS_VALOR_CREDITO_OUT_REC.Enabled := ICMS_ID_CST.ItemIndex in [ 5, 6 ];
end;

procedure TfrmCTeCadastro.ICMS_VALOR_DA_BCChange(Sender: TObject);
  //var
  //  vBase, vAliq, vImpo: Currency;
begin
    //  vBase := StrToFloatDef(ICMS_VALOR_DA_BC.Text,0.00);
    //  vAliq := StrToFloatDef(ICMS_ALIQUOTA.Text,0.00);
    //  vImpo :=  ACBrUtil.RoundABNT(vBase * (vAliq/100),2);
end;

procedure TfrmCTeCadastro.PREVISAO_ENTREGA_HORA_ID_TIPOChange(Sender: TObject);
begin
  PREVISAO_ENTREGA_HORA_INICIO.Visible := PREVISAO_ENTREGA_HORA_ID_TIPO.ItemIndex > 0;
  PREVISAO_ENTREGA_HORA_FINAL.Visible  := PREVISAO_ENTREGA_HORA_ID_TIPO.ItemIndex > 3;
  lbPRVhoraA.Visible                   := PREVISAO_ENTREGA_HORA_ID_TIPO.ItemIndex > 0;
  lbPRVhoraB.Visible                   := PREVISAO_ENTREGA_HORA_ID_TIPO.ItemIndex > 3;

  case PREVISAO_ENTREGA_HORA_ID_TIPO.ItemIndex of
    1, 2, 3:
      begin
        lbPRVhoraA.Caption := 'Hora';
      end;
    4:
      begin
        lbPRVdataA.Caption := 'Início';
        lbPRVdataB.Caption := 'Fim';
      end;
  end;
end;

procedure TfrmCTeCadastro.RECEBEDOR_RETIRAChange(Sender: TObject);
begin
  RECEBEDOR_DETALHES.Enabled := RECEBEDOR_RETIRA.Checked;
end;

procedure TfrmCTeCadastro.PREVISAO_ENTREGA_DATA_ID_TIPOChange(Sender: TObject);
begin
  PREVISAO_ENTREGA_DATA_INICIO.Visible := PREVISAO_ENTREGA_DATA_ID_TIPO.ItemIndex > 0;
  PREVISAO_ENTREGA_DATA_FINAL.Visible  := PREVISAO_ENTREGA_DATA_ID_TIPO.ItemIndex > 3;
  lbPRVdataA.Visible                   := PREVISAO_ENTREGA_DATA_ID_TIPO.ItemIndex > 0;
  lbPRVdataB.Visible                   := PREVISAO_ENTREGA_DATA_ID_TIPO.ItemIndex > 3;

  case PREVISAO_ENTREGA_DATA_ID_TIPO.ItemIndex of
    1, 2, 3:
      begin
        lbPRVdataA.Caption := 'Data';
      end;
    4:
      begin
        lbPRVdataA.Caption := 'Início';
        lbPRVdataB.Caption := 'Fim';
      end;
  end;
end;

end.
