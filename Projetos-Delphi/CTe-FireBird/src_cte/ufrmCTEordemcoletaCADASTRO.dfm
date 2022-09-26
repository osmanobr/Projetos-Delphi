inherited frmCteOrdemColetaCadastro: TfrmCteOrdemColetaCadastro
  Caption = 'Ordem de Coleta Associada'
  ClientHeight = 341
  ClientWidth = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 286
    Width = 527
    TabOrder = 1
    inherited btnCancelar: TJvSpeedButton
      Left = 414
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 298
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 527
    Height = 277
    TabOrder = 0
    inherited tabDefault: TTabSheet
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 513
        Height = 243
        Align = alClient
        Caption = 'Ordem de Coleta Associada'
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
          Top = 70
          Width = 503
          Height = 168
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object JvgGroupBox2: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 497
            Height = 162
            Align = alClient
            Caption = 'Dados do Emitente da OCC'
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
            object Label1: TLabel
              Left = 214
              Top = 18
              Width = 93
              Height = 13
              Caption = 'Inscri'#231#227'o Estadual*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 345
              Top = 18
              Width = 19
              Height = 13
              Caption = 'UF*'
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
              Top = 60
              Width = 42
              Height = 13
              Caption = 'Telefone'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label7: TLabel
              Left = 159
              Top = 60
              Width = 200
              Height = 13
              Caption = 'C'#243'digo Interno de uso da Transportadora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label8: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 487
              Height = 13
              Align = alTop
              Caption = 'CNPJ'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object CNPJ: TJvDBMaskEdit
              Left = 5
              Top = 33
              Width = 203
              Height = 21
              DataField = 'CNPJ'
              DataSource = dtsDefault
              MaxLength = 18
              TabOrder = 0
              EditMask = ''
            end
            object IE: TJvDBMaskEdit
              Tag = 1
              Left = 214
              Top = 33
              Width = 122
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
              TabOrder = 1
              EditMask = ''
            end
            object ID_UF: TDBLookupComboBox
              Left = 342
              Top = 33
              Width = 57
              Height = 21
              DataField = 'ID_UF'
              DataSource = dtsDefault
              KeyField = 'ID_CIDADES_UF'
              ListField = 'ID_CIDADES_UF'
              ListSource = dtsqryUF
              TabOrder = 2
            end
            object TELEFONE: TJvDBMaskEdit
              Tag = 1
              Left = 5
              Top = 74
              Width = 148
              Height = 21
              TabStop = False
              DataField = 'TELEFONE'
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
            object COD_INT_TRANS: TJvDBMaskEdit
              Tag = 1
              Left = 159
              Top = 74
              Width = 240
              Height = 21
              TabStop = False
              DataField = 'COD_INT_TRANS'
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
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 503
          Height = 45
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 497
            Height = 13
            Align = alTop
            Caption = 'S'#233'ria da OCC*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 89
            Top = 3
            Width = 83
            Height = 13
            Caption = 'N'#250'mero da OCC*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 217
            Top = 2
            Width = 88
            Height = 13
            Caption = 'Data de emiss'#227'o *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object SERIE: TJvDBMaskEdit
            Tag = 1
            Left = 3
            Top = 18
            Width = 80
            Height = 21
            TabStop = False
            DataField = 'SERIE'
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
          object NUMERO: TJvDBMaskEdit
            Tag = 1
            Left = 89
            Top = 18
            Width = 122
            Height = 21
            TabStop = False
            DataField = 'NUMERO'
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
          object DT_EMISSAO: TJvDBDateTimePicker
            Left = 217
            Top = 18
            Width = 185
            Height = 21
            Time = 0.544370428244292300
            Checked = False
            TabOrder = 2
            DropDownDate = 43384.000000000000000000
            DataField = 'DT_EMISSAO'
            DataSource = dtsDefault
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 322
    Width = 533
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 269
    Top = 40
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE_ORDEM_COLETA
    Left = 342
    Top = 35
  end
  object dtsqryUF: TDataSource
    DataSet = dtmCTe.qryUF
    Left = 361
    Top = 57
  end
  object DataSource1: TDataSource
    DataSet = dtmCTe.qryUF
    Left = 505
    Top = 281
  end
end
