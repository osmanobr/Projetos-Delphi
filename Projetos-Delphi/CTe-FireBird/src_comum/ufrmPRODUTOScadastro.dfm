inherited frmPRODUTOScadastro: TfrmPRODUTOScadastro
  Caption = 'frmPRODUTOScadastro'
  ClientHeight = 677
  ClientWidth = 807
  ExplicitWidth = 823
  ExplicitHeight = 716
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel4: TJvLabel [0]
    Left = 307
    Top = 131
    Width = 88
    Height = 13
    Caption = 'VALOR UNIT COM'
    Transparent = True
  end
  inherited pnlComandos: TPanel
    Top = 622
    Width = 801
    ExplicitTop = 622
    ExplicitWidth = 801
    inherited btnCancelar: TJvSpeedButton
      Left = 688
      ExplicitLeft = 696
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 572
      ExplicitLeft = 580
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 801
    Height = 613
    ExplicitWidth = 801
    ExplicitHeight = 613
    inherited tabDefault: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 793
      ExplicitHeight = 585
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 787
        Height = 579
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
        object lbRazaoSocial: TJvLabel
          Left = 5
          Top = 60
          Width = 22
          Height = 13
          Caption = 'EAN'
          Transparent = True
        end
        object JvLabel14: TJvLabel
          Left = 5
          Top = 101
          Width = 37
          Height = 13
          Caption = 'EX TIPI'
          Transparent = True
        end
        object lbCNPJ: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 777
          Height = 13
          Align = alTop
          Caption = 'Descri'#231#227'o'
          Transparent = True
          ExplicitWidth = 48
        end
        object JvLabel5: TJvLabel
          Left = 151
          Top = 60
          Width = 101
          Height = 13
          Caption = 'EAN Unid. Tribut'#225'vel'
          Transparent = True
        end
        object JvLabel17: TJvLabel
          Left = 58
          Top = 101
          Width = 43
          Height = 13
          Caption = 'GENERO'
          Transparent = True
        end
        object JvLabel22: TJvLabel
          Left = 151
          Top = 101
          Width = 24
          Height = 13
          Caption = 'NCM'
          Transparent = True
        end
        object JvLabel23: TJvLabel
          Left = 297
          Top = 142
          Width = 27
          Height = 13
          Caption = 'CEST'
          Transparent = True
        end
        object JvLabel24: TJvLabel
          Left = 5
          Top = 142
          Width = 49
          Height = 13
          Caption = 'UND COM'
          Transparent = True
        end
        object JvLabel25: TJvLabel
          Left = 5
          Top = 184
          Width = 49
          Height = 13
          Caption = 'UND TRIB'
          Transparent = True
        end
        object JvLabel26: TJvLabel
          Left = 151
          Top = 143
          Width = 88
          Height = 13
          Caption = 'VALOR UNIT COM'
          Transparent = True
        end
        object JvLabel27: TJvLabel
          Left = 151
          Top = 183
          Width = 88
          Height = 13
          Caption = 'VALOR UNIT TRIB'
          Transparent = True
        end
        object JvLabel28: TJvLabel
          Left = 297
          Top = 183
          Width = 53
          Height = 13
          Caption = 'QTD. TRIB'
          Transparent = True
        end
        object DESCRICAO: TJvDBMaskEdit
          Left = 3
          Top = 33
          Width = 769
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object EAN: TJvDBMaskEdit
          Left = 5
          Top = 74
          Width = 140
          Height = 21
          DataField = 'EAN'
          DataSource = dtsDefault
          TabOrder = 2
          EditMask = ''
        end
        object EX_TIPI: TJvDBMaskEdit
          Left = 5
          Top = 115
          Width = 47
          Height = 21
          DataField = 'EX_TIPI'
          DataSource = dtsDefault
          TabOrder = 4
          EditMask = ''
        end
        object EAN_TRIB: TJvDBMaskEdit
          Left = 151
          Top = 74
          Width = 140
          Height = 21
          DataField = 'EAN_TRIB'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object GENERO: TJvDBMaskEdit
          Left = 58
          Top = 115
          Width = 47
          Height = 21
          DataField = 'GENERO'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
        object NCM: TJvDBMaskEdit
          Left = 151
          Top = 115
          Width = 140
          Height = 21
          DataField = 'NCM'
          DataSource = dtsDefault
          TabOrder = 6
          EditMask = ''
        end
        object CEST: TJvDBMaskEdit
          Left = 297
          Top = 157
          Width = 140
          Height = 21
          DataField = 'CEST'
          DataSource = dtsDefault
          TabOrder = 9
          EditMask = ''
        end
        object UN_COM: TJvDBMaskEdit
          Left = 5
          Top = 157
          Width = 100
          Height = 21
          DataField = 'UN_COM'
          DataSource = dtsDefault
          TabOrder = 7
          EditMask = ''
        end
        object UN_TRIB: TJvDBMaskEdit
          Left = 5
          Top = 197
          Width = 100
          Height = 21
          DataField = 'UN_TRIB'
          DataSource = dtsDefault
          TabOrder = 10
          EditMask = ''
        end
        object QT_TRIB: TJvDBMaskEdit
          Left = 297
          Top = 197
          Width = 140
          Height = 21
          DataField = 'QT_TRIB'
          DataSource = dtsDefault
          TabOrder = 12
          EditMask = ''
        end
        object VL_COM: TJvDBCalcEdit
          Left = 151
          Top = 157
          Width = 140
          Height = 21
          DisplayFormat = '#0.00'
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
          DataField = 'VL_COM'
          DataSource = dtsDefault
        end
        object VL_TRIB: TJvDBCalcEdit
          Left = 151
          Top = 197
          Width = 140
          Height = 21
          DisplayFormat = '#0.00'
          TabOrder = 11
          DecimalPlacesAlwaysShown = False
          DataField = 'VL_TRIB'
          DataSource = dtsDefault
        end
        object JvgGroupBox2: TJvgGroupBox
          AlignWithMargins = True
          Left = 468
          Top = 60
          Width = 304
          Height = 158
          Caption = 'I.P.I'
          TabOrder = 1
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
            Left = 9
            Top = 41
            Width = 157
            Height = 13
            Caption = 'C'#243'digo de Enquadramento Legal'
            Transparent = True
          end
          object JvLabel2: TJvLabel
            Left = 9
            Top = 82
            Width = 87
            Height = 13
            Caption = 'CNPJ do Produtor'
            Transparent = True
          end
          object IPI_COD_ENQUADRAMENTO: TJvDBMaskEdit
            Left = 9
            Top = 55
            Width = 140
            Height = 21
            TabStop = False
            DataField = 'IPI_COD_ENQUADRAMENTO'
            DataSource = dtsDefault
            TabOrder = 0
            EditMask = ''
          end
          object IPI_CNPJ_PRODUTOR: TJvDBMaskEdit
            Left = 9
            Top = 96
            Width = 157
            Height = 21
            TabStop = False
            DataField = 'IPI_CNPJ_PRODUTOR'
            DataSource = dtsDefault
            TabOrder = 1
            EditMask = ''
          end
        end
        object JvgGroupBox3: TJvgGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 261
          Width = 777
          Height = 313
          Align = alBottom
          Caption = 'Tributa'#231#227'o'
          TabOrder = 13
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
          object Panel2: TPanel
            Left = 2
            Top = 16
            Width = 773
            Height = 295
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 767
              Height = 13
              Align = alTop
              Caption = 'Origem'
              ExplicitWidth = 34
            end
            object ORIGEM: TDBLookupComboBox
              Left = 3
              Top = 18
              Width = 767
              Height = 21
              DataField = 'ORIGEM'
              DataSource = dtsDefault
              KeyField = 'ID_ORIGEM'
              ListField = 'calcDESCRICAO'
              ListSource = dtsqryORIGEM
              TabOrder = 0
            end
            object JvPageControl1: TJvPageControl
              Left = 0
              Top = 45
              Width = 773
              Height = 250
              ActivePage = tabSIMPLES
              Align = alBottom
              TabOrder = 1
              object tabSIMPLES: TTabSheet
                Caption = 'Simples Nacional'
                object JvgGroupBox4: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 759
                  Height = 216
                  Align = alClient
                  Caption = ''
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
                  object Panel1: TPanel
                    Left = 2
                    Top = 16
                    Width = 755
                    Height = 53
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Label3: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 749
                      Height = 13
                      Align = alTop
                      Caption = 'Situa'#231#227'o Tribut'#225'ria'
                      ExplicitWidth = 90
                    end
                    object SIMPLES_CSOSN: TDBLookupComboBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 22
                      Width = 749
                      Height = 21
                      Align = alTop
                      DataField = 'SIMPLES_CSOSN'
                      DataSource = dtsDefault
                      KeyField = 'ID_CSOSN'
                      ListField = 'calcDESCRICAO'
                      ListSource = dtsqryCSOSN
                      TabOrder = 0
                      OnClick = SIMPLES_CSOSNClick
                    end
                  end
                  object Panel3: TPanel
                    Left = 2
                    Top = 69
                    Width = 755
                    Height = 145
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 1
                    object grpSIMPLESicmsst: TJvgGroupBox
                      AlignWithMargins = True
                      Left = 382
                      Top = 3
                      Width = 370
                      Height = 139
                      Align = alClient
                      Caption = 'ICMS ST'
                      TabOrder = 1
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
                      object Label6: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 21
                        Width = 145
                        Height = 13
                        Caption = '% Base de c'#225'lculo do ICMS ST'
                      end
                      object Label7: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 48
                        Width = 130
                        Height = 13
                        Caption = '% Redu'#231#227'o da BC ICMS ST'
                      end
                      object Label8: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 75
                        Width = 163
                        Height = 13
                        Caption = '% margem de valor adic. ICMS ST'
                      end
                      object Label9: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 102
                        Width = 97
                        Height = 13
                        Caption = 'Aliquota do ICMS ST'
                      end
                      object SIMPLES_ST_RBASE: TJvDBCalcEdit
                        Left = 183
                        Top = 45
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        TabOrder = 1
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ST_RBASE'
                        DataSource = dtsDefault
                      end
                      object SIMPLES_ST_MVA: TJvDBCalcEdit
                        Left = 183
                        Top = 72
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        TabOrder = 2
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ST_MVA'
                        DataSource = dtsDefault
                      end
                      object SIMPLES_ST_ALIQUOTA: TJvDBCalcEdit
                        Left = 183
                        Top = 99
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        TabOrder = 3
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ST_ALIQUOTA'
                        DataSource = dtsDefault
                      end
                      object SIMPLES_ST_PBASE: TJvDBCalcEdit
                        Left = 183
                        Top = 18
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        Enabled = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ST_PBASE'
                        DataSource = dtsDefault
                      end
                    end
                    object grpSIMPLESicms: TJvgGroupBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 373
                      Height = 139
                      Align = alLeft
                      Caption = 'ICMS'
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
                      object Label10: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 21
                        Width = 130
                        Height = 13
                        Caption = '% Base de c'#225'lculo do ICMS'
                      end
                      object Label11: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 48
                        Width = 160
                        Height = 13
                        Caption = '% Redu'#231#227'o base de c'#225'lculo ICMS'
                      end
                      object Label13: TLabel
                        AlignWithMargins = True
                        Left = 7
                        Top = 75
                        Width = 96
                        Height = 13
                        Caption = '% Aliquota do ICMS'
                      end
                      object SIMPLES_ICMS_RBASE: TJvDBCalcEdit
                        Left = 183
                        Top = 45
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        TabOrder = 1
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ICMS_RBASE'
                        DataSource = dtsDefault
                      end
                      object SIMPLES_ICMS_ALIQUOTA: TJvDBCalcEdit
                        Left = 183
                        Top = 72
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        TabOrder = 2
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ICMS_ALIQUOTA'
                        DataSource = dtsDefault
                      end
                      object SIMPLES_ICMS_PBASE: TJvDBCalcEdit
                        Left = 183
                        Top = 18
                        Width = 179
                        Height = 21
                        DisplayFormat = '#0.00'
                        Enabled = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        DataField = 'SIMPLES_ICMS_PBASE'
                        DataSource = dtsDefault
                      end
                    end
                  end
                end
              end
              object tabNORMAL: TTabSheet
                Caption = 'Regime Normal'
                ImageIndex = 1
                object JvgGroupBox5: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 759
                  Height = 216
                  Align = alClient
                  Caption = ''
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
                  object Label4: TLabel
                    AlignWithMargins = True
                    Left = 5
                    Top = 19
                    Width = 749
                    Height = 13
                    Align = alTop
                    Caption = 'Situa'#231#227'o Tribut'#225'ria'
                    ExplicitWidth = 90
                  end
                  object NORMAL_CST: TDBLookupComboBox
                    Left = 2
                    Top = 35
                    Width = 755
                    Height = 21
                    Align = alTop
                    DataField = 'NORMAL_CST'
                    DataSource = dtsDefault
                    KeyField = 'ID_CST'
                    ListField = 'calcDESCRICAO'
                    ListSource = dtsqryCST
                    TabOrder = 0
                    OnClick = NORMAL_CSTClick
                  end
                  object grpNORMALicms: TJvgGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 59
                    Width = 373
                    Height = 152
                    Align = alLeft
                    Caption = 'ICMS'
                    TabOrder = 1
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
                    object Label14: TLabel
                      AlignWithMargins = True
                      Left = 7
                      Top = 46
                      Width = 112
                      Height = 13
                      Caption = '% redu'#231#227'o da BC ICMS'
                    end
                    object Label15: TLabel
                      AlignWithMargins = True
                      Left = 7
                      Top = 73
                      Width = 82
                      Height = 13
                      Caption = 'Aliquota do ICMS'
                    end
                    object Label2: TLabel
                      AlignWithMargins = True
                      Left = 5
                      Top = 19
                      Width = 363
                      Height = 13
                      Align = alTop
                      Caption = '% Base de c'#225'lculo do ICMS'
                      ExplicitWidth = 130
                    end
                    object NORMAL_ICMS_RBASE: TJvDBCalcEdit
                      Left = 183
                      Top = 43
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 1
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMS_RBASE'
                      DataSource = dtsDefault
                    end
                    object NORMAL_ICMS_ALIQUOTA: TJvDBCalcEdit
                      Left = 183
                      Top = 70
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 2
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMS_ALIQUOTA'
                      DataSource = dtsDefault
                    end
                    object NORMAL_ICMS_PBASE: TJvDBCalcEdit
                      Left = 183
                      Top = 16
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 0
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMS_PBASE'
                      DataSource = dtsDefault
                    end
                  end
                  object grpNORMALicmsST: TJvgGroupBox
                    AlignWithMargins = True
                    Left = 384
                    Top = 59
                    Width = 370
                    Height = 152
                    Align = alClient
                    Caption = 'ICMS ST'
                    TabOrder = 2
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
                    object Label17: TLabel
                      AlignWithMargins = True
                      Left = 7
                      Top = 46
                      Width = 127
                      Height = 13
                      Caption = '% redu'#231#227'o da BC ICMS ST'
                    end
                    object Label18: TLabel
                      AlignWithMargins = True
                      Left = 7
                      Top = 73
                      Width = 163
                      Height = 13
                      Caption = '% margem de valor adic. ICMS ST'
                    end
                    object Label19: TLabel
                      AlignWithMargins = True
                      Left = 7
                      Top = 100
                      Width = 97
                      Height = 13
                      Caption = 'Aliquota do ICMS ST'
                    end
                    object Label12: TLabel
                      AlignWithMargins = True
                      Left = 5
                      Top = 19
                      Width = 360
                      Height = 13
                      Align = alTop
                      Caption = '% Base de c'#225'lculo do ICMS ST'
                      ExplicitWidth = 145
                    end
                    object NORMAL_ICMSST_RBASE: TJvDBCalcEdit
                      Left = 183
                      Top = 43
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 1
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMSST_RBASE'
                      DataSource = dtsDefault
                    end
                    object NORMAL_ICMSST_MVA: TJvDBCalcEdit
                      Left = 183
                      Top = 70
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 2
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMSST_MVA'
                      DataSource = dtsDefault
                    end
                    object NORMAL_ICMSST_ALIQUOTA: TJvDBCalcEdit
                      Left = 183
                      Top = 97
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 3
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMSST_ALIQUOTA'
                      DataSource = dtsDefault
                    end
                    object NORMAL_ICMSST_PBASE: TJvDBCalcEdit
                      Left = 183
                      Top = 16
                      Width = 179
                      Height = 21
                      DisplayFormat = '#0.00'
                      TabOrder = 0
                      DecimalPlacesAlwaysShown = False
                      DataField = 'NORMAL_ICMSST_PBASE'
                      DataSource = dtsDefault
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 658
    Width = 807
    ExplicitTop = 658
    ExplicitWidth = 807
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 669
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabPRODUTOS
    Left = 676
    Top = 318
  end
  object dtstabPRODUTO: TDataSource
    Left = 445
    Top = 261
  end
  object dtsqryORIGEM: TDataSource
    DataSet = qryORIGEM
    Left = 542
    Top = 227
  end
  object dtsqryCSOSN: TDataSource
    DataSet = qryCSOSN
    Left = 613
    Top = 227
  end
  object dtsqryCST: TDataSource
    DataSet = qryCST
    Left = 686
    Top = 227
  end
  object dtsqryUF: TDataSource
    DataSet = qryUF
    Left = 542
    Top = 291
  end
  object qryUF: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'select * from cidades_uf order by id_cidades_uf')
    Left = 530
    Top = 274
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
  object qryORIGEM: TFDQuery
    AfterOpen = qryORIGEMAfterOpen
    OnCalcFields = qryORIGEMCalcFields
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM ORIGEM ORDER BY ID_ORIGEM')
    Left = 528
    Top = 216
    object qryORIGEMID_ORIGEM: TIntegerField
      FieldName = 'ID_ORIGEM'
      Origin = 'ID_ORIGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryORIGEMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryORIGEMcalcDESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcDESCRICAO'
      Size = 250
      Calculated = True
    end
  end
  object qryCST: TFDQuery
    OnCalcFields = qryCSTCalcFields
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM CST ORDER BY ID_CST')
    Left = 672
    Top = 216
    object qryCSTID_CST: TStringField
      FieldName = 'ID_CST'
      Origin = 'ID_CST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qryCSTcalcDESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcDESCRICAO'
      Size = 250
      Calculated = True
    end
  end
  object qryCSOSN: TFDQuery
    OnCalcFields = qryCSOSNCalcFields
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM CSOSN ORDER BY ID_CSOSN')
    Left = 600
    Top = 216
    object qryCSOSNID_CSOSN: TStringField
      FieldName = 'ID_CSOSN'
      Origin = 'ID_CSOSN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object qryCSOSNcalcDESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcDESCRICAO'
      Size = 250
      Calculated = True
    end
  end
end
