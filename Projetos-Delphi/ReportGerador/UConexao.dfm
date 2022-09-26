object FrmConexao: TFrmConexao
  Left = 0
  Top = 0
  Caption = 'Conex'#227'o'
  ClientHeight = 274
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 4
    Caption = 'CONEX'#195'O'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15921906
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 233
    Height = 214
    Align = alLeft
    BorderWidth = 4
    TabOrder = 1
    ExplicitHeight = 258
    object Label1: TLabel
      Left = 5
      Top = 152
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Server'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = -32
      ExplicitTop = 202
      ExplicitWidth = 265
    end
    object Label4: TLabel
      Left = 5
      Top = 54
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Driver Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = -32
      ExplicitTop = 107
      ExplicitWidth = 265
    end
    object Label6: TLabel
      Left = 5
      Top = 5
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Conection Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = -32
      ExplicitTop = 58
      ExplicitWidth = 265
    end
    object Label7: TLabel
      Left = 5
      Top = 103
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Driver ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = -32
      ExplicitTop = 155
      ExplicitWidth = 265
    end
    object Edit1: TEdit
      Left = 5
      Top = 174
      Width = 223
      Height = 27
      Hint = 'Digite o IP do servidor de banco de dados'
      Align = alTop
      TabOrder = 0
      ExplicitLeft = -32
      ExplicitTop = 226
      ExplicitWidth = 265
    end
    object CBDriver: TComboBox
      Left = 5
      Top = 76
      Width = 223
      Height = 27
      Hint = 'Selecione o driver de conex'#227'o'
      Align = alTop
      TabOrder = 1
      Text = 'CBDriver'
      ExplicitLeft = -32
      ExplicitTop = 131
      ExplicitWidth = 265
    end
    object Edit5: TEdit
      Left = 5
      Top = 27
      Width = 223
      Height = 27
      Hint = 'Digite um nome para a conex'#227'o'
      Align = alTop
      TabOrder = 2
      ExplicitLeft = -32
      ExplicitTop = 82
      ExplicitWidth = 265
    end
    object ComboBox1: TComboBox
      Left = 5
      Top = 125
      Width = 223
      Height = 27
      Hint = 'Selecione o ID da conex'#227'o'
      Align = alTop
      TabOrder = 3
      Text = 'CBDriver'
      ExplicitLeft = -32
      ExplicitTop = 179
      ExplicitWidth = 265
    end
  end
  object Panel3: TPanel
    Left = 233
    Top = 41
    Width = 233
    Height = 214
    Align = alLeft
    BorderWidth = 4
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 49
    ExplicitHeight = 410
    object Label2: TLabel
      Left = 5
      Top = 103
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = 6
      ExplicitTop = 158
    end
    object Label5: TLabel
      Left = 5
      Top = 5
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Port'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = -32
      ExplicitTop = 58
      ExplicitWidth = 265
    end
    object Label3: TLabel
      Left = 5
      Top = 54
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = 10
      ExplicitTop = 62
    end
    object Label8: TLabel
      Left = 5
      Top = 152
      Width = 223
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = 6
      ExplicitTop = 215
    end
    object Edit2: TEdit
      Left = 5
      Top = 125
      Width = 223
      Height = 27
      Hint = 'Digite o nome do usu'#225'rio do banco de dados'
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 174
    end
    object Edit3: TEdit
      Left = 5
      Top = 27
      Width = 223
      Height = 27
      Hint = 'Digite a porta de conex'#227'o do seu banco de dados'
      Align = alTop
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 5
      Top = 76
      Width = 223
      Height = 27
      Hint = 'Digite o nome do banco de dados'
      Align = alTop
      TabOrder = 2
      ExplicitLeft = 10
      ExplicitTop = 84
    end
    object Edit6: TEdit
      Left = 5
      Top = 174
      Width = 223
      Height = 25
      Hint = 'Digite a senha do  banco de dados'
      Align = alTop
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = 'u'
      TabOrder = 3
    end
  end
  object Panel5: TPanel
    Left = 466
    Top = 41
    Width = 194
    Height = 214
    Align = alClient
    BorderWidth = 4
    TabOrder = 3
    ExplicitLeft = 241
    ExplicitTop = 49
    ExplicitWidth = 233
    ExplicitHeight = 410
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 5
      Width = 184
      Height = 33
      Align = alTop
      Caption = 'Connect'
      ExplicitLeft = 16
      ExplicitTop = 32
      ExplicitWidth = 41
    end
    object Label9: TLabel
      Left = 5
      Top = 38
      Width = 184
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlBottom
      ExplicitLeft = 6
      ExplicitTop = 215
      ExplicitWidth = 223
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 255
    Width = 660
    Height = 19
    Panels = <
      item
        Text = 'Modulo'
        Width = 200
      end
      item
        Text = 'Modulo'
        Width = 200
      end>
    ExplicitLeft = 5
    ExplicitTop = 229
    ExplicitWidth = 223
  end
end
