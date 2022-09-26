inherited frmPRODUTOSmanutencao: TfrmPRODUTOSmanutencao
  Caption = 'frmPRODUTOSmanutencao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    inherited pnlNavigator: TPanel
      inherited labNavigator: TJvLabel
        Height = 14
      end
      inherited navDefault: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited dbGrid: TJvDBGrid
    DataSource = dtsDefault
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CODIGO'
        Title.Caption = 'ID'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_COM'
        Title.Caption = 'Valor Comercial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TRIB'
        Title.Caption = 'Valor Tribit'#225'vel'
        Visible = True
      end>
  end
  inherited qryDefault: TFDQuery
    BeforeOpen = qryDefaultBeforeOpen
    SQL.Strings = (
      'SELECT'
      '  PRODUTO.*'
      'FROM'
      '  PRODUTO'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDefaultID_PRODUTO: TLargeintField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object qryDefaultID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object qryDefaultDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qryDefaultEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 14
    end
    object qryDefaultEAN_TRIB: TStringField
      FieldName = 'EAN_TRIB'
      Origin = 'EAN_TRIB'
      Size = 14
    end
    object qryDefaultEX_TIPI: TStringField
      FieldName = 'EX_TIPI'
      Origin = 'EX_TIPI'
      Size = 3
    end
    object qryDefaultGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Size = 2
    end
    object qryDefaultNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object qryDefaultCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qryDefaultUN_COM: TStringField
      FieldName = 'UN_COM'
      Origin = 'UN_COM'
      Size = 5
    end
    object qryDefaultUN_TRIB: TStringField
      FieldName = 'UN_TRIB'
      Origin = 'UN_TRIB'
      Size = 5
    end
    object qryDefaultVL_COM: TFMTBCDField
      FieldName = 'VL_COM'
      Origin = 'VL_COM'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
    object qryDefaultVL_TRIB: TFMTBCDField
      FieldName = 'VL_TRIB'
      Origin = 'VL_TRIB'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
    object qryDefaultQT_TRIB: TFMTBCDField
      FieldName = 'QT_TRIB'
      Origin = 'QT_TRIB'
      Precision = 18
      Size = 3
    end
    object qryDefaultIPI_COD_ENQUADRAMENTO: TStringField
      FieldName = 'IPI_COD_ENQUADRAMENTO'
      Origin = 'IPI_COD_ENQUADRAMENTO'
      Size = 3
    end
    object qryDefaultIPI_CNPJ_PRODUTOR: TStringField
      FieldName = 'IPI_CNPJ_PRODUTOR'
      Origin = 'IPI_CNPJ_PRODUTOR'
      Size = 18
    end
    object qryDefaultORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryDefaultSIMPLES_CSOSN: TStringField
      FieldName = 'SIMPLES_CSOSN'
      Origin = 'SIMPLES_CSOSN'
      FixedChar = True
      Size = 3
    end
    object qryDefaultSIMPLES_ST_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_PBASE'
      Origin = 'SIMPLES_ST_PBASE'
    end
    object qryDefaultSIMPLES_ST_RBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_RBASE'
      Origin = 'SIMPLES_ST_RBASE'
    end
    object qryDefaultSIMPLES_ST_MVA: TCurrencyField
      FieldName = 'SIMPLES_ST_MVA'
      Origin = 'SIMPLES_ST_MVA'
    end
    object qryDefaultSIMPLES_ST_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ST_ALIQUOTA'
      Origin = 'SIMPLES_ST_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qryDefaultSIMPLES_ICMS_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ICMS_PBASE'
      Origin = 'SIMPLES_ICMS_PBASE'
    end
    object qryDefaultSIMPLES_ICMS_RBASE: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_RBASE'
      Origin = 'SIMPLES_ICMS_RBASE'
      Precision = 18
      Size = 2
    end
    object qryDefaultSIMPLES_ICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_ALIQUOTA'
      Origin = 'SIMPLES_ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qryDefaultNORMAL_CST: TStringField
      FieldName = 'NORMAL_CST'
      Origin = 'NORMAL_CST'
      FixedChar = True
      Size = 2
    end
    object qryDefaultNORMAL_ICMS_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_PBASE'
      Origin = 'NORMAL_ICMS_PBASE'
    end
    object qryDefaultNORMAL_ICMS_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_RBASE'
      Origin = 'NORMAL_ICMS_RBASE'
    end
    object qryDefaultNORMAL_ICMS_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMS_ALIQUOTA'
      Origin = 'NORMAL_ICMS_ALIQUOTA'
    end
    object qryDefaultNORMAL_ICMS_MOTIVO_DES: TIntegerField
      FieldName = 'NORMAL_ICMS_MOTIVO_DES'
      Origin = 'NORMAL_ICMS_MOTIVO_DES'
    end
    object qryDefaultNORMAL_ICMSST_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_PBASE'
      Origin = 'NORMAL_ICMSST_PBASE'
    end
    object qryDefaultNORMAL_ICMSST_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_RBASE'
      Origin = 'NORMAL_ICMSST_RBASE'
    end
    object qryDefaultNORMAL_ICMSST_MVA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_MVA'
      Origin = 'NORMAL_ICMSST_MVA'
    end
    object qryDefaultNORMAL_ICMSST_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_ALIQUOTA'
      Origin = 'NORMAL_ICMSST_ALIQUOTA'
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabPRODUTOS
  end
end
