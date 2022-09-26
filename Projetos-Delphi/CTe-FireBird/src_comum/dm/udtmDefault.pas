unit udtmDefault;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  Vcl.Forms,
  FireDAC.Phys.FB,
  FireDAC.Phys.IBBase,
  FireDAC.Comp.UI,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  ACBrBase,
  ACBrSocket,
  ACBrCEP,
  ACBrDFe,
  ACBrMDFe,
  ACBrMDFeDAMDFeClass,
  ACBrMDFeDAMDFeRLClass,
  Vcl.Dialogs,
  ACBrMail,
  Winapi.Windows,
  Data.SqlExpr,
  Datasnap.DBClient,
  Datasnap.Win.TConnect,
  Data.FMTBcd,
  Datasnap.Provider,
  FireDAC.Phys.FBDef;

type
  TdtmDefault = class(TDataModule)
    cnx_BD: TFDConnection;
    FLink: TFDPhysFBDriverLink;
    fWaitCursor: TFDGUIxWaitCursor;
    ACBrCEP: TACBrCEP;
    tabEMPRESA: TFDQuery;
    tabCIDADES_UF: TFDQuery;
    tabCIDADES_UFID_CIDADES_UF: TStringField;
    tabCIDADES_UFCODIBGE: TIntegerField;
    tabCIDADES_UFDESCRICAO: TStringField;
    dtstabCIDADES_UF: TDataSource;
    OpenDialog: TOpenDialog;
    tabEMPRESAID_EMPRESA: TIntegerField;
    tabEMPRESAID_REGIME: TIntegerField;
    tabEMPRESAID_INDICADOR_ATIVIDADE: TIntegerField;
    tabEMPRESARAZAOSOCIAL: TStringField;
    tabEMPRESANOMEFANTASIA: TStringField;
    tabEMPRESACNPJ: TStringField;
    tabEMPRESAIE_ESTADUAL: TStringField;
    tabEMPRESACNAE_FISCAL: TStringField;
    tabEMPRESAIE_MUNICIPAL: TStringField;
    tabEMPRESAIE_ESTADUAL_ST: TStringField;
    tabEMPRESAENDERECO: TStringField;
    tabEMPRESANUMERO: TStringField;
    tabEMPRESACOMPLEMENTO: TStringField;
    tabEMPRESABAIRRO: TStringField;
    tabEMPRESAID_CIDADES_IBGE: TIntegerField;
    tabEMPRESAID_CIDADES_UF: TStringField;
    tabEMPRESACEP: TStringField;
    tabEMPRESATELEFONE: TStringField;
    tabEMPRESACELULAR: TStringField;
    tabEMPRESAEMAIL: TStringField;
    tabEMPRESAWEBSITE: TStringField;
    tabEMPRESADATA_ABERTURA: TDateField;
    tabEMPRESACADASTRO_DATA: TSQLTimeStampField;
    tabEMPRESAALTERACAO_DATA: TSQLTimeStampField;
    tabEMPRESARESPONSAVEL: TStringField;
    tabEMPRESALOGOTIPO_LOCAL: TStringField;
    tabEMPRESACTEOS_ID_SERIE: TIntegerField;
    tabEMPRESAMDFE_ID_SERIE: TIntegerField;
    tabCERTIFICADO_CONFIG: TFDQuery;
    tabEMPRESACTE_ID_SERIE: TIntegerField;
    qryTmp: TFDQuery;
    tabPESSOAS: TFDQuery;
    tabPRODUTOS: TFDQuery;
    tabEMPRESANFE_ID_SERIE: TIntegerField;
    tabEMPRESASIMPLES_ALIQ_CREDITO: TCurrencyField;
    tabEMPRESANFSE_LCP116: TStringField;
    tabEMPRESANFSE_PCISSQN: TCurrencyField;
    tabEMPRESANFSE_ID_SERIE: TIntegerField;
    tabPRODUTOSID_PRODUTO: TLargeintField;
    tabPRODUTOSID_EMPRESA: TIntegerField;
    tabPRODUTOSID_CODIGO: TIntegerField;
    tabPRODUTOSDESCRICAO: TStringField;
    tabPRODUTOSEAN: TStringField;
    tabPRODUTOSEAN_TRIB: TStringField;
    tabPRODUTOSEX_TIPI: TStringField;
    tabPRODUTOSGENERO: TStringField;
    tabPRODUTOSNCM: TStringField;
    tabPRODUTOSCEST: TStringField;
    tabPRODUTOSUN_COM: TStringField;
    tabPRODUTOSUN_TRIB: TStringField;
    tabPRODUTOSVL_COM: TFMTBCDField;
    tabPRODUTOSVL_TRIB: TFMTBCDField;
    tabPRODUTOSQT_TRIB: TFMTBCDField;
    tabPRODUTOSIPI_COD_ENQUADRAMENTO: TStringField;
    tabPRODUTOSIPI_CNPJ_PRODUTOR: TStringField;
    tabPRODUTOSORIGEM: TIntegerField;
    tabPRODUTOSSIMPLES_CSOSN: TStringField;
    tabPRODUTOSSIMPLES_ST_PBASE: TCurrencyField;
    tabPRODUTOSSIMPLES_ST_RBASE: TCurrencyField;
    tabPRODUTOSSIMPLES_ST_MVA: TCurrencyField;
    tabPRODUTOSSIMPLES_ST_ALIQUOTA: TFMTBCDField;
    tabPRODUTOSSIMPLES_ICMS_PBASE: TCurrencyField;
    tabPRODUTOSSIMPLES_ICMS_RBASE: TFMTBCDField;
    tabPRODUTOSSIMPLES_ICMS_ALIQUOTA: TFMTBCDField;
    tabPRODUTOSNORMAL_CST: TStringField;
    tabPRODUTOSNORMAL_ICMS_PBASE: TCurrencyField;
    tabPRODUTOSNORMAL_ICMS_RBASE: TCurrencyField;
    tabPRODUTOSNORMAL_ICMS_ALIQUOTA: TCurrencyField;
    tabPRODUTOSNORMAL_ICMS_MOTIVO_DES: TIntegerField;
    tabPRODUTOSNORMAL_ICMSST_PBASE: TCurrencyField;
    tabPRODUTOSNORMAL_ICMSST_RBASE: TCurrencyField;
    tabPRODUTOSNORMAL_ICMSST_MVA: TCurrencyField;
    tabPRODUTOSNORMAL_ICMSST_ALIQUOTA: TCurrencyField;
    qryTmp1: TFDQuery;
    tabCERTIFICADO_CONFIGID_EMPRESA: TIntegerField;
    tabCERTIFICADO_CONFIGID_MODELO: TIntegerField;
    tabCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField;
    tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField;
    tabCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField;
    tabCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField;
    tabCERTIFICADO_CONFIGWS_TIMEOUT: TIntegerField;
    tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField;
    tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField;
    tabCERTIFICADO_CONFIGID_CRYPT_TYPE: TIntegerField;
    tabCERTIFICADO_CONFIGID_HTTP_TYPE: TIntegerField;
    tabCERTIFICADO_CONFIGID_XMLSIGN_TYPE: TIntegerField;
    tabCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField;
    tabCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField;
    tabCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField;
    tabCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField;
    tabCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField;
    tabCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField;
    tabCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField;
    tabCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SENHA: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField;
    tabCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField;
    tabCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField;
    tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField;
    tabCERTIFICADO_CONFIGLOGOMARCA: TStringField;
    tabCERTIFICADO_CONFIGCAMPOS_FAT_OBRIGATORIO: TStringField;
    tabCERTIFICADO_CONFIGNFSE_SOAP_SALVAR_ENVELOPE: TStringField;
    tabCERTIFICADO_CONFIGNFSE_PATH_SCHEMAS: TStringField;
    tabCERTIFICADO_CONFIGNFSE_WEB_USER: TStringField;
    tabCERTIFICADO_CONFIGNFSE_WEB_PWD: TStringField;
    tabCERTIFICADO_CONFIGNFSE_LOGO_PRF: TStringField;
    tabTRANSPORTADORA: TFDQuery;
    tabTRANSPORTADORAID_TRANSPORTADORA: TLargeintField;
    tabTRANSPORTADORAID_EMPRESA: TIntegerField;
    tabTRANSPORTADORAID_CODIGO: TIntegerField;
    tabTRANSPORTADORAID_ATIVO: TIntegerField;
    tabTRANSPORTADORARAZAOSOCIAL: TStringField;
    tabTRANSPORTADORANOMEFANTASIA: TStringField;
    tabTRANSPORTADORACNPJ: TStringField;
    tabTRANSPORTADORAIE: TStringField;
    tabTRANSPORTADORAENDERECO: TStringField;
    tabTRANSPORTADORANUMERO: TStringField;
    tabTRANSPORTADORACOMPLEMENTO: TStringField;
    tabTRANSPORTADORABAIRRO: TStringField;
    tabTRANSPORTADORACEP: TStringField;
    tabTRANSPORTADORAID_CIDADES_UF: TStringField;
    tabTRANSPORTADORAID_CIDADES_IBGE: TIntegerField;
    tabTRANSPORTADORATELEFONEFIXO: TStringField;
    tabTRANSPORTADORAEMAIL: TStringField;
    tabTRANSPORTADORACONTATO: TStringField;
    tabTRANSPORTADORAOBSERVACOES: TStringField;
    tabTRANSPORTADORACADASTRO_DATA: TSQLTimeStampField;
    tabTRANSPORTADORAALTERACAO_DATA: TSQLTimeStampField;
    qryPESSOAS: TFDQuery;
    qryPESSOASID_EMPRESA: TIntegerField;
    qryPESSOASID_PESSOA: TIntegerField;
    qryPESSOASID_JURIDICA: TIntegerField;
    qryPESSOASID_ATIVO: TIntegerField;
    qryPESSOASID_PRODUTOR: TIntegerField;
    qryPESSOASID_FORNECEDOR: TIntegerField;
    qryPESSOASID_TRANSPORTADORA: TIntegerField;
    qryPESSOASID_TIPO_CONTRIBUINTE: TIntegerField;
    qryPESSOASRAZAOSOCIAL: TStringField;
    qryPESSOASNOMEFANTASIA: TStringField;
    qryPESSOASCPF_CNPJ: TStringField;
    qryPESSOASIE_RG: TStringField;
    qryPESSOASIM: TStringField;
    qryPESSOASENDERECO: TStringField;
    qryPESSOASNUMERO: TStringField;
    qryPESSOASCOMPLEMENTO: TStringField;
    qryPESSOASBAIRRO: TStringField;
    qryPESSOASCEP: TStringField;
    qryPESSOASID_CIDADES_UF: TStringField;
    qryPESSOASID_CIDADES_IBGE: TIntegerField;
    qryPESSOASTELEFONEFIXO: TStringField;
    qryPESSOASCELULAR: TStringField;
    qryPESSOASTELEFONETRABALHO: TStringField;
    qryPESSOASEMAIL: TStringField;
    qryPESSOASCONTATO: TStringField;
    qryPESSOASNASCIMENTO_ABERTURA: TDateField;
    qryPESSOASESTADOCIVIL: TStringField;
    qryPESSOASCONJUGE: TStringField;
    qryPESSOASCONJUGE_NASCIMENTO: TDateField;
    qryPESSOASMAE: TStringField;
    qryPESSOASPAI: TStringField;
    qryPESSOASSEXO: TStringField;
    qryPESSOASOBSERVACOES: TStringField;
    qryPESSOASCADASTRO_DATA: TSQLTimeStampField;
    qryPESSOASALTERACAO_DATA: TSQLTimeStampField;
    qryPESSOASFOTO: TBlobField;
    qryPESSOASCBR_HISTORICO: TStringField;
    qryPESSOASCBR_VALOR: TFMTBCDField;
    tabCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField;
    tabPESSOASID_EMPRESA: TIntegerField;
    tabPESSOASID_PESSOA: TIntegerField;
    tabPESSOASID_JURIDICA: TIntegerField;
    tabPESSOASID_ATIVO: TIntegerField;
    tabPESSOASID_PRODUTOR: TIntegerField;
    tabPESSOASID_FORNECEDOR: TIntegerField;
    tabPESSOASID_TRANSPORTADORA: TIntegerField;
    tabPESSOASID_TIPO_CONTRIBUINTE: TIntegerField;
    tabPESSOASRAZAOSOCIAL: TStringField;
    tabPESSOASNOMEFANTASIA: TStringField;
    tabPESSOASCPF_CNPJ: TStringField;
    tabPESSOASIE_RG: TStringField;
    tabPESSOASIM: TStringField;
    tabPESSOASENDERECO: TStringField;
    tabPESSOASNUMERO: TStringField;
    tabPESSOASCOMPLEMENTO: TStringField;
    tabPESSOASBAIRRO: TStringField;
    tabPESSOASCEP: TStringField;
    tabPESSOASID_CIDADES_UF: TStringField;
    tabPESSOASID_CIDADES_IBGE: TIntegerField;
    tabPESSOASTELEFONEFIXO: TStringField;
    tabPESSOASCELULAR: TStringField;
    tabPESSOASTELEFONETRABALHO: TStringField;
    tabPESSOASEMAIL: TStringField;
    tabPESSOASCONTATO: TStringField;
    tabPESSOASNASCIMENTO_ABERTURA: TDateField;
    tabPESSOASESTADOCIVIL: TStringField;
    tabPESSOASCONJUGE: TStringField;
    tabPESSOASCONJUGE_NASCIMENTO: TDateField;
    tabPESSOASMAE: TStringField;
    tabPESSOASPAI: TStringField;
    tabPESSOASSEXO: TStringField;
    tabPESSOASOBSERVACOES: TStringField;
    tabPESSOASCADASTRO_DATA: TSQLTimeStampField;
    tabPESSOASALTERACAO_DATA: TSQLTimeStampField;
    tabPESSOASFOTO: TBlobField;
    tabPESSOASCBR_HISTORICO: TStringField;
    tabPESSOASCBR_VALOR: TBCDField;
    procedure cnx_BDBeforeConnect(Sender: TObject);
    procedure tabEMPRESAAfterOpen(DataSet: TDataSet);
    procedure tabEMPRESABeforePost(DataSet: TDataSet);
    procedure tabEMPRESANewRecord(DataSet: TDataSet);
    procedure tabCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
    procedure tabCERTIFICADO_CONFIGBeforePost(DataSet: TDataSet);
    procedure tabCERTIFICADO_CONFIGNewRecord(DataSet: TDataSet);
    procedure tabCERTIFICADO_CONFIGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabPESSOASBeforeOpen(DataSet: TDataSet);
    procedure tabPESSOASBeforePost(DataSet: TDataSet);
    procedure tabPESSOASNewRecord(DataSet: TDataSet);
    procedure tabPRODUTOSNewRecord(DataSet: TDataSet);
    procedure tabTRANSPORTADORANewRecord(DataSet: TDataSet);
    procedure tabTRANSPORTADORABeforePost(DataSet: TDataSet);
    procedure tabPRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure tabTRANSPORTADORABeforeOpen(DataSet: TDataSet);
    procedure qryPESSOASBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  published
    procedure TFieldSetOnlyNumber(Sender: TField; const Text: string);
  private
    procedure configurarCNX;
    function GetNEW_ID_CERTIFICADO_CONFIG: Integer;
  public
    procedure TratarErro(E: EFDException);
  end;

