inherited frmCTEcartacorrecao: TfrmCTEcartacorrecao
  Caption = 'Carta de Corre'#231#227'o'
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
    object Label21: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 585
      Height = 13
      Align = alTop
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 153
      Top = 19
      Width = 123
      Height = 13
      Caption = 'Data e Hora de emiss'#227'o *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 19
      Width = 43
      Height = 13
      Caption = 'N'#250'mero*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 322
      Top = 19
      Width = 103
      Height = 13
      Caption = 'Sequencial do Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 449
      Top = 19
      Width = 20
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ID_SERIE: TJvDBMaskEdit
      Tag = 1
      Left = 5
      Top = 35
      Width = 61
      Height = 21
      TabStop = False
      DataField = 'ID_SERIE'
      DataSource = dtstabCTE_EVENTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      EditMask = ''
    end
    object ID_CTE: TJvDBMaskEdit
      Left = 72
      Top = 35
      Width = 75
      Height = 21
      TabStop = False
      DataField = 'ID_CTE'
      DataSource = dtstabCTE_EVENTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      EditMask = ''
    end
    object DTHR_EVENTO: TJvDBDateTimePicker
      Left = 153
      Top = 35
      Width = 163
      Height = 21
      Date = 43391.000000000000000000
      Time = 0.646926689812971700
      Checked = False
      TabOrder = 2
      DropDownDate = 43384.000000000000000000
      DataField = 'DTHR_EVENTO'
      DataSource = dtstabCTE_EVENTO
      ReadOnly = True
    end
    object ID_SEQUENCIA: TJvDBSpinEdit
      Left = 322
      Top = 35
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
      DataField = 'ID_SEQUENCIA'
      DataSource = dtmCTe.dtstabCTE_EVENTO
    end
    object TIPO: TJvDBMaskEdit
      Left = 449
      Top = 35
      Width = 75
      Height = 21
      TabStop = False
      DataField = 'TIPO'
      DataSource = dtstabCTE_EVENTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      EditMask = ''
    end
  end
  object JvgGroupBox19: TJvgGroupBox [2]
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 595
    Height = 513
    Align = alClient
    Caption = 'Detalhes da Carta de Corre'#231#227'o'
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
    object Panel12: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 585
      Height = 86
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label19: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 579
        Height = 13
        Align = alTop
        Caption = 'Grupo Alterado*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 295
        Top = 3
        Width = 83
        Height = 13
        Caption = 'Campo Alterado*'
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
        Top = 43
        Width = 89
        Height = 13
        Caption = 'Nova Informa'#231#227'o*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object GRUPO_ALTERADO: TJvMaskEdit
        Left = 3
        Top = 18
        Width = 286
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object CAMPO_ALTERADO: TJvMaskEdit
        Left = 295
        Top = 18
        Width = 287
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object NOVA_INFORMACAO: TJvMaskEdit
        Left = 3
        Top = 58
        Width = 579
        Height = 21
        TabOrder = 2
        Text = ''
      end
    end
    object Panel13: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 556
      Width = 923
      Height = 34
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel14: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 111
      Width = 585
      Height = 397
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object JvDBGrid2: TJvDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 579
        Height = 214
        Align = alTop
        DataSource = dtstabCTE_EVENTO_CCE_ITENS
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
            FieldName = 'CAMPO_GRUPO'
            Title.Caption = 'Grupo Alterado'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAMPO_DESCRICAO'
            Title.Caption = 'Campo Alterado'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAMPO_CONTEUDO'
            Title.Caption = 'Nova Informa'#231#227'o'
            Width = 277
            Visible = True
          end>
      end
      object Panel16: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 362
        Width = 579
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnEXCLUIR: TJvSpeedButton
          AlignWithMargins = True
          Left = 119
          Top = 3
          Width = 110
          Height = 26
          Hint = 'Cancela opera'#231#227'o atual'
          Align = alLeft
          Caption = 'Excluir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000001B2856664463
            D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
            0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
            D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
            D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
            F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
            F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
            D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
            D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
            D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
            83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphLeft
          OnClick = btnEXCLUIRClick
        end
        object btnINCLUIR: TJvSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 110
          Height = 26
          Hint = 'Confirma opera'#231#227'o atual'
          Align = alLeft
          Caption = 'Incluir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000097A776FF97A776FF00000000000000000000000000000000000000000000
            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
            FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
            76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
            76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
            83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphLeft
          OnClick = btnINCLUIRClick
        end
      end
      object JvgGroupBox2: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 223
        Width = 579
        Height = 133
        Align = alBottom
        Caption = 'Observa'#231#245'es'
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
        object OBSERVACAO: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 569
          Height = 109
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = dtmCTe.dtstabCTE_EVENTO
          TabOrder = 0
        end
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 480
    Top = 123
  end
  object dtstabCTE_EVENTO: TDataSource
    DataSet = dtmCTe.tabCTE_EVENTO
    Left = 392
    Top = 278
  end
  object dtstabCTE_EVENTO_CCE_ITENS: TDataSource
    DataSet = dtmCTe.tabCTE_EVENTO_CCE_ITENS
    OnDataChange = dtstabCTE_EVENTO_CCE_ITENSDataChange
    Left = 408
    Top = 294
  end
  object GravarEvento: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'INSERT INTO CTE_EVENTO'
      
        '  (  ID_EMPRESA,  ID_CTE,  ID_SERIE,  ID_EVENTO,  ID_SEQUENCIA, ' +
        ' TIPO,  DTHR_EVENTO,  LOTE,  DTHR_PROTOCOLO,  NUMERO_PROTOCOLO, ' +
        ' CSTAT,  HISTORICO,  OBSERVACAO,  XML )'
      'VALUES'
      
        '  ( :ID_EMPRESA, :ID_CTE, :ID_SERIE, :ID_EVENTO, :ID_SEQUENCIA, ' +
        ':TIPO, :DTHR_EVENTO, :LOTE, :DTHR_PROTOCOLO, :NUMERO_PROTOCOLO, ' +
        ':CSTAT, :HISTORICO, :OBSERVACAO, :XML )')
    Left = 397
    Top = 384
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EVENTO'
        ParamType = ptInput
      end
      item
        Name = 'ID_SEQUENCIA'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'DTHR_EVENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTHR_PROTOCOLO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_PROTOCOLO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'CSTAT'
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Name = 'XML'
        DataType = ftBlob
        ParamType = ptInput
      end>
  end
end
