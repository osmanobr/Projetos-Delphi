object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Velocidade'
  end
  object BtnPause: TButton
    Left = 329
    Top = 10
    Width = 57
    Height = 43
    Caption = 'Pausar'
    TabOrder = 0
    OnClick = BtnPauseClick
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 24
    Width = 169
    Height = 45
    TabOrder = 1
    OnChange = TrackBar1Change
  end
  object BtnStart: TButton
    Left = 203
    Top = 10
    Width = 57
    Height = 43
    Caption = 'Falar'
    TabOrder = 2
    OnClick = BtnStartClick
  end
  object btnStop: TButton
    Left = 266
    Top = 10
    Width = 57
    Height = 43
    Caption = 'Parar'
    TabOrder = 3
    OnClick = btnStopClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 59
    Width = 545
    Height = 232
    TabOrder = 4
  end
end
