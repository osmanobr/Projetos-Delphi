inherited frmEMPRESAScadastro: TfrmEMPRESAScadastro
  Caption = 'Empresas/Emitentes'
  ClientHeight = 565
  ClientWidth = 708
  ExplicitWidth = 724
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 510
    Width = 702
    ExplicitTop = 510
    ExplicitWidth = 702
    inherited btnCancelar: TJvSpeedButton
      Left = 589
      ExplicitLeft = 589
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 473
      ExplicitLeft = 473
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 702
    Height = 501
    ExplicitWidth = 702
    ExplicitHeight = 501
    inherited tabDefault: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 473
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel1: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'CNPJ'
          Transparent = True
          ExplicitWidth = 27
        end
        object JvLabel2: TJvLabel
          Left = 5
          Top = 146
          Width = 86
          Height = 13
          Caption = 'Data de Abertura'
          Transparent = True
        end
        object JvLabel3: TJvLabel
          Left = 168
          Top = 25
          Width = 89
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          Transparent = True
        end
        object JvLabel4: TJvLabel
          Left = 295
          Top = 24
          Width = 91
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal'
          Transparent = True
        end
        object JvLabel5: TJvLabel
          Left = 5
          Top = 64
          Width = 62
          Height = 13
          Caption = 'Raz'#227'o Social'
          Transparent = True
        end
        object JvLabel7: TJvLabel
          Left = 263
          Top = 146
          Width = 75
          Height = 13
          Caption = 'Telefone M'#243'vel'
          Transparent = True
        end
        object JvLabel8: TJvLabel
          Left = 137
          Top = 146
          Width = 67
          Height = 13
          Caption = 'Telefone Fixo'
          Transparent = True
        end
        object JvShape1: TJvShape
          Left = 5
          Top = 200
          Width = 678
          Height = 1
        end
        object JvLabel9: TJvLabel
          Left = 5
          Top = 272
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object JvLabel10: TJvLabel
          Left = 5
          Top = 312
          Width = 47
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object JvLabel11: TJvLabel
          Left = 5
          Top = 353
          Width = 67
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object JvLabel12: TJvLabel
          Left = 585
          Top = 354
          Width = 39
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object JvLabel13: TJvLabel
          Left = 5
          Top = 394
          Width = 30
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object JvLabel6: TJvLabel
          Left = 422
          Top = 24
          Width = 60
          Height = 13
          Caption = 'Inscri'#231#227'o ST'
          Transparent = True
        end
        object JvLabel14: TJvLabel
          Left = 5
          Top = 105
          Width = 73
          Height = 13
          Caption = 'Nome Fantasia'
          Transparent = True
        end
        object JvLabel15: TJvLabel
          Left = 390
          Top = 146
          Width = 175
          Height = 13
          Caption = 'Nome do Respons'#225'vel pela Empresa'
          Transparent = True
        end
        object JvLabel16: TJvLabel
          Left = 5
          Top = 207
          Width = 106
          Height = 13
          Caption = 'Regime de Tributa'#231#227'o'
          Transparent = True
        end
        object JvLabel17: TJvLabel
          Left = 390
          Top = 207
          Width = 220
          Height = 13
          Caption = 'Indicador de tipo de atividade preponderante'
          Transparent = True
        end
        object JvShape2: TJvShape
          Left = 5
          Top = 262
          Width = 678
          Height = 1
        end
        object JvLabel18: TJvLabel
          Left = 549
          Top = 24
          Width = 29
          Height = 13
          Caption = 'CNAE'
          Transparent = True
        end
        object JvLabel23: TJvLabel
          Left = 263
          Top = 207
          Width = 95
          Height = 13
          Caption = 'Simples Aliq Cr'#233'dito'
          Transparent = True
        end
        object CNPJ: TJvDBMaskEdit
          Left = 5
          Top = 37
          Width = 157
          Height = 21
          DataField = 'CNPJ'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
          OnChange = TEditMascaraCNPJ
        end
        object DATA_ABERTURA: TJvDBDateEdit
          Left = 5
          Top = 160
          Width = 113
          Height = 21
          DataField = 'DATA_ABERTURA'
          DataSource = dtsDefault
          ButtonWidth = 25
          ShowNullDate = False
          TabOrder = 7
        end
        object IE_ESTADUAL: TJvDBMaskEdit
          Left = 168
          Top = 38
          Width = 121
          Height = 21
          DataField = 'IE_ESTADUAL'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
        end
        object IE_MUNICIPAL: TJvDBMaskEdit
          Left = 295
          Top = 38
          Width = 121
          Height = 21
          DataField = 'IE_MUNICIPAL'
          DataSource = dtsDefault
          TabOrder = 2
          EditMask = ''
        end
        object RAZAOSOCIAL: TJvDBMaskEdit
          Left = 5
          Top = 78
          Width = 678
          Height = 21
          DataField = 'RAZAOSOCIAL'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
        object CELULAR: TJvDBMaskEdit
          Left = 263
          Top = 160
          Width = 120
          Height = 21
          DataField = 'CELULAR'
          DataSource = dtsDefault
          TabOrder = 9
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object CEP: TJvDBMaskEdit
          Left = 5
          Top = 285
          Width = 77
          Height = 21
          DataField = 'CEP'
          DataSource = dtsDefault
          TabOrder = 13
          EditMask = ''
          OnChange = TEditMascaraCEP
        end
        object ENDERECO: TJvDBMaskEdit
          Left = 5
          Top = 326
          Width = 678
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dtsDefault
          TabOrder = 14
          EditMask = ''
        end
        object COMPLEMENTO: TJvDBMaskEdit
          Left = 5
          Top = 367
          Width = 574
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dtsDefault
          TabOrder = 15
          EditMask = ''
        end
        object NUMERO: TJvDBMaskEdit
          Left = 585
          Top = 367
          Width = 98
          Height = 21
          DataField = 'NUMERO'
          DataSource = dtsDefault
          TabOrder = 16
          EditMask = ''
        end
        object BAIRRO: TJvDBMaskEdit
          Left = 5
          Top = 408
          Width = 344
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dtsDefault
          TabOrder = 17
          EditMask = ''
        end
        object ID_CIDADES_UF: TJvDBLookupCombo
          Left = 355
          Top = 408
          Width = 58
          Height = 21
          DataField = 'ID_CIDADES_UF'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_UF'
          LookupDisplay = 'ID_CIDADES_UF'
          LookupSource = dtmDefault.dtstabCIDADES_UF
          TabOrder = 18
          OnChange = ID_CIDADES_UFChange
        end
        object ID_CIDADES_IBGE: TJvDBLookupCombo
          Left = 419
          Top = 408
          Width = 264
          Height = 21
          DataField = 'ID_CIDADES_IBGE'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_IBGE'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dtscnsCIDADES
          TabOrder = 19
        end
        object TELEFONE: TJvDBMaskEdit
          Left = 136
          Top = 160
          Width = 121
          Height = 21
          DataField = 'TELEFONE'
          DataSource = dtsDefault
          TabOrder = 8
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object IE_ESTADUAL_ST: TJvDBMaskEdit
          Left = 422
          Top = 38
          Width = 121
          Height = 21
          DataField = 'IE_ESTADUAL_ST'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object NOMEFANTASIA: TJvDBMaskEdit
          Left = 5
          Top = 119
          Width = 678
          Height = 21
          DataField = 'NOMEFANTASIA'
          DataSource = dtsDefault
          TabOrder = 6
          EditMask = ''
        end
        object RESPONSAVEL: TJvDBMaskEdit
          Left = 390
          Top = 160
          Width = 293
          Height = 21
          DataField = 'RESPONSAVEL'
          DataSource = dtsDefault
          TabOrder = 10
          EditMask = ''
        end
        object ID_REGIME: TJvDBComboBox
          Left = 5
          Top = 226
          Width = 252
          Height = 21
          DataField = 'ID_REGIME'
          DataSource = dtsDefault
          Items.Strings = (
            '1 - SIMPLES NACIONAL'
            '2 - SIMPLES NACIONAL - EXCESSO DE SUBLIMITE DE RECEITA BRUTA'
            '3 - REGIME NORMAL')
          TabOrder = 11
          Values.Strings = (
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = ID_REGIMEChange
        end
        object ID_INDICADOR_ATIVIDADE: TJvDBComboBox
          Left = 390
          Top = 226
          Width = 293
          Height = 21
          DataField = 'ID_INDICADOR_ATIVIDADE'
          DataSource = dtsDefault
          Items.Strings = (
            '1 - PRESTADOR DE SERVI'#199'OS'
            '2 - ATIVIDADE DE COM'#201'RCIO')
          TabOrder = 12
          Values.Strings = (
            '1'
            '2')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object CNAE_FISCAL: TJvDBMaskEdit
          Left = 549
          Top = 38
          Width = 134
          Height = 21
          DataField = 'CNAE_FISCAL'
          DataSource = dtsDefault
          TabOrder = 4
          EditMask = ''
        end
        object SIMPLES_ALIQ_CREDITO: TJvDBCalcEdit
          Left = 263
          Top = 226
          Width = 121
          Height = 21
          DecimalPlaceRound = True
          DisplayFormat = ',0.00'
          TabOrder = 20
          DecimalPlacesAlwaysShown = True
          DataField = 'SIMPLES_ALIQ_CREDITO'
          DataSource = dtsDefault
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MDF-e'
      ImageIndex = 1
      object JvgGroupBox2: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel19: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'S'#233'rie'
          Transparent = True
          ExplicitWidth = 26
        end
        object MDFE_ID_SERIE: TJvDBSpinEdit
          Left = 5
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          DataField = 'MDFE_ID_SERIE'
          DataSource = dtsDefault
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CTe-Os'
      ImageIndex = 2
      object JvgGroupBox3: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel20: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'S'#233'rie'
          Transparent = True
          ExplicitWidth = 26
        end
        object CTEOS_ID_SERIE: TJvDBSpinEdit
          Left = 5
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          DataField = 'CTEOS_ID_SERIE'
          DataSource = dtsDefault
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CT-e'
      ImageIndex = 3
      object JvgGroupBox4: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel21: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'S'#233'rie'
          Transparent = True
          ExplicitWidth = 26
        end
        object CTE_ID_SERIE: TJvDBSpinEdit
          Left = 5
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          DataField = 'CTE_ID_SERIE'
          DataSource = dtsDefault
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'NF-e'
      ImageIndex = 4
      object JvgGroupBox5: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel22: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'S'#233'rie'
          Transparent = True
          ExplicitWidth = 26
        end
        object JvDBSpinEdit1: TJvDBSpinEdit
          Left = 5
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          DataField = 'NFE_ID_SERIE'
          DataSource = dtsDefault
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'NFS-e'
      ImageIndex = 5
      object JvgGroupBox6: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 688
        Height = 467
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel25: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 678
          Height = 13
          Align = alTop
          Caption = 'S'#233'rie'
          Transparent = True
          ExplicitWidth = 26
        end
        object JvLabel26: TJvLabel
          Left = 5
          Top = 59
          Width = 41
          Height = 13
          Caption = 'LCP 116'
          Transparent = True
        end
        object JvLabel27: TJvLabel
          Left = 5
          Top = 99
          Width = 47
          Height = 13
          Caption = '% ISSQN'
          Transparent = True
        end
        object NFSE_LCP116: TJvDBMaskEdit
          Left = 5
          Top = 72
          Width = 121
          Height = 21
          DataField = 'NFSE_LCP116'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object NFSE_ID_SERIE: TJvDBSpinEdit
          Left = 5
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 1
          DataField = 'NFSE_ID_SERIE'
          DataSource = dtsDefault
        end
        object NFSE_PCISSQN: TJvDBCalcEdit
          Left = 5
          Top = 113
          Width = 121
          Height = 21
          DecimalPlaceRound = True
          DisplayFormat = ',0.00'
          TabOrder = 2
          DecimalPlacesAlwaysShown = True
          DataField = 'NFSE_PCISSQN'
          DataSource = dtsDefault
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 546
    Width = 708
    ExplicitTop = 546
    ExplicitWidth = 708
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabEMPRESA
    Left = 550
    Top = 323
  end
  object cnsCIDADES: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'select * from cidades where id_cidades_uf = :id_cidades_uf')
    Left = 424
    Top = 275
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object cnsCIDADESID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cnsCIDADESID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cnsCIDADESID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object cnsCIDADESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtscnsCIDADES: TDataSource
    DataSet = cnsCIDADES
    Left = 534
    Top = 295
  end
end
