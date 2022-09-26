object dtmCTe: TdtmCTe
  OldCreateOrder = True
  Height = 409
  Width = 772
  object ACBrCTeDACTeRL: TACBrCTeDACTeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrCTE = ACBrCTe
    ImprimirHoraSaida = False
    TipoDACTE = tiSimplificado
    TamanhoPapel = tpA4
    Cancelada = False
    ExibeResumoCanhoto = False
    EPECEnviado = False
    ImprimeDescPorc = False
    PrintDialog = True
    Left = 89
    Top = 83
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 89
    Top = 148
  end
  object ACBrCTe: TACBrCTe
    MAIL = ACBrMail
    OnStatusChange = ACBrCTeStatusChange
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moCTeOS
    Configuracoes.Arquivos.PathSalvar = 'C:\ZettaBrasil\DeltaCTe\XMLRet\'
    Configuracoes.Arquivos.PathSchemas = 
      'C:\Delphi\Componentes\ACBr\Exemplos\ACBrDFe\ACBrCTe\Delphi\Schem' +
      'as\CTe\3.00\'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.PathCTe = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.Arquivos.PathInu = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.Arquivos.PathEvento = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DACTE = ACBrCTeDACTeRL
    Left = 89
    Top = 18
  end
  object OpenDialog: TOpenDialog
    Left = 89
    Top = 279
  end
  object qryDESTINATARIO: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_DESTINATARIO;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  PESSOA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_IBGE_NOME'
      'FROM'
      '  PESSOA'
      
        '    LEFT JOIN CIDADES ON PESSOA.ID_CIDADES_IBGE = CIDADES.ID_CID' +
        'ADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_PESSOA = :ID_DESTINATARIO'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 383
    Top = 253
    ParamData = <
      item
        Name = 'ID_DESTINATARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryDESTINATARIOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDESTINATARIOID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDESTINATARIOID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryDESTINATARIOID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryDESTINATARIOID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryDESTINATARIOID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryDESTINATARIOID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryDESTINATARIOID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryDESTINATARIORAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryDESTINATARIONOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryDESTINATARIOCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryDESTINATARIOIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryDESTINATARIOIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryDESTINATARIOENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryDESTINATARIONUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryDESTINATARIOCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryDESTINATARIOBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryDESTINATARIOCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryDESTINATARIOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryDESTINATARIOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryDESTINATARIOTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryDESTINATARIOCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryDESTINATARIOTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryDESTINATARIOEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryDESTINATARIOCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryDESTINATARIONASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryDESTINATARIOESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryDESTINATARIOCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryDESTINATARIOCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryDESTINATARIOMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryDESTINATARIOPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryDESTINATARIOSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryDESTINATARIOOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryDESTINATARIOCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryDESTINATARIOALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryDESTINATARIOFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryDESTINATARIOCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryDESTINATARIOCBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
    object qryDESTINATARIOID_CIDADES_IBGE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_IBGE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryUF: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CIDADES_UF'
      'ORDER BY'
      '  ID_CIDADES_UF')
    Left = 311
    Top = 139
    object qryUFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryUFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object qryUFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object qryMUNICIPIO: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CIDADES.*'
      'FROM'
      '  CIDADES'
      'WHERE'
      '  ID_CIDADES_UF = :ID_CIDADES_UF'
      'ORDER BY'
      '  DESCRICAO'
      '')
    Left = 303
    Top = 206
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object qryMUNICIPIOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMUNICIPIOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryMUNICIPIOID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object qryMUNICIPIODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object qryPESSOA: TFDQuery
    BeforeOpen = qryPESSOABeforeOpen
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      
        'SELECT * FROM PESSOA  WHERE ID_EMPRESA = :ID_EMPRESA ORDER BY RA' +
        'ZAOSOCIAL')
    Left = 295
    Top = 263
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPESSOAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOAID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOAID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryPESSOAID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryPESSOAID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryPESSOAID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPESSOAID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryPESSOAID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryPESSOARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryPESSOANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryPESSOACPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryPESSOAIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryPESSOAIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryPESSOAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryPESSOANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryPESSOACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryPESSOABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryPESSOACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryPESSOAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPESSOAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryPESSOATELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryPESSOACELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryPESSOATELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryPESSOAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryPESSOACONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryPESSOANASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryPESSOAESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryPESSOACONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryPESSOACONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryPESSOAMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryPESSOAPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryPESSOASEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryPESSOAOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryPESSOACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryPESSOAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryPESSOAFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPESSOACBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryPESSOACBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object updEvento: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'INSERT INTO CTE_EVENTO'
      
        '  (  ID_EMPRESA,  ID_CTE,  ID_SERIE,  ID_EVENTO,  ID_SEQUENCIA, ' +
        ' TIPO,  DTHR_EVENTO,  LOTE,  DTHR_PROTOCOLO,  NUMERO_PROTOCOLO, ' +
        ' CSTAT,  HISTORICO,  OBSERVACAO,  XML )'
      'VALUES'
      
        '  ( :ID_EMPRESA, :ID_CTE, :ID_SERIE, :ID_EVENTO, :ID_SEQUENCIA, ' +
        ':TIPO, :DTHR_EVENTO, :LOTE, :DTHR_PROTOCOLO, :NUMERO_PROTOCOLO, ' +
        ':CSTAT, :HISTORICO, :OBSERVACAO, :XML )')
    Left = 202
    Top = 318
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EVENTO'
        ParamType = ptInput
      end
      item
        Name = 'ID_SEQUENCIA'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'DTHR_EVENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTHR_PROTOCOLO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_PROTOCOLO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'CSTAT'
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Name = 'XML'
        DataType = ftBlob
        ParamType = ptInput
      end>
  end
  object updEnviado: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE CTE'
      'SET ID_SITUACAO            = :ID_SITUACAO,'
      '    XML_CHAVE              = :XML_CHAVE,'
      '    XML_PROTOCOLO          = :XML_PROTOCOLO,'
      '    XML_STRING_PROTOCOLO   = :XML_STRING_PROTOCOLO,'
      '    XML_PROCOCOLO_DATAHORA = :XML_PROCOCOLO_DATAHORA,'
      '    XML_STATUS_CODIGO      = :XML_STATUS_CODIGO,'
      '    XML_XMOTIVO            = :XML_XMOTIVO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_CTE = :ID_CTE) AND (ID_' +
        'SERIE = :ID_SERIE);')
    Left = 202
    Top = 258
    ParamData = <
      item
        Name = 'ID_SITUACAO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'XML_CHAVE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 44
      end
      item
        Name = 'XML_PROTOCOLO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'XML_STRING_PROTOCOLO'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Name = 'XML_PROCOCOLO_DATAHORA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'XML_STATUS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'XML_XMOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object updChave: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE CTE'
      'SET XML_CHAVE   = :XML_CHAVE,'
      '    XML_STRING  = :XML_STRING'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_CTE = :ID_CTEOS) AND (I' +
        'D_SERIE = :ID_SERIE);')
    Left = 322
    Top = 28
    ParamData = <
      item
        Name = 'XML_CHAVE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 44
        Value = Null
      end
      item
        Name = 'XML_STRING'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTEOS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object updXMLvalidado: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE CTE'
      'SET XML_STRING_PROTOCOLO  = :XML_STRING_PROTOCOLO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_CTE = :ID_CTE) AND (ID_' +
        'SERIE = :ID_SERIE);')
    Left = 482
    Top = 224
    ParamData = <
      item
        Name = 'XML_STRING_PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SaveDialog: TSaveDialog
    Left = 89
    Top = 348
  end
  object tabCERTIFICADO_CONFIG: TFDQuery
    BeforeOpen = tabCERTIFICADO_CONFIGBeforeOpen
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = 57'
      ''
      '')
    Left = 89
    Top = 215
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
    object tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
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
  end
  object tabCTE: TFDQuery
    BeforeOpen = tabCTEBeforeOpen
    AfterOpen = tabCTEAfterOpen
    AfterClose = tabCTEAfterOpen
    BeforePost = tabCTEBeforePost
    OnNewRecord = tabCTENewRecord
    OnUpdateError = tabCTEUpdateError
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CTE.*,'
      
        '  ( SELECT CIDADES.DESCRICAO FROM CIDADES WHERE CTE.ID_MUNICIPIO' +
        '_EMISSAO = CIDADES.ID_CIDADES_IBGE) AS MUNICIPIO_EMISSAO,'
      
        '  ( SELECT CIDADES.DESCRICAO FROM CIDADES WHERE CTE.ID_MUNICIPIO' +
        '_INICIO_PRESTACAO = CIDADES.ID_CIDADES_IBGE) AS MUNICIPIO_INICIO' +
        '_PRESTACAO,'
      
        '  ( SELECT CIDADES.DESCRICAO FROM CIDADES WHERE CTE.ID_MUNICIPIO' +
        '_TERMINO_PRESTACA = CIDADES.ID_CIDADES_IBGE) AS MUNICIPIO_TERMIN' +
        'O_PRESTACAO'
      'FROM'
      '  CTE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE')
    Left = 601
    Top = 72
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTEID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTEDT_HORA_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_HORA_EMISSAO'
      Origin = 'DT_HORA_EMISSAO'
    end
    object tabCTEID_IND_CTE_GLOBALIZADO: TStringField
      FieldName = 'ID_IND_CTE_GLOBALIZADO'
      Origin = 'ID_IND_CTE_GLOBALIZADO'
      FixedChar = True
      Size = 1
    end
    object tabCTEID_INF_COD_NUMERICO: TStringField
      FieldName = 'ID_INF_COD_NUMERICO'
      Origin = 'ID_INF_COD_NUMERICO'
      FixedChar = True
      Size = 1
    end
    object tabCTEID_COD_NUMERICO: TIntegerField
      FieldName = 'ID_COD_NUMERICO'
      Origin = 'ID_COD_NUMERICO'
    end
    object tabCTEID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
    end
    object tabCTEID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object tabCTENAT_OPERACAO: TStringField
      FieldName = 'NAT_OPERACAO'
      Origin = 'NAT_OPERACAO'
      Size = 60
    end
    object tabCTEID_MODAL: TIntegerField
      FieldName = 'ID_MODAL'
      Origin = 'ID_MODAL'
    end
    object tabCTEID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
      Origin = 'ID_TIPO_SERVICO'
    end
    object tabCTEID_FINALIDADE_EMISSAO: TIntegerField
      FieldName = 'ID_FINALIDADE_EMISSAO'
      Origin = 'ID_FINALIDADE_EMISSAO'
    end
    object tabCTEID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object tabCTEID_CHAVE_CTE_REFERENCIADO: TStringField
      FieldName = 'ID_CHAVE_CTE_REFERENCIADO'
      Origin = 'ID_CHAVE_CTE_REFERENCIADO'
      Size = 44
    end
    object tabCTEID_UF_EMISSAO: TStringField
      FieldName = 'ID_UF_EMISSAO'
      Origin = 'ID_UF_EMISSAO'
      FixedChar = True
      Size = 2
    end
    object tabCTEID_MUNICIPIO_EMISSAO: TIntegerField
      FieldName = 'ID_MUNICIPIO_EMISSAO'
      Origin = 'ID_MUNICIPIO_EMISSAO'
    end
    object tabCTEID_UF_INICIO_PRESTACAO: TStringField
      FieldName = 'ID_UF_INICIO_PRESTACAO'
      Origin = 'ID_UF_INICIO_PRESTACAO'
      FixedChar = True
      Size = 2
    end
    object tabCTEID_MUNICIPIO_INICIO_PRESTACAO: TIntegerField
      FieldName = 'ID_MUNICIPIO_INICIO_PRESTACAO'
      Origin = 'ID_MUNICIPIO_INICIO_PRESTACAO'
    end
    object tabCTEID_UF_TERMINO_PRESTACAO: TStringField
      FieldName = 'ID_UF_TERMINO_PRESTACAO'
      Origin = 'ID_UF_TERMINO_PRESTACAO'
      FixedChar = True
      Size = 2
    end
    object tabCTEID_MUNICIPIO_TERMINO_PRESTACA: TIntegerField
      FieldName = 'ID_MUNICIPIO_TERMINO_PRESTACA'
      Origin = 'ID_MUNICIPIO_TERMINO_PRESTACA'
    end
    object tabCTECARACTERISTICA_ADICIONAL_TRANSP: TStringField
      FieldName = 'CARACTERISTICA_ADICIONAL_TRANSP'
      Origin = 'CARACTERISTICA_ADICIONAL_TRANSP'
      Size = 200
    end
    object tabCTECARACTERISTICA_ADICIONAL_SERVIC: TStringField
      FieldName = 'CARACTERISTICA_ADICIONAL_SERVIC'
      Origin = 'CARACTERISTICA_ADICIONAL_SERVIC'
      Size = 200
    end
    object tabCTEFUNCIONARIO_EMISSOR_CTE: TStringField
      FieldName = 'FUNCIONARIO_EMISSOR_CTE'
      Origin = 'FUNCIONARIO_EMISSOR_CTE'
    end
    object tabCTEID_MUNICIPIO_ORIGEM_CALC_FRETE: TStringField
      FieldName = 'ID_MUNICIPIO_ORIGEM_CALC_FRETE'
      Origin = 'ID_MUNICIPIO_ORIGEM_CALC_FRETE'
      Size = 40
    end
    object tabCTEID_MUNICIPIO_DESTINO_CALC_FRETE: TStringField
      FieldName = 'ID_MUNICIPIO_DESTINO_CALC_FRETE'
      Origin = 'ID_MUNICIPIO_DESTINO_CALC_FRETE'
      Size = 40
    end
    object tabCTEFLUXO_CODIGO_ROTA: TStringField
      FieldName = 'FLUXO_CODIGO_ROTA'
      Origin = 'FLUXO_CODIGO_ROTA'
      Size = 100
    end
    object tabCTEFLUXO_MUNICIPIO_ORIGEM: TStringField
      FieldName = 'FLUXO_MUNICIPIO_ORIGEM'
      Origin = 'FLUXO_MUNICIPIO_ORIGEM'
      Size = 100
    end
    object tabCTEFLUXO_MUNICIPIO_DESTINO: TStringField
      FieldName = 'FLUXO_MUNICIPIO_DESTINO'
      Origin = 'FLUXO_MUNICIPIO_DESTINO'
      Size = 100
    end
    object tabCTEPREVISAO_ENTREGA_DATA_ID_TIPO: TIntegerField
      FieldName = 'PREVISAO_ENTREGA_DATA_ID_TIPO'
      Origin = 'PREVISAO_ENTREGA_DATA_ID_TIPO'
    end
    object tabCTEPREVISAO_ENTREGA_DATA_INICIO: TDateField
      FieldName = 'PREVISAO_ENTREGA_DATA_INICIO'
      Origin = 'PREVISAO_ENTREGA_DATA_INICIO'
    end
    object tabCTEPREVISAO_ENTREGA_DATA_FINAL: TDateField
      FieldName = 'PREVISAO_ENTREGA_DATA_FINAL'
      Origin = 'PREVISAO_ENTREGA_DATA_FINAL'
    end
    object tabCTEPREVISAO_ENTREGA_HORA_ID_TIPO: TIntegerField
      FieldName = 'PREVISAO_ENTREGA_HORA_ID_TIPO'
      Origin = 'PREVISAO_ENTREGA_HORA_ID_TIPO'
    end
    object tabCTEPREVISAO_ENTREGA_HORA_INICIO: TTimeField
      FieldName = 'PREVISAO_ENTREGA_HORA_INICIO'
      Origin = 'PREVISAO_ENTREGA_HORA_INICIO'
    end
    object tabCTEPREVISAO_ENTREGA_HORA_FINAL: TTimeField
      FieldName = 'PREVISAO_ENTREGA_HORA_FINAL'
      Origin = 'PREVISAO_ENTREGA_HORA_FINAL'
    end
    object tabCTERECEBEDOR_RETIRA: TStringField
      FieldName = 'RECEBEDOR_RETIRA'
      Origin = 'RECEBEDOR_RETIRA'
      FixedChar = True
      Size = 1
    end
    object tabCTERECEBEDOR_DETALHES: TStringField
      FieldName = 'RECEBEDOR_DETALHES'
      Origin = 'RECEBEDOR_DETALHES'
      Size = 200
    end
    object tabCTEID_TOMADOR_TIPO: TIntegerField
      FieldName = 'ID_TOMADOR_TIPO'
      Origin = 'ID_TOMADOR_TIPO'
    end
    object tabCTEID_TOMADOR_OUTROS: TIntegerField
      FieldName = 'ID_TOMADOR_OUTROS'
      Origin = 'ID_TOMADOR_OUTROS'
    end
    object tabCTEID_REMETENTE_TIPO: TIntegerField
      FieldName = 'ID_REMETENTE_TIPO'
      Origin = 'ID_REMETENTE_TIPO'
    end
    object tabCTEID_REMETENTE: TIntegerField
      FieldName = 'ID_REMETENTE'
      Origin = 'ID_REMETENTE'
    end
    object tabCTEID_EXPEDIDOR_TIPO: TIntegerField
      FieldName = 'ID_EXPEDIDOR_TIPO'
      Origin = 'ID_EXPEDIDOR_TIPO'
    end
    object tabCTEID_EXPEDIDOR: TIntegerField
      FieldName = 'ID_EXPEDIDOR'
      Origin = 'ID_EXPEDIDOR'
    end
    object tabCTEID_RECEBEDOR_TIPO: TIntegerField
      FieldName = 'ID_RECEBEDOR_TIPO'
      Origin = 'ID_RECEBEDOR_TIPO'
    end
    object tabCTEID_RECEBEDOR: TIntegerField
      FieldName = 'ID_RECEBEDOR'
      Origin = 'ID_RECEBEDOR'
    end
    object tabCTEID_DESTINATARIO_TIPO: TIntegerField
      FieldName = 'ID_DESTINATARIO_TIPO'
      Origin = 'ID_DESTINATARIO_TIPO'
    end
    object tabCTEID_DESTINATARIO: TIntegerField
      FieldName = 'ID_DESTINATARIO'
      Origin = 'ID_DESTINATARIO'
    end
    object tabCTEVALOR_TOTAL_PRETACAO_SERVICO: TBCDField
      FieldName = 'VALOR_TOTAL_PRETACAO_SERVICO'
      Origin = 'VALOR_TOTAL_PRETACAO_SERVICO'
      Precision = 18
      Size = 2
    end
    object tabCTEVALOR_A_RECEBER: TBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = 'VALOR_A_RECEBER'
      Precision = 18
      Size = 2
    end
    object tabCTEVALOR_TOTAL_DOS_TRIBUTOS: TBCDField
      FieldName = 'VALOR_TOTAL_DOS_TRIBUTOS'
      Origin = 'VALOR_TOTAL_DOS_TRIBUTOS'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_ID_CST: TIntegerField
      FieldName = 'ICMS_ID_CST'
      Origin = 'ICMS_ID_CST'
    end
    object tabCTEICMS_PERCENTUAL_RED_DA_BC: TBCDField
      FieldName = 'ICMS_PERCENTUAL_RED_DA_BC'
      Origin = 'ICMS_PERCENTUAL_RED_DA_BC'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_VALOR_DA_BC: TBCDField
      FieldName = 'ICMS_VALOR_DA_BC'
      Origin = 'ICMS_VALOR_DA_BC'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_ALIQUOTA: TBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Origin = 'ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'ICMS_VALOR'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_VALOR_CREDITO_OUT_REC: TBCDField
      FieldName = 'ICMS_VALOR_CREDITO_OUT_REC'
      Origin = 'ICMS_VALOR_CREDITO_OUT_REC'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_INF_ADICIONAIS_FISCO: TStringField
      FieldName = 'ICMS_INF_ADICIONAIS_FISCO'
      Origin = 'ICMS_INF_ADICIONAIS_FISCO'
      Size = 200
    end
    object tabCTEICMS_I_COBR_OPER_INTERESTADUAL: TStringField
      FieldName = 'ICMS_I_COBR_OPER_INTERESTADUAL'
      Origin = 'ICMS_I_COBR_OPER_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object tabCTEICMS_I_VALOR_BASE_CALCULO: TBCDField
      FieldName = 'ICMS_I_VALOR_BASE_CALCULO'
      Origin = 'ICMS_I_VALOR_BASE_CALCULO'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_ALIQUOTA_INTERNA_UF_TERM: TBCDField
      FieldName = 'ICMS_I_ALIQUOTA_INTERNA_UF_TERM'
      Origin = 'ICMS_I_ALIQUOTA_INTERNA_UF_TERM'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_ALIQUOTA_INTERESTADUAL: TBCDField
      FieldName = 'ICMS_I_ALIQUOTA_INTERESTADUAL'
      Origin = 'ICMS_I_ALIQUOTA_INTERESTADUAL'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_IDPORC_PARTILHA: TIntegerField
      FieldName = 'ICMS_I_IDPORC_PARTILHA'
      Origin = 'ICMS_I_IDPORC_PARTILHA'
    end
    object tabCTEICMS_I_PORC_PARTILHA_UF_TERMINO: TBCDField
      FieldName = 'ICMS_I_PORC_PARTILHA_UF_TERMINO'
      Origin = 'ICMS_I_PORC_PARTILHA_UF_TERMINO'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_VLR_ICMS_PARTILH_UF_INIC: TBCDField
      FieldName = 'ICMS_I_VLR_ICMS_PARTILH_UF_INIC'
      Origin = 'ICMS_I_VLR_ICMS_PARTILH_UF_INIC'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_VLR_ICMS_PARTILH_UF_TERM: TBCDField
      FieldName = 'ICMS_I_VLR_ICMS_PARTILH_UF_TERM'
      Origin = 'ICMS_I_VLR_ICMS_PARTILH_UF_TERM'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_PORC_FCP_UF_TERMINO: TBCDField
      FieldName = 'ICMS_I_PORC_FCP_UF_TERMINO'
      Origin = 'ICMS_I_PORC_FCP_UF_TERMINO'
      Precision = 18
      Size = 2
    end
    object tabCTEICMS_I_VLR_FCP_UF_TERMINO: TBCDField
      FieldName = 'ICMS_I_VLR_FCP_UF_TERMINO'
      Origin = 'ICMS_I_VLR_FCP_UF_TERMINO'
      Precision = 18
      Size = 2
    end
    object tabCTECARGA_VALOR: TBCDField
      FieldName = 'CARGA_VALOR'
      Origin = 'CARGA_VALOR'
      Precision = 18
      Size = 2
    end
    object tabCTECARGA_PRODUTO_PREDOMINANTE: TStringField
      FieldName = 'CARGA_PRODUTO_PREDOMINANTE'
      Origin = 'CARGA_PRODUTO_PREDOMINANTE'
      Size = 100
    end
    object tabCTECARGA_PRODUTO_CARACTERISTICAS: TStringField
      FieldName = 'CARGA_PRODUTO_CARACTERISTICAS'
      Origin = 'CARGA_PRODUTO_CARACTERISTICAS'
      Size = 100
    end
    object tabCTECTE_SUB_CHAVE_ORIGINAL: TStringField
      FieldName = 'CTE_SUB_CHAVE_ORIGINAL'
      Origin = 'CTE_SUB_CHAVE_ORIGINAL'
      Size = 44
    end
    object tabCTECTE_SUB_TOMADOR_CONTRIBUINTE: TStringField
      FieldName = 'CTE_SUB_TOMADOR_CONTRIBUINTE'
      Origin = 'CTE_SUB_TOMADOR_CONTRIBUINTE'
      FixedChar = True
      Size = 1
    end
    object tabCTECTE_SUB_TOMADOR_NCONTRIBUINTE: TStringField
      FieldName = 'CTE_SUB_TOMADOR_NCONTRIBUINTE'
      Origin = 'CTE_SUB_TOMADOR_NCONTRIBUINTE'
      FixedChar = True
      Size = 1
    end
    object tabCTECTE_SUB_CHAVE_CTE_SUBSTITUTO: TStringField
      FieldName = 'CTE_SUB_CHAVE_CTE_SUBSTITUTO'
      Origin = 'CTE_SUB_CHAVE_CTE_SUBSTITUTO'
      Size = 44
    end
    object tabCTECTE_SUB_CHAVE_NFE_SUBSTITUTO: TStringField
      FieldName = 'CTE_SUB_CHAVE_NFE_SUBSTITUTO'
      Origin = 'CTE_SUB_CHAVE_NFE_SUBSTITUTO'
      Size = 44
    end
    object tabCTECTE_SUB_CHAVE_ANULACAO: TStringField
      FieldName = 'CTE_SUB_CHAVE_ANULACAO'
      Origin = 'CTE_SUB_CHAVE_ANULACAO'
      FixedChar = True
      Size = 44
    end
    object tabCTERODO_RNTRC: TStringField
      FieldName = 'RODO_RNTRC'
      Origin = 'RODO_RNTRC'
      Size = 15
    end
    object tabCTEOBSERVACOES_GERAIS: TStringField
      FieldName = 'OBSERVACOES_GERAIS'
      Origin = 'OBSERVACOES_GERAIS'
      Size = 300
    end
    object tabCTEOBSERVACOES_CONTRIBUINTE: TStringField
      FieldName = 'OBSERVACOES_CONTRIBUINTE'
      Origin = 'OBSERVACOES_CONTRIBUINTE'
      Size = 300
    end
    object tabCTEOBSERVACOES_FISCO: TStringField
      FieldName = 'OBSERVACOES_FISCO'
      Origin = 'OBSERVACOES_FISCO'
      Size = 300
    end
    object tabCTECONTIGENCIA_DT_HORA: TSQLTimeStampField
      FieldName = 'CONTIGENCIA_DT_HORA'
      Origin = 'CONTIGENCIA_DT_HORA'
    end
    object tabCTECONTIGENCIA_MOTIVO: TStringField
      FieldName = 'CONTIGENCIA_MOTIVO'
      Origin = 'CONTIGENCIA_MOTIVO'
      Size = 200
    end
    object tabCTEID_SITUACAO: TStringField
      FieldName = 'ID_SITUACAO'
      Origin = 'ID_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object tabCTEXML_CHAVE: TStringField
      FieldName = 'XML_CHAVE'
      Origin = 'XML_CHAVE'
      FixedChar = True
      Size = 44
    end
    object tabCTEXML_PROTOCOLO: TStringField
      FieldName = 'XML_PROTOCOLO'
      Origin = 'XML_PROTOCOLO'
      Size = 50
    end
    object tabCTEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_PROCOCOLO_DATAHORA'
      Origin = 'XML_PROCOCOLO_DATAHORA'
    end
    object tabCTEXML_STATUS_CODIGO: TIntegerField
      FieldName = 'XML_STATUS_CODIGO'
      Origin = 'XML_STATUS_CODIGO'
    end
    object tabCTEXML_XMOTIVO: TStringField
      FieldName = 'XML_XMOTIVO'
      Origin = 'XML_XMOTIVO'
      Size = 255
    end
    object tabCTEXML_STRING: TMemoField
      FieldName = 'XML_STRING'
      Origin = 'XML_STRING'
      BlobType = ftMemo
    end
    object tabCTEXML_STRING_PROTOCOLO: TMemoField
      FieldName = 'XML_STRING_PROTOCOLO'
      Origin = 'XML_STRING_PROTOCOLO'
      BlobType = ftMemo
    end
    object tabCTEXML_CANC_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_CANC_DATAHORA'
      Origin = 'XML_CANC_DATAHORA'
    end
    object tabCTEXML_CANC_PROTOCOLO: TStringField
      FieldName = 'XML_CANC_PROTOCOLO'
      Origin = 'XML_CANC_PROTOCOLO'
      Size = 50
    end
    object tabCTEXML_CANC_STRING: TMemoField
      FieldName = 'XML_CANC_STRING'
      Origin = 'XML_CANC_STRING'
      BlobType = ftMemo
    end
    object tabCTEMUNICIPIO_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO_EMISSAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object tabCTEMUNICIPIO_INICIO_PRESTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO_INICIO_PRESTACAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object tabCTEMUNICIPIO_TERMINO_PRESTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO_TERMINO_PRESTACAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object dstabCTE: TDataSource
    DataSet = tabCTE
    Left = 213
    Top = 142
  end
  object qryNATUREZAS: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT DISTINCT(NAT_OPERACAO) FROM CTE ORDER BY NAT_OPERACAO')
    Left = 319
    Top = 88
    object qryNATUREZASNAT_OPERACAO: TStringField
      FieldName = 'NAT_OPERACAO'
      Origin = 'NAT_OPERACAO'
      Size = 60
    end
  end
  object qryCTeEVENTOS: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_EVENTO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 279
    Top = 320
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCTeEVENTOSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTeEVENTOSID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTeEVENTOSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTeEVENTOSID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Origin = 'ID_EVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTeEVENTOSID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      Required = True
    end
    object qryCTeEVENTOSTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCTeEVENTOSDTHR_EVENTO: TSQLTimeStampField
      FieldName = 'DTHR_EVENTO'
      Origin = 'DTHR_EVENTO'
    end
    object qryCTeEVENTOSLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryCTeEVENTOSDTHR_PROTOCOLO: TSQLTimeStampField
      FieldName = 'DTHR_PROTOCOLO'
      Origin = 'DTHR_PROTOCOLO'
    end
    object qryCTeEVENTOSNUMERO_PROTOCOLO: TStringField
      FieldName = 'NUMERO_PROTOCOLO'
      Origin = 'NUMERO_PROTOCOLO'
      Size = 15
    end
    object qryCTeEVENTOSCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object qryCTeEVENTOSHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 300
    end
    object qryCTeEVENTOSOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
    end
    object qryCTeEVENTOSXML: TBlobField
      FieldName = 'XML'
      Origin = 'XML'
    end
  end
  object tabCTE_FLUXO_PASSAGENS: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    OnUpdateError = tabCTE_FLUXO_PASSAGENSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_FLUXO_PASSAGENS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 601
    Top = 179
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_FLUXO_PASSAGENSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_FLUXO_PASSAGENSID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_FLUXO_PASSAGENSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_FLUXO_PASSAGENSPASSAGEM: TStringField
      FieldName = 'PASSAGEM'
      Origin = 'PASSAGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
  end
  object tabCTE_COMPONENTES: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    OnUpdateError = tabCTE_COMPONENTESUpdateError
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_COMPONENTES'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 601
    Top = 246
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_COMPONENTESID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_COMPONENTESID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_COMPONENTESID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_COMPONENTESNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object tabCTE_COMPONENTESVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object tabCTE_ORDEM_COLETA: TFDQuery
    OnNewRecord = tabCTE_ORDEM_COLETANewRecord
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_ORDEM_COLETA'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 481
    Top = 23
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_ORDEM_COLETAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_ORDEM_COLETAID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_ORDEM_COLETAID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_ORDEM_COLETASERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object tabCTE_ORDEM_COLETANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object tabCTE_ORDEM_COLETADT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object tabCTE_ORDEM_COLETACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object tabCTE_ORDEM_COLETAIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object tabCTE_ORDEM_COLETAID_UF: TStringField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      FixedChar = True
      Size = 2
    end
    object tabCTE_ORDEM_COLETATELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object tabCTE_ORDEM_COLETACOD_INT_TRANS: TStringField
      FieldName = 'COD_INT_TRANS'
      Origin = 'COD_INT_TRANS'
      Size = 10
    end
  end
  object tabCTE_CARGA_QUANTIDADES: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  CTE_CARGA_QUANTIDADES.*,'
      '  CASE CTE_CARGA_QUANTIDADES.id_unidade_medida'
      '    when 0 then '#39'M3'#39
      '    when 1 then '#39'KG'#39
      '    when 2 then '#39'TON'#39
      '    when 3 then '#39'UNIDADE'#39
      '    when 4 then '#39'LITROS'#39
      '  END AS UNIDADE'
      'FROM'
      '  CTE_CARGA_QUANTIDADES'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 465
    Top = 88
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_CARGA_QUANTIDADESID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_CARGA_QUANTIDADESID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_CARGA_QUANTIDADESID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_CARGA_QUANTIDADESID_UNIDADE_MEDIDA: TIntegerField
      FieldName = 'ID_UNIDADE_MEDIDA'
      Origin = 'ID_UNIDADE_MEDIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_CARGA_QUANTIDADESTIPO_MEDIDA: TStringField
      FieldName = 'TIPO_MEDIDA'
      Origin = 'TIPO_MEDIDA'
    end
    object tabCTE_CARGA_QUANTIDADESQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object tabCTE_CARGA_QUANTIDADESUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
  end
  object tabCTE_VEICULOS_NOVOS: TFDQuery
    BeforePost = tabCTE_VEICULOS_NOVOSBeforePost
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_VEICULOS_NOVOS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 465
    Top = 158
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_VEICULOS_NOVOSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_VEICULOS_NOVOSID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_VEICULOS_NOVOSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_VEICULOS_NOVOSCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tabCTE_VEICULOS_NOVOSCOR_DESCRICAO: TStringField
      FieldName = 'COR_DESCRICAO'
      Origin = 'COR_DESCRICAO'
      Size = 40
    end
    object tabCTE_VEICULOS_NOVOSCODIGO_MARCA_MODELO: TStringField
      FieldName = 'CODIGO_MARCA_MODELO'
      Origin = 'CODIGO_MARCA_MODELO'
      Size = 6
    end
    object tabCTE_VEICULOS_NOVOSCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 17
    end
    object tabCTE_VEICULOS_NOVOSVALOR_UNITARIO: TBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object tabCTE_VEICULOS_NOVOSFRETE_UNITARIO: TBCDField
      FieldName = 'FRETE_UNITARIO'
      Origin = 'FRETE_UNITARIO'
      Precision = 18
      Size = 2
    end
  end
  object tabCTE_NFE: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_NFE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 601
    Top = 132
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_NFEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_NFEID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_NFEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_NFENFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'NFE_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 44
    end
    object tabCTE_NFENFE_PIN: TStringField
      FieldName = 'NFE_PIN'
      Origin = 'NFE_PIN'
      Size = 9
    end
    object tabCTE_NFEDT_PREVISAO_ENTREGA: TDateField
      FieldName = 'DT_PREVISAO_ENTREGA'
      Origin = 'DT_PREVISAO_ENTREGA'
    end
  end
  object qryREMETENTE: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_REMETENTE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  PESSOA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_IBGE_NOME'
      'FROM'
      '  PESSOA'
      
        '    LEFT JOIN CIDADES ON PESSOA.ID_CIDADES_IBGE = CIDADES.ID_CID' +
        'ADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_PESSOA = :ID_REMETENTE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 391
    Top = 76
    ParamData = <
      item
        Name = 'ID_REMETENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryREMETENTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryREMETENTEID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryREMETENTEID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryREMETENTEID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryREMETENTEID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryREMETENTEID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryREMETENTEID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryREMETENTEID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryREMETENTERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryREMETENTENOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryREMETENTECPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryREMETENTEIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryREMETENTEIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryREMETENTEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryREMETENTENUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryREMETENTECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryREMETENTEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryREMETENTECEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryREMETENTEID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryREMETENTEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryREMETENTETELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryREMETENTECELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryREMETENTETELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryREMETENTEEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryREMETENTECONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryREMETENTENASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryREMETENTEESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryREMETENTECONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryREMETENTECONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryREMETENTEMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryREMETENTEPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryREMETENTESEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryREMETENTEOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryREMETENTECADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryREMETENTEALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryREMETENTEFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryREMETENTECBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryREMETENTECBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
    object qryREMETENTEID_CIDADES_IBGE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_IBGE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryTOMADOR_OUTROS: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_TOMADOR_OUTROS;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  PESSOA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_IBGE_NOME'
      'FROM'
      '  PESSOA'
      
        '    LEFT JOIN CIDADES ON PESSOA.ID_CIDADES_IBGE = CIDADES.ID_CID' +
        'ADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_PESSOA = :ID_TOMADOR_OUTROS'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 383
    Top = 314
    ParamData = <
      item
        Name = 'ID_TOMADOR_OUTROS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryTOMADOR_OUTROSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTOMADOR_OUTROSID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTOMADOR_OUTROSID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryTOMADOR_OUTROSID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryTOMADOR_OUTROSID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryTOMADOR_OUTROSID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryTOMADOR_OUTROSID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryTOMADOR_OUTROSID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryTOMADOR_OUTROSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryTOMADOR_OUTROSNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryTOMADOR_OUTROSCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryTOMADOR_OUTROSIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryTOMADOR_OUTROSIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryTOMADOR_OUTROSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryTOMADOR_OUTROSNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTOMADOR_OUTROSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryTOMADOR_OUTROSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryTOMADOR_OUTROSCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryTOMADOR_OUTROSID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryTOMADOR_OUTROSID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryTOMADOR_OUTROSTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryTOMADOR_OUTROSCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryTOMADOR_OUTROSTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryTOMADOR_OUTROSEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryTOMADOR_OUTROSCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryTOMADOR_OUTROSNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryTOMADOR_OUTROSESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryTOMADOR_OUTROSCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryTOMADOR_OUTROSCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryTOMADOR_OUTROSMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryTOMADOR_OUTROSPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryTOMADOR_OUTROSSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryTOMADOR_OUTROSOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryTOMADOR_OUTROSCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryTOMADOR_OUTROSALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryTOMADOR_OUTROSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryTOMADOR_OUTROSCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryTOMADOR_OUTROSCBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
    object qryTOMADOR_OUTROSID_CIDADES_IBGE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_IBGE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryEMITENTE: TFDQuery
    IndexFieldNames = 'ID_EMPRESA'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA'
    DetailFields = 'ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT '
      '  EMPRESA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_NOME'
      'FROM '
      '  EMPRESA '
      
        '    LEFT JOIN CIDADES ON EMPRESA.ID_CIDADES_IBGE = CIDADES.ID_CI' +
        'DADES_IBGE'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 383
    Top = 30
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEMITENTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEMITENTEID_REGIME: TIntegerField
      FieldName = 'ID_REGIME'
      Origin = 'ID_REGIME'
    end
    object qryEMITENTEID_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'ID_INDICADOR_ATIVIDADE'
      Origin = 'ID_INDICADOR_ATIVIDADE'
    end
    object qryEMITENTERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryEMITENTENOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryEMITENTECNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object qryEMITENTEIE_ESTADUAL: TStringField
      FieldName = 'IE_ESTADUAL'
      Origin = 'IE_ESTADUAL'
    end
    object qryEMITENTECNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
    end
    object qryEMITENTEIE_MUNICIPAL: TStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = 'IE_MUNICIPAL'
    end
    object qryEMITENTEIE_ESTADUAL_ST: TStringField
      FieldName = 'IE_ESTADUAL_ST'
      Origin = 'IE_ESTADUAL_ST'
    end
    object qryEMITENTEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryEMITENTENUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryEMITENTECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryEMITENTEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryEMITENTEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
    end
    object qryEMITENTEID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      FixedChar = True
      Size = 2
    end
    object qryEMITENTECEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryEMITENTETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qryEMITENTECELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryEMITENTEEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryEMITENTEWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object qryEMITENTEDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryEMITENTECADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryEMITENTEALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryEMITENTERESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object qryEMITENTELOGOTIPO_LOCAL: TStringField
      FieldName = 'LOGOTIPO_LOCAL'
      Origin = 'LOGOTIPO_LOCAL'
      Size = 300
    end
    object qryEMITENTECTE_ID_SERIE: TIntegerField
      FieldName = 'CTE_ID_SERIE'
      Origin = 'CTE_ID_SERIE'
    end
    object qryEMITENTECTEOS_ID_SERIE: TIntegerField
      FieldName = 'CTEOS_ID_SERIE'
      Origin = 'CTEOS_ID_SERIE'
    end
    object qryEMITENTEMDFE_ID_SERIE: TIntegerField
      FieldName = 'MDFE_ID_SERIE'
      Origin = 'MDFE_ID_SERIE'
    end
    object qryEMITENTENFE_ID_SERIE: TIntegerField
      FieldName = 'NFE_ID_SERIE'
      Origin = 'NFE_ID_SERIE'
    end
    object qryEMITENTENFSE_ID_SERIE: TIntegerField
      FieldName = 'NFSE_ID_SERIE'
      Origin = 'NFSE_ID_SERIE'
    end
    object qryEMITENTENFSE_LCP116: TStringField
      FieldName = 'NFSE_LCP116'
      Origin = 'NFSE_LCP116'
    end
    object qryEMITENTENFSE_PCISSQN: TCurrencyField
      FieldName = 'NFSE_PCISSQN'
      Origin = 'NFSE_PCISSQN'
    end
    object qryEMITENTESIMPLES_ALIQ_CREDITO: TCurrencyField
      FieldName = 'SIMPLES_ALIQ_CREDITO'
      Origin = 'SIMPLES_ALIQ_CREDITO'
    end
    object qryEMITENTEID_CIDADES_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryEXPEDIDOR: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_EXPEDIDOR;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  PESSOA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_IBGE_NOME'
      'FROM'
      '  PESSOA'
      
        '    LEFT JOIN CIDADES ON PESSOA.ID_CIDADES_IBGE = CIDADES.ID_CID' +
        'ADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_PESSOA = :ID_EXPEDIDOR'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 391
    Top = 139
    ParamData = <
      item
        Name = 'ID_EXPEDIDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryEXPEDIDORID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEXPEDIDORID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEXPEDIDORID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryEXPEDIDORID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryEXPEDIDORID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryEXPEDIDORID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryEXPEDIDORID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryEXPEDIDORID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryEXPEDIDORRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryEXPEDIDORNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryEXPEDIDORCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryEXPEDIDORIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryEXPEDIDORIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryEXPEDIDORENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryEXPEDIDORNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryEXPEDIDORCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryEXPEDIDORBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryEXPEDIDORCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryEXPEDIDORID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryEXPEDIDORID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryEXPEDIDORTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryEXPEDIDORCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryEXPEDIDORTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryEXPEDIDOREMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryEXPEDIDORCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryEXPEDIDORNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryEXPEDIDORESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryEXPEDIDORCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryEXPEDIDORCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryEXPEDIDORMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryEXPEDIDORPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryEXPEDIDORSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryEXPEDIDOROBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryEXPEDIDORCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryEXPEDIDORALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryEXPEDIDORFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryEXPEDIDORCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryEXPEDIDORCBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
    object qryEXPEDIDORID_CIDADES_IBGE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_IBGE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryRECEBEDOR: TFDQuery
    CachedUpdates = True
    MasterSource = dstabCTE
    MasterFields = 'ID_RECEBEDOR;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  PESSOA.*,'
      '  CIDADES.DESCRICAO AS ID_CIDADES_IBGE_NOME'
      'FROM'
      '  PESSOA'
      
        '    LEFT JOIN CIDADES ON PESSOA.ID_CIDADES_IBGE = CIDADES.ID_CID' +
        'ADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_PESSOA = :ID_RECEBEDOR'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 391
    Top = 201
    ParamData = <
      item
        Name = 'ID_RECEBEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRECEBEDORID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRECEBEDORID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRECEBEDORID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryRECEBEDORID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryRECEBEDORID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryRECEBEDORID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryRECEBEDORID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryRECEBEDORID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryRECEBEDORRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryRECEBEDORNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryRECEBEDORCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryRECEBEDORIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryRECEBEDORIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryRECEBEDORENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryRECEBEDORNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryRECEBEDORCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryRECEBEDORBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryRECEBEDORCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryRECEBEDORID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryRECEBEDORID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryRECEBEDORTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryRECEBEDORCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryRECEBEDORTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryRECEBEDOREMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryRECEBEDORCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryRECEBEDORNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryRECEBEDORESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryRECEBEDORCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryRECEBEDORCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryRECEBEDORMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryRECEBEDORPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryRECEBEDORSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryRECEBEDOROBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryRECEBEDORCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryRECEBEDORALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryRECEBEDORFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryRECEBEDORCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryRECEBEDORCBR_VALOR: TBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
    object qryRECEBEDORID_CIDADES_IBGE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CIDADES_IBGE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object tabCTE_EVENTO: TFDQuery
    AfterOpen = tabCTE_EVENTOAfterOpen
    AfterClose = tabCTE_EVENTOAfterOpen
    OnNewRecord = tabCTE_EVENTONewRecord
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_EVENTO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 209
    Top = 21
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_EVENTOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTOID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTOID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Origin = 'ID_EVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTOID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      Required = True
    end
    object tabCTE_EVENTOTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object tabCTE_EVENTODTHR_EVENTO: TSQLTimeStampField
      FieldName = 'DTHR_EVENTO'
      Origin = 'DTHR_EVENTO'
    end
    object tabCTE_EVENTOLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object tabCTE_EVENTODTHR_PROTOCOLO: TSQLTimeStampField
      FieldName = 'DTHR_PROTOCOLO'
      Origin = 'DTHR_PROTOCOLO'
    end
    object tabCTE_EVENTONUMERO_PROTOCOLO: TStringField
      FieldName = 'NUMERO_PROTOCOLO'
      Origin = 'NUMERO_PROTOCOLO'
      Size = 15
    end
    object tabCTE_EVENTOCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object tabCTE_EVENTOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 300
    end
    object tabCTE_EVENTOOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
    end
    object tabCTE_EVENTOXML: TBlobField
      FieldName = 'XML'
      Origin = 'XML'
    end
  end
  object tabCTE_EVENTO_CCE_ITENS: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE;ID_EVENTO'
    MasterSource = dtstabCTE_EVENTO
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE;ID_EVENTO'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE;ID_EVENTO'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_EVENTO_CCE_ITENS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '  AND ID_EVENTO  = :ID_EVENTO'
      '')
    Left = 209
    Top = 82
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EVENTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_EVENTO_CCE_ITENSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTO_CCE_ITENSID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTO_CCE_ITENSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTO_CCE_ITENSID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Origin = 'ID_EVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTO_CCE_ITENSCAMPO_GRUPO: TStringField
      FieldName = 'CAMPO_GRUPO'
      Origin = 'CAMPO_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabCTE_EVENTO_CCE_ITENSCAMPO_DESCRICAO: TStringField
      FieldName = 'CAMPO_DESCRICAO'
      Origin = 'CAMPO_DESCRICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_EVENTO_CCE_ITENSCAMPO_CONTEUDO: TStringField
      FieldName = 'CAMPO_CONTEUDO'
      Origin = 'CAMPO_CONTEUDO'
      Required = True
      Size = 200
    end
    object tabCTE_EVENTO_CCE_ITENSCAMPO_ITEM_ALTERADO: TStringField
      FieldName = 'CAMPO_ITEM_ALTERADO'
      Origin = 'CAMPO_ITEM_ALTERADO'
    end
  end
  object dtstabCTE_EVENTO: TDataSource
    DataSet = tabCTE_EVENTO
    Left = 212
    Top = 206
  end
  object tabCTE_DOCANT: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    MasterSource = dstabCTE
    MasterFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    DetailFields = 'ID_EMPRESA;ID_SERIE;ID_CTE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CTE_DOCANT'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CTE     = :ID_CTE'
      '')
    Left = 481
    Top = 284
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCTE_DOCANTID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_DOCANTID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_DOCANTID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCTE_DOCANTXML_CHAVE: TStringField
      FieldName = 'XML_CHAVE'
      Origin = 'XML_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabCTE_DOCANTCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
    end
    object tabCTE_DOCANTIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object tabCTE_DOCANTUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object tabCTE_DOCANTRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
  end
  object qryCERTIFICADO_CONFIG: TFDQuery
    BeforeOpen = qryCERTIFICADO_CONFIGBeforeOpen
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = 57'
      ''
      '')
    Left = 595
    Top = 18
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCERTIFICADO_CONFIGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField
      FieldName = 'ID_CERTIFICADOCONFIG'
      Origin = 'ID_CERTIFICADOCONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField
      FieldName = 'CERTIFICADO_NUMERO'
      Origin = 'CERTIFICADO_NUMERO'
      Size = 40
    end
    object qryCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField
      FieldName = 'CERTIFICADO_SENHA'
      Origin = 'CERTIFICADO_SENHA'
      Size = 40
    end
    object qryCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField
      FieldName = 'WS_UF_DESTINO'
      Origin = 'WS_UF_DESTINO'
      FixedChar = True
      Size = 2
    end
    object qryCERTIFICADO_CONFIGWS_TIMEOUT: TIntegerField
      FieldName = 'WS_TIMEOUT'
      Origin = 'WS_TIMEOUT'
    end
    object qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object qryCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object qryCERTIFICADO_CONFIGID_CRYPT_TYPE: TIntegerField
      FieldName = 'ID_CRYPT_TYPE'
      Origin = 'ID_CRYPT_TYPE'
    end
    object qryCERTIFICADO_CONFIGID_HTTP_TYPE: TIntegerField
      FieldName = 'ID_HTTP_TYPE'
      Origin = 'ID_HTTP_TYPE'
    end
    object qryCERTIFICADO_CONFIGID_XMLSIGN_TYPE: TIntegerField
      FieldName = 'ID_XMLSIGN_TYPE'
      Origin = 'ID_XMLSIGN_TYPE'
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField
      FieldName = 'WS_PROXY_HOST'
      Origin = 'WS_PROXY_HOST'
      Size = 200
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField
      FieldName = 'WS_PROXY_PORTA'
      Origin = 'WS_PROXY_PORTA'
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField
      FieldName = 'WS_PROXY_USUARIO'
      Origin = 'WS_PROXY_USUARIO'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField
      FieldName = 'WS_PROXY_SENHA'
      Origin = 'WS_PROXY_SENHA'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField
      FieldName = 'ID_REPORT_ORIENTACAO'
      Origin = 'ID_REPORT_ORIENTACAO'
    end
    object qryCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object qryCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField
      FieldName = 'EMAIL_ENVIAR'
      Origin = 'EMAIL_ENVIAR'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField
      FieldName = 'EMAIL_SERVIDOR'
      Origin = 'EMAIL_SERVIDOR'
      Size = 200
    end
    object qryCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField
      FieldName = 'EMAIL_PORTA'
      Origin = 'EMAIL_PORTA'
    end
    object qryCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Origin = 'EMAIL_USUARIO'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
      Origin = 'EMAIL_SENHA'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField
      FieldName = 'EMAIL_SENHA_SEGURA'
      Origin = 'EMAIL_SENHA_SEGURA'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField
      FieldName = 'TIME_ZONE_MODO'
      Origin = 'TIME_ZONE_MODO'
    end
    object qryCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField
      FieldName = 'TIME_ZONE_MANUAL'
      Origin = 'TIME_ZONE_MANUAL'
    end
    object qryCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField
      FieldName = 'MANTER_ARQUIVOS_TEMPORARIOS'
      Origin = 'MANTER_ARQUIVOS_TEMPORARIOS'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 300
    end
    object qryCERTIFICADO_CONFIGCAMPOS_FAT_OBRIGATORIO: TStringField
      FieldName = 'CAMPOS_FAT_OBRIGATORIO'
      Origin = 'CAMPOS_FAT_OBRIGATORIO'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGNFSE_SOAP_SALVAR_ENVELOPE: TStringField
      FieldName = 'NFSE_SOAP_SALVAR_ENVELOPE'
      Origin = 'NFSE_SOAP_SALVAR_ENVELOPE'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGNFSE_PATH_SCHEMAS: TStringField
      FieldName = 'NFSE_PATH_SCHEMAS'
      Origin = 'NFSE_PATH_SCHEMAS'
      Size = 300
    end
    object qryCERTIFICADO_CONFIGNFSE_WEB_USER: TStringField
      FieldName = 'NFSE_WEB_USER'
      Origin = 'NFSE_WEB_USER'
      Size = 250
    end
    object qryCERTIFICADO_CONFIGNFSE_WEB_PWD: TStringField
      FieldName = 'NFSE_WEB_PWD'
      Origin = 'NFSE_WEB_PWD'
      Size = 250
    end
    object qryCERTIFICADO_CONFIGNFSE_LOGO_PRF: TStringField
      FieldName = 'NFSE_LOGO_PRF'
      Origin = 'NFSE_LOGO_PRF'
      Size = 300
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField
      FieldName = 'EMAIL_SENHA_TLS'
      Origin = 'EMAIL_SENHA_TLS'
      FixedChar = True
      Size = 1
    end
  end
end