var
  dtmDefault: TdtmDefault;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  uclassCONFIGini,
  ufuncoes,
  uclassEMPRESA,
  ACBrUtil,
  ACBrValidador,
  uclassPESSOA,
  uclassPRODUTO,
  uclassTRANSPORTADORA;

{$R *.dfm}

  { TdmCTeOS }
procedure TdtmDefault.cnx_BDBeforeConnect(Sender: TObject);
begin
  configurarCNX;
end;

procedure TdtmDefault.configurarCNX;
Var
  Server, Server_Name, Server_Path, Server_Porta, Server_Protocolo: String;
begin
    //parametros da conexao com o banco
  Server_Protocolo := 'TCP/IP';
  Server_Porta     := oConfigINI.Conexao.Server_Port;

  Server      := oConfigINI.Conexao.Server;

  //Server_Path := oConfigINI.Conexao.LocalBanco;
   //Server_Path := 'c:\projetos\erp\bin\bd.fdb';
  Server_Path := trim(oConfigINI.Conexao.LocalBanco);
  Server_Name := oConfigINI.Conexao.Server;
  flink.VendorLib := extractfilepath(application.ExeName)+'fbclient.dll';
    //seta banco local
  if ((Server = 'LOCAL')or(Server = 'LOCALHOST')OR(Server = '127.0.0.1')) then
  begin
    Server           := EmptyStr;
    Server_Protocolo := 'LOCAL';
    Server_Name      := '127.0.0.1';
    Server_Path      := ExtractfilePath(Application.ExeName) + 'bd.fdb';
  end;

  cnx_BD.Params.Clear;
  cnx_BD.Params.Add('DriverID=FB');
  cnx_BD.Params.Add('User_Name=SYSDBA');
  cnx_BD.Params.Add('Password=masterkey');
  cnx_BD.Params.Add('Port=' + Server_Porta);
  cnx_BD.Params.Add('Server=' + Server);
  cnx_BD.Params.Add('Protocol=' + Server_Protocolo);
  cnx_BD.Params.Add('Database=' + Server_Path);
