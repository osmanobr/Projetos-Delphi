object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 412
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Consolas'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 316
    Top = 56
    Width = 87
    Height = 21
    Caption = 'Save'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 5
    Top = 43
    Width = 48
    Height = 13
    Caption = 'User Id:'
  end
  object Label2: TLabel
    Left = 5
    Top = 5
    Width = 60
    Height = 13
    Caption = 'Bot Token:'
  end
  object BtnSendFile: TButton
    Left = 106
    Top = 91
    Width = 95
    Height = 25
    Caption = 'SendFile'
    TabOrder = 0
    OnClick = BtnSendFileClick
  end
  object EdtTokenBot: TEdit
    Left = 5
    Top = 18
    Width = 398
    Height = 21
    Color = clSilver
    TabOrder = 1
    Text = '5530573616:AAE7TB6vQkO4K4jkaGbN8B7C0pPQ1sTb4lc'
  end
  object Memo1: TMemo
    Left = 0
    Top = 158
    Width = 411
    Height = 254
    Align = alBottom
    BorderStyle = bsNone
    Color = 14277119
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object BtnSendMsg: TButton
    Left = 5
    Top = 91
    Width = 95
    Height = 25
    Caption = 'SendMsg'
    TabOrder = 3
    OnClick = BtnSendMsgClick
  end
  object BtnSendWithButtons: TButton
    Left = 5
    Top = 122
    Width = 196
    Height = 25
    Caption = 'SendMsgWithButtons'
    TabOrder = 4
    OnClick = BtnSendWithButtonsClick
  end
  object Button1: TButton
    Left = 207
    Top = 91
    Width = 95
    Height = 25
    Caption = 'GetUpdates'
    TabOrder = 5
    OnClick = Button1Click
  end
  object BtnSendLocation: TButton
    Left = 308
    Top = 91
    Width = 95
    Height = 25
    Caption = 'SendLocation'
    TabOrder = 6
    OnClick = BtnSendLocationClick
  end
  object Button2: TButton
    Left = 207
    Top = 122
    Width = 196
    Height = 25
    Caption = 'Start monitor'
    TabOrder = 7
    OnClick = Button2Click
  end
  object EdtUserId: TEdit
    Left = 5
    Top = 56
    Width = 297
    Height = 21
    Color = clSilver
    TabOrder = 8
  end
end
