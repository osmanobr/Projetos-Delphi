inherited frmTRANSPmanutencao: TfrmTRANSPmanutencao
  Caption = 'Transportadoras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    inherited pnlNavigator: TPanel
      inherited labNavigator: TJvLabel
        Height = 14
      end
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
        FieldName = 'CNPJ'
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
      '  TRANSPORTADORA.ID_TRANSPORTADORA,'
      '  TRANSPORTADORA.ID_CODIGO,'
      '  TRANSPORTADORA.RAZAOSOCIAL,'
      '  TRANSPORTADORA.CNPJ,'
      '  CASE TRANSPORTADORA.id_ativo'
      '    WHEN '#39'1'#39' THEN '#39'Ativo'#39
      '    WHEN '#39'0'#39' THEN '#39'Bloqueado'#39
      '  END AS ID_SITUACAO,'
      '  TRANSPORTADORA.TELEFONEFIXO'
      'FROM'
      '  TRANSPORTADORA'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDefaultID_TRANSPORTADORA: TLargeintField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object qryDefaultRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryDefaultCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      OnGetText = TFieldGetCPFCNPJFormat
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
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabTRANSPORTADORA
  end
end
