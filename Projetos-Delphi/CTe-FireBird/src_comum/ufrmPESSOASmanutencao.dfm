inherited frmPESSOASmanutencao: TfrmPESSOASmanutencao
  Caption = 'frmPESSOASmanutencao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    inherited pnlNavigator: TPanel
      inherited navDefault: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited dbGrid: TJvDBGrid
    Left = 38
    Top = 24
    DataSource = dtsDefault
    Columns = <
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONEFIXO'
        Title.Caption = 'Telefone'
        Width = 110
        Visible = True
      end>
  end
  inherited qryDefault: TFDQuery
    BeforeOpen = qryDefaultBeforeOpen
    SQL.Strings = (
      'SELECT'
      '  PESSOA.ID_PESSOA,'
      '  PESSOA.RAZAOSOCIAL,'
      '  PESSOA.CPF_CNPJ,'
      '  CASE PESSOA.id_ativo'
      '    WHEN '#39'1'#39' THEN '#39'Ativo'#39
      '    WHEN '#39'0'#39' THEN '#39'Bloqueado'#39
      '  END AS ID_SITUACAO,'
      '  PESSOA.TELEFONEFIXO,'
      '  PESSOA.TELEFONETRABALHO,'
      '  PESSOA.CELULAR,'
      '  CASE PESSOA.ID_PRODUTOR'
      '    WHEN 0 THEN '#39'N'#195'O'#39
      '    WHEN 1 THEN '#39'SIM'#39
      '  END AS ID_PRODUTOR,'
      '  CASE PESSOA.ID_TRANSPORTADORA'
      '    WHEN 0 THEN '#39'N'#195'O'#39
      '    WHEN 1 THEN '#39'SIM'#39
      '  END AS ID_TRANSPORTADORA'
      'FROM'
      '  PESSOA'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 144
    Top = 201
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDefaultID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryDefaultCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryDefaultID_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SITUACAO'
      Origin = 'ID_SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object qryDefaultTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      FixedChar = True
      Size = 15
    end
    object qryDefaultTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      FixedChar = True
      Size = 15
    end
    object qryDefaultCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      FixedChar = True
      Size = 15
    end
    object qryDefaultID_PRODUTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryDefaultID_TRANSPORTADORA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabPESSOAS
  end
end