end;

procedure TdtmDefault.DataModuleCreate(Sender: TObject);
begin
//http://192.168.10.103:1005/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128
//170.239.224.193  1005
//http://170.239.224.193:1005/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128
end;

procedure TdtmDefault.tabCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
begin
  tabCERTIFICADO_CONFIG.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmDefault.tabCERTIFICADO_CONFIGBeforePost(DataSet: TDataSet);
begin
  if DataSet.State in [ dsInsert ] then
    DataSet.FieldByName('ID_CERTIFICADOCONFIG').AsInteger := GetNEW_ID_CERTIFICADO_CONFIG;

    //seta obrigatório caso email_enviar = 'S'
  TFDQuery(DataSet).FieldByName('EMAIL_SERVIDOR').Required := TFDQuery(DataSet).FieldByName('EMAIL_ENVIAR').AsString = 'S';
  TFDQuery(DataSet).FieldByName('EMAIL_PORTA').Required    := TFDQuery(DataSet).FieldByName('EMAIL_ENVIAR').AsString = 'S';
  TFDQuery(DataSet).FieldByName('EMAIL_USUARIO').Required  := TFDQuery(DataSet).FieldByName('EMAIL_ENVIAR').AsString = 'S';
  TFDQuery(DataSet).FieldByName('EMAIL_SENHA').Required    := TFDQuery(DataSet).FieldByName('EMAIL_ENVIAR').AsString = 'S';
  TFDQuery(DataSet).FieldByName('TIME_ZONE_MANUAL').Required := TFDQuery(DataSet).FieldByName('TIME_ZONE_MODO').AsInteger = 2;

  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmDefault.tabCERTIFICADO_CONFIGNewRecord(DataSet: TDataSet);
