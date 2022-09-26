inherited frmTRANSPcadastro: TfrmTRANSPcadastro
  Caption = 'Transportadoras'
  ClientHeight = 518
  ClientWidth = 797
  ExplicitWidth = 813
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 463
    Width = 791
    TabOrder = 1
    ExplicitTop = 463
    ExplicitWidth = 791
    inherited btnCancelar: TJvSpeedButton
      Left = 678
      ExplicitLeft = 678
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 562
      ExplicitLeft = 562
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 791
    Height = 454
    TabOrder = 0
    ExplicitWidth = 791
    ExplicitHeight = 454
    inherited tabDefault: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 783
      ExplicitHeight = 426
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
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
        ExplicitTop = 35
        FullHeight = 0
        object lbRazaoSocial: TJvLabel
          Left = 5
          Top = 60
          Width = 29
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object JvShape1: TJvShape
          Left = 5
          Top = 202
          Width = 767
          Height = 1
        end
        object JvLabel9: TJvLabel
          Left = 5
          Top = 225
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object JvLabel10: TJvLabel
          Left = 5
          Top = 265
          Width = 47
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object JvLabel11: TJvLabel
          Left = 5
          Top = 306
          Width = 67
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object JvLabel12: TJvLabel
          Left = 664
          Top = 307
          Width = 39
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object JvLabel13: TJvLabel
          Left = 5
          Top = 347
          Width = 30
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object JvLabel14: TJvLabel
          Left = 5
          Top = 142
          Width = 30
          Height = 13
          Caption = 'E-Mail'
          Transparent = True
        end
        object JvLabel4: TJvLabel
          Left = 88
          Top = 224
          Width = 67
          Height = 13
          Caption = 'Telefone Fixo'
          Transparent = True
        end
        object lbCNPJ: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'CNPJ'
          Transparent = True
          ExplicitWidth = 27
        end
        object JvLabel21: TJvLabel
          Left = 168
          Top = 19
          Width = 89
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          Transparent = True
        end
        object JvLabel31: TJvLabel
          Left = 492
          Top = 19
          Width = 175
          Height = 13
          Caption = 'Nome do Respons'#225'vel pela Empresa'
          Transparent = True
        end
        object JvLabel19: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 38
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'Nome Fantasia'
          Transparent = True
          ExplicitTop = 110
        end
        object JvLabel1: TJvLabel
          Left = 5
          Top = 101
          Width = 73
          Height = 13
          Caption = 'Nome Fantasia'
          Transparent = True
        end
        object CPF_CNPJ: TJvDBMaskEdit
          Left = 5
          Top = 33
          Width = 157
          Height = 21
          DataField = 'CNPJ'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
          OnChange = TEditMascaraCNPJ
        end
        object RAZAOSOCIAL: TJvDBMaskEdit
          Left = 5
          Top = 74
          Width = 767
          Height = 21
          DataField = 'RAZAOSOCIAL'
          DataSource = dtsDefault
          TabOrder = 4
          EditMask = ''
        end
        object CEP: TJvDBMaskEdit
          Left = 5
          Top = 238
          Width = 77
          Height = 21
          DataField = 'CEP'
          DataSource = dtsDefault
          TabOrder = 7
          EditMask = ''
          OnChange = TEditMascaraCEP
        end
        object ENDERECO: TJvDBMaskEdit
          Left = 5
          Top = 279
          Width = 767
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dtsDefault
          TabOrder = 9
          EditMask = ''
        end
        object COMPLEMENTO: TJvDBMaskEdit
          Left = 5
          Top = 320
          Width = 653
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dtsDefault
          TabOrder = 10
          EditMask = ''
        end
        object NUMERO: TJvDBMaskEdit
          Left = 664
          Top = 320
          Width = 108
          Height = 21
          DataField = 'NUMERO'
          DataSource = dtsDefault
          TabOrder = 11
          EditMask = ''
        end
        object BAIRRO: TJvDBMaskEdit
          Left = 5
          Top = 361
          Width = 344
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dtsDefault
          TabOrder = 12
          EditMask = ''
        end
        object ID_CIDADES_UF: TJvDBLookupCombo
          Left = 355
          Top = 361
          Width = 58
          Height = 21
          DataField = 'ID_CIDADES_UF'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_UF'
          LookupDisplay = 'ID_CIDADES_UF'
          LookupSource = dtscnsCIDADES_UF
          TabOrder = 13
          OnChange = ID_CIDADES_UFChange
        end
        object ID_CIDADES_IBGE: TJvDBLookupCombo
          Left = 421
          Top = 361
          Width = 353
          Height = 21
          DataField = 'ID_CIDADES_IBGE'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_IBGE'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dtscnsCIDADES
          TabOrder = 14
        end
        object EMAIL: TJvDBMaskEdit
          Left = 5
          Top = 156
          Width = 767
          Height = 21
          DataField = 'EMAIL'
          DataSource = dtsDefault
          TabOrder = 6
          EditMask = ''
        end
        object ID_ATIVO: TJvDBCheckBox
          Left = 686
          Top = 15
          Width = 83
          Height = 17
          TabStop = False
          Caption = 'Registro Ativo'
          DataField = 'ID_ATIVO'
          DataSource = dtsDefault
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object TELEFONEFIXO: TJvDBMaskEdit
          Left = 88
          Top = 238
          Width = 146
          Height = 21
          DataField = 'TELEFONEFIXO'
          DataSource = dtsDefault
          TabOrder = 8
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object IE: TJvDBMaskEdit
          Left = 168
          Top = 33
          Width = 153
          Height = 21
          DataField = 'IE'
          DataSource = dtsDefault
          TabOrder = 2
          EditMask = ''
        end
        object CONTATO: TJvDBMaskEdit
          Left = 492
          Top = 33
          Width = 280
          Height = 21
          DataField = 'CONTATO'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object NOMEFANTASIA: TJvDBMaskEdit
          Left = 5
          Top = 115
          Width = 767
          Height = 21
          DataField = 'NOMEFANTASIA'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 3
      object JvgGroupBox4: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Observa'#231#245'es'
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
        object OBSERVACOES: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 396
          Align = alClient
          DataField = 'OBSERVACOES'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 499
    Width = 797
    ExplicitTop = 499
    ExplicitWidth = 797
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 334
    Top = 296
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabTRANSPORTADORA
    Left = 334
    Top = 115
  end
  object dtscnsCIDADES_UF: TDataSource
    DataSet = cnsCIDADES_UF
    Left = 349
    Top = 179
  end
  object cnsCIDADES_UF: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM CIDADES_UF ORDER BY ID_CIDADES_UF')
    Left = 334
    Top = 166
    object cnsCIDADES_UFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cnsCIDADES_UFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object cnsCIDADES_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object cnsCIDADES: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      
        'SELECT * FROM CIDADES WHERE ID_CIDADES_UF = :ID_CIDADES_UF ORDER' +
        ' BY DESCRICAO')
    Left = 334
    Top = 229
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
    Left = 349
    Top = 242
  end
end
