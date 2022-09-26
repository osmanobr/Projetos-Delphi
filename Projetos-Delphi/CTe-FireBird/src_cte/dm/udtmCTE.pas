unit udtmCTE;

interface

uses
  System.SysUtils,
  System.Classes,
  ACBrDFe,
  ACBrCTe,
  ACBrMail,
  ACBrBase,
  ACBrCTeDACTEClass,
  ACBrCTeDACTeRLClass,
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
  Vcl.Dialogs,
  ACBrDFeReport,
  RLFilters,
  RLPDFFilter;

type
  TdtmCTe = class(TDataModule)
    ACBrCTeDACTeRL: TACBrCTeDACTeRL;
    ACBrMail: TACBrMail;
    ACBrCTe: TACBrCTe;
    OpenDialog: TOpenDialog;
    qryDESTINATARIO: TFDQuery;
    qryUF: TFDQuery;
    qryMUNICIPIO: TFDQuery;
    qryPESSOA: TFDQuery;
    updEvento: TFDQuery;
    updEnviado: TFDQuery;
    updChave: TFDQuery;
    updXMLvalidado: TFDQuery;
    SaveDialog: TSaveDialog;
    tabCERTIFICADO_CONFIG: TFDQuery;
    tabCERTIFICADO_CONFIGID_EMPRESA: TIntegerField;
    tabCERTIFICADO_CONFIGID_MODELO: TIntegerField;
    tabCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField;
    tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField;
    tabCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField;
    tabCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField;
    tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField;
    tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField;
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
    tabCTE: TFDQuery;
    dstabCTE: TDataSource;
    qryNATUREZAS: TFDQuery;
    qryCTeEVENTOS: TFDQuery;
    tabCTE_FLUXO_PASSAGENS: TFDQuery;
    tabCTE_COMPONENTES: TFDQuery;
    tabCTE_ORDEM_COLETA: TFDQuery;
    tabCTE_CARGA_QUANTIDADES: TFDQuery;
    tabCTE_VEICULOS_NOVOS: TFDQuery;
    tabCTE_NFE: TFDQuery;
    qryREMETENTE: TFDQuery;
    qryTOMADOR_OUTROS: TFDQuery;
    qryEMITENTE: TFDQuery;
    qryEXPEDIDOR: TFDQuery;
    qryRECEBEDOR: TFDQuery;
    tabCTE_EVENTO: TFDQuery;
    tabCTE_EVENTO_CCE_ITENS: TFDQuery;
    dtstabCTE_EVENTO: TDataSource;
    tabCTE_DOCANT: TFDQuery;
    qryCERTIFICADO_CONFIG: TFDQuery;
    qryCERTIFICADO_CONFIGID_EMPRESA: TIntegerField;
    qryCERTIFICADO_CONFIGID_MODELO: TIntegerField;
    qryCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField;
    qryCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField;
    qryCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField;
    qryCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField;
    qryCERTIFICADO_CONFIGWS_TIMEOUT: TIntegerField;
    qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField;
    qryCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField;
    qryCERTIFICADO_CONFIGID_CRYPT_TYPE: TIntegerField;
    qryCERTIFICADO_CONFIGID_HTTP_TYPE: TIntegerField;
    qryCERTIFICADO_CONFIGID_XMLSIGN_TYPE: TIntegerField;
    qryCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField;
    qryCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField;
    qryCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField;
    qryCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField;
    qryCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField;
    qryCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField;
    qryCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField;
    qryCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField;
    qryCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField;
    qryCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField;
    qryCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField;
    qryCERTIFICADO_CONFIGLOGOMARCA: TStringField;
    qryCERTIFICADO_CONFIGCAMPOS_FAT_OBRIGATORIO: TStringField;
    qryCERTIFICADO_CONFIGNFSE_SOAP_SALVAR_ENVELOPE: TStringField;
    qryCERTIFICADO_CONFIGNFSE_PATH_SCHEMAS: TStringField;
    qryCERTIFICADO_CONFIGNFSE_WEB_USER: TStringField;
    qryCERTIFICADO_CONFIGNFSE_WEB_PWD: TStringField;
    qryCERTIFICADO_CONFIGNFSE_LOGO_PRF: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField;
    tabCTE_DOCANTID_EMPRESA: TIntegerField;
    tabCTE_DOCANTID_CTE: TIntegerField;
    tabCTE_DOCANTID_SERIE: TIntegerField;
    tabCTE_DOCANTXML_CHAVE: TStringField;
    tabCTE_DOCANTCNPJCPF: TStringField;
    tabCTE_DOCANTIE: TStringField;
    tabCTE_DOCANTUF: TStringField;
    tabCTE_DOCANTRAZAOSOCIAL: TStringField;
    tabCTEID_EMPRESA: TIntegerField;
    tabCTEID_CTE: TIntegerField;
    tabCTEID_SERIE: TIntegerField;
    tabCTEDT_HORA_EMISSAO: TSQLTimeStampField;
    tabCTEID_IND_CTE_GLOBALIZADO: TStringField;
    tabCTEID_INF_COD_NUMERICO: TStringField;
    tabCTEID_COD_NUMERICO: TIntegerField;
    tabCTEID_MODELO: TIntegerField;
    tabCTEID_CFOP: TIntegerField;
    tabCTENAT_OPERACAO: TStringField;
    tabCTEID_MODAL: TIntegerField;
    tabCTEID_TIPO_SERVICO: TIntegerField;
    tabCTEID_FINALIDADE_EMISSAO: TIntegerField;
    tabCTEID_FORMA_EMISSAO: TIntegerField;
    tabCTEID_CHAVE_CTE_REFERENCIADO: TStringField;
    tabCTEID_UF_EMISSAO: TStringField;
    tabCTEID_MUNICIPIO_EMISSAO: TIntegerField;
    tabCTEID_UF_INICIO_PRESTACAO: TStringField;
    tabCTEID_MUNICIPIO_INICIO_PRESTACAO: TIntegerField;
    tabCTEID_UF_TERMINO_PRESTACAO: TStringField;
    tabCTEID_MUNICIPIO_TERMINO_PRESTACA: TIntegerField;
    tabCTECARACTERISTICA_ADICIONAL_TRANSP: TStringField;
    tabCTECARACTERISTICA_ADICIONAL_SERVIC: TStringField;
    tabCTEFUNCIONARIO_EMISSOR_CTE: TStringField;
    tabCTEID_MUNICIPIO_ORIGEM_CALC_FRETE: TStringField;
    tabCTEID_MUNICIPIO_DESTINO_CALC_FRETE: TStringField;
    tabCTEFLUXO_CODIGO_ROTA: TStringField;
    tabCTEFLUXO_MUNICIPIO_ORIGEM: TStringField;
    tabCTEFLUXO_MUNICIPIO_DESTINO: TStringField;
    tabCTEPREVISAO_ENTREGA_DATA_ID_TIPO: TIntegerField;
    tabCTEPREVISAO_ENTREGA_DATA_INICIO: TDateField;
    tabCTEPREVISAO_ENTREGA_DATA_FINAL: TDateField;
    tabCTEPREVISAO_ENTREGA_HORA_ID_TIPO: TIntegerField;
    tabCTEPREVISAO_ENTREGA_HORA_INICIO: TTimeField;
    tabCTEPREVISAO_ENTREGA_HORA_FINAL: TTimeField;
    tabCTERECEBEDOR_RETIRA: TStringField;
    tabCTERECEBEDOR_DETALHES: TStringField;
    tabCTEID_TOMADOR_TIPO: TIntegerField;
    tabCTEID_TOMADOR_OUTROS: TIntegerField;
    tabCTEID_REMETENTE_TIPO: TIntegerField;
    tabCTEID_REMETENTE: TIntegerField;
    tabCTEID_EXPEDIDOR_TIPO: TIntegerField;
    tabCTEID_EXPEDIDOR: TIntegerField;
    tabCTEID_RECEBEDOR_TIPO: TIntegerField;
    tabCTEID_RECEBEDOR: TIntegerField;
    tabCTEID_DESTINATARIO_TIPO: TIntegerField;
    tabCTEID_DESTINATARIO: TIntegerField;
    tabCTEVALOR_TOTAL_PRETACAO_SERVICO: TBCDField;
    tabCTEVALOR_A_RECEBER: TBCDField;
    tabCTEVALOR_TOTAL_DOS_TRIBUTOS: TBCDField;
    tabCTEICMS_ID_CST: TIntegerField;
    tabCTEICMS_PERCENTUAL_RED_DA_BC: TBCDField;
    tabCTEICMS_VALOR_DA_BC: TBCDField;
    tabCTEICMS_ALIQUOTA: TBCDField;
    tabCTEICMS_VALOR: TBCDField;
    tabCTEICMS_VALOR_CREDITO_OUT_REC: TBCDField;
    tabCTEICMS_INF_ADICIONAIS_FISCO: TStringField;
    tabCTEICMS_I_COBR_OPER_INTERESTADUAL: TStringField;
    tabCTEICMS_I_VALOR_BASE_CALCULO: TBCDField;
    tabCTEICMS_I_ALIQUOTA_INTERNA_UF_TERM: TBCDField;
    tabCTEICMS_I_ALIQUOTA_INTERESTADUAL: TBCDField;
    tabCTEICMS_I_IDPORC_PARTILHA: TIntegerField;
    tabCTEICMS_I_PORC_PARTILHA_UF_TERMINO: TBCDField;
    tabCTEICMS_I_VLR_ICMS_PARTILH_UF_INIC: TBCDField;
    tabCTEICMS_I_VLR_ICMS_PARTILH_UF_TERM: TBCDField;
    tabCTEICMS_I_PORC_FCP_UF_TERMINO: TBCDField;
    tabCTEICMS_I_VLR_FCP_UF_TERMINO: TBCDField;
    tabCTECARGA_VALOR: TBCDField;
    tabCTECARGA_PRODUTO_PREDOMINANTE: TStringField;
    tabCTECARGA_PRODUTO_CARACTERISTICAS: TStringField;
    tabCTECTE_SUB_CHAVE_ORIGINAL: TStringField;
    tabCTECTE_SUB_TOMADOR_CONTRIBUINTE: TStringField;
    tabCTECTE_SUB_TOMADOR_NCONTRIBUINTE: TStringField;
    tabCTECTE_SUB_CHAVE_CTE_SUBSTITUTO: TStringField;
    tabCTECTE_SUB_CHAVE_NFE_SUBSTITUTO: TStringField;
    tabCTECTE_SUB_CHAVE_ANULACAO: TStringField;
    tabCTERODO_RNTRC: TStringField;
    tabCTEOBSERVACOES_GERAIS: TStringField;
    tabCTEOBSERVACOES_CONTRIBUINTE: TStringField;
    tabCTEOBSERVACOES_FISCO: TStringField;
    tabCTECONTIGENCIA_DT_HORA: TSQLTimeStampField;
    tabCTECONTIGENCIA_MOTIVO: TStringField;
    tabCTEID_SITUACAO: TStringField;
    tabCTEXML_CHAVE: TStringField;
    tabCTEXML_PROTOCOLO: TStringField;
    tabCTEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField;
    tabCTEXML_STATUS_CODIGO: TIntegerField;
    tabCTEXML_XMOTIVO: TStringField;
    tabCTEXML_STRING: TMemoField;
    tabCTEXML_STRING_PROTOCOLO: TMemoField;
    tabCTEXML_CANC_DATAHORA: TSQLTimeStampField;
    tabCTEXML_CANC_PROTOCOLO: TStringField;
    tabCTEXML_CANC_STRING: TMemoField;
    tabCTEMUNICIPIO_EMISSAO: TStringField;
    tabCTEMUNICIPIO_INICIO_PRESTACAO: TStringField;
    tabCTEMUNICIPIO_TERMINO_PRESTACAO: TStringField;
    tabCTE_NFEID_EMPRESA: TIntegerField;
    tabCTE_NFEID_CTE: TIntegerField;
    tabCTE_NFEID_SERIE: TIntegerField;
    tabCTE_NFENFE_CHAVE: TStringField;
    tabCTE_NFENFE_PIN: TStringField;
    tabCTE_NFEDT_PREVISAO_ENTREGA: TDateField;
    tabCTE_FLUXO_PASSAGENSID_EMPRESA: TIntegerField;
    tabCTE_FLUXO_PASSAGENSID_CTE: TIntegerField;
    tabCTE_FLUXO_PASSAGENSID_SERIE: TIntegerField;
    tabCTE_FLUXO_PASSAGENSPASSAGEM: TStringField;
    tabCTE_COMPONENTESID_EMPRESA: TIntegerField;
    tabCTE_COMPONENTESID_CTE: TIntegerField;
    tabCTE_COMPONENTESID_SERIE: TIntegerField;
    tabCTE_COMPONENTESNOME: TStringField;
    tabCTE_COMPONENTESVALOR: TBCDField;
    tabCTE_ORDEM_COLETAID_EMPRESA: TIntegerField;
    tabCTE_ORDEM_COLETAID_CTE: TIntegerField;
    tabCTE_ORDEM_COLETAID_SERIE: TIntegerField;
    tabCTE_ORDEM_COLETASERIE: TStringField;
    tabCTE_ORDEM_COLETANUMERO: TStringField;
    tabCTE_ORDEM_COLETADT_EMISSAO: TDateField;
    tabCTE_ORDEM_COLETACNPJ: TStringField;
    tabCTE_ORDEM_COLETAIE: TStringField;
    tabCTE_ORDEM_COLETAID_UF: TStringField;
    tabCTE_ORDEM_COLETATELEFONE: TStringField;
    tabCTE_ORDEM_COLETACOD_INT_TRANS: TStringField;
    tabCTE_CARGA_QUANTIDADESID_EMPRESA: TIntegerField;
    tabCTE_CARGA_QUANTIDADESID_CTE: TIntegerField;
    tabCTE_CARGA_QUANTIDADESID_SERIE: TIntegerField;
    tabCTE_CARGA_QUANTIDADESID_UNIDADE_MEDIDA: TIntegerField;
    tabCTE_CARGA_QUANTIDADESTIPO_MEDIDA: TStringField;
    tabCTE_CARGA_QUANTIDADESQUANTIDADE: TBCDField;
    tabCTE_CARGA_QUANTIDADESUNIDADE: TStringField;
    tabCTE_VEICULOS_NOVOSID_EMPRESA: TIntegerField;
    tabCTE_VEICULOS_NOVOSID_CTE: TIntegerField;
    tabCTE_VEICULOS_NOVOSID_SERIE: TIntegerField;
    tabCTE_VEICULOS_NOVOSCOR: TStringField;
    tabCTE_VEICULOS_NOVOSCOR_DESCRICAO: TStringField;
    tabCTE_VEICULOS_NOVOSCODIGO_MARCA_MODELO: TStringField;
    tabCTE_VEICULOS_NOVOSCHASSI: TStringField;
    tabCTE_VEICULOS_NOVOSVALOR_UNITARIO: TBCDField;
    tabCTE_VEICULOS_NOVOSFRETE_UNITARIO: TBCDField;
    qryNATUREZASNAT_OPERACAO: TStringField;
    qryUFID_CIDADES_UF: TStringField;
    qryUFCODIBGE: TIntegerField;
    qryUFDESCRICAO: TStringField;
    qryMUNICIPIOID_CIDADES_IBGE: TIntegerField;
    qryMUNICIPIOID_CIDADES_UF: TStringField;
    qryMUNICIPIOID_PAIS: TIntegerField;
    qryMUNICIPIODESCRICAO: TStringField;
    qryPESSOAID_EMPRESA: TIntegerField;
    qryPESSOAID_PESSOA: TIntegerField;
    qryPESSOAID_JURIDICA: TIntegerField;
    qryPESSOAID_ATIVO: TIntegerField;
    qryPESSOAID_PRODUTOR: TIntegerField;
    qryPESSOAID_FORNECEDOR: TIntegerField;
    qryPESSOAID_TRANSPORTADORA: TIntegerField;
    qryPESSOAID_TIPO_CONTRIBUINTE: TIntegerField;
    qryPESSOARAZAOSOCIAL: TStringField;
    qryPESSOANOMEFANTASIA: TStringField;
    qryPESSOACPF_CNPJ: TStringField;
    qryPESSOAIE_RG: TStringField;
    qryPESSOAIM: TStringField;
    qryPESSOAENDERECO: TStringField;
    qryPESSOANUMERO: TStringField;
    qryPESSOACOMPLEMENTO: TStringField;
    qryPESSOABAIRRO: TStringField;
    qryPESSOACEP: TStringField;
    qryPESSOAID_CIDADES_UF: TStringField;
    qryPESSOAID_CIDADES_IBGE: TIntegerField;
    qryPESSOATELEFONEFIXO: TStringField;
    qryPESSOACELULAR: TStringField;
    qryPESSOATELEFONETRABALHO: TStringField;
    qryPESSOAEMAIL: TStringField;
    qryPESSOACONTATO: TStringField;
    qryPESSOANASCIMENTO_ABERTURA: TDateField;
    qryPESSOAESTADOCIVIL: TStringField;
    qryPESSOACONJUGE: TStringField;
    qryPESSOACONJUGE_NASCIMENTO: TDateField;
    qryPESSOAMAE: TStringField;
    qryPESSOAPAI: TStringField;
    qryPESSOASEXO: TStringField;
    qryPESSOAOBSERVACOES: TStringField;
    qryPESSOACADASTRO_DATA: TSQLTimeStampField;
    qryPESSOAALTERACAO_DATA: TSQLTimeStampField;
    qryPESSOAFOTO: TBlobField;
    qryPESSOACBR_HISTORICO: TStringField;
    qryPESSOACBR_VALOR: TBCDField;
    qryCTeEVENTOSID_EMPRESA: TIntegerField;
    qryCTeEVENTOSID_CTE: TIntegerField;
    qryCTeEVENTOSID_SERIE: TIntegerField;
    qryCTeEVENTOSID_EVENTO: TIntegerField;
    qryCTeEVENTOSID_SEQUENCIA: TIntegerField;
    qryCTeEVENTOSTIPO: TStringField;
    qryCTeEVENTOSDTHR_EVENTO: TSQLTimeStampField;
    qryCTeEVENTOSLOTE: TStringField;
    qryCTeEVENTOSDTHR_PROTOCOLO: TSQLTimeStampField;
    qryCTeEVENTOSNUMERO_PROTOCOLO: TStringField;
    qryCTeEVENTOSCSTAT: TIntegerField;
    qryCTeEVENTOSHISTORICO: TStringField;
    qryCTeEVENTOSOBSERVACAO: TBlobField;
    qryCTeEVENTOSXML: TBlobField;
    qryEMITENTEID_EMPRESA: TIntegerField;
    qryEMITENTEID_REGIME: TIntegerField;
    qryEMITENTEID_INDICADOR_ATIVIDADE: TIntegerField;
    qryEMITENTERAZAOSOCIAL: TStringField;
    qryEMITENTENOMEFANTASIA: TStringField;
    qryEMITENTECNPJ: TStringField;
    qryEMITENTEIE_ESTADUAL: TStringField;
    qryEMITENTECNAE_FISCAL: TStringField;
    qryEMITENTEIE_MUNICIPAL: TStringField;
    qryEMITENTEIE_ESTADUAL_ST: TStringField;
    qryEMITENTEENDERECO: TStringField;
    qryEMITENTENUMERO: TStringField;
    qryEMITENTECOMPLEMENTO: TStringField;
    qryEMITENTEBAIRRO: TStringField;
    qryEMITENTEID_CIDADES_IBGE: TIntegerField;
    qryEMITENTEID_CIDADES_UF: TStringField;
    qryEMITENTECEP: TStringField;
    qryEMITENTETELEFONE: TStringField;
    qryEMITENTECELULAR: TStringField;
    qryEMITENTEEMAIL: TStringField;
    qryEMITENTEWEBSITE: TStringField;
    qryEMITENTEDATA_ABERTURA: TDateField;
    qryEMITENTECADASTRO_DATA: TSQLTimeStampField;
    qryEMITENTEALTERACAO_DATA: TSQLTimeStampField;
    qryEMITENTERESPONSAVEL: TStringField;
    qryEMITENTELOGOTIPO_LOCAL: TStringField;
    qryEMITENTECTE_ID_SERIE: TIntegerField;
    qryEMITENTECTEOS_ID_SERIE: TIntegerField;
    qryEMITENTEMDFE_ID_SERIE: TIntegerField;
    qryEMITENTENFE_ID_SERIE: TIntegerField;
    qryEMITENTENFSE_ID_SERIE: TIntegerField;
    qryEMITENTENFSE_LCP116: TStringField;
    qryEMITENTENFSE_PCISSQN: TCurrencyField;
    qryEMITENTESIMPLES_ALIQ_CREDITO: TCurrencyField;
    qryEMITENTEID_CIDADES_NOME: TStringField;
    qryREMETENTEID_EMPRESA: TIntegerField;
    qryREMETENTEID_PESSOA: TIntegerField;
    qryREMETENTEID_JURIDICA: TIntegerField;
    qryREMETENTEID_ATIVO: TIntegerField;
    qryREMETENTEID_PRODUTOR: TIntegerField;
    qryREMETENTEID_FORNECEDOR: TIntegerField;
    qryREMETENTEID_TRANSPORTADORA: TIntegerField;
    qryREMETENTEID_TIPO_CONTRIBUINTE: TIntegerField;
    qryREMETENTERAZAOSOCIAL: TStringField;
    qryREMETENTENOMEFANTASIA: TStringField;
    qryREMETENTECPF_CNPJ: TStringField;
    qryREMETENTEIE_RG: TStringField;
    qryREMETENTEIM: TStringField;
    qryREMETENTEENDERECO: TStringField;
    qryREMETENTENUMERO: TStringField;
    qryREMETENTECOMPLEMENTO: TStringField;
    qryREMETENTEBAIRRO: TStringField;
    qryREMETENTECEP: TStringField;
    qryREMETENTEID_CIDADES_UF: TStringField;
    qryREMETENTEID_CIDADES_IBGE: TIntegerField;
    qryREMETENTETELEFONEFIXO: TStringField;
    qryREMETENTECELULAR: TStringField;
    qryREMETENTETELEFONETRABALHO: TStringField;
    qryREMETENTEEMAIL: TStringField;
    qryREMETENTECONTATO: TStringField;
    qryREMETENTENASCIMENTO_ABERTURA: TDateField;
    qryREMETENTEESTADOCIVIL: TStringField;
    qryREMETENTECONJUGE: TStringField;
    qryREMETENTECONJUGE_NASCIMENTO: TDateField;
    qryREMETENTEMAE: TStringField;
    qryREMETENTEPAI: TStringField;
    qryREMETENTESEXO: TStringField;
    qryREMETENTEOBSERVACOES: TStringField;
    qryREMETENTECADASTRO_DATA: TSQLTimeStampField;
    qryREMETENTEALTERACAO_DATA: TSQLTimeStampField;
    qryREMETENTEFOTO: TBlobField;
    qryREMETENTECBR_HISTORICO: TStringField;
    qryREMETENTECBR_VALOR: TBCDField;
    qryREMETENTEID_CIDADES_IBGE_NOME: TStringField;
    qryEXPEDIDORID_EMPRESA: TIntegerField;
    qryEXPEDIDORID_PESSOA: TIntegerField;
    qryEXPEDIDORID_JURIDICA: TIntegerField;
    qryEXPEDIDORID_ATIVO: TIntegerField;
    qryEXPEDIDORID_PRODUTOR: TIntegerField;
    qryEXPEDIDORID_FORNECEDOR: TIntegerField;
    qryEXPEDIDORID_TRANSPORTADORA: TIntegerField;
    qryEXPEDIDORID_TIPO_CONTRIBUINTE: TIntegerField;
    qryEXPEDIDORRAZAOSOCIAL: TStringField;
    qryEXPEDIDORNOMEFANTASIA: TStringField;
    qryEXPEDIDORCPF_CNPJ: TStringField;
    qryEXPEDIDORIE_RG: TStringField;
    qryEXPEDIDORIM: TStringField;
    qryEXPEDIDORENDERECO: TStringField;
    qryEXPEDIDORNUMERO: TStringField;
    qryEXPEDIDORCOMPLEMENTO: TStringField;
    qryEXPEDIDORBAIRRO: TStringField;
    qryEXPEDIDORCEP: TStringField;
    qryEXPEDIDORID_CIDADES_UF: TStringField;
    qryEXPEDIDORID_CIDADES_IBGE: TIntegerField;
    qryEXPEDIDORTELEFONEFIXO: TStringField;
    qryEXPEDIDORCELULAR: TStringField;
    qryEXPEDIDORTELEFONETRABALHO: TStringField;
    qryEXPEDIDOREMAIL: TStringField;
    qryEXPEDIDORCONTATO: TStringField;
    qryEXPEDIDORNASCIMENTO_ABERTURA: TDateField;
    qryEXPEDIDORESTADOCIVIL: TStringField;
    qryEXPEDIDORCONJUGE: TStringField;
    qryEXPEDIDORCONJUGE_NASCIMENTO: TDateField;
    qryEXPEDIDORMAE: TStringField;
    qryEXPEDIDORPAI: TStringField;
    qryEXPEDIDORSEXO: TStringField;
    qryEXPEDIDOROBSERVACOES: TStringField;
    qryEXPEDIDORCADASTRO_DATA: TSQLTimeStampField;
    qryEXPEDIDORALTERACAO_DATA: TSQLTimeStampField;
    qryEXPEDIDORFOTO: TBlobField;
    qryEXPEDIDORCBR_HISTORICO: TStringField;
    qryEXPEDIDORCBR_VALOR: TBCDField;
    qryEXPEDIDORID_CIDADES_IBGE_NOME: TStringField;
    qryRECEBEDORID_EMPRESA: TIntegerField;
    qryRECEBEDORID_PESSOA: TIntegerField;
    qryRECEBEDORID_JURIDICA: TIntegerField;
    qryRECEBEDORID_ATIVO: TIntegerField;
    qryRECEBEDORID_PRODUTOR: TIntegerField;
    qryRECEBEDORID_FORNECEDOR: TIntegerField;
    qryRECEBEDORID_TRANSPORTADORA: TIntegerField;
    qryRECEBEDORID_TIPO_CONTRIBUINTE: TIntegerField;
    qryRECEBEDORRAZAOSOCIAL: TStringField;
    qryRECEBEDORNOMEFANTASIA: TStringField;
    qryRECEBEDORCPF_CNPJ: TStringField;
    qryRECEBEDORIE_RG: TStringField;
    qryRECEBEDORIM: TStringField;
    qryRECEBEDORENDERECO: TStringField;
    qryRECEBEDORNUMERO: TStringField;
    qryRECEBEDORCOMPLEMENTO: TStringField;
    qryRECEBEDORBAIRRO: TStringField;
    qryRECEBEDORCEP: TStringField;
    qryRECEBEDORID_CIDADES_UF: TStringField;
    qryRECEBEDORID_CIDADES_IBGE: TIntegerField;
    qryRECEBEDORTELEFONEFIXO: TStringField;
    qryRECEBEDORCELULAR: TStringField;
    qryRECEBEDORTELEFONETRABALHO: TStringField;
    qryRECEBEDOREMAIL: TStringField;
    qryRECEBEDORCONTATO: TStringField;
    qryRECEBEDORNASCIMENTO_ABERTURA: TDateField;
    qryRECEBEDORESTADOCIVIL: TStringField;
    qryRECEBEDORCONJUGE: TStringField;
    qryRECEBEDORCONJUGE_NASCIMENTO: TDateField;
    qryRECEBEDORMAE: TStringField;
    qryRECEBEDORPAI: TStringField;
    qryRECEBEDORSEXO: TStringField;
    qryRECEBEDOROBSERVACOES: TStringField;
    qryRECEBEDORCADASTRO_DATA: TSQLTimeStampField;
    qryRECEBEDORALTERACAO_DATA: TSQLTimeStampField;
    qryRECEBEDORFOTO: TBlobField;
    qryRECEBEDORCBR_HISTORICO: TStringField;
    qryRECEBEDORCBR_VALOR: TBCDField;
    qryRECEBEDORID_CIDADES_IBGE_NOME: TStringField;
    qryDESTINATARIOID_EMPRESA: TIntegerField;
    qryDESTINATARIOID_PESSOA: TIntegerField;
    qryDESTINATARIOID_JURIDICA: TIntegerField;
    qryDESTINATARIOID_ATIVO: TIntegerField;
    qryDESTINATARIOID_PRODUTOR: TIntegerField;
    qryDESTINATARIOID_FORNECEDOR: TIntegerField;
    qryDESTINATARIOID_TRANSPORTADORA: TIntegerField;
    qryDESTINATARIOID_TIPO_CONTRIBUINTE: TIntegerField;
    qryDESTINATARIORAZAOSOCIAL: TStringField;
    qryDESTINATARIONOMEFANTASIA: TStringField;
    qryDESTINATARIOCPF_CNPJ: TStringField;
    qryDESTINATARIOIE_RG: TStringField;
    qryDESTINATARIOIM: TStringField;
    qryDESTINATARIOENDERECO: TStringField;
    qryDESTINATARIONUMERO: TStringField;
    qryDESTINATARIOCOMPLEMENTO: TStringField;
    qryDESTINATARIOBAIRRO: TStringField;
    qryDESTINATARIOCEP: TStringField;
    qryDESTINATARIOID_CIDADES_UF: TStringField;
    qryDESTINATARIOID_CIDADES_IBGE: TIntegerField;
    qryDESTINATARIOTELEFONEFIXO: TStringField;
    qryDESTINATARIOCELULAR: TStringField;
    qryDESTINATARIOTELEFONETRABALHO: TStringField;
    qryDESTINATARIOEMAIL: TStringField;
    qryDESTINATARIOCONTATO: TStringField;
    qryDESTINATARIONASCIMENTO_ABERTURA: TDateField;
    qryDESTINATARIOESTADOCIVIL: TStringField;
    qryDESTINATARIOCONJUGE: TStringField;
    qryDESTINATARIOCONJUGE_NASCIMENTO: TDateField;
    qryDESTINATARIOMAE: TStringField;
    qryDESTINATARIOPAI: TStringField;
    qryDESTINATARIOSEXO: TStringField;
    qryDESTINATARIOOBSERVACOES: TStringField;
    qryDESTINATARIOCADASTRO_DATA: TSQLTimeStampField;
    qryDESTINATARIOALTERACAO_DATA: TSQLTimeStampField;
    qryDESTINATARIOFOTO: TBlobField;
    qryDESTINATARIOCBR_HISTORICO: TStringField;
    qryDESTINATARIOCBR_VALOR: TBCDField;
    qryDESTINATARIOID_CIDADES_IBGE_NOME: TStringField;
    qryTOMADOR_OUTROSID_EMPRESA: TIntegerField;
    qryTOMADOR_OUTROSID_PESSOA: TIntegerField;
    qryTOMADOR_OUTROSID_JURIDICA: TIntegerField;
    qryTOMADOR_OUTROSID_ATIVO: TIntegerField;
    qryTOMADOR_OUTROSID_PRODUTOR: TIntegerField;
    qryTOMADOR_OUTROSID_FORNECEDOR: TIntegerField;
    qryTOMADOR_OUTROSID_TRANSPORTADORA: TIntegerField;
    qryTOMADOR_OUTROSID_TIPO_CONTRIBUINTE: TIntegerField;
    qryTOMADOR_OUTROSRAZAOSOCIAL: TStringField;
    qryTOMADOR_OUTROSNOMEFANTASIA: TStringField;
    qryTOMADOR_OUTROSCPF_CNPJ: TStringField;
    qryTOMADOR_OUTROSIE_RG: TStringField;
    qryTOMADOR_OUTROSIM: TStringField;
    qryTOMADOR_OUTROSENDERECO: TStringField;
    qryTOMADOR_OUTROSNUMERO: TStringField;
    qryTOMADOR_OUTROSCOMPLEMENTO: TStringField;
    qryTOMADOR_OUTROSBAIRRO: TStringField;
    qryTOMADOR_OUTROSCEP: TStringField;
    qryTOMADOR_OUTROSID_CIDADES_UF: TStringField;
    qryTOMADOR_OUTROSID_CIDADES_IBGE: TIntegerField;
    qryTOMADOR_OUTROSTELEFONEFIXO: TStringField;
    qryTOMADOR_OUTROSCELULAR: TStringField;
    qryTOMADOR_OUTROSTELEFONETRABALHO: TStringField;
    qryTOMADOR_OUTROSEMAIL: TStringField;
    qryTOMADOR_OUTROSCONTATO: TStringField;
    qryTOMADOR_OUTROSNASCIMENTO_ABERTURA: TDateField;
    qryTOMADOR_OUTROSESTADOCIVIL: TStringField;
    qryTOMADOR_OUTROSCONJUGE: TStringField;
    qryTOMADOR_OUTROSCONJUGE_NASCIMENTO: TDateField;
    qryTOMADOR_OUTROSMAE: TStringField;
    qryTOMADOR_OUTROSPAI: TStringField;
    qryTOMADOR_OUTROSSEXO: TStringField;
    qryTOMADOR_OUTROSOBSERVACOES: TStringField;
    qryTOMADOR_OUTROSCADASTRO_DATA: TSQLTimeStampField;
    qryTOMADOR_OUTROSALTERACAO_DATA: TSQLTimeStampField;
    qryTOMADOR_OUTROSFOTO: TBlobField;
    qryTOMADOR_OUTROSCBR_HISTORICO: TStringField;
    qryTOMADOR_OUTROSCBR_VALOR: TBCDField;
    qryTOMADOR_OUTROSID_CIDADES_IBGE_NOME: TStringField;
    tabCTE_EVENTO_CCE_ITENSID_EMPRESA: TIntegerField;
    tabCTE_EVENTO_CCE_ITENSID_CTE: TIntegerField;
    tabCTE_EVENTO_CCE_ITENSID_SERIE: TIntegerField;
    tabCTE_EVENTO_CCE_ITENSID_EVENTO: TIntegerField;
    tabCTE_EVENTO_CCE_ITENSCAMPO_GRUPO: TStringField;
    tabCTE_EVENTO_CCE_ITENSCAMPO_DESCRICAO: TStringField;
    tabCTE_EVENTO_CCE_ITENSCAMPO_CONTEUDO: TStringField;
    tabCTE_EVENTO_CCE_ITENSCAMPO_ITEM_ALTERADO: TStringField;
    tabCTE_EVENTOID_EMPRESA: TIntegerField;
    tabCTE_EVENTOID_CTE: TIntegerField;
    tabCTE_EVENTOID_SERIE: TIntegerField;
    tabCTE_EVENTOID_EVENTO: TIntegerField;
    tabCTE_EVENTOID_SEQUENCIA: TIntegerField;
    tabCTE_EVENTOTIPO: TStringField;
    tabCTE_EVENTODTHR_EVENTO: TSQLTimeStampField;
    tabCTE_EVENTOLOTE: TStringField;
    tabCTE_EVENTODTHR_PROTOCOLO: TSQLTimeStampField;
    tabCTE_EVENTONUMERO_PROTOCOLO: TStringField;
    tabCTE_EVENTOCSTAT: TIntegerField;
    tabCTE_EVENTOHISTORICO: TStringField;
    tabCTE_EVENTOOBSERVACAO: TBlobField;
    tabCTE_EVENTOXML: TBlobField;
    procedure ACBrCTeStatusChange(Sender: TObject);
    procedure tabCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
    procedure tabCTEBeforeOpen(DataSet: TDataSet);
    procedure tabCTEBeforePost(DataSet: TDataSet);
    procedure tabCTENewRecord(DataSet: TDataSet);
    procedure tabCTEAfterOpen(DataSet: TDataSet);
    procedure tabCTE_FLUXO_PASSAGENSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabCTEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabCTE_COMPONENTESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabCTE_ORDEM_COLETANewRecord(DataSet: TDataSet);
    procedure tabCTE_VEICULOS_NOVOSBeforePost(DataSet: TDataSet);
    procedure tabCTE_EVENTOAfterOpen(DataSet: TDataSet);
    procedure tabCTE_EVENTONewRecord(DataSet: TDataSet);
    procedure qryPESSOABeforeOpen(DataSet: TDataSet);
    procedure qryCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
  private
  public
    procedure Configurar;
    procedure Gerar(AID, AID_SERIE: Integer);
    procedure Enviar;
    function SalvarEvento(vID, vID_SERIE, vNumeroLote: Integer; vDataHoraEvento: TDateTime; vJustificativa, vTipo: String): Boolean;
  end;

