object Modulo: TModulo
  OldCreateOrder = False
  Height = 503
  Width = 546
  object Conexao: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    Left = 31
    Top = 70
  end
  object Qr1: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select* from vendedor;')
    Left = 247
    Top = 30
  end
  object PGLink: TFDPhysPgDriverLink
    Left = 32
    Top = 16
  end
  object Qr2: TFDQuery
    Connection = Conexao
    Left = 247
    Top = 78
  end
  object Qr3: TFDQuery
    Connection = Conexao
    Left = 247
    Top = 134
  end
  object Qr4: TFDQuery
    Connection = Conexao
    Left = 247
    Top = 190
  end
  object QR5: TFDQuery
    Connection = Conexao
    Left = 247
    Top = 238
  end
  object DS1: TDataSource
    DataSet = Qr1
    Left = 288
    Top = 32
  end
  object DS2: TDataSource
    DataSet = Qr2
    Left = 288
    Top = 80
  end
  object DS3: TDataSource
    DataSet = Qr3
    Left = 288
    Top = 136
  end
  object DS4: TDataSource
    DataSet = Qr4
    Left = 280
    Top = 192
  end
  object DS5: TDataSource
    DataSet = QR5
    Left = 288
    Top = 240
  end
  object QrEmpresas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select* from empresas;')
    Left = 239
    Top = 286
  end
  object DSEmpresas: TDataSource
    DataSet = QrEmpresas
    Left = 296
    Top = 288
  end
end
