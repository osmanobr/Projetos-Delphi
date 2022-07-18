object FrmUpgradeDowngrade: TFrmUpgradeDowngrade
  Left = 0
  Top = 0
  Caption = 'FrmUpgradeDowngrade'
  ClientHeight = 650
  ClientWidth = 1050
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
  object LbVersao: TLabel
    Left = 672
    Top = 144
    Width = 44
    Height = 13
    Caption = 'LbVersao'
  end
  object MemoINI: TMemo
    Left = 8
    Top = 8
    Width = 529
    Height = 634
    Lines.Strings = (
      '[UPGRADE]'
      'software = '
      'compilacao='
      'versao='
      '[DOWNGRADE]')
    TabOrder = 0
  end
end
