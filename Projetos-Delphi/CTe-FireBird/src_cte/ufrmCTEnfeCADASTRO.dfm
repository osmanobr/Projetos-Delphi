inherited frmCteNFeCadastro: TfrmCteNFeCadastro
  Caption = 'Nota Fiscal Eletr'#244'nica'
  ClientHeight = 282
  ClientWidth = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 227
    Width = 566
    TabOrder = 1
    inherited btnCancelar: TJvSpeedButton
      Left = 453
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 337
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 566
    Height = 218
    TabOrder = 0
    inherited tabDefault: TTabSheet
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 552
        Height = 184
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
          Width = 542
          Height = 160
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 542
          Height = 160
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 536
            Height = 13
            Align = alTop
            Caption = 'Chave de Acesso*'
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
            Top = 44
            Width = 17
            Height = 13
            Caption = 'PIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 342
            Top = 44
            Width = 106
            Height = 13
            Caption = 'Data prevista entrega'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object NFE_CHAVE: TJvDBMaskEdit
            Left = 3
            Top = 17
            Width = 502
            Height = 21
            TabStop = False
            DataField = 'NFE_CHAVE'
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
          object NFE_PIN: TJvDBMaskEdit
            Left = 3
            Top = 58
            Width = 333
            Height = 21
            TabStop = False
            DataField = 'NFE_PIN'
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
          object DT_PREVISAO_ENTREGA: TJvDBDateTimePicker
            Left = 342
            Top = 58
            Width = 163
            Height = 21
            Date = 43384.000000000000000000
            Time = 0.624080995366966800
            Checked = False
            TabOrder = 2
            DropDownDate = 43384.000000000000000000
            DataField = 'DT_PREVISAO_ENTREGA'
            DataSource = dtsDefault
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 263
    Width = 572
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 237
    Top = 32
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE_NFE
    Left = 286
    Top = 51
  end
end