var
  dtmCTe: TdtmCTe;

implementation

uses
  ufrmDefault,
  ufuncoes,
  uclassCTE,
  uclassEMPRESA,
  udtmDefault,
  pcnConversao,
  pcteConversaoCTe,
  ACBrDFeSSL,
  ACBrUtil,
  Vcl.Forms,
  Winapi.Windows,
  ufrmMensagemEspera,
  uclassPESSOA,
  ACBrValidador,
  blcksock;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TdtmCTe.SalvarEvento(vID, vID_SERIE, vNumeroLote: Integer; vDataHoraEvento: TDateTime; vJustificativa, vTipo: String): Boolean;
begin
  with ACBrCTe.WebServices do
  begin
    updEvento.ParamByName('ID_EMPRESA').Value       := oEmpresa.ID;
    updEvento.ParamByName('ID_CTE').Value           := vID;
    updEvento.ParamByName('ID_SERIE').Value         := vID_SERIE;
    updEvento.ParamByName('ID_EVENTO').Value        := oCTe.GetNEW_ID_CTE_EVENTO(vID, vID_SERIE);
    updEvento.ParamByName('ID_SEQUENCIA').Value     := oCTe.GetNEW_ID_CTE_EVENTO_SEQUENCIA(vID, vID_SERIE, vTipo);
    updEvento.ParamByName('TIPO').Value             := vTipo;
    updEvento.ParamByName('DTHR_EVENTO').Value      := vDataHoraEvento;
    updEvento.ParamByName('LOTE').Value             := vNumeroLote;
    updEvento.ParamByName('DTHR_PROTOCOLO').Value   := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.dhRegEvento;
    updEvento.ParamByName('NUMERO_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.nProt;
    updEvento.ParamByName('CSTAT').Value            := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat;
    updEvento.ParamByName('HISTORICO').Value        := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.xMotivo;
    updEvento.ParamByName('OBSERVACAO').Value       := vJustificativa;
    updEvento.ParamByName('XML').Value              := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.XML;

    updEvento.Prepare;
    updEvento.ExecSQL;
  end;
  Result := true;
end;

procedure TdtmCTe.Enviar;
var
  vNumLote, xMotivo: String;
  cStat            : Integer;

begin
  ACBrCTe.Conhecimentos.Assinar;

 ACBrCTe.Conhecimentos.Items[0].ImprimirPDF;


  try
    ACBrCTe.Conhecimentos.Validar;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao enviar !  cStat: ' + sLineBreak + IntToStr(dtmCTe.ACBrCTe.WebServices.Retorno.cStat) + ';  ' + sLineBreak + E.Message);
    end;
  end;

    // salva chave e xml antes de enviar
  updChave.ParamByName('XML_CHAVE').Value  := Copy(ACBrCTe.Conhecimentos.Items[ 0 ].CTe.infCTe.ID, 4, 44);
  updChave.ParamByName('XML_STRING').Value := ACBrCTe.Conhecimentos.Items[ 0 ].XML;
  updChave.ParamByName('ID_EMPRESA').Value := tabCTEID_EMPRESA.AsInteger;
  updChave.ParamByName('ID_CTEOS').Value   := tabCTEID_CTE.AsInteger;
  updChave.ParamByName('ID_SERIE').Value   := tabCTEID_SERIE.AsInteger;
  updChave.Prepare;
  updChave.ExecSQL;

  dtmDefault.cnx_BD.CommitRetaining;

  try
    vNumLote := FormatDateTime('yyyymmddhhmmss', Now);
    ACBrCTe.Enviar(vNumLote);

    cStat   := ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.cStat;
    xMotivo := ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.xMotivo;

    case cStat of
      100: // autorizado
        begin
          updEnviado.ParamByName('ID_SITUACAO').AsString   := 'E';
          updEnviado.ParamByName('ID_CTE').AsInteger       := tabCTEID_CTE.AsInteger;
          updEnviado.ParamByName('ID_SERIE').AsInteger     := tabCTEID_SERIE.AsInteger;
          updEnviado.ParamByName('ID_EMPRESA').AsInteger   := tabCTEID_EMPRESA.AsInteger;
          updEnviado.ParamByName('XML_CHAVE').AsString     := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe;
          updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.nProt;
          updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].XMLAssinado;
          updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.dhRecbto;

          updEnviado.ParamByName('XML_XMOTIVO').AsString := ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.xMotivo;
          updEnviado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmCTe.ACBrCTe.WebServices.Consulta.cStat;
          updEnviado.Prepare;
          updEnviado.ExecSQL;

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('CTe-OS enviado com sucesso!', 'Aviso!', MB_ICONEXCLAMATION);
        end
      else
        begin
          raise Exception.CreateFmt('Código de retorno não esperado: %d - %s', [ cStat, xMotivo ]);
        end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao enviar !  cStat: ' + IntToStr(dtmCTe.ACBrCTe.WebServices.Retorno.cStat) + ';  ' + E.Message);
    end;
  end;
