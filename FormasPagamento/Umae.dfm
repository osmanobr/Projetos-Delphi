object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 417
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 102
      Height = 13
      Caption = 'Forma de pagamento'
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Qtd Parcelas'
    end
    object Label3: TLabel
      Left = 351
      Top = 6
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object SpeedButton1: TSpeedButton
      Left = 478
      Top = 24
      Width = 81
      Height = 31
      Caption = 'Adicionar'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 27
      Width = 250
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        'Dinheiro'
        'Pix'
        'Cart'#227'o de D'#233'bito'
        'Cart'#227'o de Cr'#233'dito'
        'Boleto'
        'Ticket')
    end
    object SpinEdit1: TSpinEdit
      Left = 272
      Top = 26
      Width = 73
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
    end
    object Edit1: TEdit
      Left = 351
      Top = 25
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Edit1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1041
    Height = 352
    Align = alClient
    TabOrder = 1
    ExplicitTop = 191
    ExplicitWidth = 710
    ExplicitHeight = 471
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 1039
      Height = 88
      Align = alTop
      Columns = <
        item
          Caption = 'FORMA DINHEIRO'
        end
        item
        end
        item
        end
        item
        end>
      TabOrder = 0
    end
  end
end
