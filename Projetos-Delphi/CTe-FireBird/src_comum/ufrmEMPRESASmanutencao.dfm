inherited frmEMPRESASmanutencao: TfrmEMPRESASmanutencao
  Caption = 'frmEMPRESASmanutencao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    Visible = False
    inherited pnlNavigator: TPanel
      inherited labNavigator: TJvLabel
        Height = 14
      end
      inherited navDefault: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited pnlComandos: TPanel
    object btnSelecionarEmitente: TJvSpeedButton [5]
      Left = 320
      Top = 0
      Width = 110
      Height = 27
      Hint = 'Selecionar Emitente marcado'
      Align = alLeft
      Caption = 'Iniciar Emitente'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000C0E0A1500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000031362652909F70F32D32234C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003136265293A373F997A776FF93A373F92B3022490000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003136265293A373F997A776FF97A776FF97A776FF93A273F82B2F
        2148000000000000000000000000000000000000000000000000000000000000
        00003136265393A373F997A776FF91A071F54951397B93A273F897A776FF93A2
        73F82B2F21480000000000000000000000000000000000000000000000000506
        0409839166DD97A776FF91A071F5262A1E40000000002B2F214893A273F897A7
        76FF93A273F82B30224900000000000000000000000000000000000000000000
        000015171023808D64D8262A1E400000000000000000000000002B2F214893A2
        73F897A776FF93A273F82B302249000000000000000000000000000000000000
        0000000000000202010300000000000000000000000000000000000000002B2F
        214893A273F897A776FF93A273F82B3022490000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002B2F214893A273F897A776FF93A273F82B30224900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002B2F214893A273F897A776FF76825CC701010001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2F214875825CC60B0C081200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010100010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphLeft
      OnClick = btnSelecionarEmitenteClick
    end
  end
  inherited dbGrid: TJvDBGrid
    Width = 776
    DataSource = dtsDefault
    Columns = <
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone Fixo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONSAVEL'
        Title.Caption = 'Respons'#225'vel'
        Width = 150
        Visible = True
      end>
  end
  inherited qryDefault: TFDQuery
    SQL.Strings = (
      'select * from empresa')
    Top = 201
    object qryDefaultID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultID_REGIME: TIntegerField
      FieldName = 'ID_REGIME'
      Origin = 'ID_REGIME'
    end
    object qryDefaultID_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'ID_INDICADOR_ATIVIDADE'
      Origin = 'ID_INDICADOR_ATIVIDADE'
    end
    object qryDefaultRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryDefaultNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryDefaultCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      OnGetText = TFieldGetCPFCNPJFormat
      Size = 18
    end
    object qryDefaultIE_ESTADUAL: TStringField
      FieldName = 'IE_ESTADUAL'
      Origin = 'IE_ESTADUAL'
    end
    object qryDefaultCNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
    end
    object qryDefaultIE_MUNICIPAL: TStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = 'IE_MUNICIPAL'
    end
    object qryDefaultIE_ESTADUAL_ST: TStringField
      FieldName = 'IE_ESTADUAL_ST'
      Origin = 'IE_ESTADUAL_ST'
    end
    object qryDefaultENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryDefaultNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryDefaultCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryDefaultBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryDefaultID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
    end
    object qryDefaultID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      FixedChar = True
      Size = 2
    end
    object qryDefaultCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryDefaultTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      OnGetText = TFieldGetFoneFormat
      Size = 15
    end
    object qryDefaultCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      OnGetText = TFieldGetFoneFormat
      Size = 15
    end
    object qryDefaultEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryDefaultWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object qryDefaultDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryDefaultCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryDefaultALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryDefaultRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object qryDefaultLOGOTIPO_LOCAL: TStringField
      FieldName = 'LOGOTIPO_LOCAL'
      Origin = 'LOGOTIPO_LOCAL'
      Size = 300
    end
    object qryDefaultCTEOS_ID_SERIE: TIntegerField
      FieldName = 'CTEOS_ID_SERIE'
      Origin = 'CTEOS_ID_SERIE'
    end
    object qryDefaultMDFE_ID_SERIE: TIntegerField
      FieldName = 'MDFE_ID_SERIE'
      Origin = 'MDFE_ID_SERIE'
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabEMPRESA
  end
end
