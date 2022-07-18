object FrmReport: TFrmReport
  Left = 0
  Top = 0
  Caption = 'Report'
  ClientHeight = 490
  ClientWidth = 827
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
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = FrmCurvaABC.DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 78
      AutoSize = True
      BandType = btHeader
      object RLLEmpresa: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        Align = faTop
        Alignment = taCenter
        Caption = 'Nome da Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLTitulo: TRLLabel
        Left = 0
        Top = 18
        Width = 718
        Height = 44
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio Curva ABC - Venda Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 62
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 116
      Width = 718
      Height = 22
      BandType = btColumnHeader
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 65
        Height = 22
        Align = faLeft
        AutoSize = False
        Caption = 'ID'
      end
      object RLLabel3: TRLLabel
        Left = 65
        Top = 0
        Width = 427
        Height = 22
        Align = faClient
        AutoSize = False
        Caption = 'Nome do Produto'
      end
      object RLLabel4: TRLLabel
        Left = 492
        Top = 0
        Width = 75
        Height = 22
        Align = faRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl Vendido'
      end
      object RLLabel5: TRLLabel
        Left = 567
        Top = 0
        Width = 74
        Height = 22
        Align = faRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percentual'
      end
      object RLLabel6: TRLLabel
        Left = 641
        Top = 0
        Width = 77
        Height = 22
        Align = faRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acumulado'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 138
      Width = 718
      Height = 193
      DataFields = 'classe'
      BeforePrint = RLGroup1BeforePrint
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 34
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel7: TRLLabel
          Left = 0
          Top = 1
          Width = 59
          Height = 33
          Align = faLeft
          AutoSize = False
          Caption = 'Classe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 59
          Top = 1
          Width = 152
          Height = 33
          Align = faLeft
          AutoSize = False
          DataField = 'classe'
          DataSource = FrmCurvaABC.DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 15
        AutoSize = True
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 65
          Height = 15
          AutoSize = False
          DataField = 'id_produto'
          DataSource = FrmCurvaABC.DS
          Holder = RLLabel2
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 65
          Top = 0
          Width = 427
          Height = 15
          AutoSize = False
          DataField = 'nome_produto'
          DataSource = FrmCurvaABC.DS
          Holder = RLLabel3
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 492
          Top = 0
          Width = 75
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'valor_vendido'
          DataSource = FrmCurvaABC.DS
          DisplayMask = '##0,0.00'
          Holder = RLLabel4
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 567
          Top = 0
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'percentual'
          DataSource = FrmCurvaABC.DS
          DisplayMask = '0,0.00%'
          Holder = RLLabel5
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 641
          Top = 0
          Width = 77
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'perc_acumulado'
          DataSource = FrmCurvaABC.DS
          DisplayMask = '0,0.00%'
          Holder = RLLabel6
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 49
        Width = 718
        Height = 18
        AutoSize = True
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 492
          Top = 2
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'valor_vendido'
          DataSource = FrmCurvaABC.DS
          DisplayMask = '##0,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLLabel4
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 567
          Top = 2
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'percentual'
          DataSource = FrmCurvaABC.DS
          DisplayMask = '0,0.00%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Holder = RLLabel5
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 331
      Width = 718
      Height = 18
      AutoSize = True
      BandType = btSummary
      object RLDBResult4: TRLDBResult
        Left = 492
        Top = 2
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'valor_vendido'
        DataSource = FrmCurvaABC.DS
        DisplayMask = '##0,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Holder = RLLabel4
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 567
        Top = 2
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'percentual'
        DataSource = FrmCurvaABC.DS
        DisplayMask = '0,0.00%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Holder = RLLabel5
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 248
    Top = 376
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 344
    Top = 384
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 384
    Top = 376
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 440
    Top = 384
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 488
    Top = 384
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 552
    Top = 384
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 616
    Top = 384
  end
end
