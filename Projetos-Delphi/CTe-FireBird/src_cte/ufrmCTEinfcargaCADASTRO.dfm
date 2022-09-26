inherited frmCteInfCargaCadastro: TfrmCteInfCargaCadastro
  Caption = 'Informa'#231#245'es da Carga'
  ClientHeight = 283
  ClientWidth = 454
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 228
    Width = 448
    TabOrder = 1
    inherited btnCancelar: TJvSpeedButton
      Left = 335
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 219
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 448
    Height = 219
    TabOrder = 0
    inherited tabDefault: TTabSheet
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 434
        Height = 185
        Align = alClient
        Caption = 'Informa'#231#245'es da Carga'
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
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 424
          Height = 161
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 424
          Height = 161
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 418
            Height = 13
            Align = alTop
            Caption = 'C'#243'digo da Unidade de Medida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 3
            Top = 45
            Width = 72
            Height = 13
            Caption = 'Tipo da Medida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 3
            Top = 87
            Width = 62
            Height = 13
            Caption = 'Quantidade*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ID_UNIDADE_MEDIDA: TJvDBComboBox
            Left = 3
            Top = 18
            Width = 350
            Height = 21
            DataField = 'ID_UNIDADE_MEDIDA'
            DataSource = dtsDefault
            Items.Strings = (
              'M3'
              'KG'
              'TON'
              'UNIDADE'
              'LITROS')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object TIPO_MEDIDA: TJvDBMaskEdit
            Left = 3
            Top = 60
            Width = 350
            Height = 21
            TabStop = False
            DataField = 'TIPO_MEDIDA'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            EditMask = ''
          end
          object QUANTIDADE: TJvDBCalcEdit
            Left = 3
            Top = 106
            Width = 350
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            DataField = 'QUANTIDADE'
            DataSource = dtsDefault
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 264
    Width = 454
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 237
    Top = 32
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE_CARGA_QUANTIDADES
    Left = 254
    Top = 91
  end
end
