object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 384
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cria'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Insere'
    TabOrder = 1
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 168
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 256
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 144
  end
end