end;

procedure TdtmCTe.Gerar(AID, AID_SERIE: Integer);
begin
  tabCTE.Close;
  tabCTE.ParamByName('ID_CTE').AsInteger   := AID;
  tabCTE.ParamByName('ID_SERIE').AsInteger := AID_SERIE;
  tabCTE.Prepare;
  tabCTE.Open;

  if tabCTE.IsEmpty then
    raise Exception.Create('CT-e não encontrado na base de dados, por favor tente novamente!');

  if qryEMITENTE.IsEmpty then
    raise Exception.Create('Dados do Emitente inesistentes, por favor tente novamente!');

  if tabCTEID_REMETENTE.AsInteger > 0 then
    if qryREMETENTE.IsEmpty then
      raise Exception.Create('Dados do Remetente inesistentes, por favor tente novamente!');

  if tabCTEID_EXPEDIDOR.AsInteger > 0 then
    if qryEXPEDIDOR.IsEmpty then
      raise Exception.Create('Dados do Expedidor inesistentes, por favor tente novamente!');

  if tabCTEID_RECEBEDOR.AsInteger > 0 then
    if qryRECEBEDOR.IsEmpty then
      raise Exception.Create('Dados do Recebedor inesistentes, por favor tente novamente!');

  if tabCTEID_DESTINATARIO.AsInteger > 0 then
    if qryDESTINATARIO.IsEmpty then
      raise Exception.Create('Dados do Destinatário inesistentes, por favor tente novamente!');

    // CTe
  with ACBrCTe.Conhecimentos.Add.CTe do
  begin
    infCTe.versao := 3.0;

    Ide.cUF    := UFtoCUF(qryEMITENTEID_CIDADES_UF.AsString.Trim);
    Ide.nCT    := tabCTEID_CTE.AsInteger;
    Ide.cCT    := 0;
    Ide.CFOP   := tabCTEID_CFOP.AsInteger; // 5353;
    Ide.natOp  := tabCTENAT_OPERACAO.AsString.Trim; // PRESTACAO SERVICO
    Ide.modelo := 57;
    Ide.serie  := tabCTEID_SERIE.AsInteger;

    Ide.dhEmi := tabCTEDT_HORA_EMISSAO.AsDateTime;
    Ide.tpImp := tiRetrato;

      // forma de emissão
    case tabCTEID_FORMA_EMISSAO.AsInteger of
      0:
        Ide.tpEmis := teNormal;
      1:
        begin
          Ide.tpEmis := teContingencia;
          Ide.dhCont := tabCTECONTIGENCIA_DT_HORA.AsDateTime;
          Ide.xJust  := tabCTECONTIGENCIA_MOTIVO.AsString.Trim;
        end;
    end;
      // ambiente
    case tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE.AsInteger of
      0:
        Ide.tpAmb := taProducao;
      1:
        Ide.tpAmb := taHomologacao;
    end;

      // tipo
    case tabCTEID_FORMA_EMISSAO.AsInteger of
      0:
        Ide.tpCTe := tcNormal;
      1:
        Ide.tpCTe := tcComplemento;
      2:
        Ide.tpCTe := tcAnulacao;
      3:
        Ide.tpCTe := tcSubstituto;
    end;

      // modal
    case tabCTEID_FORMA_EMISSAO.AsInteger of
      0:
        Ide.modal := mdRodoviario;
    end;

      // tipo serviço
    case tabCTEID_TIPO_SERVICO.AsInteger of
      0:
        Ide.tpServ := tsNormal;
      1:
        begin
          Ide.tpServ := tsSubcontratacao;

          tabCTE_DOCANT.First;
          while not tabCTE_DOCANT.Eof do
          begin

            tabCTE_DOCANT.Next;
          end;

            //documentos anteriores
          with infCTeNorm.docAnt.emiDocAnt.new do
          begin
            CNPJCPF := ACBrUtil.OnlyNumber(tabCTE_DOCANTCNPJCPF.AsString);
            IE      := ACBrUtil.OnlyNumber(tabCTE_DOCANTIE.AsString.Trim);
            UF      := tabCTE_DOCANTUF.AsString.Trim;
            xNome   := tabCTE_DOCANTRAZAOSOCIAL.AsString.Trim;

            with idDocAnt.new do
            begin
                //with idDocAntPap.Add do
                //begin
                //  tpDoc := '';
                //  serie := '';
                //  subser := '';
                //  nDoc := '';
                //  dEmi := Now;
                //end;

              with idDocAntEle.new do
              begin
                  //chave := '';
                chCTe := tabCTE_DOCANTXML_CHAVE.AsString;
              end;
            end;
          end;
        end;
      2:
        Ide.tpServ := tsRedespacho;
      3:
        Ide.tpServ := tsIntermediario;
      4:
        Ide.tpServ := tsMultimodal;
    end;

      //responsável técnico pelo sistema
    infRespTec.CNPJ     := '';
    infRespTec.xContato := '';
    infRespTec.email    := '';
    infRespTec.fone     := '';
    infRespTec.CNPJ     := '';

      // estes dois ainda não são obrigatórios pois não existe cadastro centralizado
    infRespTec.idCSRT   := 0;
    infRespTec.hashCSRT := '';

    Ide.procEmi := peAplicativoContribuinte;
    Ide.verProc := '3.0';

    Ide.cMunEnv := tabCTEID_MUNICIPIO_EMISSAO.AsInteger;
    Ide.xMunEnv := tabCTEMUNICIPIO_EMISSAO.AsString.Trim;
    Ide.UFEnv   := tabCTEID_UF_EMISSAO.AsString;

    Ide.cMunIni := tabCTEID_MUNICIPIO_INICIO_PRESTACAO.AsInteger;
    Ide.xMunIni := tabCTEMUNICIPIO_INICIO_PRESTACAO.AsString.Trim;
    Ide.UFIni   := tabCTEID_UF_INICIO_PRESTACAO.AsString;

    Ide.cMunFim := tabCTEID_MUNICIPIO_TERMINO_PRESTACA.AsInteger;
    Ide.xMunFim := tabCTEMUNICIPIO_TERMINO_PRESTACAO.AsString.Trim;
    Ide.UFFim   := tabCTEID_UF_TERMINO_PRESTACAO.AsString;

    if tabCTERECEBEDOR_RETIRA.AsString.Trim = 'S' then
      Ide.retira := rtSim
    else
    begin
      Ide.retira     := rtNao;
      Ide.xdetretira := '';
    end;

    if tabCTEID_IND_CTE_GLOBALIZADO.AsString.Trim = 'S' then
      Ide.indGlobalizado := tiSim
    else
      Ide.indGlobalizado := tiNao;

    case tabCTEID_TOMADOR_TIPO.AsInteger of
      0:
        begin
          Ide.Toma03.Toma := tmRemetente;

          case qryREMETENTEID_TIPO_CONTRIBUINTE.AsInteger of
            1:
              Ide.indIEToma := inContribuinte;
            2:
              Ide.indIEToma := inIsento;
            3:
              Ide.indIEToma := inNaoContribuinte;
          end;
        end;
      1:
        begin
          Ide.Toma03.Toma := tmExpedidor;

          case qryEXPEDIDORID_TIPO_CONTRIBUINTE.AsInteger of
            1:
              Ide.indIEToma := inContribuinte;
            2:
              Ide.indIEToma := inIsento;
            3:
              Ide.indIEToma := inNaoContribuinte;
          end;
        end;
      2:
        begin
          Ide.Toma03.Toma := tmRecebedor;

          case qryRECEBEDORID_TIPO_CONTRIBUINTE.AsInteger of
            1:
              Ide.indIEToma := inContribuinte;
            2:
              Ide.indIEToma := inIsento;
            3:
              Ide.indIEToma := inNaoContribuinte;
          end;
        end;
      3:
        begin
          Ide.Toma03.Toma := tmDestinatario;

          case qryDESTINATARIOID_TIPO_CONTRIBUINTE.AsInteger of
            1:
              Ide.indIEToma := inContribuinte;
            2:
              Ide.indIEToma := inIsento;
            3:
              Ide.indIEToma := inNaoContribuinte;
          end;
        end;
      4:
        begin
          Ide.Toma03.Toma := tmOutros;

          case qryTOMADOR_OUTROSID_TIPO_CONTRIBUINTE.AsInteger of
            1:
              Ide.indIEToma := inContribuinte;
            2:
              Ide.indIEToma := inIsento;
            3:
              Ide.indIEToma := inNaoContribuinte;
          end;

          Ide.Toma4.Toma    := tmOutros;
          Ide.Toma4.CNPJCPF := ACBrUtil.OnlyNumber(qryTOMADOR_OUTROSCPF_CNPJ.AsString.Trim);
          Ide.Toma4.IE      := ACBrUtil.OnlyNumber(qryTOMADOR_OUTROSIE_RG.AsString.Trim);
          Ide.Toma4.xNome   := qryTOMADOR_OUTROSRAZAOSOCIAL.AsString.Trim;
          Ide.Toma4.xFant   := qryTOMADOR_OUTROSNOMEFANTASIA.AsString.Trim;
          Ide.Toma4.fone    := qryTOMADOR_OUTROSTELEFONEFIXO.AsString.Trim;

          Ide.Toma4.enderToma.xLgr    := qryTOMADOR_OUTROSENDERECO.AsString.Trim;
          Ide.Toma4.enderToma.nro     := qryTOMADOR_OUTROSNUMERO.AsString.Trim;
          Ide.Toma4.enderToma.xCpl    := qryTOMADOR_OUTROSCOMPLEMENTO.AsString.Trim;
          Ide.Toma4.enderToma.xBairro := qryTOMADOR_OUTROSBAIRRO.AsString.Trim;
          Ide.Toma4.enderToma.cMun    := qryTOMADOR_OUTROSID_CIDADES_IBGE.AsInteger;
          Ide.Toma4.enderToma.xMun    := qryTOMADOR_OUTROSID_CIDADES_IBGE_NOME.AsString.Trim;
          Ide.Toma4.enderToma.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryTOMADOR_OUTROSCEP.AsString), 0);
          Ide.Toma4.enderToma.UF      := qryTOMADOR_OUTROSID_CIDADES_UF.AsString.Trim;
          Ide.Toma4.enderToma.cPais   := 1058;
          Ide.Toma4.enderToma.xPais   := 'BRASIL';
          Ide.Toma4.email             := '';
        end;
    end;

      // Informações Complementares do CTe
    compl.xCaracAd  := tabCTECARACTERISTICA_ADICIONAL_TRANSP.AsString.Trim;
    compl.xCaracSer := tabCTECARACTERISTICA_ADICIONAL_SERVIC.AsString.Trim;
    compl.xEmi      := tabCTEFUNCIONARIO_EMISSOR_CTE.AsString.Trim;

      // Descricao da Origiem do Fluxo
    compl.fluxo.xOrig := tabCTEFLUXO_MUNICIPIO_ORIGEM.AsString.Trim;

    tabCTE_FLUXO_PASSAGENS.First;
    while not tabCTE_FLUXO_PASSAGENS.Eof do
    begin
      with compl.fluxo.pass.new do
      begin
        xPass := tabCTE_FLUXO_PASSAGENSPASSAGEM.AsString.Trim;
      end;

      tabCTE_FLUXO_PASSAGENS.Next;
    end;

    compl.fluxo.xDest := tabCTEFLUXO_MUNICIPIO_DESTINO.AsString.Trim;
    compl.fluxo.xRota := tabCTEFLUXO_CODIGO_ROTA.AsString.Trim;

      // previsão de entrega por data
    case tabCTEPREVISAO_ENTREGA_DATA_ID_TIPO.AsInteger of
      0:
        begin
          compl.Entrega.TipoData      := tdSemData;
          compl.Entrega.semData.tpPer := tdSemData;
        end;
      1:
        begin
          compl.Entrega.comData.tpPer := tdNaData;
          compl.Entrega.comData.dProg := tabCTEPREVISAO_ENTREGA_DATA_INICIO.AsDateTime;
        end;
      2:
        begin
          compl.Entrega.comData.tpPer := tdNaData;
          compl.Entrega.comData.dProg := tabCTEPREVISAO_ENTREGA_DATA_INICIO.AsDateTime;
        end;
      3:
        begin
          compl.Entrega.comData.tpPer := tdNaData;
          compl.Entrega.comData.dProg := tabCTEPREVISAO_ENTREGA_DATA_INICIO.AsDateTime;
        end;
      4:
        begin
          compl.Entrega.noPeriodo.tpPer := tdNoPeriodo;
          compl.Entrega.noPeriodo.dIni  := tabCTEPREVISAO_ENTREGA_DATA_INICIO.AsDateTime;
          compl.Entrega.noPeriodo.dFim  := tabCTEPREVISAO_ENTREGA_DATA_FINAL.AsDateTime;
        end;
    end;

      // previsão de entrega por hora
    case tabCTEPREVISAO_ENTREGA_HORA_ID_TIPO.AsInteger of
      0:
        begin
          compl.Entrega.TipoHora      := thSemHorario;
          compl.Entrega.semHora.tpHor := thSemHorario;
        end;
      1:
        begin
          compl.Entrega.comHora.tpHor := thNoHorario;
          compl.Entrega.comHora.hProg := tabCTEPREVISAO_ENTREGA_HORA_INICIO.AsDateTime;
        end;
      2:
        begin
          compl.Entrega.comHora.tpHor := thNoHorario;
          compl.Entrega.comHora.hProg := tabCTEPREVISAO_ENTREGA_HORA_INICIO.AsDateTime;
        end;
      3:
        begin
          compl.Entrega.comHora.tpHor := thNoHorario;
          compl.Entrega.comHora.hProg := tabCTEPREVISAO_ENTREGA_HORA_INICIO.AsDateTime;
        end;
      4:
        begin
          compl.Entrega.noInter.tpHor := thNoIntervalo;
          compl.Entrega.noInter.hIni  := tabCTEPREVISAO_ENTREGA_HORA_INICIO.AsDateTime;
          compl.Entrega.noInter.hFim  := tabCTEPREVISAO_ENTREGA_HORA_FINAL.AsDateTime;
        end;
    end;

    compl.origCalc := tabCTEID_MUNICIPIO_ORIGEM_CALC_FRETE.AsString.Trim;
    compl.destCalc := tabCTEID_MUNICIPIO_DESTINO_CALC_FRETE.AsString.Trim;
    compl.xObs     := tabCTEOBSERVACOES_GERAIS.AsString.Trim;

      // Obs Contribuinte
    if tabCTEOBSERVACOES_CONTRIBUINTE.AsString.Trim.Length > 0 then
    begin
      with compl.ObsCont.new do
      begin
        xCampo := 'Obs';
        xTexto := tabCTEOBSERVACOES_CONTRIBUINTE.AsString;
      end;
    end;

      // Obs Fisco
    if tabCTEOBSERVACOES_FISCO.AsString.Trim.Length > 0 then
    begin
      with compl.ObsFisco.new do
      begin
        xCampo := 'Obs';
        xTexto := tabCTEOBSERVACOES_FISCO.AsString;
      end;
    end;

      // Dados do Emitente
    Emit.CNPJ              := ACBrUtil.OnlyNumber(qryEMITENTECNPJ.AsString.Trim);
    Emit.IE                := ACBrUtil.OnlyNumber(qryEMITENTEIE_ESTADUAL.AsString.Trim);
    Emit.xNome             := qryEMITENTERAZAOSOCIAL.AsString.Trim;
    Emit.xFant             := qryEMITENTENOMEFANTASIA.AsString.Trim;
    Emit.enderEmit.xLgr    := qryEMITENTEENDERECO.AsString.Trim;
    Emit.enderEmit.nro     := qryEMITENTENUMERO.AsString.Trim;
    Emit.enderEmit.xCpl    := qryEMITENTECOMPLEMENTO.AsString.Trim;
    Emit.enderEmit.xBairro := qryEMITENTEBAIRRO.AsString.Trim;
    Emit.enderEmit.cMun    := qryEMITENTEID_CIDADES_IBGE.AsInteger;
    Emit.enderEmit.xMun    := qryEMITENTEID_CIDADES_NOME.AsString.Trim;
    Emit.enderEmit.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryEMITENTECEP.AsString), 0);
    Emit.enderEmit.UF      := qryEMITENTEID_CIDADES_UF.AsString.Trim;
    Emit.enderEmit.fone    := qryEMITENTETELEFONE.AsString.Trim;

      // Dados do Remetente
    if tabCTEID_REMETENTE_TIPO.AsInteger = 0 then
    begin
      Rem.CNPJCPF := ACBrUtil.OnlyNumber(qryREMETENTECPF_CNPJ.AsString);
      Rem.IE      := ACBrUtil.OnlyNumber(qryREMETENTEIE_RG.AsString);
      Rem.xNome   := qryREMETENTERAZAOSOCIAL.AsString.Trim;
      Rem.xFant   := qryREMETENTENOMEFANTASIA.AsString.Trim;
      Rem.fone    := ACBrUtil.OnlyNumber(qryREMETENTETELEFONEFIXO.AsString.Trim);

      Rem.enderReme.xLgr    := qryREMETENTEENDERECO.AsString.Trim;
      Rem.enderReme.nro     := qryREMETENTENUMERO.AsString.Trim;
      Rem.enderReme.xCpl    := qryREMETENTECOMPLEMENTO.AsString.Trim;
      Rem.enderReme.xBairro := qryREMETENTEBAIRRO.AsString.Trim;
      Rem.enderReme.cMun    := StrToIntDef(qryREMETENTEID_CIDADES_IBGE.AsString, 0);
      Rem.enderReme.xMun    := qryREMETENTEID_CIDADES_IBGE_NOME.AsString.Trim;
      Rem.enderReme.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryREMETENTECEP.AsString), 0);
      Rem.enderReme.UF      := qryREMETENTEID_CIDADES_UF.AsString.Trim;
      Rem.enderReme.cPais   := 1058;
      Rem.enderReme.xPais   := 'BRASIL';
    end;

    if tabCTEID_EXPEDIDOR_TIPO.AsInteger = 0 then
    begin
        // Dados do Expedidor - Utilizado no Redespacho Intermediário
      Exped.CNPJCPF := ACBrUtil.OnlyNumber(qryEXPEDIDORCPF_CNPJ.AsString);
      Exped.IE      := ACBrUtil.OnlyNumber(qryEXPEDIDORIE_RG.AsString);
      Exped.xNome   := qryEXPEDIDORRAZAOSOCIAL.AsString.Trim;
      Exped.fone    := ACBrUtil.OnlyNumber(qryEXPEDIDORTELEFONEFIXO.AsString.Trim);

      Exped.enderExped.xLgr    := qryEXPEDIDORENDERECO.AsString.Trim;
      Exped.enderExped.nro     := qryEXPEDIDORNUMERO.AsString.Trim;
      Exped.enderExped.xCpl    := ACBrUtil.OnlyNumber(qryEXPEDIDORCOMPLEMENTO.AsString.Trim);
      Exped.enderExped.xBairro := qryEXPEDIDORBAIRRO.AsString.Trim;
      Exped.enderExped.cMun    := StrToIntDef(qryEXPEDIDORID_CIDADES_IBGE.AsString, 0);
      Exped.enderExped.xMun    := qryEXPEDIDORID_CIDADES_IBGE_NOME.AsString.Trim;
      Exped.enderExped.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryEXPEDIDORCEP.AsString), 0);
      Exped.enderExped.UF      := qryEXPEDIDORID_CIDADES_UF.AsString.Trim;
      Exped.enderExped.cPais   := 1058;
      Exped.enderExped.xPais   := 'BRASIL';
    end;

    if tabCTEID_RECEBEDOR_TIPO.AsInteger = 0 then
    begin
        // Dados do Recebedor - Utilizado no Redespacho e Redespacho Intermediário
      Receb.CNPJCPF := ACBrUtil.OnlyNumber(qryRECEBEDORCPF_CNPJ.AsString);
      Receb.IE      := ACBrUtil.OnlyNumber(qryRECEBEDORIE_RG.AsString);
      Receb.xNome   := qryRECEBEDORRAZAOSOCIAL.AsString.Trim;
      Receb.fone    := ACBrUtil.OnlyNumber(qryRECEBEDORTELEFONEFIXO.AsString.Trim);

      Receb.enderReceb.xLgr    := qryRECEBEDORENDERECO.AsString.Trim;
      Receb.enderReceb.nro     := qryRECEBEDORNUMERO.AsString.Trim;
      Receb.enderReceb.xCpl    := ACBrUtil.OnlyNumber(qryRECEBEDORCOMPLEMENTO.AsString.Trim);
      Receb.enderReceb.xBairro := qryRECEBEDORBAIRRO.AsString.Trim;
      Receb.enderReceb.cMun    := StrToIntDef(qryRECEBEDORID_CIDADES_IBGE.AsString, 0);
      Receb.enderReceb.xMun    := qryRECEBEDORID_CIDADES_IBGE_NOME.AsString.Trim;
      Receb.enderReceb.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryRECEBEDORCEP.AsString), 0);
      Receb.enderReceb.UF      := qryRECEBEDORID_CIDADES_UF.AsString.Trim;
      Receb.enderReceb.cPais   := 1058;
      Receb.enderReceb.xPais   := 'BRASIL';
    end;

      // Dados do Destinatário
    if tabCTEID_DESTINATARIO_TIPO.AsInteger = 0 then
    begin
      Dest.CNPJCPF           := ACBrUtil.OnlyNumber(qryDESTINATARIOCPF_CNPJ.AsString);
      Dest.IE                := ACBrUtil.OnlyNumber(qryDESTINATARIOIE_RG.AsString);
      Dest.xNome             := qryDESTINATARIORAZAOSOCIAL.AsString.Trim;
      Dest.fone              := ACBrUtil.OnlyNumber(qryDESTINATARIOTELEFONEFIXO.AsString.Trim);
      Dest.EnderDest.xLgr    := qryDESTINATARIOENDERECO.AsString.Trim;
      Dest.EnderDest.nro     := qryDESTINATARIONUMERO.AsString.Trim;
      Dest.EnderDest.xCpl    := ACBrUtil.OnlyNumber(qryDESTINATARIOCOMPLEMENTO.AsString.Trim);
      Dest.EnderDest.xBairro := qryDESTINATARIOBAIRRO.AsString.Trim;
      Dest.EnderDest.cMun    := StrToIntDef(qryDESTINATARIOID_CIDADES_IBGE.AsString, 0);
      Dest.EnderDest.xMun    := qryDESTINATARIOID_CIDADES_IBGE_NOME.AsString.Trim;
      Dest.EnderDest.CEP     := StrToIntDef(ACBrUtil.OnlyNumber(qryDESTINATARIOCEP.AsString), 0);
      Dest.EnderDest.UF      := qryDESTINATARIOID_CIDADES_UF.AsString.Trim;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';
    end;

      // Carrega valores da prestacao de servico
    vPrest.vTPrest := tabCTEVALOR_TOTAL_PRETACAO_SERVICO.AsCurrency;
    vPrest.vRec    := tabCTEVALOR_A_RECEBER.AsCurrency;

      // Carrega componentes do valor da prestacao
    tabCTE_COMPONENTES.First;
    while not tabCTE_COMPONENTES.Eof do
    begin
      with vPrest.Comp.new do
      begin
        xNome := tabCTE_COMPONENTESNOME.AsString.Trim;
        vComp := tabCTE_COMPONENTESVALOR.AsCurrency;
      end;

      tabCTE_COMPONENTES.Next;
    end;

      // Carrega Impostos
    case tabCTEICMS_ID_CST.AsInteger of
      0:
        begin // 00 - Tributação normal do ICMS
          Imp.ICMS.SituTrib     := cst00;
          Imp.ICMS.ICMS00.CST   := cst00;
          Imp.ICMS.ICMS00.vBC   := tabCTEICMS_VALOR_DA_BC.AsCurrency;
          Imp.ICMS.ICMS00.pICMS := tabCTEICMS_ALIQUOTA.AsCurrency;
          Imp.ICMS.ICMS00.vICMS := tabCTEICMS_VALOR.AsCurrency;
        end;
      1:
        begin // 20 - Tributação com redução de BC do ICMS
          Imp.ICMS.SituTrib      := cst20;
          Imp.ICMS.ICMS20.CST    := cst20;
          Imp.ICMS.ICMS20.pRedBC := tabCTEICMS_PERCENTUAL_RED_DA_BC.AsCurrency;
          Imp.ICMS.ICMS20.vBC    := tabCTEICMS_VALOR_DA_BC.AsCurrency;
          Imp.ICMS.ICMS20.pICMS  := tabCTEICMS_ALIQUOTA.AsCurrency;
          Imp.ICMS.ICMS20.vICMS  := tabCTEICMS_VALOR.AsCurrency;
        end;
      2:
        begin // 40 - ICMS isenção
          Imp.ICMS.SituTrib   := cst40;
          Imp.ICMS.ICMS45.CST := cst40;
        end;
      3:
        begin // 41 - ICMS não tributado
          Imp.ICMS.SituTrib   := cst41;
          Imp.ICMS.ICMS45.CST := cst41;
        end;
      4:
        begin // 51 - ICMS diferido
          Imp.ICMS.SituTrib   := cst51;
          Imp.ICMS.ICMS45.CST := cst51;
        end;
      5:
        begin // 60 - ICMS cobrado anteriomente por substituição tributária
          Imp.ICMS.SituTrib          := cst60;
          Imp.ICMS.ICMS60.CST        := cst60;
          Imp.ICMS.ICMS60.vBCSTRet   := tabCTEICMS_VALOR_DA_BC.AsCurrency;
          Imp.ICMS.ICMS60.pICMSSTRet := tabCTEICMS_ALIQUOTA.AsCurrency;
          Imp.ICMS.ICMS60.vICMSSTRet := tabCTEICMS_VALOR.AsCurrency;
          Imp.ICMS.ICMS60.vCred      := tabCTEICMS_VALOR_CREDITO_OUT_REC.AsCurrency;
        end;
      6:
        begin // 90 - ICMS outros
          Imp.ICMS.SituTrib      := cst90;
          Imp.ICMS.ICMS90.CST    := cst90;
          Imp.ICMS.ICMS90.pRedBC := tabCTEICMS_PERCENTUAL_RED_DA_BC.AsCurrency;
          Imp.ICMS.ICMS90.vBC    := tabCTEICMS_VALOR_DA_BC.AsCurrency;
          Imp.ICMS.ICMS90.pICMS  := tabCTEICMS_ALIQUOTA.AsCurrency;
          Imp.ICMS.ICMS90.vICMS  := tabCTEICMS_VALOR.AsCurrency;
          Imp.ICMS.ICMS90.vCred  := tabCTEICMS_VALOR_CREDITO_OUT_REC.AsCurrency;
        end;
      7:
        begin // 91 - ICMS devido à UF de origem da prestação, quanto diferente da UF...
          Imp.ICMS.SituTrib                  := cstICMSOutraUF;
          Imp.ICMS.ICMSOutraUF.CST           := cstICMSOutraUF;
          Imp.ICMS.ICMSOutraUF.pRedBCOutraUF := tabCTEICMS_PERCENTUAL_RED_DA_BC.AsCurrency;
          Imp.ICMS.ICMSOutraUF.vBCOutraUF    := tabCTEICMS_VALOR_DA_BC.AsCurrency;
          Imp.ICMS.ICMSOutraUF.pICMSOutraUF  := tabCTEICMS_ALIQUOTA.AsCurrency;
          Imp.ICMS.ICMSOutraUF.vICMSOutraUF  := tabCTEICMS_VALOR.AsCurrency;
        end;
      8:
        begin // 99 - Simples Nacional
          Imp.ICMS.SituTrib     := cstICMSSN;
          Imp.ICMS.ICMSSN.indSN := 1;
        end;
    end;

    if tabCTEICMS_I_COBR_OPER_INTERESTADUAL.AsString.Trim = 'S' then
    begin
        // partilha de icms
      Imp.ICMSUFFim.vBCUFFim       := tabCTEICMS_I_VALOR_BASE_CALCULO.AsCurrency;
      Imp.ICMSUFFim.pICMSInter     := tabCTEICMS_I_ALIQUOTA_INTERNA_UF_TERM.AsCurrency;
      Imp.ICMSUFFim.pICMSInterPart := tabCTEICMS_I_ALIQUOTA_INTERESTADUAL.AsCurrency;

      case tabCTEICMS_I_IDPORC_PARTILHA.AsInteger of
        0:
          Imp.ICMSUFFim.pICMSUFFim := 0.00;
        1:
          Imp.ICMSUFFim.pICMSUFFim := 40;
        2:
          Imp.ICMSUFFim.pICMSUFFim := 60;
        3:
          Imp.ICMSUFFim.pICMSUFFim := 80;
        4:
          Imp.ICMSUFFim.pICMSUFFim := 100;
        5:
          Imp.ICMSUFFim.pICMSUFFim := tabCTEICMS_I_PORC_PARTILHA_UF_TERMINO.AsCurrency;
      end;
    end;

    Imp.infAdFisco := 'Lei da Transparencia: O valor aproximado de tributos incidentes sobre o preço deste servico é de R$ 17,00 (17,00%) Fonte: IBPT';
    Imp.vTotTrib   := 17.00;

      // inf cte normal
    with infCTeNorm do
    begin
        // informações da carga
      infCarga.vCarga  := tabCTECARGA_VALOR.AsCurrency;
      infCarga.proPred := tabCTECARGA_PRODUTO_PREDOMINANTE.AsString.Trim;
      infCarga.xOutCat := tabCTECARGA_PRODUTO_CARACTERISTICAS.AsString.Trim;
        //infCarga.vCargaAverb := 5000;

        // quantidades da carga
      tabCTE_CARGA_QUANTIDADES.First;
      while not tabCTE_CARGA_QUANTIDADES.Eof do
      begin
        with infCarga.InfQ.new do
        begin
          case tabCTE_CARGA_QUANTIDADESID_UNIDADE_MEDIDA.AsInteger of
            0:
              cUnid := uM3;
            1:
              cUnid := uKG;
            2:
              cUnid := uTON;
            3:
              cUnid := uUNIDADE;
            4:
              cUnid := uLITROS;
            5:
              cUnid := uMMBTU;
          end;
          tpMed  := tabCTE_CARGA_QUANTIDADESTIPO_MEDIDA.AsString.Trim;
          qCarga := tabCTE_CARGA_QUANTIDADESQUANTIDADE.AsCurrency;
        end;

        tabCTE_CARGA_QUANTIDADES.Next;
      end;

        // nota fiscal eletrônica
      tabCTE_NFE.First;
      while not tabCTE_NFE.Eof do
      begin
        with infDoc.infNFe.new do
        begin
          chave := tabCTE_NFENFE_CHAVE.AsString.Trim;
          PIN   := tabCTE_NFENFE_PIN.AsString.Trim;
        end;

        tabCTE_NFE.Next;
      end;

        // veículos novos
      tabCTE_VEICULOS_NOVOS.First;
      while not tabCTE_VEICULOS_NOVOS.Eof do
      begin
        with veicNovos.new do
        begin
          chassi := tabCTE_VEICULOS_NOVOSCHASSI.AsString.Trim;
          cCor   := tabCTE_VEICULOS_NOVOSCOR.AsString.Trim;
          xCor   := tabCTE_VEICULOS_NOVOSCOR_DESCRICAO.AsString.Trim;
          cMod   := tabCTE_VEICULOS_NOVOSCODIGO_MARCA_MODELO.AsString.Trim;
          vUnit  := tabCTE_VEICULOS_NOVOSVALOR_UNITARIO.AsCurrency;
          vFrete := tabCTE_VEICULOS_NOVOSFRETE_UNITARIO.AsCurrency;
        end;
        tabCTE_VEICULOS_NOVOS.Next;
      end;

        // rodoviario
      rodo.RNTRC := tabCTERODO_RNTRC.AsString.Trim;

        // odens de coleta
      tabCTE_ORDEM_COLETA.First;
      while not tabCTE_ORDEM_COLETA.Eof do
      begin
        with rodo.occ.new do
        begin
          serie := tabCTE_ORDEM_COLETASERIE.AsString.Trim;
          nOcc  := StrToIntDef(tabCTE_ORDEM_COLETANUMERO.AsString, 0);
          dEmi  := tabCTE_ORDEM_COLETADT_EMISSAO.AsDateTime;

          emiOcc.CNPJ := ACBrUtil.OnlyNumber(tabCTE_ORDEM_COLETACNPJ.AsString.Trim);
          emiOcc.cInt := tabCTE_ORDEM_COLETACOD_INT_TRANS.AsString.Trim;
          emiOcc.IE   := ACBrUtil.OnlyNumber(tabCTE_ORDEM_COLETAIE.AsString.Trim);
          emiOcc.UF   := tabCTE_ORDEM_COLETAID_UF.AsString.Trim;
          emiOcc.fone := ACBrUtil.OnlyNumber(tabCTE_ORDEM_COLETATELEFONE.AsString.Trim);
        end;

        tabCTE_ORDEM_COLETA.Next;
      end;

        //Carrega dados da CTe substituto 0-1
      with infCTeSub do
      begin
        chCTe := tabCTECTE_SUB_CHAVE_ORIGINAL.AsString.Trim;

        if tabCTECTE_SUB_TOMADOR_CONTRIBUINTE.AsString.Trim = 'S' then
        begin
          tomaICMS.refCte := tabCTECTE_SUB_CHAVE_CTE_SUBSTITUTO.AsString.Trim;
          tomaICMS.refNFe := tabCTECTE_SUB_CHAVE_NFE_SUBSTITUTO.AsString.Trim;
        end;

        if tabCTECTE_SUB_TOMADOR_NCONTRIBUINTE.AsString = 'S' then
          tomaNaoICMS.refCteAnu := tabCTECTE_SUB_CHAVE_ANULACAO.AsString.Trim;
      end;
    end;

      // cte de anulacao de valores
    if tabCTECTE_SUB_TOMADOR_NCONTRIBUINTE.AsString = 'S' then
      infCteAnu.chCTe := tabCTECTE_SUB_CHAVE_ANULACAO.AsString.Trim;
  end;