begin
  TFDQuery(DataSet).FieldByName('ID_EMPRESA').AsInteger  := oEmpresa.ID;
  TFDQuery(DataSet).FieldByName('WS_TIMEOUT').AsInteger  := 5000;
  TFDQuery(DataSet).FieldByName('ID_SSL_TYPE').AsInteger := 6;
  TFDQuery(DataSet).FieldByName('EMAIL_ENVIAR').AsString := 'N';
  TFDQuery(DataSet).FieldByName('TIME_ZONE_MODO').AsInteger := 0;
  TFDQuery(DataSet).FieldByName('WS_UF_DESTINO').AsString := 'MG';
  TFDQuery(DataSet).FieldByName('ID_TIPO_AMBIENTE').AsInteger := 1;
  TFDQuery(DataSet).FieldByName('ID_FORMA_EMISSAO').AsInteger := 0;
  TFDQuery(DataSet).FieldByName('EMAIL_SENHA_SEGURA').AsString := 'S';
  TFDQuery(DataSet).FieldByName('EMAIL_SENHA_TLS').AsString := 'N';
  TFDQuery(DataSet).FieldByName('ID_REPORT_ORIENTACAO').AsInteger := 0;
  TFDQuery(DataSet).FieldByName('CAMPOS_FAT_OBRIGATORIO').AsString := 'N';
  TFDQuery(DataSet).FieldByName('NFSE_SOAP_SALVAR_ENVELOPE').AsString := 'N';
  TFDQuery(DataSet).FieldByName('MANTER_ARQUIVOS_TEMPORARIOS').AsString := 'S';
