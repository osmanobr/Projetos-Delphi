object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FrmGeraReport'
  ClientHeight = 598
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 73
    Width = 916
    Height = 176
    Align = alTop
    Caption = ' Cabe'#231'alho '
    TabOrder = 0
    ExplicitLeft = 91
    ExplicitTop = 74
    object Label8: TLabel
      Left = 16
      Top = 62
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label12: TLabel
      Left = 565
      Top = 57
      Width = 19
      Height = 13
      Caption = 'SQL'
    end
    object Label15: TLabel
      Left = 189
      Top = 62
      Width = 29
      Height = 13
      Caption = 'Filtros'
    end
    object SpeedButton1: TSpeedButton
      Left = 832
      Top = 76
      Width = 71
      Height = 84
      OnClick = SpeedButton1Click
    end
    object CLBPai: TCheckListBox
      Left = 16
      Top = 76
      Width = 167
      Height = 84
      OnClickCheck = CLBPaiClickCheck
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 13
      Top = 30
      Width = 148
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Tab_empresa'
      Items.Strings = (
        'Tab_empresa')
    end
    object Memo1: TMemo
      Left = 563
      Top = 76
      Width = 262
      Height = 84
      Lines.Strings = (
        'SELECT* FROM tb_empresa;')
      TabOrder = 2
    end
    object ComboBox7: TComboBox
      Left = 189
      Top = 76
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 7
      ParentFont = False
      TabOrder = 3
      Text = 'cnpj'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular'
        'cnpj')
    end
    object ComboBox8: TComboBox
      Left = 362
      Top = 76
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'IGUAL'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'MENOR OU IGUAL'
        'MAIOR OU IGUAL'
        'DIFERENTE')
    end
    object Edit4: TEdit
      Left = 436
      Top = 76
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '123654125411'
    end
    object ComboBox9: TComboBox
      Left = 189
      Top = 106
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox10: TComboBox
      Left = 362
      Top = 106
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit5: TEdit
      Left = 436
      Top = 106
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object ComboBox11: TComboBox
      Left = 189
      Top = 136
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox12: TComboBox
      Left = 362
      Top = 136
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit6: TEdit
      Left = 436
      Top = 136
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 249
    Width = 916
    Height = 349
    Align = alClient
    Caption = ' Corpo '
    TabOrder = 1
    ExplicitLeft = 16
    ExplicitTop = 279
    ExplicitWidth = 817
    ExplicitHeight = 322
    object Label9: TLabel
      Left = 16
      Top = 63
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label7: TLabel
      Left = 191
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Id Pai'
    end
    object Label13: TLabel
      Left = 565
      Top = 63
      Width = 19
      Height = 13
      Caption = 'SQL'
    end
    object Label16: TLabel
      Left = 189
      Top = 63
      Width = 29
      Height = 13
      Caption = 'Filtros'
    end
    object Label10: TLabel
      Left = 16
      Top = 217
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label11: TLabel
      Left = 189
      Top = 171
      Width = 27
      Height = 13
      Caption = 'Id Pai'
    end
    object Label14: TLabel
      Left = 565
      Top = 212
      Width = 19
      Height = 13
      Caption = 'SQL'
    end
    object Label17: TLabel
      Left = 189
      Top = 217
      Width = 29
      Height = 13
      Caption = 'Filtros'
    end
    object ComboBox3: TComboBox
      Left = 16
      Top = 33
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Tab_venda'
      Items.Strings = (
        'Tab_venda')
    end
    object CheckListBox2: TCheckListBox
      Left = 16
      Top = 77
      Width = 167
      Height = 84
      OnClickCheck = CheckListBox2ClickCheck
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      Items.Strings = (
        'id'
        'id_empresa'
        'data'
        'cliente'
        'vendedor')
      ParentFont = False
      TabOrder = 1
    end
    object ComboBox5: TComboBox
      Left = 189
      Top = 33
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'id_empresa')
    end
    object Memo2: TMemo
      Left = 563
      Top = 77
      Width = 262
      Height = 84
      Lines.Strings = (
        'SELECT* FROM tb_venda;')
      TabOrder = 3
    end
    object ComboBox13: TComboBox
      Left = 189
      Top = 77
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox14: TComboBox
      Left = 362
      Top = 77
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit7: TEdit
      Left = 436
      Top = 77
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = 'ViaERP'
    end
    object ComboBox15: TComboBox
      Left = 189
      Top = 107
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox16: TComboBox
      Left = 362
      Top = 107
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 8
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit8: TEdit
      Left = 436
      Top = 107
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = 'ViaERP'
    end
    object ComboBox17: TComboBox
      Left = 189
      Top = 137
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox18: TComboBox
      Left = 362
      Top = 137
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 11
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit9: TEdit
      Left = 436
      Top = 137
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Text = 'ViaERP'
    end
    object ComboBox4: TComboBox
      Left = 16
      Top = 187
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 13
      Text = 'Tab_venda_itens'
      Items.Strings = (
        'Tab_venda_itens')
    end
    object CheckListBox3: TCheckListBox
      Left = 16
      Top = 231
      Width = 167
      Height = 84
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 18
      Items.Strings = (
        'id'
        'id_venda'
        'id_produto'
        'nome_produto'
        'vl_unitario'
        'quantidade'
        'vl_desconto'
        'vl_total')
      ParentFont = False
      TabOrder = 14
    end
    object ComboBox6: TComboBox
      Left = 189
      Top = 187
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 15
      Text = 'id_venda'
      Items.Strings = (
        'id_venda')
    end
    object Memo3: TMemo
      Left = 563
      Top = 231
      Width = 262
      Height = 84
      Lines.Strings = (
        'SELECT* FROM tb-venda_itens')
      TabOrder = 16
    end
    object ComboBox19: TComboBox
      Left = 189
      Top = 231
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 17
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox20: TComboBox
      Left = 362
      Top = 231
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 18
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit10: TEdit
      Left = 436
      Top = 231
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      Text = 'ViaERP'
    end
    object ComboBox21: TComboBox
      Left = 189
      Top = 261
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 20
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox22: TComboBox
      Left = 362
      Top = 261
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 21
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit11: TEdit
      Left = 436
      Top = 261
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      Text = 'ViaERP'
    end
    object ComboBox23: TComboBox
      Left = 189
      Top = 291
      Width = 167
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 23
      Text = 'id'
      Items.Strings = (
        'id'
        'razao'
        'fantasia'
        'endereco'
        'telefone'
        'gerente'
        'celular')
    end
    object ComboBox24: TComboBox
      Left = 362
      Top = 291
      Width = 68
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 24
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'IGUAL'
        'MAIOR'
        'MENOR'
        'DIFERENTE')
    end
    object Edit12: TEdit
      Left = 436
      Top = 291
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      Text = 'ViaERP'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 916
    Height = 73
    Align = alTop
    Caption = ' Conex'#227'o '
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Database'
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label3: TLabel
      Left = 296
      Top = 16
      Width = 22
      Height = 13
      Caption = 'User'
    end
    object Label4: TLabel
      Left = 424
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 32
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'postgres'
      Items.Strings = (
        'postgres')
    end
    object Edit1: TEdit
      Left = 168
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '192.168.10.210'
    end
    object Edit2: TEdit
      Left = 296
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'ViaERP'
    end
    object Edit3: TEdit
      Left = 424
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '8'
      TabOrder = 3
      Text = 'Via7216'
    end
    object Button3: TButton
      Left = 705
      Top = 17
      Width = 62
      Height = 41
      Caption = 'Abrir'
      TabOrder = 4
    end
    object Button4: TButton
      Left = 773
      Top = 17
      Width = 62
      Height = 41
      Caption = 'Salvar'
      TabOrder = 5
    end
    object Button5: TButton
      Left = 841
      Top = 17
      Width = 62
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 6
    end
    object Button6: TButton
      Left = 637
      Top = 17
      Width = 62
      Height = 41
      Caption = 'Novo'
      TabOrder = 7
    end
  end
end