end;

procedure TdtmCTe.ACBrCTeStatusChange(Sender: TObject);
var
  Ambiente: String;
  Mensagem: String;
begin
  case ACBrCTe.Configuracoes.WebServices.Ambiente of
    taProducao:
      Ambiente := 'Ambiente de Produção';
    taHomologacao:
      Ambiente := 'Ambiente de Homologação';
  end;

  Mensagem := '';
  case ACBrCTe.Status of
    stCTeIdle:
      FecharEspera;
    stCTeStatusServico:
      Mensagem := Ambiente + #13 + 'Verificando Status do servico...';
    stCTeRecepcao:
      Mensagem := Ambiente + #13 + 'Enviando dados do CT-e...';
    stCteRetRecepcao:
      Mensagem := Ambiente + #13 + 'Recebendo dados do CT-e...';
    stCTeConsulta:
      Mensagem := Ambiente + #13 + 'Consultando CT-e...';
    stCTeCancelamento:
      Mensagem := Ambiente + #13 + 'Enviando cancelamento do CT-e...';
    stCTeInutilizacao:
      Mensagem := Ambiente + #13 + 'Enviando pedido de inutilização...';
    stCTeRecibo:
      Mensagem := Ambiente + #13 + 'Consultando recibo de lote...';
    stCTeCadastro:
      Mensagem := Ambiente + #13 + 'Consultando cadastro...';
    stCTeEmail:
      Mensagem := Ambiente + #13 + 'Enviando CT-e por E-Mail...';
    stCTeCCe:
      Mensagem := Ambiente + #13 + 'Enviando carta de correção eletrônica...';
    stCTeEvento:
      Mensagem := Ambiente + #13 + 'Enviando evento...';
  end;

  if Mensagem <> '' then
    AbrirEspera(Self, Mensagem);
