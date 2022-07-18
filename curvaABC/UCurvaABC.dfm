object FrmCurvaABC: TFrmCurvaABC
  Left = 0
  Top = 0
  Caption = 'Curva ABC'
  ClientHeight = 513
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 865
    Height = 513
    Gradient.EndColor = 15912076
    Gradient.Visible = True
    Legend.Alignment = laBottom
    Legend.TextStyle = ltsValue
    PrintProportional = False
    Title.Font.Color = 8804378
    Title.Font.Height = -41
    Title.Font.Style = [fsBold, fsItalic]
    Title.Font.Shadow.Color = 13487565
    Title.Font.Shadow.HorizSize = 3
    Title.Font.Shadow.VertSize = 3
    Title.Frame.Width = 0
    Title.Frame.Visible = False
    Title.Shadow.HorizSize = 6
    Title.Shadow.VertSize = 6
    Title.Text.Strings = (
      'Curva ABC')
    Shadow.HorizSize = 2
    Shadow.VertSize = 1
    Zoom.Animated = True
    Align = alClient
    TabStop = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      5
      5
      5
      5)
    ColorPaletteIndex = 13
    object LBEmpresa: TLabel
      Left = 1
      Top = 487
      Width = 863
      Height = 25
      Align = alBottom
      Alignment = taRightJustify
      Caption = 'Nome da Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = 674
      ExplicitWidth = 190
    end
    object Series1: TFastLineSeries
      Marks.Brush.Gradient.Visible = True
      Marks.Font.Height = -20
      Marks.Style = smsValue
      Marks.Arrow.Visible = False
      Marks.Callout.Arrow.Visible = False
      Marks.Callout.Length = 20
      LinePen.Color = 10708548
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        04190000000000000000608340FF010000004100000000006C8640FF00000000
        0000000000408A40FF01000000420000000000AC8C40FF000000000000000000
        8C8940FF000000000000000000908A40FF000000000000000000448B40FF0000
        00000000000000DC8940FF01000000430000000000BC8640FF00000000000000
        0000188A40FF000000000000000000F48A40FF000000000000000000048A40FF
        0000000000000000006C8640FF0000000000000000002C8A40FF000000000000
        000000848C40FF000000000000000000A88B40FF000000000000000000388840
        FF000000000000000000B88540FF000000000000000000808640FF0000000000
        00000000548540FF000000000000000000708740FF000000000000000000B88A
        40FF000000000000000000588B40FF0000000000000000002C8A40FF00000000
        0000000000308B40FF00000000}
    end
    object Series2: TBarSeries
      BarBrush.BackColor = clDefault
      Marks.Visible = False
      Marks.Callout.Length = 8
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Data = {
        0419000000CDCCCCCC0C9B8640FF01000000419A99999959778640FF00000000
        9A99999959EE8640FF010000004200000000C0358740FF00000000CDCCCCCCCC
        1D8840FF0000000067666666665F8740FF000000003433333333658840FF0000
        000001000000006B8940FF01000000433433333373BE8840FF000000009A9999
        99D9058940FF000000000000000040E88740FF0000000066666666E6888840FF
        0000000099999999D97C8940FF00000000CCCCCCCCCC948840FF00000000CCCC
        CCCC0C778840FF0000000099999999D9178840FF00000000FFFFFFFF3F718740
        FF00000000FFFFFFFF7FDC8640FF000000009999999999D08640FF0000000033
        33333373F48540FF000000000000000040958540FF0000000066666666668385
        40FF000000003333333373068540FF00000000CDCCCCCCCCCA8540FF00000000
        9A99999919A78540FF00000000}
    end
  end
  object Panel1: TPanel
    Left = 865
    Top = 0
    Width = 185
    Height = 513
    Align = alRight
    BorderWidth = 4
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 175
      Height = 25
      Align = alTop
      AutoSize = False
      Caption = 'Op'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 32
      ExplicitTop = 272
      ExplicitWidth = 31
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 30
      Width = 175
      Height = 48
      Align = alTop
      Caption = 'Curvas ABC'
      TabOrder = 0
      object CBCurvas: TComboBox
        Left = 2
        Top = 15
        Width = 171
        Height = 26
        Align = alTop
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Venda Itens'
        Items.Strings = (
          'Venda Itens'
          'Compra Itens')
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 78
      Width = 175
      Height = 105
      Align = alTop
      Caption = 'Per'#237'dos'
      TabOrder = 1
      object Label2: TLabel
        Left = 2
        Top = 58
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Data Final'
        Layout = tlBottom
        ExplicitLeft = 5
        ExplicitTop = 63
        ExplicitWidth = 179
      end
      object Label3: TLabel
        Left = 2
        Top = 15
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Data In'#237'cio'
        Layout = tlBottom
        ExplicitLeft = 5
        ExplicitTop = 6
        ExplicitWidth = 179
      end
      object DTPFim: TDateTimePicker
        Left = 2
        Top = 75
        Width = 171
        Height = 26
        Align = alTop
        Date = 44748.503348587960000000
        Time = 44748.503348587960000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 1
      end
      object DTPInicio: TDateTimePicker
        Left = 2
        Top = 32
        Width = 171
        Height = 26
        Align = alTop
        Date = 44748.503348587960000000
        Time = 44748.503348587960000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 5
      Top = 353
      Width = 175
      Height = 145
      Align = alTop
      TabOrder = 3
      object BTNExecutar: TButtonGradient
        Left = 2
        Top = 15
        Width = 171
        Height = 41
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Executar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 0
        OnClick = BTNExecutarClick
      end
      object BtnRelatorio: TButtonGradient
        Left = 2
        Top = 56
        Width = 171
        Height = 33
        Align = alTop
        Caption = 'Relatorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnRelatorioClick
      end
      object BtnImprimirGrafico: TButtonGradient
        Left = 2
        Top = 89
        Width = 171
        Height = 33
        Align = alTop
        Caption = 'Imprimir Gr'#225'fico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnImprimirGraficoClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 5
      Top = 183
      Width = 175
      Height = 170
      Align = alTop
      Caption = #205'ndices'
      TabOrder = 2
      object Label4: TLabel
        Left = 2
        Top = 58
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Classe B'
        Layout = tlBottom
        ExplicitTop = 53
      end
      object Label5: TLabel
        Left = 2
        Top = 15
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Classe A'
        Layout = tlBottom
      end
      object Label6: TLabel
        Left = 2
        Top = 101
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Classe C'
        Layout = tlBottom
        ExplicitLeft = 1
        ExplicitTop = 95
      end
      object LbSomaIndices: TLabel
        Left = 2
        Top = 144
        Width = 171
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = '100%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlBottom
        ExplicitLeft = 3
        ExplicitTop = 160
      end
      object EdtIndiceA: TEdit
        Left = 2
        Top = 32
        Width = 171
        Height = 26
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        Text = '75'
        OnExit = EdtIndiceAExit
        OnKeyPress = EdtIndiceAKeyPress
        OnKeyUp = EdtIndiceAKeyUp
      end
      object EdtIndiceB: TEdit
        Left = 2
        Top = 75
        Width = 171
        Height = 26
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        Text = '20'
        OnExit = EdtIndiceBExit
        OnKeyPress = EdtIndiceBKeyPress
        OnKeyUp = EdtIndiceBKeyUp
      end
      object EdtIndiceC: TEdit
        Left = 2
        Top = 118
        Width = 171
        Height = 26
        Hint = 'Esse valor n'#227'o pode ser editado'
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsItalic]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 2
        Text = '5'
        OnExit = EdtIndiceCExit
      end
    end
  end
  object BD1: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'UTF8'
    Catalog = 'public'
    Properties.Strings = (
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16'
      'codepage=UTF8')
    HostName = '192.168.10.210'
    Port = 5432
    Database = '01335'
    User = 'ViaERP'
    Password = 'Via7216'
    Protocol = 'postgresql'
    LibraryLocation = 'D:\ViaERP\libpq.dll'
    Left = 728
    Top = 179
  end
  object Qry: TZQuery
    Connection = BD1
    SQL.Strings = (
      'select sum(parcela_receber.vl_pago) as pago,'
      'sum(parcela_receber.vl_jurospago) as vJuropago,'
      'sum(parcela_receber.vl_desconto) as desconto,'
      ' formas_pagamento.nome'
      'from conta_receber, parcela_receber, formas_pagamento '
      
        'where conta_receber.id = parcela_receber.id_conta_receber and pa' +
        'rcela_receber.id_forma = formas_pagamento.id'
      'group by parcela_receber.id_forma, formas_pagamento.nome')
    Params = <>
    Left = 775
    Top = 208
  end
  object DS: TDataSource
    DataSet = Qry
    Left = 745
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 966
    Top = 199
    object RestaurarValores1: TMenuItem
      Caption = 'Restaurar Valores'
      OnClick = RestaurarValores1Click
    end
  end
end
