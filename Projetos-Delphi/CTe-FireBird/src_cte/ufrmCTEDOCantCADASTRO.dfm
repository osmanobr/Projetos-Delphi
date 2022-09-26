inherited frmCteDOCANTCadastro: TfrmCteDOCANTCadastro
  Caption = 'Documentos Anterior'
  ClientHeight = 282
  ClientWidth = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 227
    Width = 540
    TabOrder = 1
    inherited btnCancelar: TJvSpeedButton
      Left = 427
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 311
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 540
    Height = 218
    TabOrder = 0
    inherited tabDefault: TTabSheet
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 526
        Height = 184
        Align = alClient
        Caption = 'Informa'#231#245'es do DOC Anterior'
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
          Width = 516
          Height = 160
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 516
          Height = 160
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 510
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
            Width = 25
            Height = 13
            Caption = 'CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 207
            Top = 44
            Width = 18
            Height = 13
            Caption = 'I.E.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbUF: TLabel
            Left = 456
            Top = 44
            Width = 13
            Height = 13
            Caption = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label1: TLabel
            Left = 3
            Top = 85
            Width = 60
            Height = 13
            Caption = 'Raz'#227'o Social'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object XML_CHAVE: TJvDBMaskEdit
            Left = 3
            Top = 17
            Width = 502
            Height = 21
            TabStop = False
            DataField = 'XML_CHAVE'
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
          object CNPJCPF: TJvDBMaskEdit
            Left = 3
            Top = 58
            Width = 198
            Height = 21
            TabStop = False
            DataField = 'CNPJCPF'
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
          object IE: TJvDBMaskEdit
            Left = 207
            Top = 58
            Width = 243
            Height = 21
            TabStop = False
            DataField = 'IE'
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
          object UF: TJvDBLookupCombo
            Left = 456
            Top = 58
            Width = 49
            Height = 21
            DataField = 'UF'
            DataSource = dtsDefault
            LookupField = 'ID_CIDADES_UF'
            LookupDisplay = 'ID_CIDADES_UF'
            LookupSource = dtsqryUF
            TabOrder = 3
          end
          object RAZAOSOCIAL: TJvDBMaskEdit
            Left = 3
            Top = 99
            Width = 502
            Height = 21
            TabStop = False
            DataField = 'RAZAOSOCIAL'
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
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 263
    Width = 546
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 237
    Top = 32
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE_DOCANT
    Left = 286
    Top = 51
  end
  object dtsqryUF: TDataSource
    DataSet = dtmCTe.qryUF
    Left = 304
    Top = 70
  end
end