end;

procedure TdtmCTe.Configurar;
var
  PathApp, PathArqMDFe, PathPDF, PathArquivos, PathSchemas, PathTmp: string;
begin
    // caminhos de pastas gerais
  PathApp     := ExtractFilePath(ParamStr(0));
  PathSchemas := IncludeTrailingPathDelimiter(PathApp + 'SCHEMAS\CTE\3.0');

    // caminhos de pastas especificos por cnpj
  PathArqMDFe  := IncludeTrailingPathDelimiter(PathApp + 'DOCUMENTOS');
  PathPDF      := IncludeTrailingPathDelimiter(PathArqMDFe + 'PDF');
  PathArquivos := IncludeTrailingPathDelimiter(PathArqMDFe + 'ARQUIVOS');
  PathTmp      := IncludeTrailingPathDelimiter(PathArqMDFe + 'TMP');

  if not DirectoryExists(PathPDF) then
    ForceDirectories(PathPDF);

  if not DirectoryExists(PathArquivos) then
    ForceDirectories(PathArquivos);

  if not DirectoryExists(PathTmp) then
    ForceDirectories(PathTmp);

    // configuração do ACBRNFE
  ACBrCTe.Configuracoes.Arquivos.AdicionarLiteral := true;
  ACBrCTe.Configuracoes.Arquivos.EmissaoPathCTe   := true;
  ACBrCTe.Configuracoes.Arquivos.SepararPorMes    := true;
  ACBrCTe.Configuracoes.Arquivos.SepararPorCNPJ   := true;
  ACBrCTe.Configuracoes.Arquivos.SepararPorModelo := true;
  ACBrCTe.Configuracoes.Arquivos.Salvar           := true;
  ACBrCTe.Configuracoes.Arquivos.PathCTe          := PathArquivos;
  ACBrCTe.Configuracoes.Arquivos.PathEvento       := PathArquivos;
  ACBrCTe.Configuracoes.Arquivos.PathSalvar       := PathTmp;
  ACBrCTe.Configuracoes.Arquivos.PathSchemas      := PathSchemas;

    // configurações gerais
  ACBrCTe.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrCTe.Configuracoes.Geral.Salvar       := true;

  ACBrCTe.Configuracoes.Geral.SSLLib        := TSSLLib.libWinCrypt;
  ACBrCTe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib.xsLibXml2;
  ACBrCTe.SSL.SSLType                       := TSSLType.LT_TLSv1_2;

  ACBrCTe.Configuracoes.Geral.ModeloDF         := moCTe;
  ACBrCTe.Configuracoes.Geral.ExibirErroSchema := true;
  ACBrCTe.Configuracoes.Geral.FormatoAlerta    := '[ %TAGNIVEL%%TAG% ] %DESCRICAO% - %MSG%';

  try
    tabCERTIFICADO_CONFIG.Close;
    tabCERTIFICADO_CONFIG.Open;

    ACBrCTe.Configuracoes.Certificados.NumeroSerie := tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO.AsString.Trim;
    ACBrCTe.Configuracoes.Certificados.Senha       := tabCERTIFICADO_CONFIGCERTIFICADO_SENHA.AsAnsiString;

    ACBrCTe.Configuracoes.WebServices.TimeOut             := 18000; // tempo limite de espera pelo webservice
    ACBrCTe.Configuracoes.WebServices.AguardarConsultaRet := 5000; // tempo padrão que vai aguardar para consultar após enviar a NF-e
    ACBrCTe.Configuracoes.WebServices.IntervaloTentativas := 3000; // Intervalo entre as tentativas de envio
    ACBrCTe.Configuracoes.WebServices.Tentativas          := 10; // quantidade de tentativas de envio
    ACBrCTe.Configuracoes.WebServices.AjustaAguardaConsultaRet := true; // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice
    ACBrCTe.Configuracoes.WebServices.Salvar     := true;
    ACBrCTe.Configuracoes.WebServices.UF         := tabCERTIFICADO_CONFIGWS_UF_DESTINO.AsString.Trim;
    ACBrCTe.Configuracoes.WebServices.Visualizar := False;

    case tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE.AsInteger of
      0:
        ACBrCTe.Configuracoes.WebServices.Ambiente := taProducao;
      1:
        ACBrCTe.Configuracoes.WebServices.Ambiente := taHomologacao
    end;

    // proxy de acesso
    ACBrCTe.Configuracoes.WebServices.ProxyHost := tabCERTIFICADO_CONFIGWS_PROXY_HOST.AsString.Trim;
    ACBrCTe.Configuracoes.WebServices.ProxyPort := tabCERTIFICADO_CONFIGWS_PROXY_PORTA.AsString.Trim;
    ACBrCTe.Configuracoes.WebServices.ProxyUser := tabCERTIFICADO_CONFIGWS_PROXY_USUARIO.AsString.Trim;
    ACBrCTe.Configuracoes.WebServices.ProxyPass := tabCERTIFICADO_CONFIGWS_PROXY_SENHA.AsString.Trim;

    // Email
    ACBrMail.IsHTML := False;
      {todo: terminar cadastro de configuração adicionar e-mail do emitente}
      //ACBrMail.From := qryCTeOSConfigEMAIL.AsString.Trim;
      // todo
      // ACBrMail1.FromName := dtmContainer.Empresa.RazaoSocial;
    ACBrMail.Host     := tabCERTIFICADO_CONFIGEMAIL_SERVIDOR.AsString.Trim;
    ACBrMail.Port     := tabCERTIFICADO_CONFIGEMAIL_PORTA.AsString.Trim;
    ACBrMail.Username := tabCERTIFICADO_CONFIGEMAIL_USUARIO.AsString.Trim;
    ACBrMail.Password := tabCERTIFICADO_CONFIGEMAIL_SENHA.AsString.Trim;
    ACBrMail.SetSSL   := tabCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA.AsString.Trim = 'S';
    ACBrMail.SetTLS   := true;

      // DANFE ( GERAL )
    ACBrCTe.DACTE.PathPDF := PathPDF;
  finally
    tabCERTIFICADO_CONFIG.Close;
  end;