end;

procedure TdtmDefault.tabCERTIFICADO_CONFIGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  TratarErro(AException);
end;

procedure TdtmDefault.tabEMPRESAAfterOpen(DataSet: TDataSet);
begin
  tabCIDADES_UF.Active := DataSet.Active;
end;

procedure TdtmDefault.tabEMPRESABeforePost(DataSet: TDataSet);
var
  ACNPJ: String;
  iErr : String;
begin
  if DataSet.State in [ dsInsert ] then
  begin
    tabEMPRESAID_EMPRESA.AsInteger     := oEmpresa.GetNewID;
    tabEMPRESACADASTRO_DATA.AsDateTime := Now;
  end;

  ACNPJ := ACBrUtil.OnlyNumber(tabEMPRESACNPJ.AsString);

  if ACNPJ.Trim.Length > 0 then
    iErr := ACBrValidador.ValidarCNPJ(ACNPJ.Trim);

  if iErr.Trim.Length > 0 then
    raise Exception.Create(iErr);

  if tabEMPRESAID_REGIME.AsInteger = 3 then
    tabEMPRESASIMPLES_ALIQ_CREDITO.AsCurrency := 0.00;
end;

procedure TdtmDefault.tabEMPRESANewRecord(DataSet: TDataSet);
begin
  tabEMPRESACTE_ID_SERIE.AsInteger   := 0;
  tabEMPRESACTEOS_ID_SERIE.AsInteger := 0;
  tabEMPRESAMDFE_ID_SERIE.AsInteger  := 0;
  tabEMPRESANFE_ID_SERIE.AsInteger   := 0;
  tabEMPRESANFSE_ID_SERIE.AsInteger  := 0;
