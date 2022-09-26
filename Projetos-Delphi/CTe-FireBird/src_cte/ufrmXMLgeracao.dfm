inherited frmXMLgeracao: TfrmXMLgeracao
  Caption = 'E-Mail'
  ClientHeight = 238
  ClientWidth = 430
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel [0]
    AlignWithMargins = True
    Left = 18
    Top = 19
    Width = 132
    Height = 13
    Caption = 'E-Mail do Escrit'#243'rio Cont'#225'bil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [1]
    AlignWithMargins = True
    Left = 18
    Top = 59
    Width = 36
    Height = 13
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited pnlComandos: TPanel
    Left = 3
    Top = 202
    Width = 424
    Align = alBottom
    inherited btnCancelar: TJvSpeedButton
      Left = 311
      Caption = 'Fechar'
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 195
      Caption = 'Enviar'
    end
  end
  object chkCONFIRMACAO: TCheckBox [3]
    Left = 18
    Top = 111
    Width = 215
    Height = 17
    Caption = 'Requisitar confirma'#231#227'o de leitura'
    TabOrder = 2
  end
  object edtEMAILdestinatario: TJvMaskEdit [4]
    Left = 18
    Top = 32
    Width = 395
    Height = 21
    TabOrder = 1
    Text = 'edtEMAILdestinatario'
  end
  object edtDataInicial: TJvDateEdit [5]
    Left = 18
    Top = 72
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 3
  end
  object edtDataFinal: TJvDateEdit [6]
    Left = 145
    Top = 72
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 4
  end
  object chkAnexarPDF: TCheckBox [7]
    Left = 18
    Top = 127
    Width = 215
    Height = 17
    Caption = 'Anexar Arquivo PDF'
    TabOrder = 5
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 472
    Top = 243
  end
  object qryXML_CTE: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CTE.XML_STRING,'
      '  CTE.XML_CHAVE'
      'FROM'
      '  CTE'
      'WHERE'
      '  1=1'
      '  AND CTE.ID_SITUACAO = '#39'E'#39
      '  AND CAST(CTE.DT_HORA_EMISSAO AS DATE) BETWEEN :I AND :F;')
    Left = 320
    Top = 48
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qryXML_CTEXML_STRING: TMemoField
      FieldName = 'XML_STRING'
      Origin = 'XML_STRING'
      BlobType = ftMemo
    end
    object qryXML_CTEXML_CHAVE: TStringField
      FieldName = 'XML_CHAVE'
      Origin = 'XML_CHAVE'
      FixedChar = True
      Size = 44
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'zip'
    Filter = 'Arquivos de backup (*.zip)|*.zip'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Criar novo arquivo de backup'
    Left = 175
    Top = 160
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 240
    Top = 128
  end
  object ACBrCTe: TACBrCTe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DACTE = ACBrCTeDACTeRL
    Left = 208
    Top = 96
  end
  object ACBrCTeDACTeRL: TACBrCTeDACTeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrCTE = ACBrCTe
    ImprimirHoraSaida = False
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    ExibeResumoCanhoto = False
    EPECEnviado = False
    ImprimeDescPorc = False
    PrintDialog = True
    Left = 224
    Top = 112
  end
end
