inherited frmCTEinutilizacao: TfrmCTEinutilizacao
  Caption = 'Inutiliza'#231#227'o'
  ClientHeight = 634
  ClientWidth = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Left = 3
    Top = 598
    Width = 595
    Align = alBottom
    inherited btnCancelar: TJvSpeedButton
      Left = 482
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 366
      Caption = 'Transmitir'
    end
    object btnImprimirXML: TJvSpeedButton
      AlignWithMargins = True
      Left = 326
      Top = 3
      Width = 34
      Height = 27
      Hint = 'Imprimir'
      Align = alRight
      Caption = 'Imprimir CT-e'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000005D5D5DB48484
        84FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF848484FF848484FF5D5D5DB4848484FF8484
        84FF848484FF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF00000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000848484FF848484FF848484FF8484
        84FF00000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF00000000848484FF848484FF848484FF8484
        84FF00000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF00000000848484FF848484FF616161BB8484
        84FF00000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF00000000848484FF616161BB000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000}
      Layout = blGlyphLeft
      OnClick = btnVisualizarXMLClick
    end
  end
  object JvgGroupBox3: TJvgGroupBox [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 595
    Height = 70
    Align = alTop
    Caption = 'Dados Principais'
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
    object Label3: TLabel
      Left = 95
      Top = 19
      Width = 67
      Height = 13
      Caption = 'N'#250'mero Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 222
      Top = 19
      Width = 62
      Height = 13
      Caption = 'N'#250'mero Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 6
      Top = 19
      Width = 19
      Height = 13
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 349
      Top = 19
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtNumeroInicial: TJvSpinEdit
      Left = 95
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtNumeroFinal: TJvSpinEdit
      Left = 222
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtAno: TJvSpinEdit
      Left = 6
      Top = 35
      Width = 83
      Height = 21
      TabOrder = 0
    end
    object edtSerie: TJvSpinEdit
      Left = 349
      Top = 35
      Width = 60
      Height = 21
      TabOrder = 3
    end
  end
  object JvgGroupBox19: TJvgGroupBox [2]
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 595
    Height = 513
    Align = alClient
    Caption = 'Inutiliza'#231#245'es efetuadas'
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
    object Panel13: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 556
      Width = 923
      Height = 34
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel14: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 585
      Height = 489
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object JvDBGrid2: TJvDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 579
        Height = 306
        Align = alClient
        DataSource = dtsqryINUT
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        MultiSelect = True
        AlternateRowColor = clInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'DTHR_RECEBIMENTO'
            Title.Caption = 'DT/HR Protocolo'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROTOCOLO'
            Title.Caption = 'Protocolo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO'
            Title.Caption = 'Ano'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_INICIAL'
            Title.Caption = 'N'#250'mero Inicial'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_FINAL'
            Title.Caption = 'N'#250'mero Final'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'S'#233'rie'
            Width = 50
            Visible = True
          end>
      end
      object Panel16: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 454
        Width = 579
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
      end
      object JvgGroupBox2: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 315
        Width = 579
        Height = 133
        Align = alBottom
        Caption = 'Justificativa'
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
        object edtJustificativa: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 569
          Height = 109
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 440
    Top = 283
  end
  object insertINUT: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'INSERT INTO CTE_INUTILIZACAO'
      
        '  (ID_EMPRESA, ID_EVENTO, DT_CADASTRO, ANO, NUMERO_INICIAL, NUME' +
        'RO_FINAL, SERIE, PROTOCOLO, DTHR_RECEBIMENTO, JUSTIFICATIVA, XML' +
        ')'
      'VALUES'
      
        '  (:ID_EMPRESA, :ID_EVENTO, :DT_CADASTRO, :ANO, :NUMERO_INICIAL,' +
        ' :NUMERO_FINAL, :SERIE, :PROTOCOLO, :DTHR_RECEBIMENTO, :JUSTIFIC' +
        'ATIVA, :XML)')
    Left = 429
    Top = 264
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EVENTO'
        ParamType = ptInput
      end
      item
        Name = 'DT_CADASTRO'
        ParamType = ptInput
      end
      item
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_INICIAL'
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_FINAL'
        ParamType = ptInput
      end
      item
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        Name = 'PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'DTHR_RECEBIMENTO'
        ParamType = ptInput
      end
      item
        Name = 'JUSTIFICATIVA'
        ParamType = ptInput
      end
      item
        Name = 'XML'
        DataType = ftBlob
        ParamType = ptInput
      end>
  end
  object qryINUT: TFDQuery
    BeforeOpen = qryINUTBeforeOpen
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM CTE_INUTILIZACAO WHERE ID_EMPRESA = :ID_EMPRESA')
    Left = 80
    Top = 294
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryINUTID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryINUTID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Origin = 'ID_EVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryINUTDT_CADASTRO: TSQLTimeStampField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryINUTANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object qryINUTNUMERO_INICIAL: TIntegerField
      FieldName = 'NUMERO_INICIAL'
      Origin = 'NUMERO_INICIAL'
    end
    object qryINUTNUMERO_FINAL: TIntegerField
      FieldName = 'NUMERO_FINAL'
      Origin = 'NUMERO_FINAL'
    end
    object qryINUTSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
    end
    object qryINUTPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryINUTDTHR_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DTHR_RECEBIMENTO'
      Origin = 'DTHR_RECEBIMENTO'
    end
    object qryINUTJUSTIFICATIVA: TBlobField
      FieldName = 'JUSTIFICATIVA'
      Origin = 'JUSTIFICATIVA'
    end
    object qryINUTXML: TBlobField
      FieldName = 'XML'
      Origin = 'XML'
    end
  end
  object dtsqryINUT: TDataSource
    DataSet = qryINUT
    Left = 104
    Top = 350
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 314
  end
end