end;

procedure TdtmDefault.tabPESSOASBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmDefault.tabPESSOASBeforePost(DataSet: TDataSet);
var
  vResult: String;
begin
  if DataSet.State in [ dsInsert ] then
    tabPESSOASID_PESSOA.AsInteger := oPessoa.GetNewID;

  tabPESSOASID_ATIVO.Required             := True;
  tabPESSOASID_JURIDICA.Required          := True;
  tabPESSOASID_PRODUTOR.Required          := True;
  tabPESSOASRAZAOSOCIAL.Required          := True;
  tabPESSOASCADASTRO_DATA.Required        := True;
  tabPESSOASID_FORNECEDOR.Required        := True;
  tabPESSOASID_TRANSPORTADORA.Required    := True;
  tabPESSOASID_TIPO_CONTRIBUINTE.Required := True;

  if tabPESSOASCPF_CNPJ.AsString.Trim.Length > 0 then
  begin
    case tabPESSOASID_JURIDICA.AsInteger of
      0:
        vResult := ACBrValidador.ValidarCPF(tabPESSOASCPF_CNPJ.AsString.Trim);
      1:
        vResult := ACBrValidador.ValidarCNPJ(tabPESSOASCPF_CNPJ.AsString.Trim);
    end;

    if vResult.Trim.Length > 0 then
    begin
      tabPESSOASCPF_CNPJ.FocusControl;
      raise Exception.CreateFmt('O documento "%s" informado não é válido!', [ tabPESSOASCPF_CNPJ.AsString.Trim ]);
    end;
  end;
end;

procedure TdtmDefault.tabPESSOASNewRecord(DataSet: TDataSet);
begin
  tabPESSOASID_ATIVO.AsInteger             := 1;
  tabPESSOASID_EMPRESA.AsInteger           := oEmpresa.ID;
  tabPESSOASID_JURIDICA.AsInteger          := 0;
  tabPESSOASID_PRODUTOR.AsInteger          := 0;
  tabPESSOASID_FORNECEDOR.AsInteger        := 0;
  tabPESSOASID_TRANSPORTADORA.AsInteger    := 0;
  tabPESSOASID_TIPO_CONTRIBUINTE.AsInteger := 1;
  tabPESSOASID_CIDADES_UF.AsString         := oEmpresa.ID_UF;
  tabPESSOASID_CIDADES_IBGE.AsInteger      := oEmpresa.ID_CIDADE_IBGE;
  tabPESSOASCADASTRO_DATA.AsDateTime       := Now;
  tabPESSOASCBR_VALOR.AsCurrency           := 0.00;
