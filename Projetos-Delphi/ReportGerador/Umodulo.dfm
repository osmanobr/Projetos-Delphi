object frmDataModulo: TfrmDataModulo
  OldCreateOrder = False
  Height = 416
  Width = 336
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    Left = 56
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 56
    Top = 104
  end
  object FDCommand1: TFDCommand
    Connection = FDConnection1
    Left = 248
    Top = 48
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection1
    Left = 248
    Top = 112
  end
end