end;

procedure TdtmCTe.qryCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmCTe.qryPESSOABeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmCTe.tabCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
begin
  tabCERTIFICADO_CONFIG.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmCTe.tabCTEAfterOpen(DataSet: TDataSet);
begin
  tabCTE_FLUXO_PASSAGENS.Active   := DataSet.Active;
  tabCTE_COMPONENTES.Active       := DataSet.Active;
  tabCTE_ORDEM_COLETA.Active      := DataSet.Active;
  tabCTE_CARGA_QUANTIDADES.Active := DataSet.Active;
  tabCTE_VEICULOS_NOVOS.Active    := DataSet.Active;
  tabCTE_NFE.Active               := DataSet.Active;
  tabCERTIFICADO_CONFIG.Active    := DataSet.Active;
  tabCTE_DOCANT.Active            := DataSet.Active;

  qryNATUREZAS.Active      := DataSet.Active;
  qryUF.Active             := DataSet.Active;
  qryPESSOA.Active         := DataSet.Active;
  qryCTeEVENTOS.Active     := DataSet.Active;
  qryDESTINATARIO.Active   := DataSet.Active;
  qryREMETENTE.Active      := DataSet.Active;
  qryTOMADOR_OUTROS.Active := DataSet.Active;
  qryEMITENTE.Active       := DataSet.Active;
  qryEXPEDIDOR.Active      := DataSet.Active;
  qryRECEBEDOR.Active      := DataSet.Active;
