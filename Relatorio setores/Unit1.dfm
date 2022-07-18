object FrmArvoreDepartamentos: TFrmArvoreDepartamentos
  Left = 0
  Top = 0
  Caption = 'FrmArvoreDepartamentos'
  ClientHeight = 467
  ClientWidth = 879
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
    Left = 8
    Top = 5
    Width = 69
    Height = 13
    Caption = 'Departamento'
  end
  object Label2: TLabel
    Left = 367
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Setor'
  end
  object Label3: TLabel
    Left = 695
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Se'#231#227'o'
  end
  object Label4: TLabel
    Left = 188
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label5: TLabel
    Left = 532
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Subgrupo'
  end
  object SpeedButton1: TSpeedButton
    Left = 695
    Top = 51
    Width = 167
    Height = 37
    Caption = 'Executar'
    OnClick = SpeedButton1Click
  end
  object Label6: TLabel
    Left = 16
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Ordenar'
  end
  object CBDepartamento: TComboBox
    Left = 8
    Top = 24
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = 'TODOS'
    OnSelect = CBDepartamentoSelect
    Items.Strings = (
      'TODOS')
  end
  object CBSetor: TComboBox
    Left = 352
    Top = 24
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'TODOS'
    OnSelect = CBSetorSelect
    Items.Strings = (
      'TODOS')
  end
  object CBSecao: TComboBox
    Left = 695
    Top = 24
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'TODOS'
    OnSelect = CBSetorSelect
    Items.Strings = (
      'TODOS')
  end
  object CBGrupo: TComboBox
    Left = 180
    Top = 24
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'TODOS'
    OnSelect = CBSetorSelect
    Items.Strings = (
      'TODOS')
  end
  object CBSubgrupo: TComboBox
    Left = 524
    Top = 24
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'TODOS'
    OnSelect = CBSetorSelect
    Items.Strings = (
      'TODOS')
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 94
    Width = 868
    Height = 365
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Codigo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Produto'
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque_atual'
        Title.Caption = 'Estoque'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco_venda'
        Title.Caption = 'Pre'#231'o Venda'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Total'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'departamento'
        Title.Caption = 'Departamento'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'setor'
        Title.Caption = 'Setor'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'secao'
        Title.Caption = 'Secao'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Title.Caption = 'Grupo'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subgrupo'
        Title.Caption = 'Subgrupo'
        Width = 116
        Visible = True
      end>
  end
  object CBOrdem: TComboBox
    Left = 8
    Top = 64
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'ID'
    OnSelect = CBSetorSelect
    Items.Strings = (
      'ID'
      'PRODUTO')
  end
  object zqrCMD: TZReadOnlyQuery
    Connection = BD1
    SortedFields = 'nome'
    SQL.Strings = (
      'SELECT '
      '  C.nome,'
      #9'C.ID,'
      #9'C.estoque_atual,'
      #9'C.id_grupo AS id_Dep,'
      #9'd.nome AS departamento,'
      #9'e.descricao AS setor,'
      #9'e.ID AS id_setor,'
      #9'f.descricao AS secao,'
      #9'f.ID AS id_secao,'
      #9'G.descricao AS grupo,'
      #9'G.ID AS id_grupo,'
      #9'h.descricao AS subgrupo,'
      #9'h.ID AS id_subgrupo,'
      #9'C.preco_venda,'
      #9'( C.estoque_atual * C.preco_venda ) AS total '
      'FROM'
      #9'produtos'
      #9'C LEFT JOIN grupo_produto d ON ( d.ID = C.id_grupo )'
      #9'LEFT JOIN setor e ON ( e.ID = C.id_setor )'
      #9'LEFT JOIN secao f ON ( f.ID = C.id_secao )'
      #9'LEFT JOIN grupo G ON ( G.ID = C.id_grupos )'
      
        #9'LEFT JOIN subgrupo h ON ( h.ID = C.id_subgrupo ) /*WHERE  c.id_' +
        'grupo >= 0*/'
      #9
      #9
      
        #9'-- select DISTINCT departamento from departamentos order by dep' +
        'artamento')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 288
    Top = 80
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
    Database = 'S1335'
    User = 'ViaERP'
    Password = 'Via7216'
    Protocol = 'postgresql'
    LibraryLocation = 'D:\ViaERP\libpq.dll'
    Left = 216
    Top = 91
  end
  object DataSource1: TDataSource
    DataSet = zqrCMD
    Left = 376
    Top = 96
  end
end