end;

procedure TdtmDefault.tabPRODUTOSBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmDefault.tabPRODUTOSNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
  DataSet.FieldByName('VL_COM').AsCurrency    := 0.00;
end;

procedure TdtmDefault.tabTRANSPORTADORABeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmDefault.tabTRANSPORTADORABeforePost(DataSet: TDataSet);
var
  vResult: String;
begin
  if DataSet.State in [ dsInsert ] then
  begin
    tabTRANSPORTADORAID_TRANSPORTADORA.AsInteger := oTRANS.GetNewID;
    tabTRANSPORTADORAID_CODIGO.AsInteger         := oTRANS.GetNewCODIGO;
  end;

  tabTRANSPORTADORAID_ATIVO.Required      := True;
  tabTRANSPORTADORARAZAOSOCIAL.Required   := True;
  tabTRANSPORTADORACADASTRO_DATA.Required := True;
  if tabTRANSPORTADORACNPJ.AsString.Trim.Length > 0 then
  begin
    vResult := ACBrValidador.ValidarCNPJ(ACBrUtil.OnlyNumber(tabTRANSPORTADORACNPJ.AsString.Trim));
  end;

  if vResult.Trim.Length > 0 then
  begin
    tabTRANSPORTADORACNPJ.FocusControl;
    raise Exception.CreateFmt('O documento "%s" informado não é válido!', [ tabTRANSPORTADORACNPJ.AsString.Trim ]);
  end;
end;

procedure TdtmDefault.tabTRANSPORTADORANewRecord(DataSet: TDataSet);
begin
  tabTRANSPORTADORAID_ATIVO.AsInteger        := 1;
  tabTRANSPORTADORAID_EMPRESA.AsInteger      := oEmpresa.ID;
  tabTRANSPORTADORAID_CIDADES_UF.AsString    := oEmpresa.ID_UF;
  tabTRANSPORTADORAID_CIDADES_IBGE.AsInteger := oEmpresa.ID_CIDADE_IBGE;
  tabTRANSPORTADORACADASTRO_DATA.AsDateTime  := Now;
end;

procedure TdtmDefault.TFieldSetOnlyNumber(Sender: TField; const Text: string);
begin
  Sender.AsString := ACBrUtil.OnlyNumber(Text);
end;

procedure TdtmDefault.TratarErro(E: EFDException);
var
  iErrMSG: String;
begin
  iErrMSG := EmptyStr;

  if E is EFDDBEngineException then
  begin

    if E is EFDDBEngineException then
    begin
      case EFDDBEngineException(E).Kind of
        ekFKViolated:
          iErrMSG := 'Atenção, ocorreu erro de violação de chave estrangeira, detalhe do erro abaixo, favor repetir todo procedimento.' + sLineBreak + sLineBreak + E.Message;
        ekUKViolated:
          iErrMSG := 'Atenção, ocorreu erro de violação de chave primária, detalhe do erro abaixo, favor repetir todo procedimento.' + sLineBreak + sLineBreak + E.Message;
        else
          iErrMSG := 'Atenção, ocorreu erro desconhecido, detalhe do erro abaixo, favor repetir todo procedimento.' + sLineBreak + sLineBreak + E.Message;
      end;
    end;
  end;

  if iErrMSG.Trim.Length > 0 then
    Application.MessageBox(PChar(iErrMSG), 'Atenção!', MB_ICONEXCLAMATION + MB_ICONASTERISK);
end;

function TdtmDefault.GetNEW_ID_CERTIFICADO_CONFIG: Integer;
begin
  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := Format('SELECT MAX(ID_CERTIFICADOCONFIG) FROM CERTIFICADO_CONFIG WHERE ID_EMPRESA = %d AND ID_MODELO = 58;', [ oEmpresa.ID ]);
    dtmDefault.qryTmp.Open;

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

procedure TdtmDefault.qryPESSOASBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
