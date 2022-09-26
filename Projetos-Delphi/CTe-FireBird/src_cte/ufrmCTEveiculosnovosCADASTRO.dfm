inherited frmCteVeiculosNovosCadastro: TfrmCteVeiculosNovosCadastro
  Caption = 'Ve'#237'culos Novos'
  ClientHeight = 328
  ClientWidth = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 273
    Width = 530
    TabOrder = 1
    inherited btnCancelar: TJvSpeedButton
      Left = 417
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 301
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 530
    Height = 264
    TabOrder = 0
    inherited tabDefault: TTabSheet
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 516
        Height = 230
        Align = alClient
        Caption = 'Ve'#237'culo Novo'
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
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 506
          Height = 206
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 506
          Height = 206
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 500
            Height = 13
            Align = alTop
            Caption = 'Cor*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 71
            Top = 3
            Width = 87
            Height = 13
            Caption = 'Descri'#231#227'o da Cor*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 3
            Top = 87
            Width = 121
            Height = 13
            Caption = 'Valor Unit'#225'rio do Ve'#237'culo*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 3
            Top = 45
            Width = 110
            Height = 13
            Caption = 'C'#243'digo/Marca/Modelo*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 191
            Top = 45
            Width = 37
            Height = 13
            Caption = 'Chassi*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 191
            Top = 87
            Width = 66
            Height = 13
            Caption = 'Frete Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object COR: TJvDBMaskEdit
            Left = 3
            Top = 18
            Width = 62
            Height = 21
            TabStop = False
            DataField = 'COR'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            EditMask = ''
          end
          object VALOR_UNITARIO: TJvDBCalcEdit
            Left = 3
            Top = 103
            Width = 182
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            DataField = 'VALOR_UNITARIO'
            DataSource = dtsDefault
          end
          object COR_DESCRICAO: TJvDBMaskEdit
            Left = 71
            Top = 18
            Width = 371
            Height = 21
            TabStop = False
            DataField = 'COR_DESCRICAO'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            EditMask = ''
          end
          object CODIGO_MARCA_MODELO: TJvDBMaskEdit
            Left = 3
            Top = 60
            Width = 182
            Height = 21
            TabStop = False
            DataField = 'CODIGO_MARCA_MODELO'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            EditMask = ''
          end
          object CHASSI: TJvDBMaskEdit
            Left = 191
            Top = 60
            Width = 251
            Height = 21
            TabStop = False
            DataField = 'CHASSI'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            EditMask = ''
          end
          object FRETE_UNITARIO: TJvDBCalcEdit
            Left = 191
            Top = 103
            Width = 182
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = False
            DataField = 'FRETE_UNITARIO'
            DataSource = dtsDefault
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 309
    Width = 536
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 237
    Top = 32
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE_VEICULOS_NOVOS
    Left = 254
    Top = 91
  end
end