end;

procedure TdtmCTe.tabCTEBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
  TFDQuery(DataSet).ParamByName('ID_SERIE').AsInteger   := oEmpresa.CTE_ID_SERIE;
end;

procedure TdtmCTe.tabCTEBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmCTe.tabCTENewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_EMPRESA').AsInteger            := oEmpresa.ID;
  DataSet.FieldByName('ID_CTE').AsInteger                := - 1;
  DataSet.FieldByName('ID_SERIE').AsInteger              := oEmpresa.CTE_ID_SERIE;
  DataSet.FieldByName('DT_HORA_EMISSAO').AsDateTime      := Now;
  DataSet.FieldByName('ID_IND_CTE_GLOBALIZADO').AsString := 'N';
  DataSet.FieldByName('ID_INF_COD_NUMERICO').AsString    := 'N';
  DataSet.FieldByName('ID_MODAL').AsInteger              := 0;
  DataSet.FieldByName('ID_FORMA_EMISSAO').AsInteger      := 0;
  DataSet.FieldByName('ID_TIPO_SERVICO').AsInteger       := 0;
  DataSet.FieldByName('ID_FINALIDADE_EMISSAO').AsInteger := 0;
  DataSet.FieldByName('ID_FORMA_EMISSAO').AsInteger      := 0;
  DataSet.FieldByName('ID_UF_EMISSAO').AsString          := oEmpresa.ID_UF.Trim;
  DataSet.FieldByName('ID_UF_INICIO_PRESTACAO').AsString := oEmpresa.ID_UF.Trim;
  DataSet.FieldByName('PREVISAO_ENTREGA_DATA_ID_TIPO').AsInteger := 0;
  DataSet.FieldByName('PREVISAO_ENTREGA_HORA_ID_TIPO').AsInteger := 0;
  DataSet.FieldByName('RECEBEDOR_RETIRA').AsString := 'N';
    //valores prestação
  DataSet.FieldByName('VALOR_TOTAL_PRETACAO_SERVICO').AsCurrency := 0.00;
  DataSet.FieldByName('VALOR_A_RECEBER').AsCurrency := 0.00;
  DataSet.FieldByName('VALOR_TOTAL_DOS_TRIBUTOS').AsCurrency := 0.00;
    //icms
  DataSet.FieldByName('ICMS_PERCENTUAL_RED_DA_BC').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_VALOR_DA_BC').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_ALIQUOTA').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_VALOR').AsCurrency    := 0.00;
  DataSet.FieldByName('ICMS_VALOR_CREDITO_OUT_REC').AsCurrency := 0.00;
    //icms interstarual
  DataSet.FieldByName('ICMS_I_COBR_OPER_INTERESTADUAL').AsString := 'N';
  DataSet.FieldByName('ICMS_I_VALOR_BASE_CALCULO').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_ALIQUOTA_INTERNA_UF_TERM').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_ALIQUOTA_INTERESTADUAL').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_PORC_PARTILHA_UF_TERMINO').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_VLR_ICMS_PARTILH_UF_INIC').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_VLR_ICMS_PARTILH_UF_TERM').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_PORC_FCP_UF_TERMINO').AsCurrency := 0.00;
  DataSet.FieldByName('ICMS_I_VLR_FCP_UF_TERMINO').AsCurrency := 0.00;
    //carga
  DataSet.FieldByName('CARGA_VALOR').AsCurrency := 0.00;

  DataSet.FieldByName('CTE_SUB_TOMADOR_CONTRIBUINTE').AsString := 'N';
  DataSet.FieldByName('CTE_SUB_TOMADOR_NCONTRIBUINTE').AsString := 'N';
end;

procedure TdtmCTe.tabCTEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmCTe.tabCTE_COMPONENTESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmCTe.tabCTE_EVENTOAfterOpen(DataSet: TDataSet);
begin
  tabCTE_EVENTO_CCE_ITENS.Active := DataSet.Active;
end;

procedure TdtmCTe.tabCTE_EVENTONewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmCTe.tabCTE_FLUXO_PASSAGENSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmCTe.tabCTE_ORDEM_COLETANewRecord(DataSet: TDataSet);
begin
  tabCTE_ORDEM_COLETADT_EMISSAO.AsDateTime := Now;
end;

procedure TdtmCTe.tabCTE_VEICULOS_NOVOSBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CHASSI').AsString.Trim.Length <> 17 then
    raise Exception.Create('Número do Chassi inválido!');

  VerificarCamposObrigatorios(DataSet);
end;

end.
