object FrmCurvaABC: TFrmCurvaABC
  Left = 0
  Top = 0
  Caption = 'Backup Postgres'
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
    object GroupBox3: TGroupBox
      Left = 5
      Top = 30
      Width = 175
      Height = 145
      Align = alTop
      TabOrder = 0
      ExplicitTop = 353
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
    Connected = True
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
      'pg_dump 00227 db.sql')
    Params = <>
    Left = 775
    Top = 208
  end
  object DS: TDataSource
    DataSet = Qry
    Left = 745
    Top = 240
  end
  object ZStoredProc1: TZStoredProc
    Connection = BD1
    Params = <>
    Left = 592
    Top = 392
  end
end
