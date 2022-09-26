inherited frmCTEcancela: TfrmCTEcancela
  Caption = 'Cancelamento do CT-e'
  ClientHeight = 304
  ClientWidth = 672
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Left = 3
    Top = 268
    Width = 666
    Align = alBottom
    inherited btnCancelar: TJvSpeedButton
      Left = 553
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 437
    end
  end
  object memJustificativa: TMemo [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 666
    Height = 259
    Align = alClient
    MaxLength = 1000
    ScrollBars = ssBoth
    TabOrder = 1
    WantReturns = False
  end
  object updCancelado: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE CTE'
      'SET ID_SITUACAO            = '#39'C'#39','
      '    XML_CANC_DATAHORA      = :XML_CANC_DATAHORA,'
      '    XML_CANC_PROTOCOLO     = :XML_CANC_PROTOCOLO,'
      '    XML_CANC_STRING        = :XML_CANC_STRING,'
      '    XML_STATUS_CODIGO      = :XML_STATUS_CODIGO,'
      '    XML_XMOTIVO            = :XML_XMOTIVO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_CTE = :ID_CTE) AND (ID_' +
        'SERIE = :ID_SERIE);')
    Left = 240
    Top = 193
    ParamData = <
      item
        Name = 'XML_CANC_DATAHORA'
        ParamType = ptInput
      end
      item
        Name = 'XML_CANC_PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'XML_CANC_STRING'
        ParamType = ptInput
      end
      item
        Name = 'XML_STATUS_CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'XML_XMOTIVO'
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
