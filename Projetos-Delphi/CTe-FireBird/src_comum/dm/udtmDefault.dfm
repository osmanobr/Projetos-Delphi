object dtmDefault: TdtmDefault
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 519
  Width = 878
  object cnx_BD: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\erp\bin\bd.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    TxOptions.AutoStop = False
    LoginPrompt = False
    BeforeConnect = cnx_BDBeforeConnect
    Left = 30
    Top = 10
  end
  object FLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Projetos\erp\bin\fbclient.dll'
    Left = 30
    Top = 78
  end
  object fWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 30
    Top = 148
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCepAberto
    ChaveAcesso = '747a623188a6450917a81c1e2f1a2dae'
    PesquisarIBGE = True
    Left = 700
    Top = 129
  end
  object tabEMPRESA: TFDQuery
    AfterOpen = tabEMPRESAAfterOpen
    AfterClose = tabEMPRESAAfterOpen
    BeforePost = tabEMPRESABeforePost
    OnNewRecord = tabEMPRESANewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT'
      '  EMPRESA.*'
      'FROM'
      '  EMPRESA'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 160
    Top = 10
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabEMPRESAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabEMPRESAID_REGIME: TIntegerField
      FieldName = 'ID_REGIME'
      Origin = 'ID_REGIME'
    end
    object tabEMPRESAID_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'ID_INDICADOR_ATIVIDADE'
      Origin = 'ID_INDICADOR_ATIVIDADE'
    end
    object tabEMPRESARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabEMPRESANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabEMPRESACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      OnSetText = TFieldSetOnlyNumber
      Size = 18
    end
    object tabEMPRESAIE_ESTADUAL: TStringField
      FieldName = 'IE_ESTADUAL'
      Origin = 'IE_ESTADUAL'
      OnSetText = TFieldSetOnlyNumber
    end
    object tabEMPRESACNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
    end
    object tabEMPRESAIE_MUNICIPAL: TStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = 'IE_MUNICIPAL'
    end
    object tabEMPRESAIE_ESTADUAL_ST: TStringField
      FieldName = 'IE_ESTADUAL_ST'
      Origin = 'IE_ESTADUAL_ST'
    end
    object tabEMPRESAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabEMPRESANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabEMPRESACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabEMPRESABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabEMPRESAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
    end
    object tabEMPRESAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      FixedChar = True
      Size = 2
    end
    object tabEMPRESACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabEMPRESATELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      OnSetText = TFieldSetOnlyNumber
      Size = 15
    end
    object tabEMPRESACELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      OnSetText = TFieldSetOnlyNumber
      Size = 15
    end
    object tabEMPRESAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabEMPRESAWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object tabEMPRESADATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object tabEMPRESACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object tabEMPRESAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object tabEMPRESARESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object tabEMPRESALOGOTIPO_LOCAL: TStringField
      FieldName = 'LOGOTIPO_LOCAL'
      Origin = 'LOGOTIPO_LOCAL'
      Size = 300
    end
    object tabEMPRESACTE_ID_SERIE: TIntegerField
      FieldName = 'CTE_ID_SERIE'
      Origin = 'CTE_ID_SERIE'
    end
    object tabEMPRESACTEOS_ID_SERIE: TIntegerField
      FieldName = 'CTEOS_ID_SERIE'
      Origin = 'CTEOS_ID_SERIE'
    end
    object tabEMPRESAMDFE_ID_SERIE: TIntegerField
      FieldName = 'MDFE_ID_SERIE'
      Origin = 'MDFE_ID_SERIE'
    end
    object tabEMPRESANFE_ID_SERIE: TIntegerField
      FieldName = 'NFE_ID_SERIE'
      Origin = 'NFE_ID_SERIE'
    end
    object tabEMPRESANFSE_ID_SERIE: TIntegerField
      FieldName = 'NFSE_ID_SERIE'
      Origin = 'NFSE_ID_SERIE'
    end
    object tabEMPRESANFSE_LCP116: TStringField
      FieldName = 'NFSE_LCP116'
      Origin = 'NFSE_LCP116'
    end
    object tabEMPRESANFSE_PCISSQN: TCurrencyField
      FieldName = 'NFSE_PCISSQN'
      Origin = 'NFSE_PCISSQN'
    end
    object tabEMPRESASIMPLES_ALIQ_CREDITO: TCurrencyField
      FieldName = 'SIMPLES_ALIQ_CREDITO'
      Origin = 'SIMPLES_ALIQ_CREDITO'
    end
  end
  object tabCIDADES_UF: TFDQuery
    Connection = cnx_BD
    SQL.Strings = (
      'select * from cidades_uf')
    Left = 160
    Top = 78
    object tabCIDADES_UFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabCIDADES_UFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object tabCIDADES_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object dtstabCIDADES_UF: TDataSource
    DataSet = tabCIDADES_UF
    Left = 274
    Top = 106
  end
  object OpenDialog: TOpenDialog
    Left = 700
    Top = 190
  end
  object tabCERTIFICADO_CONFIG: TFDQuery
    BeforeOpen = tabCERTIFICADO_CONFIGBeforeOpen
    BeforePost = tabCERTIFICADO_CONFIGBeforePost
    OnNewRecord = tabCERTIFICADO_CONFIGNewRecord
    OnUpdateError = tabCERTIFICADO_CONFIGUpdateError
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = :ID_MODELO'
      ''
      '')
    Left = 160
    Top = 148
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MODELO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCERTIFICADO_CONFIGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField
      FieldName = 'ID_CERTIFICADOCONFIG'
      Origin = 'ID_CERTIFICADOCONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField
      FieldName = 'CERTIFICADO_NUMERO'
      Origin = 'CERTIFICADO_NUMERO'
      Size = 40
    end
    object tabCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField
      FieldName = 'CERTIFICADO_SENHA'
      Origin = 'CERTIFICADO_SENHA'
      Size = 40
    end
    object tabCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField
      FieldName = 'WS_UF_DESTINO'
      Origin = 'WS_UF_DESTINO'
      FixedChar = True
      Size = 2
    end
    object tabCERTIFICADO_CONFIGWS_TIMEOUT: TIntegerField
      FieldName = 'WS_TIMEOUT'
      Origin = 'WS_TIMEOUT'
    end
    object tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_CRYPT_TYPE: TIntegerField
      FieldName = 'ID_CRYPT_TYPE'
      Origin = 'ID_CRYPT_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_HTTP_TYPE: TIntegerField
      FieldName = 'ID_HTTP_TYPE'
      Origin = 'ID_HTTP_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_XMLSIGN_TYPE: TIntegerField
      FieldName = 'ID_XMLSIGN_TYPE'
      Origin = 'ID_XMLSIGN_TYPE'
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField
      FieldName = 'WS_PROXY_HOST'
      Origin = 'WS_PROXY_HOST'
      Size = 200
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField
      FieldName = 'WS_PROXY_PORTA'
      Origin = 'WS_PROXY_PORTA'
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField
      FieldName = 'WS_PROXY_USUARIO'
      Origin = 'WS_PROXY_USUARIO'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField
      FieldName = 'WS_PROXY_SENHA'
      Origin = 'WS_PROXY_SENHA'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField
      FieldName = 'ID_REPORT_ORIENTACAO'
      Origin = 'ID_REPORT_ORIENTACAO'
    end
    object tabCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object tabCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField
      FieldName = 'EMAIL_ENVIAR'
      Origin = 'EMAIL_ENVIAR'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField
      FieldName = 'EMAIL_SERVIDOR'
      Origin = 'EMAIL_SERVIDOR'
      Size = 200
    end
    object tabCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField
      FieldName = 'EMAIL_PORTA'
      Origin = 'EMAIL_PORTA'
    end
    object tabCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Origin = 'EMAIL_USUARIO'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
      Origin = 'EMAIL_SENHA'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField
      FieldName = 'EMAIL_SENHA_SEGURA'
      Origin = 'EMAIL_SENHA_SEGURA'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField
      FieldName = 'TIME_ZONE_MODO'
      Origin = 'TIME_ZONE_MODO'
    end
    object tabCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField
      FieldName = 'TIME_ZONE_MANUAL'
      Origin = 'TIME_ZONE_MANUAL'
    end
    object tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField
      FieldName = 'MANTER_ARQUIVOS_TEMPORARIOS'
      Origin = 'MANTER_ARQUIVOS_TEMPORARIOS'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGCAMPOS_FAT_OBRIGATORIO: TStringField
      FieldName = 'CAMPOS_FAT_OBRIGATORIO'
      Origin = 'CAMPOS_FAT_OBRIGATORIO'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGNFSE_SOAP_SALVAR_ENVELOPE: TStringField
      FieldName = 'NFSE_SOAP_SALVAR_ENVELOPE'
      Origin = 'NFSE_SOAP_SALVAR_ENVELOPE'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGNFSE_PATH_SCHEMAS: TStringField
      FieldName = 'NFSE_PATH_SCHEMAS'
      Origin = 'NFSE_PATH_SCHEMAS'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGNFSE_WEB_USER: TStringField
      FieldName = 'NFSE_WEB_USER'
      Origin = 'NFSE_WEB_USER'
      Size = 250
    end
    object tabCERTIFICADO_CONFIGNFSE_WEB_PWD: TStringField
      FieldName = 'NFSE_WEB_PWD'
      Origin = 'NFSE_WEB_PWD'
      Size = 250
    end
    object tabCERTIFICADO_CONFIGNFSE_LOGO_PRF: TStringField
      FieldName = 'NFSE_LOGO_PRF'
      Origin = 'NFSE_LOGO_PRF'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField
      FieldName = 'EMAIL_SENHA_TLS'
      Origin = 'EMAIL_SENHA_TLS'
      FixedChar = True
      Size = 1
    end
  end
  object qryTmp: TFDQuery
    Connection = cnx_BD
    Left = 350
    Top = 20
  end
  object tabPESSOAS: TFDQuery
    BeforeOpen = tabPESSOASBeforeOpen
    BeforePost = tabPESSOASBeforePost
    OnNewRecord = tabPESSOASNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PESSOA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_PESSOA = :ID_PESSOA')
    Left = 160
    Top = 215
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabPESSOASID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPESSOASID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPESSOASID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object tabPESSOASID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object tabPESSOASID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object tabPESSOASID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object tabPESSOASID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object tabPESSOASID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object tabPESSOASRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabPESSOASNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabPESSOASCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object tabPESSOASIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object tabPESSOASIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object tabPESSOASENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabPESSOASNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabPESSOASCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabPESSOASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabPESSOASCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabPESSOASID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabPESSOASID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabPESSOASTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object tabPESSOASCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object tabPESSOASTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object tabPESSOASEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabPESSOASCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object tabPESSOASNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object tabPESSOASESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object tabPESSOASCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object tabPESSOASCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object tabPESSOASMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object tabPESSOASPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object tabPESSOASSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object tabPESSOASOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object tabPESSOASCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object tabPESSOASALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object tabPESSOASFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object tabPESSOASCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object tabPESSOASCBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object tabPRODUTOS: TFDQuery
    BeforeOpen = tabPRODUTOSBeforeOpen
    OnNewRecord = tabPRODUTOSNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PRODUTO'
      'WHERE '
      '  1=1'
      '  AND ID_PRODUTO = :ID_PRODUTO'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 160
    Top = 280
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabPRODUTOSID_PRODUTO: TLargeintField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPRODUTOSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tabPRODUTOSID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object tabPRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object tabPRODUTOSEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 14
    end
    object tabPRODUTOSEAN_TRIB: TStringField
      FieldName = 'EAN_TRIB'
      Origin = 'EAN_TRIB'
      Size = 14
    end
    object tabPRODUTOSEX_TIPI: TStringField
      FieldName = 'EX_TIPI'
      Origin = 'EX_TIPI'
      Size = 3
    end
    object tabPRODUTOSGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Size = 2
    end
    object tabPRODUTOSNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object tabPRODUTOSCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object tabPRODUTOSUN_COM: TStringField
      FieldName = 'UN_COM'
      Origin = 'UN_COM'
      Size = 5
    end
    object tabPRODUTOSUN_TRIB: TStringField
      FieldName = 'UN_TRIB'
      Origin = 'UN_TRIB'
      Size = 5
    end
    object tabPRODUTOSVL_COM: TFMTBCDField
      FieldName = 'VL_COM'
      Origin = 'VL_COM'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSVL_TRIB: TFMTBCDField
      FieldName = 'VL_TRIB'
      Origin = 'VL_TRIB'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSQT_TRIB: TFMTBCDField
      FieldName = 'QT_TRIB'
      Origin = 'QT_TRIB'
      Precision = 18
      Size = 3
    end
    object tabPRODUTOSIPI_COD_ENQUADRAMENTO: TStringField
      FieldName = 'IPI_COD_ENQUADRAMENTO'
      Origin = 'IPI_COD_ENQUADRAMENTO'
      Size = 3
    end
    object tabPRODUTOSIPI_CNPJ_PRODUTOR: TStringField
      FieldName = 'IPI_CNPJ_PRODUTOR'
      Origin = 'IPI_CNPJ_PRODUTOR'
      Size = 18
    end
    object tabPRODUTOSORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object tabPRODUTOSSIMPLES_CSOSN: TStringField
      FieldName = 'SIMPLES_CSOSN'
      Origin = 'SIMPLES_CSOSN'
      FixedChar = True
      Size = 3
    end
    object tabPRODUTOSSIMPLES_ST_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_PBASE'
      Origin = 'SIMPLES_ST_PBASE'
    end
    object tabPRODUTOSSIMPLES_ST_RBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_RBASE'
      Origin = 'SIMPLES_ST_RBASE'
    end
    object tabPRODUTOSSIMPLES_ST_MVA: TCurrencyField
      FieldName = 'SIMPLES_ST_MVA'
      Origin = 'SIMPLES_ST_MVA'
    end
    object tabPRODUTOSSIMPLES_ST_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ST_ALIQUOTA'
      Origin = 'SIMPLES_ST_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSSIMPLES_ICMS_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ICMS_PBASE'
      Origin = 'SIMPLES_ICMS_PBASE'
    end
    object tabPRODUTOSSIMPLES_ICMS_RBASE: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_RBASE'
      Origin = 'SIMPLES_ICMS_RBASE'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSSIMPLES_ICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_ALIQUOTA'
      Origin = 'SIMPLES_ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSNORMAL_CST: TStringField
      FieldName = 'NORMAL_CST'
      Origin = 'NORMAL_CST'
      FixedChar = True
      Size = 2
    end
    object tabPRODUTOSNORMAL_ICMS_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_PBASE'
      Origin = 'NORMAL_ICMS_PBASE'
    end
    object tabPRODUTOSNORMAL_ICMS_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_RBASE'
      Origin = 'NORMAL_ICMS_RBASE'
    end
    object tabPRODUTOSNORMAL_ICMS_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMS_ALIQUOTA'
      Origin = 'NORMAL_ICMS_ALIQUOTA'
    end
    object tabPRODUTOSNORMAL_ICMS_MOTIVO_DES: TIntegerField
      FieldName = 'NORMAL_ICMS_MOTIVO_DES'
      Origin = 'NORMAL_ICMS_MOTIVO_DES'
    end
    object tabPRODUTOSNORMAL_ICMSST_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_PBASE'
      Origin = 'NORMAL_ICMSST_PBASE'
    end
    object tabPRODUTOSNORMAL_ICMSST_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_RBASE'
      Origin = 'NORMAL_ICMSST_RBASE'
    end
    object tabPRODUTOSNORMAL_ICMSST_MVA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_MVA'
      Origin = 'NORMAL_ICMSST_MVA'
    end
    object tabPRODUTOSNORMAL_ICMSST_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_ALIQUOTA'
      Origin = 'NORMAL_ICMSST_ALIQUOTA'
    end
  end
  object qryTmp1: TFDQuery
    Connection = cnx_BD
    Left = 350
    Top = 80
  end
  object tabTRANSPORTADORA: TFDQuery
    BeforeOpen = tabTRANSPORTADORABeforeOpen
    BeforePost = tabTRANSPORTADORABeforePost
    OnNewRecord = tabTRANSPORTADORANewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  TRANSPORTADORA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_TRANSPORTADORA = :ID_TRANSPORTADORA')
    Left = 160
    Top = 345
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_TRANSPORTADORA'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object tabTRANSPORTADORAID_TRANSPORTADORA: TLargeintField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabTRANSPORTADORAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tabTRANSPORTADORAID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object tabTRANSPORTADORAID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
    end
    object tabTRANSPORTADORARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabTRANSPORTADORANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabTRANSPORTADORACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object tabTRANSPORTADORAIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object tabTRANSPORTADORAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabTRANSPORTADORANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabTRANSPORTADORACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabTRANSPORTADORABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabTRANSPORTADORACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabTRANSPORTADORAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabTRANSPORTADORAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabTRANSPORTADORATELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      FixedChar = True
      Size = 15
    end
    object tabTRANSPORTADORAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabTRANSPORTADORACONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object tabTRANSPORTADORAOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object tabTRANSPORTADORACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
      Required = True
    end
    object tabTRANSPORTADORAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
  end
  object qryPESSOAS: TFDQuery
    BeforeOpen = qryPESSOASBeforeOpen
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PESSOA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 350
    Top = 215
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPESSOASID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOASID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOASID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryPESSOASID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryPESSOASID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryPESSOASID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPESSOASID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryPESSOASID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryPESSOASRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryPESSOASNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryPESSOASCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryPESSOASIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryPESSOASIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryPESSOASENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryPESSOASNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryPESSOASCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryPESSOASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryPESSOASCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryPESSOASID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPESSOASID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryPESSOASTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryPESSOASCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryPESSOASTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryPESSOASEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryPESSOASCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryPESSOASNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryPESSOASESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryPESSOASCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryPESSOASCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryPESSOASMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryPESSOASPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryPESSOASSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryPESSOASOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryPESSOASCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryPESSOASALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryPESSOASFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPESSOASCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryPESSOASCBR_VALOR: TFMTBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
end
