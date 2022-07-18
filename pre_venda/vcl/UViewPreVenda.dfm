object FrmPreVenda: TFrmPreVenda
  Left = 0
  Top = 0
  Caption = 'Pr'#233' Venda'
  ClientHeight = 680
  ClientWidth = 1180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1180
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object LblTitulo: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 248
      Height = 67
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OR'#199'AMENTO: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 71
    end
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 1104
      Top = 3
      Width = 73
      Height = 67
      Align = alRight
      ExplicitLeft = 88
      ExplicitTop = 8
      ExplicitHeight = 62
    end
    object EdtImput: TEdit
      AlignWithMargins = True
      Left = 257
      Top = 3
      Width = 841
      Height = 67
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Calibri Light'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Localizar Or'#231'amento'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1180
    Height = 533
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object PCPreVenda: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1174
      Height = 527
      ActivePage = TSOrcamento
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      TabPosition = tpBottom
      OnChange = PCPreVendaChange
      object TSOrcamento: TTabSheet
        Caption = 'Or'#231'amento'
        object Panel3: TPanel
          Left = 300
          Top = 0
          Width = 866
          Height = 496
          Align = alClient
          TabOrder = 0
          object Label77: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 858
            Height = 26
            Align = alTop
            Caption = 'Lista de Itens'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 114
          end
          object Label98: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 305
            Width = 858
            Height = 26
            Align = alBottom
            Caption = 'Lista de Servi'#231'os'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 142
          end
          object DBGrid5: TDBGrid
            Left = 1
            Top = 33
            Width = 864
            Height = 269
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
          object Panel13: TPanel
            Left = 1
            Top = 440
            Width = 864
            Height = 55
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 1
            BorderStyle = bsSingle
            TabOrder = 1
          end
          object DBGrid9: TDBGrid
            Left = 1
            Top = 334
            Width = 864
            Height = 106
            Align = alBottom
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
        end
        object PnlMenuOrcamento: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 496
          Align = alLeft
          TabOrder = 1
          object SBMenuOrcamento: TSpeedButton
            Left = 1
            Top = 1
            Width = 298
            Height = 40
            Align = alTop
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000010000
              0002000000040000000500000006000000060000000600000006000000060000
              0006000000060000000600000006000000060000000600000006000000060000
              0006000000060000000600000006000000060000000600000006000000060000
              0006000000060000000600000006000000040000000200000001000000020000
              00060000000E0000001400000016000000170000001700000017000000170000
              0017000000180000001800000018000000180000001800000018000000180000
              0018000000180000001800000018000000180000001800000018000000190000
              00190000001900000018000000160000000F0000000700000002000000030000
              000E79574CC0A97A6AFFA97A6AFFA9796AFFA87A6AFFA97A69FFA8796AFFA87A
              69FFA8796AFFA87969FFA87969FFA87969FFA87969FFA77868FFA77869FFA778
              69FFA87868FFA77868FFA77768FFA77768FFA87868FFA77768FFA77768FFA777
              67FFA77767FFA77767FFA77667FF78564AC10000000F00000004000000050000
              0013AA7B6BFFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2EFFFF9F2EFFFF9F3
              EFFFF9F2EFFFF8F2EEFFF8F2EFFFF8F2EFFFF8F2EFFFF8F2EEFFF8F2EEFFF8F1
              EEFFF8F1EEFFF8F2EEFFF7F2EDFFF7F2EDFFF7F2EDFFF7F1EDFFF7F1EDFFF7F1
              ECFFF7F1ECFFF7F1EDFFF7F0ECFFA77767FF0000001500000005000000050000
              0015AA7C6CFFFAF3F0FFF7F0ECFFF7F0EBFFF7EFECFFF7F0EBFFF7F0EBFFF7EF
              EBFFF7EFEBFFF7EFEBFFF6EFEBFFF7EFEAFFF7EFEAFFF6EFEBFFF6EFEAFFF6EF
              EAFFF7EFEAFFF6EFEAFFF7EEEAFFF6EFEAFFF7EEEAFFF7EFEAFFF7EFEAFFF6EE
              EAFFF7EEE9FFF6EEEAFFF7F1EDFFA77868FF0000001700000006000000050000
              0015AB7C6EFFFAF4F1FFF8F1ECFFF7F0ECFFF8F0ECFFF7F0EBFFF7F0EBFFF7F0
              ECFFF7F0EBFFF7F0EBFFF7F0EBFFF7EFEBFFF7EFEBFFF7EFEBFFF6EFEBFFF7EF
              EBFFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF7EEEAFFF6EEEAFFF6EFEAFFF6EE
              E9FFF6EEE9FFF7EEEAFFF8F2EEFFA87869FF0000001700000006000000050000
              0014AC7E6EFFFAF5F1FFF8F0ECFFF7F1EDFFC79567FFBE8250FFBF824FFFBF81
              4FFFBE824FFFBE824EFFBE814FFFBD824FFFBE814EFFBE814EFFBE804EFFBE80
              4EFFBD804DFFBD804DFFBD804DFFBD804DFFBC7F4DFFBD804DFFBC7F4DFFBD7F
              4CFFF6EFEAFFF6EEE9FFF8F2EEFFA87969FF0000001600000006000000050000
              0013AD7E6FFFF9F4F2FFF8F0EDFFF7F1EDFFC79769FFE6C399FFE2BB8CFFE2BB
              8CFFE1BA8CFFE1BA8CFFE2BA8CFFE1B98AFFE1B98AFFE1B98AFFE1B889FFE1B8
              89FFE0B88AFFE1B889FFE0B889FFE0B789FFE0B788FFE0B687FFE0B686FFBD80
              4DFFF7EFEAFFF6EEEAFFF8F2EEFFA97A6BFF0000001600000005000000050000
              0013AD7F70FFFAF5F2FFF8F0ECFFF8F0ECFFC8986AFFE6C69DFFDEB482FFDEB4
              81FFDEB382FFDEB381FFDDB481FFDEB481FFDEB280FFDDB280FFDDB280FFDEB1
              7FFFDEB17FFFDDB17FFFDEB17FFFDDB17FFFDDB17FFFDDB17FFFE1B98AFFBD82
              4FFFF6EFEAFFF6EFEAFFF8F3F0FFAA7A6CFF0000001500000005000000050000
              0012AD8071FFFAF6F3FFF8F1EDFFF8F0EDFFC9996CFFE8C8A0FFE0B584FFDFB5
              84FFDFB483FFDFB483FFDFB483FFDFB483FFDFB482FFDFB482FFDFB482FFDEB3
              82FFDEB482FFDEB382FFDEB381FFDDB281FFDEB280FFDEB380FFE1BB8DFFBE82
              50FFF7EFEAFFF7EFEAFFF9F3F0FFAA7B6CFF0000001500000005000000040000
              0012AF8272FFFAF6F3FFF8F1EDFFF8F2EDFFC99A6DFFEBD1ADFFEBD1ACFFEBD0
              ACFFEBD0ACFFEBD0ABFFEBD0ABFFEAD0AAFFEACEAAFFEBCFAAFFEACEA9FFEACE
              A8FFEBCDA8FFEACDA8FFEACCA7FFEACCA6FFEACCA6FFEACBA5FFEACBA5FFC083
              51FFF7F0EAFFF7F0EAFFF8F3F0FFAB7D6DFF0000001400000005000000040000
              0011AF8274FFFBF7F4FFF9F1EDFFF8F1EEFFCA9B6FFFCA9B6EFFC99A6EFFC99A
              6EFFC99A6DFFC9996DFFC9996CFFC9996CFFC9996BFFC8986BFFC8986AFFC897
              6AFFC8976AFFC89669FFC79669FFC79668FFC79568FFC79568FFC79467FFC794
              66FFF7F0EBFFF7EFEBFFF9F4F1FFAC7E6EFF0000001400000005000000040000
              0011B08374FFFBF6F4FFF8F2EEFFF8F2EEFFF9F1EEFFF8F2EDFFF8F1EEFFF8F1
              EEFFF8F1EEFFF8F1EDFFF8F1EDFFF8F0EDFFF8F1EDFFF8F0EDFFF8F0EDFFF8F0
              EDFFF7F0EDFFF8F0ECFFF8F0ECFFF7F0ECFFF8EFEBFFF7F0ECFFF7F0ECFFF7F0
              EBFFF7EFEBFFF7EFEBFFF9F5F1FFAC7F6FFF0000001300000005000000040000
              0010B18475FFFBF7F5FFF9F1EFFFF9F1EFFFCB9D71FFC48A59FFC38A59FFC38A
              59FFC38A58FFC38959FFC38A58FFC38A57FFC38957FFC28857FFC28957FFC288
              56FFC28856FFC28856FFC28856FFC28856FFC28755FFC18755FFC18655FFC187
              54FFF7F0ECFFF7F0EBFFFAF5F2FFAD806FFF0000001300000005000000040000
              0010B28677FFFBF8F6FFF9F2EEFFF9F2EFFFCB9E72FFECD4B2FFE8C9A1FFE8C9
              A1FFE7C9A0FFE8C9A0FFE8C8A0FFE7C8A0FFE8C79FFFE8C79FFFE7C79EFFE7C7
              9EFFE8C79EFFE7C69DFFE7C69DFFE7C79DFFE7C69CFFE6C59CFFE6C59BFFC287
              57FFF7F0ECFFF7F0ECFFFAF5F3FFAE8071FF0000001200000005000000040000
              000FB28778FFFCF8F6FFF9F2EFFFF9F2EFFFCB9F73FFEDD5B4FFE3BF91FFE3BF
              91FFE3BF90FFE3BF91FFE3BF90FFE3BE90FFE3BE8FFFE3BE8FFFE2BD8EFFE3BE
              8FFFE3BD8EFFE3BD8EFFE3BD8EFFE2BC8EFFE2BC8EFFE2BC8DFFE7C79EFFC288
              57FFF8F0ECFFF7F0ECFFFAF5F3FFAE8172FF0000001100000004000000040000
              000FB38879FFFCF9F7FFF9F3EFFFFAF2EFFFCC9F74FFEFD7B8FFE4C093FFE4C1
              92FFE4C092FFE4C092FFE4C092FFE4BF92FFE4BF92FFE4BF92FFE4BF91FFE4BF
              91FFE4BF90FFE4BF90FFE3BF8FFFE3BF90FFE3BE8FFFE3BF90FFE8C9A1FFC48A
              58FFF8F0ECFFF7F0ECFFFAF6F3FFAF8373FF0000001100000004000000030000
              000EB4897BFFFCF9F7FFF9F3F0FFF9F3F0FFCCA075FFF2DFC3FFF2DFC1FFF2DF
              C0FFF1DFC0FFF1DFC0FFF1DEBFFFF1DDBFFFF1DDBFFFF1DCBEFFF1DCBEFFF1DC
              BEFFF1DCBDFFF0DCBDFFF0DBBCFFF0DBBCFFF0DABCFFF0DABBFFF0DABCFFC48B
              5AFFF7F1ECFFF7F0ECFFFBF7F4FFB08375FF0000001000000004000000030000
              000DB58B7BFFFDF9F8FFFAF3F0FFF9F2EFFFCCA076FFCCA075FFCCA075FFCCA0
              75FFCCA075FFCC9F74FFCC9F74FFCC9F74FFCC9F74FFCC9F73FFCB9E73FFCB9E
              73FFCB9E72FFCB9E72FFCB9E72FFCB9E71FFCB9D71FFCB9D71FFCB9D71FFCB9C
              70FFF8F1EDFFF8F1EDFFFBF7F5FFB18576FF0000001000000004000000030000
              000DB68C7DFFFDF9F8FFF9F3F1FFFAF3F0FFF9F3EFFFF9F3EFFFFAF2EFFFF9F3
              EFFFFAF2EFFFF9F2EFFFF9F3EFFFF9F3EFFFF9F3EFFFF9F2EEFFF8F2EFFFF9F2
              EEFFF9F2EEFFF9F1EEFFF9F1EEFFF8F1EEFFF8F1EEFFF9F1EEFFF8F1EEFFF8F1
              EDFFF8F1EDFFF8F1EDFFFBF7F5FFB18676FF0000000F00000004000000030000
              000DB78D7FFFFDFAF8FFF9F3F1FFF9F3F0FFCDA177FFC89362FFC89262FFC892
              62FFC89262FFC89262FFC89261FFC89260FFC89160FFC79160FFC89160FFC791
              60FFC79060FFC7905FFFC7905FFFC78F5FFFC6905FFFC68F5EFFC78F5EFFC68E
              5EFFF9F1EEFFF8F1EDFFFBF8F5FFB38778FF0000000F00000004000000030000
              000CB88E80FFFDFAF9FFFAF4F0FFFAF3F1FFCDA277FFF2E0C5FFEED6B2FFEED6
              B2FFEED5B2FFEED5B2FFEED5B2FFEED5B1FFEDD4B1FFEDD4B1FFEDD4B1FFEDD4
              B1FFEDD4B1FFEDD4AFFFEDD4AFFFEDD3AFFFEDD3AFFFECD3AEFFECD3AEFFC790
              5FFFF8F1EEFFF9F1EDFFFBF8F6FFB38879FF0000000E00000004000000030000
              000BB99080FFFDFAF9FFF9F4F1FFFAF4F1FFCDA278FFF2E1C8FFE8CA9EFFE9C9
              9EFFE8C99EFFE8C99EFFE8C99EFFE8C99DFFE8C89DFFE8C99DFFE8C89CFFE8C8
              9CFFE7C89CFFE7C79CFFE8C79CFFE8C79CFFE7C89CFFE7C79BFFEDD4B1FFC891
              61FFF9F2EFFFF9F1EEFFFCF8F7FFB4897BFF0000000E00000003000000030000
              000BB99082FFFDFBFAFFFAF4F1FFFAF4F1FFCDA278FFF4E3CBFFE9CBA0FFE9CB
              9FFFE9CB9FFFE9CA9FFFE9CA9FFFE9CA9FFFE8CA9FFFE8CA9FFFE8CA9EFFE8CA
              9EFFE8C99EFFE8C99DFFE8C99DFFE8C99DFFE8C99DFFE7C99CFFEED6B2FFC892
              62FFF9F2EFFFF8F2EEFFFCF8F7FFB58A7BFF0000000D00000003000000030000
              000BBA9283FFFDFBFAFFFAF4F2FFFAF4F1FFCDA378FFF5E9D2FFF5E9D2FFF5E9
              D2FFF5E8D1FFF5E9D1FFF5E9D0FFF5E7D0FFF5E7D0FFF5E7D0FFF5E7D0FFF5E7
              D0FFF4E7CEFFF5E7CEFFF4E7CEFFF4E6CEFFF4E6CEFFF4E6CEFFF4E6CEFFC993
              63FFF9F2EFFFF9F1EEFFFCF9F8FFB68B7DFF0000000D00000003000000020000
              000ABC9384FFFEFBFAFFFBF5F2FFFBF4F2FFCDA379FFCDA379FFCDA379FFCDA3
              78FFCDA378FFCDA278FFCDA278FFCDA278FFCDA278FFCDA278FFCDA278FFCDA2
              78FFCDA277FFCDA277FFCDA277FFCDA277FFCDA177FFCDA177FFCDA176FFCCA1
              76FFF9F3EFFFF9F3EFFFFCF9F8FFB68C7EFF0000000C00000003000000020000
              0009BC9486FFFEFBFBFFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F1FFFAF4
              F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF3F1FFFAF4F1FFFAF3F1FFFAF3F1FFF9F3
              F0FFFAF3F0FFF9F3F0FFFAF3F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F2F0FFF9F3
              EFFFF9F2F0FFF9F2EFFFFDFAF8FFB88E7FFF0000000C00000003000000020000
              0009BD9587FFFDFCFBFFFAF5F2FFFAF5F2FFFBF4F2FFFAF5F2FFFAF4F2FFFAF4
              F2FFFAF4F1FFFAF4F2FFFAF4F1FFFAF3F1FFFAF4F2FFF9F3F1FFFAF3F1FFFAF3
              F1FFFAF3F1FFFAF3F0FFF9F3F0FFFAF3F1FFF9F3F0FFF9F3F0FFFAF3F0FFF9F3
              EFFFFAF2F0FFF9F3F0FFFDFAF9FFB98F81FF0000000B00000003000000020000
              0007BE9689FFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFDFCFBFFFEFCFBFFFDFC
              FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFBFAFFFEFBFBFFFDFBFBFFFDFBFAFFFDFB
              FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
              FAFFFDFBFAFFFDFBFAFFFDFBF9FFBA9082FF0000000900000002000000010000
              00058E7066C0BF9789FFBF9789FFBE9788FFBE9788FFBE9689FFBD9688FFBE96
              88FFBD9687FFBD9587FFBD9587FFBD9587FFBD9487FFBD9587FFBD9486FFBD94
              85FFBD9485FFBC9485FFBC9385FFBC9385FFBB9385FFBC9284FFBB9384FFBB92
              84FFBB9284FFBA9183FFBA9183FF8B6B61C10000000600000002000000010000
              0002000000050000000700000008000000080000000800000008000000080000
              0008000000080000000800000008000000080000000800000008000000090000
              0009000000090000000900000009000000090000000900000009000000090000
              0009000000090000000900000008000000060000000300000001000000000000
              0001000000010000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000010000000100000000}
            OnClick = SBMenuOrcamentoClick
            ExplicitWidth = 286
          end
          object DBGrid1: TDBGrid
            Left = 456
            Top = 27
            Width = 791
            Height = 249
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
          object PnlItensMenuOrcamento: TPanel
            Left = 1
            Top = 41
            Width = 298
            Height = 454
            Align = alClient
            TabOrder = 1
            Visible = False
            object Label76: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 290
              Height = 26
              Align = alTop
              Caption = 'Lista de Or'#231'amentos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 176
            end
            object GroupBox3: TGroupBox
              Left = 1
              Top = 230
              Width = 296
              Height = 223
              Align = alBottom
              Caption = ' Resumo '
              TabOrder = 0
              object Label43: TLabel
                Left = 224
                Top = 43
                Width = 49
                Height = 18
                Alignment = taRightJustify
                Caption = 'ABERTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 12
                Top = 43
                Width = 59
                Height = 18
                Caption = 'Situa'#231#227'o: '
              end
              object Label45: TLabel
                Left = 12
                Top = 62
                Width = 145
                Height = 18
                Caption = 'Matricula do Vendedor:'
              end
              object Label46: TLabel
                Left = 238
                Top = 62
                Width = 35
                Height = 18
                Alignment = taRightJustify
                Caption = '00012'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label62: TLabel
                Left = 12
                Top = 82
                Width = 90
                Height = 18
                Caption = 'Data Abertura:'
              end
              object Label63: TLabel
                Left = 203
                Top = 82
                Width = 70
                Height = 18
                Alignment = taRightJustify
                Caption = '01/07/2022'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label64: TLabel
                Left = 12
                Top = 102
                Width = 89
                Height = 18
                Caption = 'Data Validade:'
              end
              object Label65: TLabel
                Left = 203
                Top = 102
                Width = 70
                Height = 18
                Alignment = taRightJustify
                Caption = '01/08/2022'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label66: TLabel
                Left = 13
                Top = 20
                Width = 58
                Height = 18
                Caption = 'Terminal:'
              end
              object Label67: TLabel
                Left = 192
                Top = 20
                Width = 82
                Height = 18
                Alignment = taRightJustify
                Caption = '192.168.10.51'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label68: TLabel
                Left = 12
                Top = 122
                Width = 73
                Height = 18
                Caption = 'Valor Bruto:'
              end
              object Label69: TLabel
                Left = 248
                Top = 122
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label70: TLabel
                Left = 12
                Top = 140
                Width = 110
                Height = 18
                Caption = 'Desconto Cliente:'
              end
              object Label71: TLabel
                Left = 248
                Top = 140
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label72: TLabel
                Left = 12
                Top = 160
                Width = 116
                Height = 18
                Caption = 'Desconto Gerente:'
              end
              object Label73: TLabel
                Left = 248
                Top = 160
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label74: TLabel
                Left = 12
                Top = 181
                Width = 85
                Height = 18
                Caption = 'Valor Liquido:'
              end
              object Label75: TLabel
                Left = 248
                Top = 181
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
            end
            object DBGrid4: TDBGrid
              Left = 1
              Top = 33
              Width = 296
              Height = 197
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Calibri'
              TitleFont.Style = []
            end
          end
        end
      end
      object Venda: TTabSheet
        Caption = 'Venda'
        ImageIndex = 1
        object PnlMenuVenda: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 496
          Align = alLeft
          TabOrder = 0
          object SBMenuVendas: TSpeedButton
            Left = 1
            Top = 1
            Width = 298
            Height = 40
            Align = alTop
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000010000
              0002000000040000000500000006000000060000000600000006000000060000
              0006000000060000000600000006000000060000000600000006000000060000
              0006000000060000000600000006000000060000000600000006000000060000
              0006000000060000000600000006000000040000000200000001000000020000
              00060000000E0000001400000016000000170000001700000017000000170000
              0017000000180000001800000018000000180000001800000018000000180000
              0018000000180000001800000018000000180000001800000018000000190000
              00190000001900000018000000160000000F0000000700000002000000030000
              000E79574CC0A97A6AFFA97A6AFFA9796AFFA87A6AFFA97A69FFA8796AFFA87A
              69FFA8796AFFA87969FFA87969FFA87969FFA87969FFA77868FFA77869FFA778
              69FFA87868FFA77868FFA77768FFA77768FFA87868FFA77768FFA77768FFA777
              67FFA77767FFA77767FFA77667FF78564AC10000000F00000004000000050000
              0013AA7B6BFFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2EFFFF9F2EFFFF9F3
              EFFFF9F2EFFFF8F2EEFFF8F2EFFFF8F2EFFFF8F2EFFFF8F2EEFFF8F2EEFFF8F1
              EEFFF8F1EEFFF8F2EEFFF7F2EDFFF7F2EDFFF7F2EDFFF7F1EDFFF7F1EDFFF7F1
              ECFFF7F1ECFFF7F1EDFFF7F0ECFFA77767FF0000001500000005000000050000
              0015AA7C6CFFFAF3F0FFF7F0ECFFF7F0EBFFF7EFECFFF7F0EBFFF7F0EBFFF7EF
              EBFFF7EFEBFFF7EFEBFFF6EFEBFFF7EFEAFFF7EFEAFFF6EFEBFFF6EFEAFFF6EF
              EAFFF7EFEAFFF6EFEAFFF7EEEAFFF6EFEAFFF7EEEAFFF7EFEAFFF7EFEAFFF6EE
              EAFFF7EEE9FFF6EEEAFFF7F1EDFFA77868FF0000001700000006000000050000
              0015AB7C6EFFFAF4F1FFF8F1ECFFF7F0ECFFF8F0ECFFF7F0EBFFF7F0EBFFF7F0
              ECFFF7F0EBFFF7F0EBFFF7F0EBFFF7EFEBFFF7EFEBFFF7EFEBFFF6EFEBFFF7EF
              EBFFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF7EEEAFFF6EEEAFFF6EFEAFFF6EE
              E9FFF6EEE9FFF7EEEAFFF8F2EEFFA87869FF0000001700000006000000050000
              0014AC7E6EFFFAF5F1FFF8F0ECFFF7F1EDFFC79567FFBE8250FFBF824FFFBF81
              4FFFBE824FFFBE824EFFBE814FFFBD824FFFBE814EFFBE814EFFBE804EFFBE80
              4EFFBD804DFFBD804DFFBD804DFFBD804DFFBC7F4DFFBD804DFFBC7F4DFFBD7F
              4CFFF6EFEAFFF6EEE9FFF8F2EEFFA87969FF0000001600000006000000050000
              0013AD7E6FFFF9F4F2FFF8F0EDFFF7F1EDFFC79769FFE6C399FFE2BB8CFFE2BB
              8CFFE1BA8CFFE1BA8CFFE2BA8CFFE1B98AFFE1B98AFFE1B98AFFE1B889FFE1B8
              89FFE0B88AFFE1B889FFE0B889FFE0B789FFE0B788FFE0B687FFE0B686FFBD80
              4DFFF7EFEAFFF6EEEAFFF8F2EEFFA97A6BFF0000001600000005000000050000
              0013AD7F70FFFAF5F2FFF8F0ECFFF8F0ECFFC8986AFFE6C69DFFDEB482FFDEB4
              81FFDEB382FFDEB381FFDDB481FFDEB481FFDEB280FFDDB280FFDDB280FFDEB1
              7FFFDEB17FFFDDB17FFFDEB17FFFDDB17FFFDDB17FFFDDB17FFFE1B98AFFBD82
              4FFFF6EFEAFFF6EFEAFFF8F3F0FFAA7A6CFF0000001500000005000000050000
              0012AD8071FFFAF6F3FFF8F1EDFFF8F0EDFFC9996CFFE8C8A0FFE0B584FFDFB5
              84FFDFB483FFDFB483FFDFB483FFDFB483FFDFB482FFDFB482FFDFB482FFDEB3
              82FFDEB482FFDEB382FFDEB381FFDDB281FFDEB280FFDEB380FFE1BB8DFFBE82
              50FFF7EFEAFFF7EFEAFFF9F3F0FFAA7B6CFF0000001500000005000000040000
              0012AF8272FFFAF6F3FFF8F1EDFFF8F2EDFFC99A6DFFEBD1ADFFEBD1ACFFEBD0
              ACFFEBD0ACFFEBD0ABFFEBD0ABFFEAD0AAFFEACEAAFFEBCFAAFFEACEA9FFEACE
              A8FFEBCDA8FFEACDA8FFEACCA7FFEACCA6FFEACCA6FFEACBA5FFEACBA5FFC083
              51FFF7F0EAFFF7F0EAFFF8F3F0FFAB7D6DFF0000001400000005000000040000
              0011AF8274FFFBF7F4FFF9F1EDFFF8F1EEFFCA9B6FFFCA9B6EFFC99A6EFFC99A
              6EFFC99A6DFFC9996DFFC9996CFFC9996CFFC9996BFFC8986BFFC8986AFFC897
              6AFFC8976AFFC89669FFC79669FFC79668FFC79568FFC79568FFC79467FFC794
              66FFF7F0EBFFF7EFEBFFF9F4F1FFAC7E6EFF0000001400000005000000040000
              0011B08374FFFBF6F4FFF8F2EEFFF8F2EEFFF9F1EEFFF8F2EDFFF8F1EEFFF8F1
              EEFFF8F1EEFFF8F1EDFFF8F1EDFFF8F0EDFFF8F1EDFFF8F0EDFFF8F0EDFFF8F0
              EDFFF7F0EDFFF8F0ECFFF8F0ECFFF7F0ECFFF8EFEBFFF7F0ECFFF7F0ECFFF7F0
              EBFFF7EFEBFFF7EFEBFFF9F5F1FFAC7F6FFF0000001300000005000000040000
              0010B18475FFFBF7F5FFF9F1EFFFF9F1EFFFCB9D71FFC48A59FFC38A59FFC38A
              59FFC38A58FFC38959FFC38A58FFC38A57FFC38957FFC28857FFC28957FFC288
              56FFC28856FFC28856FFC28856FFC28856FFC28755FFC18755FFC18655FFC187
              54FFF7F0ECFFF7F0EBFFFAF5F2FFAD806FFF0000001300000005000000040000
              0010B28677FFFBF8F6FFF9F2EEFFF9F2EFFFCB9E72FFECD4B2FFE8C9A1FFE8C9
              A1FFE7C9A0FFE8C9A0FFE8C8A0FFE7C8A0FFE8C79FFFE8C79FFFE7C79EFFE7C7
              9EFFE8C79EFFE7C69DFFE7C69DFFE7C79DFFE7C69CFFE6C59CFFE6C59BFFC287
              57FFF7F0ECFFF7F0ECFFFAF5F3FFAE8071FF0000001200000005000000040000
              000FB28778FFFCF8F6FFF9F2EFFFF9F2EFFFCB9F73FFEDD5B4FFE3BF91FFE3BF
              91FFE3BF90FFE3BF91FFE3BF90FFE3BE90FFE3BE8FFFE3BE8FFFE2BD8EFFE3BE
              8FFFE3BD8EFFE3BD8EFFE3BD8EFFE2BC8EFFE2BC8EFFE2BC8DFFE7C79EFFC288
              57FFF8F0ECFFF7F0ECFFFAF5F3FFAE8172FF0000001100000004000000040000
              000FB38879FFFCF9F7FFF9F3EFFFFAF2EFFFCC9F74FFEFD7B8FFE4C093FFE4C1
              92FFE4C092FFE4C092FFE4C092FFE4BF92FFE4BF92FFE4BF92FFE4BF91FFE4BF
              91FFE4BF90FFE4BF90FFE3BF8FFFE3BF90FFE3BE8FFFE3BF90FFE8C9A1FFC48A
              58FFF8F0ECFFF7F0ECFFFAF6F3FFAF8373FF0000001100000004000000030000
              000EB4897BFFFCF9F7FFF9F3F0FFF9F3F0FFCCA075FFF2DFC3FFF2DFC1FFF2DF
              C0FFF1DFC0FFF1DFC0FFF1DEBFFFF1DDBFFFF1DDBFFFF1DCBEFFF1DCBEFFF1DC
              BEFFF1DCBDFFF0DCBDFFF0DBBCFFF0DBBCFFF0DABCFFF0DABBFFF0DABCFFC48B
              5AFFF7F1ECFFF7F0ECFFFBF7F4FFB08375FF0000001000000004000000030000
              000DB58B7BFFFDF9F8FFFAF3F0FFF9F2EFFFCCA076FFCCA075FFCCA075FFCCA0
              75FFCCA075FFCC9F74FFCC9F74FFCC9F74FFCC9F74FFCC9F73FFCB9E73FFCB9E
              73FFCB9E72FFCB9E72FFCB9E72FFCB9E71FFCB9D71FFCB9D71FFCB9D71FFCB9C
              70FFF8F1EDFFF8F1EDFFFBF7F5FFB18576FF0000001000000004000000030000
              000DB68C7DFFFDF9F8FFF9F3F1FFFAF3F0FFF9F3EFFFF9F3EFFFFAF2EFFFF9F3
              EFFFFAF2EFFFF9F2EFFFF9F3EFFFF9F3EFFFF9F3EFFFF9F2EEFFF8F2EFFFF9F2
              EEFFF9F2EEFFF9F1EEFFF9F1EEFFF8F1EEFFF8F1EEFFF9F1EEFFF8F1EEFFF8F1
              EDFFF8F1EDFFF8F1EDFFFBF7F5FFB18676FF0000000F00000004000000030000
              000DB78D7FFFFDFAF8FFF9F3F1FFF9F3F0FFCDA177FFC89362FFC89262FFC892
              62FFC89262FFC89262FFC89261FFC89260FFC89160FFC79160FFC89160FFC791
              60FFC79060FFC7905FFFC7905FFFC78F5FFFC6905FFFC68F5EFFC78F5EFFC68E
              5EFFF9F1EEFFF8F1EDFFFBF8F5FFB38778FF0000000F00000004000000030000
              000CB88E80FFFDFAF9FFFAF4F0FFFAF3F1FFCDA277FFF2E0C5FFEED6B2FFEED6
              B2FFEED5B2FFEED5B2FFEED5B2FFEED5B1FFEDD4B1FFEDD4B1FFEDD4B1FFEDD4
              B1FFEDD4B1FFEDD4AFFFEDD4AFFFEDD3AFFFEDD3AFFFECD3AEFFECD3AEFFC790
              5FFFF8F1EEFFF9F1EDFFFBF8F6FFB38879FF0000000E00000004000000030000
              000BB99080FFFDFAF9FFF9F4F1FFFAF4F1FFCDA278FFF2E1C8FFE8CA9EFFE9C9
              9EFFE8C99EFFE8C99EFFE8C99EFFE8C99DFFE8C89DFFE8C99DFFE8C89CFFE8C8
              9CFFE7C89CFFE7C79CFFE8C79CFFE8C79CFFE7C89CFFE7C79BFFEDD4B1FFC891
              61FFF9F2EFFFF9F1EEFFFCF8F7FFB4897BFF0000000E00000003000000030000
              000BB99082FFFDFBFAFFFAF4F1FFFAF4F1FFCDA278FFF4E3CBFFE9CBA0FFE9CB
              9FFFE9CB9FFFE9CA9FFFE9CA9FFFE9CA9FFFE8CA9FFFE8CA9FFFE8CA9EFFE8CA
              9EFFE8C99EFFE8C99DFFE8C99DFFE8C99DFFE8C99DFFE7C99CFFEED6B2FFC892
              62FFF9F2EFFFF8F2EEFFFCF8F7FFB58A7BFF0000000D00000003000000030000
              000BBA9283FFFDFBFAFFFAF4F2FFFAF4F1FFCDA378FFF5E9D2FFF5E9D2FFF5E9
              D2FFF5E8D1FFF5E9D1FFF5E9D0FFF5E7D0FFF5E7D0FFF5E7D0FFF5E7D0FFF5E7
              D0FFF4E7CEFFF5E7CEFFF4E7CEFFF4E6CEFFF4E6CEFFF4E6CEFFF4E6CEFFC993
              63FFF9F2EFFFF9F1EEFFFCF9F8FFB68B7DFF0000000D00000003000000020000
              000ABC9384FFFEFBFAFFFBF5F2FFFBF4F2FFCDA379FFCDA379FFCDA379FFCDA3
              78FFCDA378FFCDA278FFCDA278FFCDA278FFCDA278FFCDA278FFCDA278FFCDA2
              78FFCDA277FFCDA277FFCDA277FFCDA277FFCDA177FFCDA177FFCDA176FFCCA1
              76FFF9F3EFFFF9F3EFFFFCF9F8FFB68C7EFF0000000C00000003000000020000
              0009BC9486FFFEFBFBFFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F1FFFAF4
              F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF3F1FFFAF4F1FFFAF3F1FFFAF3F1FFF9F3
              F0FFFAF3F0FFF9F3F0FFFAF3F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F2F0FFF9F3
              EFFFF9F2F0FFF9F2EFFFFDFAF8FFB88E7FFF0000000C00000003000000020000
              0009BD9587FFFDFCFBFFFAF5F2FFFAF5F2FFFBF4F2FFFAF5F2FFFAF4F2FFFAF4
              F2FFFAF4F1FFFAF4F2FFFAF4F1FFFAF3F1FFFAF4F2FFF9F3F1FFFAF3F1FFFAF3
              F1FFFAF3F1FFFAF3F0FFF9F3F0FFFAF3F1FFF9F3F0FFF9F3F0FFFAF3F0FFF9F3
              EFFFFAF2F0FFF9F3F0FFFDFAF9FFB98F81FF0000000B00000003000000020000
              0007BE9689FFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFDFCFBFFFEFCFBFFFDFC
              FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFBFAFFFEFBFBFFFDFBFBFFFDFBFAFFFDFB
              FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
              FAFFFDFBFAFFFDFBFAFFFDFBF9FFBA9082FF0000000900000002000000010000
              00058E7066C0BF9789FFBF9789FFBE9788FFBE9788FFBE9689FFBD9688FFBE96
              88FFBD9687FFBD9587FFBD9587FFBD9587FFBD9487FFBD9587FFBD9486FFBD94
              85FFBD9485FFBC9485FFBC9385FFBC9385FFBB9385FFBC9284FFBB9384FFBB92
              84FFBB9284FFBA9183FFBA9183FF8B6B61C10000000600000002000000010000
              0002000000050000000700000008000000080000000800000008000000080000
              0008000000080000000800000008000000080000000800000008000000090000
              0009000000090000000900000009000000090000000900000009000000090000
              0009000000090000000900000008000000060000000300000001000000000000
              0001000000010000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000020000000200000002000000020000
              0002000000020000000200000002000000010000000100000000}
            OnClick = SBMenuVendasClick
            ExplicitLeft = 2
            ExplicitTop = 9
            ExplicitWidth = 286
          end
          object DBGrid6: TDBGrid
            Left = 456
            Top = 27
            Width = 791
            Height = 249
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
          object PnlItensMenuVenda: TPanel
            Left = 1
            Top = 41
            Width = 298
            Height = 454
            Align = alClient
            TabOrder = 1
            Visible = False
            ExplicitWidth = 286
            object Label78: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 290
              Height = 26
              Align = alTop
              Caption = 'Lista de Vendas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 133
            end
            object DBGrid7: TDBGrid
              Left = 1
              Top = 33
              Width = 296
              Height = 197
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Calibri'
              TitleFont.Style = []
            end
            object GroupBox4: TGroupBox
              Left = 1
              Top = 230
              Width = 296
              Height = 223
              Align = alBottom
              Caption = ' Resumo '
              TabOrder = 1
              ExplicitWidth = 284
              object Label79: TLabel
                Left = 224
                Top = 63
                Width = 49
                Height = 18
                Alignment = taRightJustify
                Caption = 'ABERTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label80: TLabel
                Left = 12
                Top = 63
                Width = 59
                Height = 18
                Caption = 'Situa'#231#227'o: '
              end
              object Label81: TLabel
                Left = 12
                Top = 40
                Width = 145
                Height = 18
                Caption = 'Matricula do Vendedor:'
                OnClick = LblMatriculaVendedorClick
              end
              object LblMatriculaVendedor: TLabel
                Left = 238
                Top = 40
                Width = 35
                Height = 18
                Cursor = crHandPoint
                Alignment = taRightJustify
                Caption = '00012'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
                OnClick = LblMatriculaVendedorClick
              end
              object Label83: TLabel
                Left = 12
                Top = 82
                Width = 90
                Height = 18
                Caption = 'Data Abertura:'
              end
              object Label84: TLabel
                Left = 203
                Top = 82
                Width = 70
                Height = 18
                Alignment = taRightJustify
                Caption = '01/07/2022'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label85: TLabel
                Left = 12
                Top = 102
                Width = 89
                Height = 18
                Caption = 'Data Validade:'
              end
              object Label86: TLabel
                Left = 203
                Top = 102
                Width = 70
                Height = 18
                Alignment = taRightJustify
                Caption = '01/08/2022'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label87: TLabel
                Left = 12
                Top = 20
                Width = 58
                Height = 18
                Caption = 'Terminal:'
              end
              object Label88: TLabel
                Left = 191
                Top = 20
                Width = 82
                Height = 18
                Alignment = taRightJustify
                Caption = '192.168.10.51'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label89: TLabel
                Left = 12
                Top = 122
                Width = 73
                Height = 18
                Caption = 'Valor Bruto:'
              end
              object Label90: TLabel
                Left = 248
                Top = 122
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label91: TLabel
                Left = 12
                Top = 140
                Width = 110
                Height = 18
                Caption = 'Desconto Cliente:'
              end
              object Label92: TLabel
                Left = 248
                Top = 140
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label93: TLabel
                Left = 12
                Top = 160
                Width = 116
                Height = 18
                Caption = 'Desconto Gerente:'
              end
              object Label94: TLabel
                Left = 248
                Top = 160
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label95: TLabel
                Left = 12
                Top = 181
                Width = 85
                Height = 18
                Caption = 'Valor Liquido:'
              end
              object Label96: TLabel
                Left = 248
                Top = 181
                Width = 25
                Height = 18
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Calibri'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
            end
          end
        end
        object Panel11: TPanel
          Left = 300
          Top = 0
          Width = 866
          Height = 496
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 288
          ExplicitWidth = 878
          object Label97: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 305
            Width = 858
            Height = 26
            Align = alBottom
            Caption = 'Lista de Servi'#231'os'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 142
          end
          object Label99: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 858
            Height = 26
            Align = alTop
            Caption = 'Lista de Itens'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 114
          end
          object Panel12: TPanel
            Left = 1
            Top = 440
            Width = 864
            Height = 55
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 1
            BorderStyle = bsSingle
            TabOrder = 0
            ExplicitWidth = 876
          end
          object DBGrid8: TDBGrid
            Left = 1
            Top = 334
            Width = 864
            Height = 106
            Align = alBottom
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
          object DBGrid10: TDBGrid
            Left = 1
            Top = 33
            Width = 864
            Height = 269
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
        end
      end
      object TSProdutos: TTabSheet
        Caption = 'Produtos'
        ImageIndex = 2
        object Panel8: TPanel
          Left = 816
          Top = 0
          Width = 350
          Height = 496
          Align = alRight
          TabOrder = 0
          object Shape2: TShape
            Left = 12
            Top = 39
            Width = 145
            Height = 149
          end
          object Image4: TImage
            Left = 16
            Top = 41
            Width = 137
            Height = 145
            Picture.Data = {
              0D546478536D617274496D616765FFD8FFE000104A46494600010101012C012C
              0000FFE1007745786966000049492A000800000002000E0102003B0000002600
              0000988202000E00000061000000000000005265642068617264636F76657220
              626F6F6B207374616E64696E6720696E2066726F6E74206F6620636F6C6F7266
              756C20626F6F6B7368656C662E446176696420486572726D616E6EFFE1057268
              7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F7870
              61636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869
              487A7265537A4E54637A6B633964223F3E0A3C783A786D706D65746120786D6C
              6E733A783D2261646F62653A6E733A6D6574612F223E0A093C7264663A524446
              20786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F3139
              39392F30322F32322D7264662D73796E7461782D6E7323223E0A09093C726466
              3A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A
              70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70
              686F746F73686F702F312E302F2220786D6C6E733A4970746334786D70436F72
              653D22687474703A2F2F697074632E6F72672F7374642F4970746334786D7043
              6F72652F312E302F786D6C6E732F22202020786D6C6E733A4765747479496D61
              676573474946543D22687474703A2F2F786D702E6765747479696D616765732E
              636F6D2F676966742F312E302F2220786D6C6E733A64633D22687474703A2F2F
              7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C6E73
              3A706C75733D22687474703A2F2F6E732E757365706C75732E6F72672F6C6466
              2F786D702F312E302F222020786D6C6E733A697074634578743D22687474703A
              2F2F697074632E6F72672F7374642F4970746334786D704578742F323030382D
              30322D32392F2220786D6C6E733A786D705269676874733D22687474703A2F2F
              6E732E61646F62652E636F6D2F7861702F312E302F7269676874732F22206463
              3A5269676874733D22446176696420486572726D616E6E222070686F746F7368
              6F703A4372656469743D22476574747920496D616765732F6953746F636B7068
              6F746F22204765747479496D61676573474946543A417373657449443D223437
              313336343633332220786D705269676874733A57656253746174656D656E743D
              2268747470733A2F2F7777772E6973746F636B70686F746F2E636F6D2F6C6567
              616C2F6C6963656E73652D61677265656D656E743F75746D5F6D656469756D3D
              6F7267616E696326616D703B75746D5F736F757263653D676F6F676C6526616D
              703B75746D5F63616D706169676E3D6970746375726C22203E0A3C64633A6372
              6561746F723E3C7264663A5365713E3C7264663A6C693E4D69747368753C2F72
              64663A6C693E3C2F7264663A5365713E3C2F64633A63726561746F723E3C6463
              3A6465736372697074696F6E3E3C7264663A416C743E3C7264663A6C6920786D
              6C3A6C616E673D22782D64656661756C74223E5265642068617264636F766572
              20626F6F6B207374616E64696E6720696E2066726F6E74206F6620636F6C6F72
              66756C20626F6F6B7368656C662E3C2F7264663A6C693E3C2F7264663A416C74
              3E3C2F64633A6465736372697074696F6E3E0A3C706C75733A4C6963656E736F
              723E3C7264663A5365713E3C7264663A6C69207264663A706172736554797065
              3D275265736F75726365273E3C706C75733A4C6963656E736F7255524C3E6874
              7470733A2F2F7777772E6973746F636B70686F746F2E636F6D2F70686F746F2F
              6C6963656E73652D676D3437313336343633332D3F75746D5F6D656469756D3D
              6F7267616E696326616D703B75746D5F736F757263653D676F6F676C6526616D
              703B75746D5F63616D706169676E3D6970746375726C3C2F706C75733A4C6963
              656E736F7255524C3E3C2F7264663A6C693E3C2F7264663A5365713E3C2F706C
              75733A4C6963656E736F723E0A09093C2F7264663A4465736372697074696F6E
              3E0A093C2F7264663A5244463E0A3C2F783A786D706D6574613E0A3C3F787061
              636B657420656E643D2277223F3E0AFFED009850686F746F73686F7020332E30
              003842494D040400000000007B1C025000064D69747368751C0278003B526564
              2068617264636F76657220626F6F6B207374616E64696E6720696E2066726F6E
              74206F6620636F6C6F7266756C20626F6F6B7368656C662E1C0274000E446176
              696420486572726D616E6E1C026E0018476574747920496D616765732F695374
              6F636B70686F746F00FFDB0043000A07070807060A0808080B0A0A0B0E18100E
              0D0D0E1D15161118231F2524221F2221262B372F26293429212230413134393B
              3E3E3E252E4449433C48373D3E3BFFDB0043010A0B0B0E0D0E1C10101C3B2822
              283B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B
              3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3BFFC00011080198026403012200
              021101031101FFC4001C00000105010101000000000000000000000400010203
              05060708FFC4004F100001030203050405070807070403010001000211032104
              12310522415161133271F014528191A106072342B1C1D11524336272B2E1F134
              353643737492162544536382C2265464A28393C3D2FFC4001A01000203010100
              0000000000000000000000010203040506FFC4002D1100020201030304030002
              02030100000000010211031221310413322241517105143381A142C12361D1F0
              FFDA000C03010002110311003F00F53210D881BA518421AB8DD2B0CB83743939
              9DA8355CDE218412BA8DA6355CED76CCAC30F336BF030F101D26EB1F16C739F0
              16FE245CD9663DA0D685D15C181F2094F0C1ADD157570E088216A8A40050EC03
              CE8803370B85CB534D56FE0F0F3164253A5154085BB83A432830A69592893661
              016E8AAA986826CB5A98686DD5359AD450DB315F87BE8A97D2B2D4735AE72A6B
              5210AC8AA2B6CC8A8C8415564B969D761CC837D3328D36C1CB6296D191A2ACD0
              93A23A936C6CA6DA40ABA30D8A652DCCC7E1ADA212A5320ADD7D111A206B61C9
              986954E48A251919464289288A941F3DD2ABEC5FEA959E8BAECAA52BABD98771
              3705174B073C145C922C86294F833A0F229C07722B65BB3E78267E06068ABEEA
              6697D24D2B322615D45B98ABEAE123829E0E85D5F8EA4CC599382DCD2D9B4AE2
              CB5CD06966884D9F472BB45B34E8E61A2B33622BC196D1878AC39CA400B9EC46
              1AA0AC77577CFC1E6E0B3EBECA05C4E558B1C6A469CB3B89CAD2A2E1A845369D
              969D4C0E4E0A87D22D0BA30A38D9A4EC04308A9A95AB8361B5CA0DB4C97AD7C1
              5198B2CBD5AD8B315B468E1DA3200A7528172BB0F434B233D1A42E149B46A8AD
              CE6B198471691F72A366E12A32A11D792E9AAE0C1E0AAA5840CA9A282CADEC6A
              897E0E9B80128F34896AAE85384635B2D554B92E4CC3C46189798FB1350C13F3
              4DBDCB51D4A6A2268501C95F89EC0C128E11DD3DCAE7E15D97F82D2A7442B1F4
              842BE8859CC62B02E70361EE5CEED2D8F51E09007B977D5A9344ACAC5D307821
              371635B9C08D8D5BD51FE953A7B1EB078B0FF4AEBCD01C937620385958F2CA86
              A28C9C1ECDA8D898F72D9C2E15ED8D3DC8AC3D116B23E9510068B9B95B6CD11E
              0A594880A15E99CA568640021F10DB1528360727B629CB0D97178DA04D5B05E8
              3B4686706CB9FAFB3839DA2E9E19A8F2573C6E5C1CB0C3BB97C138C33A74F82E
              84ECDE89376789D16A592255D8998430AFE43DCAC6E11FC87B96E8C080745637
              0807049CCD18F06FB98F4A839BC07B910DA6E8D07B91C70F074526D113A2C93D
              CE9638A8A01EC9DC949B4DC0A3CD18E098D383A28A45968A69B1C48B2D1A341F
              1A0F72861E9EF0B2D5A14A614E288E5926808E1DE780F72ADD85A8380F72DD18
              7B283E9374857A7473EAD98C283A2EC050F89A0E0D3B816F3A9003442D76360D
              9589851C8D6616BCCB6157AAD1C7D301C6100028C8B3D8838594B0C3793B8594
              F0CDDE55B7B0A8D4C30DD0AAC7F70D913876D82AB1EDFA32B27FC884B8395C43
              CF6C6C929625BF4E525BD70606B73E89210F5C58A24E887AE2C55F3E0A60F739
              CDA62C573988B4AE9B698B15CDE206AB0C7CCDCFC4C7C49398ACCAA62A4AD4C4
              E5CC5646201ED2CBA31E0C12E4B9B58C42BE89CCD943536EEA2694359090D163
              193502DFC13269858149FF0048BA1C0BA698562E068B8082A9ADC51245D0F585
              CA992602D93514EAB2CA4C6EFAB5EC4D15332EB5193A212AD1BE8B62AD342546
              4957C6256C01AC80A6C1656B990A0C1756708AE41387C276BC11CCD92D70BB55
              FB36902D165B546808D1659EE4E3B1CCBF61B3D54355D8AD03BABB538505BA21
              31185106CA9712D524712FD9A19C14A8E160C42DEC461C5EC866D201CB0E6B47
              6BA3D2D03330B6D142A61A068B629D26E55557A61654CEAB4A8E76BE1BA2AF0D
              4087AD6AD4438E89B0D8719B45D3E962EECF3BF916913C25221C16CE199210D4
              A806A3B0E20AE865E0E360086D004049F84041308AA42CAD70DD5CF4B736CDEC
              7358CC3013658F88A50BA6C7345ECB0716DBAD107473F22B02A74A48B2DAC0D1
              81A2CFA0CD16C612042CF9DD96633428340211A182020E91B846B5D60B91916C
              6B88CEA608D10CEA633D823750AA34E5EB2C22ACB6C549B088160A2D6429C429
              64545B16551BE89A210C7BE8AA29E226C259A24F3013D3164AAB6CB5AE0AC12A
              DD035A9027447BC2A1ED950649001A50A22949D118FA6A018913152A708A6485
              06355A02C99116A26745456120ABB82AAAE85288D1938AA73280761C13A2D6AE
              3541B85D59AE8D78E3602EC38E4AB1404E88D7AA62EB4639D9A3B6A8A4D10382
              ACD2DE4510A0E175AD15A5B833A90E4A2295D12E0A2B3E466B82545669A89A63
              92B8A8AA6C9E944A8D3B8B2D4C3B221034AD08FA26CB4E3664CC821CE86A16AB
              CCCA272CAAAAD1242B5D99234983BAA1221078898470C3B87043E2A990D2AC89
              3D8E7B1CE0642CD2B471CC21C56790890A84D1288C3377952DD113861BCAA90D
              1A741BBAAAC6B669944D11BA1558C6EE1593DCAA6729896FD3B9256625BF4EE4
              96F5C185F27D067443571628A43D6D16A9AD8CB0E4E7B698B15CDE21B72BA7DA
              42C573B886DCAC11F337BF130B14DDE2B35CCCD5616BE29B73659B1F4EBA11E0
              C32E49B69404D10896019555580090CA1AFCB5A1749B3DDF4417285C7D202E9B
              66C9A615CB81459A732A9AD1757816087AE6250C994346FAB9E2C87A6E97A21C
              6C9A654D14D516423C232A041D630B5C190681AA2A5BAAD1C1601F8FC4640600
              69738F201356C2E128D5ECC8AC4CEA1C2FF055E5EA31E375264E1D3E4CA9B8A3
              47649DC0BA1A00405CD51C452C1819693DD2244B87E08B6FCA12CDD1866CCC5D
              FAAC8FAAC5F25BFA39FE3FD9D0980D43570082B1CFCA6A840FCDA98FFB8AADDF
              28EA3BFE1E90F69F3C145F558817439EF8FF006115E98336419A2336898ED935
              35A2C1EF557E52CD045169B4D8959B264C723A3D3E2CB8B90FA54C65D1555D80
              7043FE53732CD6374E32A0FDA0E7CCD36EB169BAA576CDBAE645F4C5D42888A8
              9CE2DA6668888D64F9E2986298D32DA2D041E6E5BB0F538B1F36727ABE933E7F
              1A3469844D16EF2CA1B49CD9CB45B6D353CFF056376C5663CC53647ECA9E4EB7
              14B84FFF00DFE4CB8BF1B9E1CB5FEFFF0087414C400AE3DD5CEFFB418A68FD15
              299507EDDC73BEB31BE0D0B2F7E299A5F4595FC07E386AB031889A9B4F115336
              670266DBA150EAC2A77E8B5DD214D75515EC52FF001B95FBA1B0E25A16850305
              02DAE1966D160020E89FD36B4437B36F5854E4CF197B0D7E372AF746D35F108C
              A4E985CD8DA188BEF081D027FCA58CFF009CF1CA0C2C338B917C7A0C8BDD1D73
              04AB053DED171A36A6381918AAA2DA67290DAB8F37F4CAFF00EB3F8AAA389AF7
              2DFD397C9DB8A76D145CD226CB8CFCA58C277B1558DB8D43F8A2F6363B13536A
              61E954AF51EC766041792343CD3C98DB563FD571576740EEFA2291BAA2A021D2
              ACA4EBAAF09430FA4AC7B642A68B911A85B97054C11F4D52E6808C7B5095641D
              141A271297855E5532E4C214499268534CD0A4B2E52D42E0ABA8AC5554D15512
              4806BF140BCDD1B5F540D4D5499B7115BCAA8F794DD7503DE5A319AFD875170B
              A98488BADD16A8CED34CA9C140AB9ED55E4BAA321AB1AD8839441563981565AA
              8F72EAD8229147E1EEB3290B8BAD4C310005A7198F3AA41CCA7215A284F04D45
              E202203842D891C99369943A808D167E2E858D96BB8D9018A220DD4A90A32767
              25B468412B19ECD5745B4AE4AC5733555499B23BA066844E1FBC1579614E877D
              552E091B143BA147163E8CA7C39DD09628FD19591F2552397C4B7E9DC92B3123
              E9CA4B627B18DADCF7D210F5858ABB29CB9A9D4CE391BCFB55155F9800D12E3C
              0F0F15BE6B639F07B989B4458AE7F12D10574D8FC3D303E96B104F5002E7F686
              1BB16676BF334DA0EBFC561D0D4ACDDA969A32F1D84A4CC176E336721A75B5E1
              613C7D32E93683BFDD427D567DA16651D9AD335712F34F8C02040EAB7D6C63B0
              7A7DD5557D1107B3CE7B2CD90685C6E5515B451F725EC6691F9CAE9B661FA210
              B9B75B101749B33F4615EB8231E4D32775078979928D896A0717695193A45A81
              A9BA1E8BCD202CC6BFE911CD7880A117B8A48B1FA20F11AA2CB81086AC24ADD8
              F829668EC0B3F1246A30EF20FB9676247E70D711A0FC11FB16CEC4E9FD1DFA9E
              880AE476D008116F05CAEBFF00AFF83ABF8FFE6FEC7AC1A29D23BA259E3C4AA8
              5DF320C74D51189032D2609B530205953987521603A244C9E37D54A93455AECA
              6E716B5C4827DA988B7D78526B43EB3190E87B8027DE9AE44F808C7615B45ECE
              C738351D1975956B701469D3CF89A8648130ECAD0AAC4D1660EBD1A80D474193
              99D3A108AC4D018CA74DF4AA039412D822EADA56F633B6E96E515B0985345F56
              955232F276608314EA567369B1A4BDDA0CD09EAD0A9876C55A7979199051F86C
              3619959AFA75C3DE07743C28D6A7C13BD2B9B00A949F45C1B51AE0E026438745
              00D26E4BA235985A78AC3E1AA559AB5B23A05B30083A383756AAF630814D848C
              E6F69309383BD8719A6B728BC991777027C53651989E3A883C5688D9D86CF91D
              50E69B8904FBBCFC10B8AC2D4C29044169D1D97ED4383438E44DD03C004F0F64
              A4378933C3503CF9F145E1300EAECED2AB9CD6116005CABBD0283C114EB3CB9A
              783C14283079229D026130ECC457735F24659B18E2ABC451653C4D4A6D6EE35C
              233780456CF69A78EA94C104B58448748D428D5C3BF11B42AB5A0402333C8D2C
              13AF48B57ADFC01C409968E3F7FDC903A9B89E5FC5198BA3430E21956A1A9F55
              B6B753642906436E6F07C141AA27196ADC444020B49F14C2C448129104B85B5E
              A968387BB5489085E004FA82209E729069235247385220913F779E68018999DD
              F7AD2F93C03B6FE05AE1673E08F61598D00099044CEAB53E4EDBE50E066DF4BC
              B8C142E4AF2783FA6763B4E8D3C25135EA3C36908971FABE2B1C6D6D9EC741C6
              539F6AEB1F4E9D563A9D5635EC7082D709042F2BF960CA581F94B5B0F86A6CA5
              4FB26BC35A2009042B278229EA89C9C0D4FD32E4EF28D5BEA8D6D405AB168D42
              5ADFD908C65431AA845916B70E2E0552F682A2D7277149B1A2B7530AB2C1C95C
              ED156824992A3419518E739C6648B18851A4C756B66803570E3E0A74A836B667
              38B8418B714B0CE025A6C5DBC3AD95738A7568353DC62CC30394D5DEFDB43D66
              863CB03B301C4F0573B0EFA6D80DCEDE9AAA4369B9C43AA76600E605FDAB3B57
              B551641D6F603569BCB3B4CBB9CE501505D6E54A54BD1B267FA38EF48FB564E2
              A9D1A61A69D535097411981FB14A78E95A3660C9BEE0842ADDDE478C100CCD5E
              A65E80C47B5575302C70CD42AE6F1320FB5590C72362CB105091D54A9B1F52A7
              66D6EF7107878A2CE0A8B00ED6B104F5002D708B688CA6A2C09FA2BAAE1D8CC1
              B6B0CD98869D6D784F8BC2F60DCED7E669B41D7F8AB7116D96CFD967DA145C6A
              EC9772F4B4673D5456837020D3352BBCD31AC0B40EA81A99339ECF365E05DA95
              96516B766A84D49D21DAE844D2AF1C5044D9566B655641D04E1A8DCA78AB6A88
              662FAAE6DB8C22D288A58971216953304FA73A1F4896A0F115646AAA63DC5AAB
              AC490ACD466EDA4CCBC7192566B8482B471838A00E8A0CBE2B6077084D4CC3D4
              9EA14FBE97B099AB873652C4F70A861B40ADC409A65647C9548E7311FA629296
              25BF4E525A93D8C8F93DE4002B0CBC5A732A3FE26B74023EF57B5CD688A4C327
              89047DA87AAD2C8734CB86B3C574A4E91CC8EECC6DA0333AA175DD988BF2E0B9
              DC481713A0B0E4BA8C7BB0EF1355A41EA0FDCB076855A6FA5D952A620684888F
              0585C7D7766F4FD3540B51CC66169BAA406E56DCF3B42C6DACCAE6A35C0CD11D
              E0381E651DB431145F81EC43C9780D1194F08406131C29D4EC6B92591BAE89F6
              15B93D8C6D6E554C6EAAABB6C8D7B28074E1DF2C3F54B48CBEF43E21B655FB93
              F6321DFD242E976589A417375446242E8F651FA30B42F1231E4D5839610B5E94
              CA35BA051A8C05426F62E4640C30CFA29BE9E5461600542B34650AA83DC24B60
              4CC45945F756541605542EBA50E0CCDEE1FB187E71546B345E3E081AB26A98D4
              9E08DD970310FF00F06A7EE940D5003EE353CBAAE4F5FF00D57D1D6FC77F37F6
              5D5A48A67F579EBAA1E4F3F7957E25A5ACA76D59CBC7F82A2227520DA3288580
              E88D96FAC8E169B2961C37D22813EB0E1D54757687DD0A74DE1B5A9B892007B6
              6E10B914B8617B5F5A3A68E8B7820D8F7D1A8E0C7398788CB3EF1E7E28AC5E26
              9D5AD45F49A6A0A7321C08E4AC762B038801D5985AE17DEB9D79856B49BE4A53
              6A29345B85AFE9941EDAAD98DD3BB6283C10C98E0DF5735C37AAB9F8EA146976
              7866898806200F3082A557B1AAD7B4E62D3A4EA86D5A08C5B4CBB6989C611736
              1F55158425B8071A637CE63668EF4DBEE4CFAF80AE03AA001C071041F8217098
              B38779061D4DDC8DFC7446CA5614DC6AB80707EB92E209926CB47105CED93354
              9CC18D264F1B2735367170AB95B9B51B87ECF721B198A38996B010CD74B928DA
              29EE0EE6D6C13B4496E080A766120183C23F805981C5A496BAE4DB5947E1B1AC
              6B3B1AE1CE6810D70136E4429B6AE030E4BE9365C7D5699F8FB7C9434A5BD826
              E3B503ECB138A39608C86C27985A2E71736AB693C35E35D2C62D2B3F0B89A6DC
              63EABC36935CD80D049E2392AEAD78C5BEBD07020C6B691010A49214A2E522A7
              B6A36A3BB5273FD60E312A13A4104FBD1F89AF84C5526E6269D4D01C84C74D10
              2D13F54E9CB4F3E7455C9532E83B5B8C1BBE3A7103CF2F309408888F827D0131
              13CD35AF702FC7551263C7AD16EA9B7627766382798B4FB86890CC6D78EA801D
              A3417F00B47E4F4FFB4381B123B51727C5670D35FB169FC9DBFCA4C11B7E975F
              614D728AF2F83FA67A33ECBCABE5F803E574FAD85A7F6B97AAD4D17957CE0FF6
              B1BD7094FF0079EB64F838DD2F99D761699387A279D36FD88B6B0C2960E90385
              A1FE137EC08B14800B224393DC1DAD2A61AAEC80262212682CA9CDB2AE15EE16
              559082489617BAFF00DBFB821C169A4D0EE43D8AFA351B4C383A6EE91009E014
              28BFB2A791EC9045C81F6AAF2D349582B4D8C2A3E9C6F1736620DCFBD471AC01
              CD7017363D5581D8669CCD6991A0CA55359E6A3B3110068150DD469BB271DE56
              81AA0FF771F03F6ACD01BE954E74CDF759698AADA6C34EA09619BC4EBC0ACEC5
              8A32D38724106FAFB354A4D3A97C1AF15A6E3F257B4493598D3DDCB23C557822
              462486E85B2EFB91271346AB32E21907C247F0553B1587A0D230EC9279081ED2
              B4C6AF559A95E9D145B41ADF4EC446B0DFB3F920EB82EC43CBEE4388BF2E09E8
              D47D3A82A8399C7BD3C518FAB83AD0EAAD8775699F82D516A48ADA709599EE88
              0274161C96953731984A4E7901B95B73EC854E2AAD2A94852A54C40D09111E0A
              356B537E09B48125E0341194F08517516F72CDE496C4769B2A901D33486A0703
              CCACC2B468E2C536F675A4B22C6263A20B102907CD174B4F02088F7ACB929EE8
              D582E3E968A1C2C87A81151215351A889A5B05020A370F1210D96EAFC3EAAF45
              193735A91DD4D5744D46ED4F53457239D2E4CBC60959E5BAAD3C50959EED4A8B
              24B8057850A637D5AF5067792F6034F0C2C15F599B8AAC2E889A837165972532
              39DC4B3E9CA4AEC4B3E9CA4AE4F633BE4F6A355C1F06F7223DDF8AA2AD704081
              ADB50AF7537E6CD1F5A75D74FC10B5693C016D3AF87E0BAB2AA3910E4CDC73C3
              86E899D24812B0B100CBA401062EE02FC96D636990D82091D0EA2663E2B13120
              38BA6D2E27BC058EBAAC54B59D0B7A4C8C5D221C41C8D83065C009E4B35D49ED
              AC4C06C1220B8026355AD8BAA0B9E37B2979702227E3E0B31D581AE73071CC4C
              B4905A6D03DDCD6C5546577613480C96267942AAB8DD56D1EEAAEBF74A87B925
              C18D88FE92D5D0ECBB520B9FC40FCE5ABA0D9BFA30B447C48AE4D60EB051A954
              25986542625D130A33E0B6259DAB49D5555AA08D503DB10545F549854C17A89C
              DEC12E399A1335BAA6A665A158BA70E0C52E4BF66DB14473A553F70A06AC1708
              9D471D11DB3BFA646BF4753F71C81A8480D2675D6172BF21FD17D1D6FC6FF397
              DFFD22FC4896D393A31BC4DF543821D6241F1289C4486D29247D18E308504F37
              7BD738E9886599B69C0129F744CCF52D063CD93DF9FF00F65105A6413226FBC9
              89961A4EA65EDDD394C188B09D4F24CE6380702DEE3B2992354AA3999AA3DAC2
              0D4D4175849BA5572BBB312C989710F993A7D807C54DA4569CAD0D95A1A1F509
              19AE035A34E77510D04BB2381608DE3BA3E2A4D780D6B49734B4407533062498
              537627B4990403035922279EBAA4B4B0B95907B1E1AF24B0169162F179E3E0A4
              F6163DED96B831F927B40A05E2A0759D7003646913F8A9B6A07626ABED91D2EC
              AEE7A8F8A7510B9ADC8B587B76D273B212ECB2D74C14D95CF60734021C61B354
              5CF28E6952776555AE7E775E4C714F4C860A36A84B1E5E248BE9FF00F9092A1B
              7218537C805AD7171810E06FC92EC5E1808687890D05B064DAC9C39B4980413B
              C4DDDA822120F6320358E90E0E97B8C728B78A75115CC89A6F00B8652D078381
              BF24E28BF46C38E60D80F6983C8A94D3A0C86B8670F6912F0EB09E493AB37338
              02E21CF04E968E5011510D527C158026EE6C1B82D74F2F3EE48B80322203AD04
              FDAA4F7E601D7902E6D27DCA133CC15175EC4E37CB11B8206BD12B8E074F04C2
              0B8F283A948DBD510A24870493C071174B4B08F7240682274986A68041009F14
              0139BE9F05A5F27447CA2C0F5ABF715976B803D92B4FE4EC7FB4982B0FD2FDC5
              35CA2BCBE12FA67A3545E59F3856F9534FFC9B3F79EBD4EAE8BCB3E70BFB534B
              FC933F7DEB5CCE3F4BE68EFB67DF03863FF499FBA11B1640ECD33B3F0A7FE8B3
              F7423DBA2A61C119724485121590A2424D0932B2154E5710AB70B2AD9340C5C4
              389E0089B81ACFE091AA00248888E238A77B0C9B1D410674D7F1559686992069
              604F2B8F8AA66A2C9EE48BB8686F3D235553AA0E2FBF2207E2ACCBBA06B1CF8F
              355383B23992F8736379D207B1658B8B44F7B07ACE807491A8916F141D76919F
              79BBAE0DEF0E328CAC1CF2F3705E2FA4216B89ED2C77883F6FE29B5035E372B0
              678233481BA60DC6AA873492CCB7739C441802DFCD5F5482D68B4C4B883A9D3E
              C03E28773C35D4CC38E47971B8BE9F82D18D46E8D9194B4D96526B8816173037
              86BCBC55905CD04017B09204AA28C063443B75D3C34B7E08880409693131045C
              4CC7C56D8A455294AC4E6900820083177017E4AB734824181060CB8013C95CE0
              2A074DA5C4F780B1D754CFB9781394BCB81113F14A5188E33982D46983200891
              04806DAA19D1C099E508DAB70E2438CCC82646903DC8370597224B83662727C8
              9BA2ADE158DD141E8816B07215943555BB5565082E5722A9706A50BB53D4D12A
              1A29540615E8E7CF933314167BB52B47140ACF70DE2A2C71E01AA2ADBDE56D41
              AAA5B39D0B81B35F09A231EDDC4160F82D077716597253230F10CFA6292BB10D
              FA62929AE0A28F643A21EB71441D10F578AEB4B83910E4C7C78DD2B0313A95D0
              E3BBA57398B304AC1FF33A2BC4C7C5C66EF2CC711DBA3718EDED565D7AB95F2B
              7478324B934195806AAEAD69B204622DAAB293FB432955128EFB10AD489AED2B
              67032CA6108DA59DE169D0A595814E122C78E8BB3981743D73989571B2AAB1DE
              56496C41302753DE51732084586CA8556442AE0B7094B619966A9A86802706EB
              A10E0CAC27678FCEFF00FC7507FF0047206ADDE248D7D65A1B38818A93EA3FF7
              4ACF709ADAC5E3BAB93F90FEABE8EBFE37F9CBEFFE905632C5825B6A63574A16
              6DF57D88DC50BD37119B7264D90994D496DA46930B9E74C6B5CDBC40F14A489E
              3ECE89CBA5B36F61F3CFE2901265D0205FA79FC12022C32EB0B0238754DBC1A3
              50786EA9C070D40117829831A2C046B3AF2408620889F80D754D0440DED474F3
              E79291121B76D9343728323C4CA063190C2466E6013E7A24E13CFADD3180EB96
              0F879D14816CDF28BA00637822201E2900D6C4E5D278F44D6E7F679FE69C9883
              31E3A688014C08B78F9F6A616300C1B8D38F909C03C334E91111E7CE891E363A
              58CA006D1D69009E5164E0171BCDE2E4A62D874FDFA2702001D50035C800C5C5
              E5C5368234F107CF14845B77A7754A4D84989274F0FC100444C01737E49E0807
              75D23A04D979CDAE9F2889899F1400EE0EE20FBD33844836F6F8A596DDD10675
              D5291D0780400FA6B975EBF72D2F93A7FF0050E02483F49A0F03F8ACDDD3F742
              D3F9397F94581924FD2739E0535CA2BCBE12FA67A256D1796FCE1FF69E97F926
              7EFBD7A956EEAF2DF9C4FED3D0FF0024CFDFA8B5CCE374BE48EF7671FCC30BFE
              0B3F7423DA6CB3B677F57617FC067EE847B4D951014D6E4D44A529D322408502
              2CAC8512A2C9260EE0AA72BDEA872C59F82F8915172928B96245881EA212B714
              5D442D65235E303A9A20EA1BA32AE882ABAAD784D88B291448D10948DD120EEA
              DC8AFDCB9BDD4C424C3652212902D8A2A8DD413C5D1F546EA0AA0BACD334E265
              6DD0A83D58DD0AAEA14E05AC1DFAA9D0EF2ADE6EA747BCAE4572E0D7C3E8ACA8
              2CABC39DD56BC595E8E74F9337162CB31EE872D4C6086958D55DBE5264A1BA2B
              AA755533BC9557DD429BB792A1C951B383D02D13DC599833A2D29DC596650CCD
              AE3E94A49EBFE94A49AE0A8F5F3A21EB6854CD4B6AA8AAF5D897071E11766763
              7BA57378B6CB8AE8B18E96958B5D82E4AC0D5CCE82DA27358CA464AC4C6B4B65
              7538B0262162ED0C382090B74783248C1ED9CDD568ECD7F68167BD8B4B643139
              F03C3E46DE1A96F4AD6A54773442619B042D5A6DFA355E3374D6C6755A704A1E
              B36168566DCA1EAD3B2D6F831306683C95BE8E5ED0485753A32423DB400A62CA
              BF720CC9A984DCD10AEA658E2B76A5301BA203154C012B5E39154914ECFF00E9
              511334EA47FA0A0EA5EA899B99D7AA2F679FCEF87E8EA6BFB05044CD56F74DE0
              812B99F90FEABE8EB7E37F9CBEFF00E906E2C7E8CC00720D678A19B945406C04
              C1B2BB1441A8C0D70B300DD93C3F82A1AE00F2DEE0173BDCE91186C013636F04
              B30E63DFAA5AB4493E31A253CB319D3879FE2818DA8D67C024081C49837E0A52
              03733A66CA3C753CB589B79F7A007026D17E444F2FC7E2985C1B19E71AD94A3B
              A378DF9F9F3EC5124CDC75E0801652E22330F04D067536E3CD3BA408CA00E439
              A44C5EC7F9A00424EBC7AA668765816B5AE12916B0D0C75F8279E80DBD5D7E1E
              7DA801889064B49E891EF0008D539101C2481C646A9A09020103DC8015B81EBA
              689800D9D64708D53C13AC83ED29112D36B9D24F9F3EC40083794DBE0A2049D0
              EBA4F879F2549C04816E07C5301024003C079F3E2801806C682639A791136D78
              0F3C9389235E1F7250635266E2E04A006D0C7B2DA2798B6F5884D7E1C2FC12E3
              3AA0071783D169FC9D11F28B036FEF48F815996CBE3CB8AD4F93D1FED1607FC5
              FB8A947945797C25F4CF42AFDC5E5FF389FDA6C3FF009267EFBD7A856EEAF30F
              9C4FED261FFC93787EBBD6A99C6E9BC91DC6CEBECDC21E7419FBA11CD416CDFE
              ABC1FF0097A7FBA11C05967884B96294EA1C54C68A444750729A8390C1153D50
              E57BD52E58B3705F120A2E525172C08B503D442D745D442D6D14CD58C06AE882
              AA8EA9A20AAAD584D8B81A99BA287750ACD514DEEADC881753D02B215744595D
              08626CA6A0DD280A9AAD1A8374ACFABAACF90BF0B2AD15154AB8A1EA94A26928
              71BAB681BA19E6EAFC39572213E0D9C29DD0AE7CC21F0A774221FA6AAE8F0737
              2726762E7295875C1CEBA0C4B774AC97D19792426D8E0E8C9AC4E651A277D685
              7C303C109D896BD2B1C9D9A9833A2D207756660C68B51A37565C9C94306A987C
              CE99491245F449576468EE3D34131293B101C1725476BE7AC5B2B5E8624D46CC
              AEE65838ADCE5E3A61189A920ACEAE6C8A792E41E20E55CFBF51AEB632715DE5
              958B706B5D3C8AD2C5D66871BAC5C7542F240D16C83D8CB35B994F6AD2D96328
              0B3DE211FB3DC000A59381637523A2C39D16AD23B8B1B0F50485AD49D34D5589
              9B25BA2BABAA8BD92025574560BB42D97B18E5C92A54A20C2372FD128D266E8B
              2B2A6ED350F72B04AC0062CCC63F76023B155229959B537D6AC6BDC8323B3985
              B882EBDA93F4FD928213DBB7BD12B4F0821D50FF00D37F18E0B288FA61DD37E6
              1737F20EF2AFA3ADF8D558E5F61B889CCD24BA728225DAEA84D5C4C687D644E3
              0B4384160DD68D50E6DAC73EEAE7D9D216B1A49B779369A8E7C7A25BB6161D72
              F8F9FE699C278800CDB2A00720174436D3AB930220968022538D0B84CEB76F9F
              3E098920C0CC47B2E8A01388B8B7FA531EEE969D72A90240D0C8E3A2639B365C
              B742013A4B840373EAA4645883EC6A52606927AA69313962DCD0036F120BA79E
              9E7CF8A7831C6C7840E291372349E47F8A6245F2E522748EA801032EB73E7E7C
              FB53137881AFDC9F8DE04DEE984DBD9E7E08025633A0E490D3288F12134906C7
              4E4DD52B03D63C3DBF6A380108899F70F3CFCCA6B08EF48E214A3841B1B5D300
              385BDA801B8090E102358E09E2D3CBAA7032F1163C94240BC8E0801E6E4F86BA
              EA9660013136D6120E820CFB84244EA049F6200791C39F295A9F2741FF0068B0
              4608FA4E3E05658D74D64DFCF995A9F26FFB4382B7D7FB8FE2A51E515E5F097D
              33D0EAF75797FCE27F6970DFE49BFBEF5EA15345E61F38B03E516149FF00D98F
              DF72D5338DD379A3B7D95FD5182FF2F4FF00742D06E8B3B6510364E0C72C3D3F
              DD0B41A442CB009F2C517524D2253C8532032838A997055B9C10C922A2554F53
              2E12AA7B82C799EC5F143264D98289785813DCB522BA885ABA222A3C21AAB810
              A6688203ABC507546A8CA850B5345A713A36A2B60BA25A77550DD55A0D96D4C8
              B41140D95F284A2FB2BF3A93646AC4FEE959F57BC8D73AC50757559A6CBF16C5
              0421EA844C2A6A3654626872402F1756E1DD042775292953665215E9A2B94934
              6A61EA0002B9D56C81A4E21585E558A48C7349B2559E0841548952AD50AA334A
              1C915D510AA50E45D12E0A0192E51D4165F841042D368DD416199108E021AA89
              3B2A64612524944880E199F9C15D1E086E859D4B0796ACC2D7C353CA177B3E55
              347371C1C4B88B20317A2D122C81C53572E4F7352E0E7318C71A8B371145D2B7
              ABD305FA219F86CDC15B1CB4883C76737530EF288C3517B405B1E840F04E3091
              C149E74D50960DC8E183B305B145C4321054A965211AC16B2A965A668D1B0EE2
              485781002A62CAD06C15EB394CF159A34ACD09563F46A9A753742552A4B53598
              A3B4038C6CD230B3C34AD3AC416C210D30B443A9490762C7C3B229D6772A4FE1
              3C1643AF5F59BFA9E7CF8ADDA200A35872A4EFB161695DA60C49E2B1753935CE
              CE8F470D306BFF00611899ED8104C408197A04300499239F057E2AD51ADFD416
              9E887B01A0137D7AACC6D1DC1C0E91C13107EB409D6E9FEB903258DA64A630D0
              48C9006A27A2004444DC70139B9425179246BC5C4289BFAA35807CF4F309E441
              873798B68801E4177D513D5306B641967B0F9E094DF51078013E7F8F54898040
              3627584804449D5B1A244020F749F03E7CF44E4983DE8239263677B93E004483
              37E3A811E7F8F54E26353AF24F3331371C0CA69DE9837E450030038033AFC130
              11133C85D204198BF894A60EE81035BA0046635F8F8A57363C4693129037D41E
              B2988039587240C6981A0D675E89C65D091AC79F3F6A5ADCF04F040BC89EB080
              166006B33C43534E506737D89C68490E097C7ACA0062ED44E9CA6C9E0CC9917F
              7268124091D25233C26D169940878EBC56A7C9B3FF00A8B040DA5E4FFF0052B2
              C5C0DE1E1ACAD4F93823E50E0743F49FF89528F28AF2FF00397D33D11FA2F31F
              9C607FDA0C27F95FFCCAF4E7E8BCCFE71BFAFB067FF8DFF915AA7C1C6E97CD1D
              46CDAF1B370827FB867EE8473310B9BC162F2E0F0ED9D29347C115E9B0355CDD
              4D1AA58B7373D204A7F490B9F76D2038A81DAAD1F593EE31768E80E23AAADF88
              EAB0BF2AB7D6503B50734771B1F68DA35C7355BB1039AC63B401E2A271B3C553
              34D9628D1B1DB050757EAB20E3C0E2AB76D01CD67589D93A355F5E78AA5F5642
              CD38E1CD37A603C55AB1B269D0639D2AA75D0C71639A89C50E6AD8C5A2D59104
              8B294F5411C50E69BD2C73562B22F220E6BB2AB054EAB30E2C734BD300E29DB2
              2B21A65EA97104A04E34735038C1CD41C5B26B30712156E00A13D2C735138B1C
              C26A2D03CE125AD4C1A0142FA503C548620734E991EE85820267390BE9239A8B
              B1239A95488F70B9F0557608776247350F4A1CD49291179105EAAC6344A0D988
              6F34453C4364234B23AD07D16A248DD42D0A80C22F56AAE4A82EC81D52528494
              40D91421D3089A6C84E1A254C405AB1CDB4512488B84040628C23AA1B2CAC6D4
              CAA391928A01ACFDE5012ED0219D5B35585A186A79E146316C6E491564772512
              08D56AFA2EEE884AB84A8E3610A4F14911591020780AD63DC7455BF0951AF83A
              23B0D86B0B26B136379522A0DA842596AB782D6A58491A2B7D0C0E0A5D8647BC
              8C76D4A8DD428BF1246AB52B616068B3711872498093C7240B2260E6B97289A8
              615668B9AE48B1E442869913D68230D5330AE2D6A2E37F62C6DD351A376E470E
              816B6168BA97A438CFE81C3E2166307D3B46FD8DAE8A7EE6AC0D34DA2DC516F6
              A608B345C0E8A87124C5C78044E201CF3BC1C44C175F44306EF09E3ACB922F14
              937976BE7CFE2A2492C88769CD4C1232E97FD612A245FEADB9427603996EB9C0
              D4DA39A6B9046F72106C522D126748B5D36597C7DFC51604B78B8DC9F6EAA265
              D200B9EA96E8B6EDF814F0D91244F878A2C089B18C84E979E129E09D00B75F3D
              52CAD9911D7AA511CA2626100370911A73D5239B9B40E16F3D1231A7BE079F3E
              2A401264093CD004640D6213EF4893C794F9F3C938CDFAD63AD937182D768801
              8490278721E1FC13E5247136F826179BC4F194ADCC4E9AF9E8818DAD8DCCC192
              9C191782744CDDE034327CF9FE2A46FC47347203175A2D6EA7CF34C648874194
              85AE4F85D3DC182801AE45DA2E780F14A64EA3870F3E7C538026E901244CEB1A
              A0421D7EC5A9F26C4FCA2C11FD73C78652B2C7091EF5ABF273FB4583FDB3FBA5
              35CA2BCBFCE5F4CF437685799FCE45B6E60FFCB1FDE5E98EB02BCCFE723FAEF0
              27FF008EEFDE5AE7C1C6E97FA22AA7890CA6C6CE8D03E0A47156D563BB1043DC
              2745038A31AACFD9B3A5AD1A15F19966E8576D01CD64E2F18E930507E92F2AD5
              D35A324FA8A74741F943AA436809D573DE90F49B887CA6BA5457FB274CDC74F1
              5238EB6AB9EA7887F35676CF3C54FF00590BF60D6A9B4238A1DDB520EA80C8F7
              9D549BB3AA54BC143E9D07EC30BFCA9D5486D29E285FC98F60B84357C2D4A7A2
              16088BBF2357F2813F5931C7FEB2C50E7B6C52CCF52FD742FD866BBB6811F595
              67689F59643CBA355101E53FD788BBF2354ED13CD37E513EB2CA2C7A8E471E28
              FD788BBF2354ED2FD64DF94BF5965398615791DC0A976222EF48DAFCA3FAC9FD
              3A7EB2C9A6C3CD10CA4878621DD9078C619D55ADC59E6B3C523215CDA70A3DA8
              96AC8C30E28C6AAA7E2C8E2AB2202AAAB6C1358E242591D8F531D035439DA507
              555566C201C37A02B1628953CB236696D193AA3686365E2EB130EC1C56A619AD
              CC0C21E388D6491D260AB6685AF4DD2D58781310B6A95D8B99955337E3768B52
              5149672DB37FB512A6D7CACF6D6976A8BA4656F585C1199CED93A8642C5DA648
              056D3FBAB1B698DD2B365E4B6261E1A5F5EFCD74F80C399165CE6047E75ED5D8
              600582D5855A336574C2D98591A24EC10E48FA2DB05234D86A454888B03A15A7
              4D946AA316AE0867D159470904591CFA21F58B299DD379E438C298A74299CA5B
              98F1B664D404E4352C3DB456F602744F4C33337B226FA8E015BBCE716B036DAC
              A96923AC0EBE1811A2CCAB85871B2DB7BB330142546492AB944B22F6302A6166
              AE8AE660011A237B29AA8C652102CA9D25966362B0A2960712E0DFEEE2C63885
              C99915A0403D5CBBDDB34C3764621D03BBC7C42E0CDEB080D803D5F3D1519554
              8E8F46EE0FECBF171DA8FD9BDE4A1435AD00587DEB599428D52F3518D7169807
              27EA85936C8D826200EEE8AB71ADCD5195BA1C71B831D131205C38099B79F3EF
              4E2E5D737302C3AF9FE69EFA99D3D54891199FAC396813170041278FAA9C4C13
              2E981F552235CA5C6FA70400DBA6627C32D94AE0DB34F8734B24CDDC7C7DA9A0
              175E759400C1C009BFBAC9188921C67A24088800F3227A24664F19EA8E404074
              3D6D09EC0881C39A6812667DA90CA40BD8F09400806EA5A24F5298C65B469A5F
              CF04F21B1D6FC53680007DA0F9F2120101CE0F1B4A4627417E8911BA60111784
              AFC43BC3CF9F7A6315DA058CFF0004B51F1D133A0DE0C91CBA24418204877140
              0803F1D79251AEA6079F3FC11D88A7841820EA604DB291DE2653E170545B8715
              F1170E130E3000F3E7456687655DD55602049EE91ED4A00B19F095A01DB3AA40
              C8C675CA5BF159EEECF3114C1CA4DA4DE3CF9BA4E3438CAFD85BB0399F3E7C56
              AFC9D11F28705C7E93C7814057C33B0A1A5EE6904C0846FC9E207CA2C0C4CF6B
              F714926A4AC8E469E3935F0CF457E8BCD3E723FAE3007FE83BF797A5BB45E6BF
              393FD6FB3FFC07FEF05AA7C1C7E9BFA2392C4D6C988A801E28635C9E29634FE7
              9547EB2A42D118AA4129BD4D0CF25C492953A72AEC2B1B531949AE00B4BC020F
              1BAD3DA584A541D4452A6D6660E98E3A2BA11B334DD332FB111A28BE94688F18
              7244AA6AD3CA55CF1956A031215F41B98A83DB756610EF0553544D1B185C2070
              0B6F0B806E5D1078000B04ADEC3801A1532DCB93337138186930B1B1986861B2
              EAF120642B071F0185452DC93E0E6AA5201E9BB31089753CCF53387DD95B630D
              8CADEE679A398C057D3C308D1594D9BF7454068B2AA6A89C77047E13774423E8
              C185AF3641D6682E950B25400695954E66547E40A8AB4F904583453444BA116D
              6AB761D3C33F12F15C34900640ED0F3FB9187094711B4DD4681029812E2DE1CE
              12609D01C44295B305AEF1B3306E14EA3185D1C5B98A1B1CCC165A6EC377DC74
              69B4751C1144B501E504285566EA3B09807E2DAE2C7B5B94C5D0D881925BC890
              90333310C40966FAD2AD7413DB0E53456CBA8360AD2A02ED59F4481AA3E95468
              8498D1B983E0B6689DC5858278242E976751A55B0C5CF60710E224F805CDCB1B
              7474212A895A4AB619603D12590BC3E9D27F6975A54184055B1BBDA22A985E83
              325472B1C9D91A837562ED2EE95B954485998CC31A80885C6CAAD9D183D8E7F0
              3FD2BDABB2C00B058584D981B5B34715D1E128E485AB0AA465CAF735288B2996
              07D50C75C652627C14688B05601F4E3F64FDA16A5C996455029D6240395BBBCE
              04029DD4B338D4A6E1BDA83A152718A8F10492741E0140F677735F90F120C7BC
              26098F30435E0B6F78E23A2BA97672EC933C667EF502E2EC387BACEB1F6A952F
              D2D4F01F7A92445EE5154512D764CD9AF1DE89557641EDCEF7656701316E6511
              1340806F70A35C034584770104F8798517B938B036D2C3BEA656121DC2E47DAA
              E00D3DD75CF08E2A2E01CF686905D22215D523D268F4267DCAAAB26F605DAECA
              6CD915DD887488161A6BC9713530F84A80BE9542D2D300807AEA1765F28C86EC
              9C41768E6B403FF75FEE5C0D36CE233064B1BAC68167CF2A9551D1E8A378DBBF
              7FFE1AF8612CA861DDFE51C1BE7C94061301DAB5B52B8765E0D369B6A51D8700
              53AB01BDF9BF8055556B71B84CD41F6749CA78DB42A0A9A4686DA6D00E24D10F
              0DC3D386F176737D7443E50E744367A3BCF92A6E30E2DDD044363D5511008398
              0D0C0F154B76CD31548621B04E511D4F827737788206BC4F8F9F7F24C2F2DCD7
              D3CFBBE0A5306475221218C40E507CF04C05A6C6FCD3C34BAE75F8F9948969B9
              234B6B74201840260813CFDFE7F824E04922448E8A44723EF851235045A3EF40
              08102D6174B35A41B444F34E2C2FA1EBAA8C5A04CF48BA431CC49CCEB73252E0
              60C4DF8259620C98F109883C49BA6023122DAF9FBD2898B1F7849B0227C2014C
              7422E4C1470038EF5C1B8B0948C006C9C5B748848C6589275E0800BA984A0DC0
              B6BB6990F2D69993C485761AA52C661050A84E6000201BD86A12ADFD52D8F559
              F57A859AF63D9483CD3219F55C47456B74F833C56A5BB0AADB3EAB2EC39DA09D
              2C52C31C1766D359C4BE4F1773B2B367D7AAEAC693897B2090758F6AA31EC637
              1C638C123AA7B2DD06EDE9668628E18B5BE93DD27745E67D9ED4B62B69BFE52E
              0BD0FB81D2499B6BCFD8A8DA7FA3A660C66FB915F2548FCB9445E4B847DFF726
              F7924572558A4CEEEA368B2D51CE73BC4FDCB81F9C2C08AD8BC157A2E24B293F
              76664661A2EF490D73C38C3B34DF9705C7FCAD3F9DE15FA34B5E41F6B56996FB
              1C9C0DA92679FD2D9FE998EAF51E48A41F16D5C6115D8EC80FEC4F679B4EF1FB
              55F4867C2556D1B38E603A1E1F72C00D8394833A47157C768A232DE6FEC35D86
              A586DAD4594AA6619C4B4EADBAD3DA142A623114194DB261D2780D16351A6FA5
              B468B6A34B5D9DA608EABA1F4BA54EBB28BDD0EA939678C7F357636533155A38
              1C1E1C768D352A116DE20B8FDC161E25C1CE24002780E08EC7E1EAD2AC6AB9C5
              EC79B38F0E8B3EADD5CE7B15A8B0770956E1597508957D086959DBB65C91B582
              706B42DDC2D505BAAE6A85486EAB470D8A006AAA6588D5C454194DD61630E66D
              CA2EB62774DD6462B10034DD28F249F00AE70151586A8CB6409AB9AA6AAE0EB2
              D919EC6571B644D4CAF56FA4023542D5D0A17B4734EAAA9BB26B634DF8811655
              31D9D066AB8857E14C855B2765F9157518002AF5555D144636C7C352C462DECA
              CCCCD0C902638846B2AD2D9FB5AA340CB4A0379C58154EC31F9ED4FF000FEF09
              639952B6D4ACCA4C2E758C0FD90A447DC3F1780A78C78AF46A80E70D756B90EC
              C37A3E2E9B716D8A649923436E8B39988AD857EE3DD4DC0DC7E21745509AFB2B
              3D56E57640E8E451C8C270430B91FE8BA4EF6BF7ACFC7FE4CECAAE58ED61D1DE
              EF7F3446C7B32B78858BB40C3AA8E21C7ED4AF60A2DC36CDA6EA23118A3BA448
              6CC003992A3E8FB2B14E34E965CDFAA483FC55FB5B354D993444B774903D5F30
              B0B0A1EFC75114E7307836E038AB16C56CB6BE0AA61B14280DFCFDC3CD6D52C0
              60F0949AFC53839DCDC6D3D028625EC1B47061D132E8F72A36C6715E93CCF679
              601E00CFF2431ADCDCA147035281AB42A0665E20DBDA16DEC83F9A3BF6CFD817
              21B3DAE702F0D25ADEF102C175DB1CFE68FF00DB3F605CEC9E46D87890A184AF
              528B5C32B41160ED525A146B32BD21518641F824A8D112DD6CD56E1EFA2B4528
              08DEC7A26732174A726D18A0A980B98AB34337045B9B74ED68959146D9A5BD81
              69E1807688EA54E0E8A4DA6255A0005698AA46793DCB18214AE2A07804D88809
              9A9AAB9CD8831AFD92AC453214383DD51B62E3A14CE78241751248E300A635C8
              30401EFF00C14456905D16026C9EE2D8B37AA11986568BC7352DE6BB336FC08E
              6A805E5C6EE3060E5FE4A62BC651624F8DD1B8137C3E62910EF5A0289CD4EC06
              66F2E2147B671E30082743689FC145F5CD81001209E364DD821B3804E4A2413C
              E0266B73497992788E0ABA8E703C74989EB1F7A76D637EE9B4F1FC3A854BB65D
              B206DB95FB2D8F57B66676CB6FCEFC971BF9429E76B28303678B84347B1759F2
              82A07EC6AA240BB0CDF9AE22931C3174CBAA022334B6600981C166CCE5AB63A3
              D1A8F6F7F90D18AA78573D8E6BDC73032D6C7040E1EB3F0AE6B9AE912439B1AA
              BF1349C6B39C1D20CBA438E82DC951D93C92ED5B120C9F5A3489E2A8A91B7D1B
              97626BD1C4B8398DA8DA9CE041F1BA10CB9A37B5E654E1A1C75304C115201F30
              A21B234D6D39FA79F32949938AA5B0FD6FA8E2A226C2620E8138049208D79BE3
              894D008B89BCF7B5F3E7828121C122F7F1E490CD9B8F8A63C49D26F7D1211A65
              24898BA760274E5D2D2988DED0DB9117D122248B0379B5D2836B00626FE7A22C
              0909E6473B8F3C136835F88EAA2434F06DFCFDFE6539D0CE588472315B98E7A4
              F14C220777DDE7CF825124584F24A4C48E402403E9A11368B4A4222EE1FC1275
              DD0348E5EC49D33716E508015A48267D89F50D3C792699F6FC530B7398E4800A
              AB8BA75704DC3E4782435B24362D1D7A2B28ED48616D7666EADE3ECF3F142168
              2299155AD2E6E8E275923959214E6D9C4B9A49DD368D42B6E45150AA0C76D2A4
              C0451A241EAD00128173DD51EE739D99CEB1293180B5CF782E121A1A05E4FF00
              253349D998052A94C99915240F618F143B9124A316154B6834D30CC4D32EE120
              020ABF6254654F94D847D00698ED2222381E0B3994C17B65EDC849BC11702792
              D0D81036DECE787824B8B8820F0CDD3A7C135A9D154D414655F0CF42A8F903B4
              A39A39410BCFBE7231951B89C0516B7236A53A9266F12DB2EF4D42F61223495E
              7DF3874FB5C6601C6A068652A84E6936259C8755AA4DD1C9E9D2D6ACE3E9E3AA
              60B685681998E225BEC170B406D6C1939FB27E7FD913EF95978CC316E2EB3BB4
              638801F944DDB1AE9D53B70BBCE69AD4C3D8D2E7B6F68D785D688DA8A2AC94E6
              FECB713B44D7C5D2A8E665A749C0802E50FB431ECC6D6A469B5EDC9339A06B1C
              8F452385CCE0C3598D79198B4CD844F2D610ECC13DCF10E19DCDCCD6C1B8F188
              53DC83A36F09B503B0A6962A9BAA7091171D507558C2F3D91764E01DA85652A1
              D9D3617B81983960E844EBC558F0C1DD6903AA836C924805CDCAA4D2004AB280
              364C0BCD52D6D8A951C639A754338EEAADBDE4866954C612CB94057AE5E938EE
              AA1C6C903645925E8B634C21288FA55A6C16D253B1228753B206A8872D479B2C
              CAF67A103201138542844E1536017C142A68A63455D45118DB3716CC2625F52A
              35CE0446E81CD5E769BA9E3AAD7A4C9654896BAC6C210387636A577B1D6DC710
              498008132558DC3E782CACC2D33783A813111C94B723B1A676B611F95CFA2FCC
              39B41F8A7AFB41D8A029B1A594E64CEA563BE9E46D23981351B9B289B2D4A346
              9B6A767D857AA18ECAE7B398D60423724A8BF0B8B7611E5C0666B843826DA78E
              C1D7C2D4029385470B38B04CF8A8B683DCD6CB834BECD041BF0E56BAA2AD0A6E
              6303EA652E63CB841B113F87C145583A06C26D6761582955697D31A11A856BB6
              CE1298269517171E194367C4A01D86CD90F6CC8730BE60DA35E0A9A6CA6EA35D
              CE692E634169063531F7AB115BA1EBE2AAE26BF6CF743BEAC7D5F05AF85DB4C7
              520CC55224C5CB4020FB1651C1C39C3D2299CAD0F3636698BE9D4594DB8720B8
              BAA30300073DE0CE9035FE49B16C75387DAB4F20661A911D5C0003D8B5B66E2D
              9430EE639AE712E9910B98C1502CCA7B561696E72E13004C0E0BA0C330863487
              B5C082E913602DC973B3B95EC6FC4A3458D60CA3C125314EA1682D61783C40FC
              5258AA469B89E9193A2ADEC4442AAA0B2ECC96C7222F701A82EA2355655D5553
              759BDCD6B745CD3756CDD50D375683757A2965CCD549EC2F888B4EAA2CE0AD53
              455207752706CCCBA6C754ED60C8411009D3A70F82B8A814022AEC25D9B74906
              64F34861CDB7B4EA7C55A14822C28AFB081636B8F7CFE2AB7B0E7B8E22F1E790
              F722782ADE86C1206AAC2E7183A88F04CDA4798D00FB3F00A6ED549AA9BDCBAB
              632B6F3326C7ACE31F5044F5D571342A35D886D98D029E5203891AC8EBED5DCF
              CA4746C67F2CEDFB570749C46280078FAAB36693D674BA38A78BFC84E26A35B5
              8E5681BA5A61C6F267C50C1E2F2CB0D378C8EB2AEC549AEEE3FF0062A01B88F6
              43151A99B74222E767A8E73A33388902FE7F92560D881A72BF15293A9249E595
              46492044C7EAF551262B175C09EA3AF3F3F04DA0881EE5201C2F0EB8F5404A1D
              6105A239040118BCE512351127CF9E29CB601D2C413013C902F3ADAC9171B588
              13C1A100440E7A0D377CF24AC6D234D63F8A91B1FAC0EB60A3702C493CA10310
              9D0C7B9282661BCB85D39DDB893E005928044169B7C3AA6C060DB804C7879F3E
              F4C49E3262E6E9C1CB02E7EE4C62E03781E1E3F82180B29CD17BF49F3E7A2475
              D0833F7A7B87696E09341CC040049E48B01A01989D3CF9FE291802F22C35F627
              1AB4E53A704C045C08B6B28B025DA0868EC839D4C40327C6E9CBC9A2E6932E73
              E4F871BF5207B940491316837F3E7DC9169E52468A5A990D084C7402328731D1
              214BB62C6B4329B5A1AE98937910654058F08F14C6C387B4A149A1B8A65BDA43
              9B0D30D9B179332235F6237619CDB6B67B5B622A100EBCCFDEB3C5899F815A3F
              2789FF006870067FBDBDFA26A4EC8648A5097D33D0837E8DC00CB3A741C179F7
              CE31ECF158061683DA51AA353682CFC02F4572F3AF9CCB62F659FD4ADF6B16A9
              3D8E2F4EBD68E3B1159BE9953E885E98A7DE3A40FE0A3E94DCEE7BA830BDED21
              E64DE75F02A1893F9D3FD9F605439DBCB4C78457917AD8676F4437B5765755C9
              974324C4787B7E0A86625F0D05B2E6B728766311E1A4AA0B94E989702A765746
              B507CD014DAC0D048260922DC8704F51B0344D876C3029572037555934B601AA
              AB1A2B2B2AC68A6843BBBAAA6F795AE30C4307DD2116BDDBAA8064A93DF2154D
              76F21017D11F4A16A31BBAB3F0C25EB49B01A931A29AC22565623BEB52B11256
              6561F489A0656DD11385D55202BB0F6253620CE0AAABA29CD95555D62A2304A3
              5C51AEE7640F9696C136BD95ADC400EA6D601458D7E79BB8CA0DC7E90A909532
              2135EA0AD5DEE6F74986C0881C168D1C48CEDAA68B0D517CE49B9E71CD653744
              7523A24C61DE94E8BB672925BBC46A66FCD075B11958D2581D90381BEA1D3F8A
              B09B21711DC3E0A36360E6B35B817D20FDE73B48D071BF581EE43B2A8653AAC2
              C0EED044CC47149EAB3AAB115B08F4A6B9F50F62067A619DE3688FC02B462C39
              B90D10599402331E1A19F694105306C86074180C4B2A16B5CC6B1B93240920C1
              91D478AE870D506568A604061698913267C5729B38E8BA7C1F702E77512766FC
              3154144B88104B40EB3F6A4986892C5A99A34A3D44AA6A2B8AA6A2EE4B838D1E
              40EAEA50F3757D5D4AA38AC8FC8D91E0B5A55A3555355A3557A2A65EC5605535
              58A456C4544A9151402127098270801D56E562ADC863452ED53B533B54ED54FB
              967B197F29A7F223C89B3DA6C170AC07D2C187DFCF9FE4BB8F9522761BC73A8D
              5C3B72FA50EE8BDEE565CDE6757A2FE5FE4BF10076EEEFDF4B21809DE21DA0BA
              2310076B1BB675EEA80041272EBCC9E0A83689C3809D6D7F1FC5334712351694
              D05C4C65D63527CEA9DD01A04B0D87128015AD2C3A701C23C7CC2510632DD2F1
              CB691C6DAFE0907403607A49BA005AF075A220F54845A749481001103C24A690
              05A2FD50023A9227F94A440B1DEB7229CEBCA4DAFE7C84C753A483C5301A0127
              59E1E7CEA97D5B99B734B81D0DB9A531CA7DA12189C06BF194AC2F1EFB241DC2
              6D3E7CFE0940208B7984F801470B69A2569E13C9224B8883CBAF9F3CD366005C
              03694500A00DDB81D0A440B247999B13C4F2FE0968E88D2C8A01EC0189F2130C
              BCCEB6BA4D3BDAFC52D4787F0400E201998E77F04D169993E299A35B5BA04FA4
              DC1F62007B113D79F8AD1D817DBF81E62B059C0DF842D0F93F6F94180FF187D8
              9AE515E4F07F4CF4772F3AF9CD8F4AD9531DDADFFF0035E88F5E77F39BFA7D94
              7F56BFFE0B5CB8389D3F9A388C57F4971F0FB0215C779158A07D21FECFB0219E
              C32B543C515E5F37F641C615F44E8A87B080ADA26C149959AF8774B427AE465E
              0AAC393954AB77787BD40982542A2D364EE37BA66E8A68446A1DD4266DE44D5D
              102E3BE5322C9B9D65061DE4C4A4C3BC8107E18C3969B4EEDD65503BCB459DDB
              95064D15E20DD03505D175F5B1423CE928019A2CADA62141A4429B0A605E34D5
              535620A989855D4D1044CF77E90AB40559BD5573426C11360B22E9DA150C1BAA
              E6F051245C4D90D5BBA510AAAC370F8240673C2A9C20A21E1535042B11064029
              8500A61311ABB38DC2E9F047702E5B679D174D823B81737A9E4E860E0381B24A
              00D92588D27AA154D4D15A4AA2A15DC9707162B704ADAA1E6EADAA6EA91AAC97
              EA3625E92F6AB5BAAA9AAD1AAD08A5970530AB0A6A4418E53274C810E1385198
              512F84055962ADCA3DA754C5E93649459076A9DAA24C9520AA2CF632FE53DF63
              11204D46EAB836107182EDBE9EF5DD7CA731B1CEBFA46E8B85A52314C873E679
              AC99BCCEA745FC8BF1647A4B8C8DD36D792A0CE72247B95F89CC6ABC873B98E8
              876E6B9199526D1DA1B336D7979F3E29B748176E9A494E41D37BDC91260EBA7E
              29F20271171987411D5334EF4B5C3DC9893C245D4A3489D78FB1002B0FAC0091
              CD4667EB683CF9FC139CD97598E695FA81EEE68014C03BDF04BDDAC9F3E7E298
              8999D08E7D5381607F0400C4E605DC4F3F13E7F924DB4DFA84B5064D8989809C
              892374913D103146F0064DE2D74CD0446A988F1B27B01038F440080049E8144B
              41CD64E048D3F8A68D6E3D87CF34807822E22D7905227413D523AE53C3AE974A
              E1C477645E026030EA742344E600924C2604802E040E4A45C6234079A0088D35
              060273AEBAF2096B00DFD890CA469049E3E7CC2004DE62FE011FB047FBFB03FE
              3B4ACF6F51F05A1B0607CA0C04401DBB45814D72432783FA3D21EBCF3E7347D2
              ECAFFF0037FE0BD0DEBCEFE734FD26CA1FE37FE0B5CB838783CD1C6566CE21DE
              0DFB02ADECBABAA9FA777837EC099C26168878A2193CDFD82D46404D4DAAEAA0
              6550A6010AC2B0EC30DD0ADACD195470F195595632151240151561CACAC465B2
              183D4911B2554EEA05DDF289A8FB214DDC9898926779314EC1BC1020DC38DE5A
              8C12DBACDC3919969B1CDCAA0C9A07AE00281ABDE47D77094056EF4A018CD365
              3A66E5541594B52A420969B2AAAE855822141E04590233FF00BD289637495416
              FD3225A2C93045800852060855930131768912090E51A9761500E4EE24B4A400
              AFD10F555EF9843D5D158883200A9855B55AD0988D0C01B85D2E05DBAB99C08B
              85D1E07BAB9DD49BF0701E0D92501A24B11A8F567143D5729D474212AD45D69C
              A8E5638955575D458156F74B95B496683B91A9AA897342B40BA8B559C56C4666
              4829A80524C8B1CA49894C9084E3085AB572ABDE6CB3716E201BA5265B8D5967
              A48E6AC6D59590D7BB30BA3E8C90A165D2850602A60AADBA29B544A9997F29A7
              F24889FD20D0C2E12903E9C3748DED2405DD7CA6BECA1A7E906AB85A001C78DD
              6EA05D65CBE4753A3FE4138A6138A7483AE59CF3A2A5ADB10597EAE0AEC5002B
              D43601A7A21EF24003778AA4D8390D378FFEC145C245C4418D7CF3521CAC6FC1
              30BE9136312801B2C9BB6E7504F9F23C13DCCC0F8F1B24D16B06F984C35248D0
              6A7DA8014721209B69E7924E03581CD22D6CBADF030958BB4060EBEE4F818D11
              68E3C0263668106E2382940E4344DF56E1A900C397B2E9F81164FA6F01F049D7
              8169F04D8113E112349D128B774F14E224803E09A1A49248D3978A00513C2207
              0295EEE37EA0A41CD336F827B08B098892100300E2E168F82602075894FC458E
              9C93105D6B5F92007D4403D382724C18FB44288920937BF2D53911C019D10034
              89BFC0A42E2FA69AA799060409D5370B88BF10801010DF0FB5686C381F28301A
              4FA4367DE567FD5D08311108FD853F97B016FF0088694D72432783FA3D25EBCF
              3E7347D26CA37FEFB87EC2F4272F3EF9CD16D966DDEABAF8356B91C3C1E68E22
              BBBF3A70E8DFDD0AC6B1CE09AAB27144C7D56FEE84650A56BAD107E944722B9B
              FB02AB45D950F058216CD5A40B0D965D76412A69906A8951AF02254EA5739754
              10390A4F7E61AA968B21A8954AB2226EAB00A8364BE114DA764701560EE64855
              64BA3C5399543D995F09585157656D145AD828D0CB21DCD8714AC6335D95C0A2
              DB5A46A82770521520429558AE8BAAD693AAA1CFCCA350C8B12AB61286A82ECB
              C29B0C12AB09D877921B091A2676898380099CE0427446C19C3E9112CD10CE31
              502BDA6CA2C921DFDD551768AC7F7550F304210D97B5CAC1BCD42B5D75707C35
              21107D3B6A85AC08D512E7D9535482D5344594B3456B152C3AAB58E129B11A18
              2D42E8B03A2E7704EBAE8302EB0583A837600E1A24981B24B09ACF4AAD561035
              2B494B155E38A01D5A4AD79A662C712F3525C8BA26C16730C947517582AF0BDC
              B722D835855A10EC785687AE8266468B4292AC394B3A764284529512E09B384A
              C9509FA2CDC66856854785998B7482A3265B8D6E04CEFAD2A1A059AD80E0B428
              3EC14132EC81814DAAA6BECA61E126CA28CCF948276580742F0B84C391E9ED39
              80B8E01771F29DE3F250BC6FEB13C170F8771F4CB123AC02B2E5F33A9D22FF00
              C48271319DEEDD126DA2A2E44CB7CF9F32ADC5DEABEFD7BAAA3624071F778AA8
              D8275CEAD201BC266C81A8B1E0DEA9F5326471164D395B79D3D53D1002BE5B0B
              0FD548379449E42DE6FE65277762FF00E9E097D48F13A200730418989F574F6A
              8DE4C9F784F00CD891022D094968B6933A78268063A6A2679278B0922498336F
              679E69A6012351C23CF9F627208D79EB64808E604EA2FAC714F6E605F584C0C8
              07EF129F4781AFB13023BB31D34012E24CE964819E963685224CB80163D10029
              3C223A14C7C7870090241274F65929B7511C359400F63C87B3EE50F0238E8A77
              07A9B9510241B69C3E080113A0053C668BFBD2703A470F8A6B49124200503988
              989E4941D1B7B42620E5B6B1C93C3AF026DD50021703412B436089DBD80B8915
              DA808E9F05A1B08FFBFF000168FA76CF44D725793C25F47A33B45E7FF39BDCD9
              87F5EA7D8D5E80E5E7FF0039BFA2D9BFB753EC0B5C8E2E0F3471CEFE91FF006B
              7F7423A8C4055B70FDA063F9B47D8886D120292C89248B258DEB7F63543B8B2B
              106FA2D7751711A216A61093A26B3453212C5268C57839B451CA792D8F420782
              4701D15FFB1029FD7918EC07B4164735A48D112DC06F4C229984B68AB79E2D93
              8E16919ED6113287AC0F69A2DBF44E8A9760A5D30A0F344976599E2437443BDA
              E9365B5E876D140E06FA28F7E21D96613DAE8D14723B92DB7606FDD4E3043D55
              747A88D10782461963A34506D37CE8B78E067824DD9FD12975111AE9E4628A6F
              E49DAC783A2DC1B3FA247011C143F6112EC331B23F9262C78E0B6C60BA26381E
              8A5FB3123FAF239F731E6A0B225949F1A2D51B3F7A615CDC0F4507D4224B0346
              39A4E8D10F568BF92E8BD07A283F013C125D421BC0CE6FB2A8382B5AD79110B7
              3F27F44BF27F452FD842EC3300D2A9C953569BE2C17467679E4A2766F442EA10
              BB0CE69942A7256B283F92E846CEFD5521B3FA23F6507EBB3270949ED768BA0C
              082005553C1653A2D0A1472859B365523462C7A4930DBDA92B3224B259A28EA7
              175F7B542D3AB9DFAA6C5D3A84D9361A8B8192AF9EE66C6A83586E1154DF1084
              68214F3382AE327165AD59A0CAAADED873597DA3B9A7ED2A2D0B3953C46A8AC3
              9A976C39AC9152A246AD4E68EF8BB469BAB81C543D2073598EAB539AAFB4A8A2
              F3925891AAFAE08D50388A93C553DA3C8BCA83838A1E56C946090C1FBC8AA55A
              06A82ECDD329F7C2AD64689B499A6310235531881CD6466A8907D5477591ED97
              EDEA9DAECD81C1FC04F02B8EC3FF004E8CAE30794FC174D8D2E76CF7E79EFB7E
              C2B97C35F1ED11249E49B7AB73660550A0BC4349C454B3A67D5550B1B075BA2B
              2B01DB3CC117D7CFB55204C80D30144BC706419983A5A52241244BA3C2425944
              441B19E3E7CF8A8C66896BB9A0096F6B7BF31E7CFB136F11A9D6D64B28040827
              58F8FF001F309A003BAD99E9E7CFB5363241A6788BF2D13659999991C134E503
              740F0E098011D4DE25021C11067C74D127199178EA3A84A1D7CA3DC5358BEDA2
              062120D819F04FA90045ADA26301B2663C354AE6753080111136D3A279D6C64C
              951D1A64FB27C53F3BEBE7CF8A006E26C7DC9C9DE91CBF04D1EC8D754AD1D23D
              C8015F31117E329CB85CC41D6F1D534C9333A70B4244C34DEC801AD9B7ADD613
              8B089891CBA288809CC46A609E280118CA6C2427EA3ECF151B11700123F14FC2
              481ECF6A0094890661A4D91BB08C6DDD9E660F6EDB42CF9877811AAD0D86236F
              6CEB37F4ED4D725793C1FD1E90ED1703F39B3D8ECC3FF52A7D8177CEE2B82F9C
              C1386D9BFE2BFF00742D7238B87CD1918360760E8923EAABC52054300C71D9F4
              081F5797544863F92E7BBB3A2EACA8D3038281A40F057B98FE4A391FC902D8A4
              5113A29F60DE4A618F9D14C35FC9141B14F6039290A402B0B5FC9448A9C92DC5
              B0DD984DD984F96A251539261B11ECC724DD985287F24C73F24A985A20690E49
              BB26F25225FC94497F24531DA1BB26A714C269A9C934D4E49E9616599025902A
              B354E4967A9C91A58596F6613646AAF3D4E498BEA7246962B2DC81483421FB4A
              9C9376B53927A585A0A80A25A10FDAD4E49BB6A9EAA34B0B41394259421BB6A9
              EAA8F6F539234316A4145AD4D95A84388A9C940E26A7228D0C3520E86A50167F
              A53F9148625FC8A54C768D0812ADA6B3E9D6713A2329B89E0A2C65E928662924
              075EEA2D76A9BB268568A546AB49A0E823A9F882AA6E67BFB3167719E0B74A26
              38C90880156F365754A785A4436A125DD4927E0A8C432931A1D49F21DF566655
              72C64D4C9BA9B1B846540D01C436FE30ABCCA7567F27B201261961EC51187632
              997E20DF9026DEED54A50B64632A5B8E1C12CC15162E25ADCA380994A4AAF62C
              2E242691CD524951928184EEA7DD42CBB9A697A620A3979A892DE68639F9A8C3
              D2A0092E6F34B30E685CAF4E1AE4A8912DA0E68D9B509823389F715CB60E4639
              8065906D72BA5C6C8D9750931F483EC5CD615D18E99B6B29D1B30F884622CF8B
              131D552D00C1245E399F3E79AB7167E9DD71DE3717F3FC5572639DA4489512E1
              1371DDBF1CC54A90A5DAB3B6CA1875327CF9E8ABCC35903DE14D803EAB69B9B2
              1CF03D929C7914B80AC7D3A19A98A14E9E727469B7456FA3E0B094DA6B86BC9E
              2E39A74E1E7E2A8C653A585AD41F440172E22499884555650DA345AF6D58734D
              88B91D0857A5BBF933DECBE01EB1D9F56839EC686BB9025A67C3DCA8A148D5A8
              29B3283112744B1385AF876667657341EFB7CF9F62370FE81DB37B0CA2A0E40F
              B7551AB7B92D5A56DB8055A468D4ECDC1A4C4C80AB040810D3D6569E27D07B5F
              A7233C0D735C7B10986C2FA4D6A841CB45AE20106E790F724E1BEC4A3936DC18
              03AC6BD7C7F04E6E6609837BC23FB3D9AD776472E6168CC7ED43E330430D1529
              B80A6E317FABAA4E0D0D644DD144CCD80133C7CF14868016F0E651986C030D3E
              DF11669821A1D000EAAC6D0D9D5A5AC21AEF120FC53506279503E02932AE21C2
              A31AEDC9BF8855629ACA789A94D8035AD2328131A057ECE01B8EAAD0FCED0CB3
              871B8527E11D89C7D59DDA60893CEC344F4DC688EAA9B6024DED02C9CBAE5D1A
              811AA2B18DC2D2259469CD422E4B8C37E3AA0C4EA00F11C941AA2D8CAD58F3CA
              79269826F1648EBC448E69199112A248903981DE0472481B1713A26936D63AA4
              6DACE9010029120470E96F3E78A3F617F5F60047F7CC99F1400048173A5A11FB
              11A7F2EECF37FE90DFB535C90C9E0FE8F487715C17CE6FF44D9A7FEB3FF7577C
              B82F9CFB60F671FF00E43B8FEA95AE47130F9A21B16935FB1B0AE3C587ED28EE
              C1881D864FE44C27EC1FDE28E92B972E59D07C8C683131C3B14A4A6CD0958861
              87604BB16246A42876E13DC7415430F85349C6A652E9339B80E8AAC2E0595897
              389C8D311A12A7846D1C431CEA8C921D02E7A2581C531ADC8F319AE09D34572F
              6B2A77BD1334F678DDC8DE5393EF4356C3D11548A44968EB227A2BDF84737F42
              411EABBF154D3752151CDC482D80205FEE5196A7B31C696E99038226876D2DCB
              131C554683569E6A1E896FD0C75D3ED40D77E1F2B461E4BCBA22FF007FB11287
              C0E33BE4A0D06A63876A37B0A1469E6C43A49EB6F62428E1EBB09C3BA08E44FC
              423B6C9EB4679C3B540E1C2269D27D5ADD9775C3BDD110EA582A10DA865DD492
              7E0851637248CB761EDAA22B60A93367B6A35803C86DFC615D8AA3469B1AFA4F
              EF68D999F057576976CC600D24E56587B14E36AD321269D3323B1EA9763D569B
              3034A9513531373CA4DBA5B5423834BC9653C8DE0265572B4B72C4D49829A079
              A6F473CD13039256E4A3A992D281FD1FAA7EC0730AE23A2A8B5DC93D4C5A50BD
              1DBCC263866F448B1FC940B6A722A56C54873856F4559C237A245B53AA62DA9D
              51BFC8A9113841D149B831D1365A93C558DCE39A41449984015ECA202834B94C
              38A8813EC9251CC52401D46184E225BA06C12ACA47F3DAF7E0DFE2A46A9CB969
              53CBD4C5BD8A80C2C21CD3BC389E2B7EA4A918B4B7B95540455A81C60E626FCB
              82A88B4E81DA18D51E6AB1C076944923A021555DEEACDC81B95BD752A0D479B2
              69BE284DA8296129BDC4C6568B2AF174DEE22AB5D99A069CBA852790EC3B6965
              70200B988B2544BA8DA0B99C86A13725C11516B705B9E295D5EE634BE58D7341
              D418F828F64152F62E4CA6E9AEAEEC824290E68B1D955D3C956763D4A5D97529
              D88AF314C5C55BD8F5291A3D4A2C018D470E0A3DABFD5457A393A3944E1C8FAE
              8007C5173B659DECA4D4E5D1733853F9FCE62074F3D17578D676580692F74E72
              6DE0B93C16F63DF25D001333109B3661F14138933897EF684EA3C3CFF3551396
              37E0458E9C15B5CFD3BA5CEBBB8F9F3EE54E63725D17BF4512F1C10388F629D2
              3F9C52126CF11331AA817127BE600E7E79254DED656A4E32435E0D8F9E69AE45
              2E03B6A1FA4A31C43E235E082A99F0EFDE79A4E1041D3E2AFC463BB6A94EAD10
              E6BA9871DE038C2B86D2A6F6C56A664DED0442B1D37C94AD518F05D80AAFC451
              776C6434C49E210783B6D0689968CC05C2B2B6D2190B2802CE198DA2E74081A7
              55F4EA35CD30E61B4B90E4AD0460E984ED27462CCBC0960B4A27065D536790C7
              0ED37B53C787DCA0768E1EA06F6B4648D640286C3E24E19C5CC82CE2D2754ED2
              762A938D5700F300B4C34E91375A78ACCDD905B50EF656F1E3648ED2C366CFD9
              B83E75804FBE50789C63F14E12618D2219CD2DA3EE37AA6D5A0EDA12FC087532
              0B4381741E1E6165806A435AD973AFACF04561B683A8305378ED29B742382BBF
              29D0A6C26952766266F0D4DD4B7B05AA3B514ECCFE96F83A30C478FF0005A06A
              B6B3AA5163CB2A3441E6246A16750C69A78935EA3492F110C03A2A6AE20BF14E
              AF48E4248224DF484292484E0E52235283A85434DFE3E3A5FCFDEAB02040F099
              F04755C750C4D16D3ACC787736C58F4BA08916DEEEF1950924B82D8B75B889CD
              AD875F6F9F62444E823C130CD063879F3FC13E846BCB551262CD207DDE7AA70C
              363361F1D14667476BC027BE6113CF5B79F3CD00484CE9F6AD1F93E7FDFB811C
              3B610B36649B13CBE08ED853F97F017FEFDA9AE4864F07F4CF4A0B84F9D11FEE
              FD9E7FF92787EA397740DD70FF003A0D0763E0DD139717FF00F37FE0B533898B
              CD156C103F21613F64FEF15A19420760347E41C1989961FDE2B43B33C97325CB
              3A0F921012CA0AB321E49B21E4908A8B18547B1A655F93A26ECC724016E069B0
              527FEDFDC104CA59A9660096B40920688EC3D46D16B9A69B8CBA6D1F8A861DEE
              A0C0CC999A3D842B1E96926C82B4DD03517F66F68A6F904819264157E3E9B669
              BA6F247B15DDBD104B9B41D98F18010F543AB3F33C4468070436946AEC126E57
              420C1F928DFEA9FB50741AD189A449B66FBACB428BC50058585CCD446A1555E9
              D0A997B3A45913360136D349FC0D5AB451B4699ED58E27772C0F151C0309C417
              34EE86C128D6D71932D6A65FD445FC42675760665A34B2F53603D8A571BD561E
              AAD34574437D3B1106F0DFB1055839988A81E6097137E5C110DA5D9BC5461398
              713C7C5106B50781DAD17123A0212728CD50D5C5D99844343A080ED0C58AD365
              5651C1D37BFBA1AD063D8AAC438576766D616B4EB3A94CFECDF846D0C8E04068
              931168EA945C6374C6EE5563636939F96B34E7601DDE5D420AC51B408C3EE997
              33801A85555C3D17D4CD4DAE603A82047B2EA33A96E8946D6CC1AC9595BE8ADE
              652F446FAC5564ECAA02780A7E883D629BD1070714C2C6CA131684FE893F5CA6
              F433FF0030A64462C1CC28B983984CEC039C6D588553B663C9FD3BBDE8A4059D
              9B7984B2379854FE4B7F1AEEF7A63B31DFF3DDEF4F6F910440E612B73430D9AF
              FF009EEF7A98D9EF6FF7AE46DF22B2E81CD2557A1D5FF9A52450CEA01792D01C
              65CE22E6DC3F14B3BC80454104C0D75F775510D782D31DD766D75F3013766400
              23BA6753E7805AF632EE3E7710097C4E932A2E7384CBDA209137BC6BC12CAED2
              0183699E731D545C1C499E2E2743C75D146931FA87717B665E00062609BFB933
              8BDB399C041238EB1FC5396BDCE70830E71744911EE4D91E0CDA4CDE4F14BD23
              F50C03FD672943B8B9390E0043BC6C9A1DE42AC98D047D74A1D7DF364A1C3F92
              443BAA00433707A57F5CA621C94387340C57FF009898933DF48E69B8F6A8EF75
              400A5C3EB9486627BE531079951877328192DA2D23014F789B9E202E4F027FDE
              B54480437D685D2ED1757A987A6D6169CAED1D6B2E79B80C5D3DAAFC45314453
              7348CA4C99E7A296A8FC9A71BA8A2FC44F6EFB9F1D610E331BE633AC479F3ED5
              6D5A78E7D42EEC68FF00FB4FE0ABECF1A05E8D298FF987F04B547E4B35215C68
              4C8F3F77C120E8826483ADD365C5E604D1A6239543F8268C59EF5163872ED4FE
              09A947E41C8BAAD30D7D502A83909917B09D74BA8398581F2F07B339743731C3
              CFDE93EA625E5EEF47A6C73C105C2A38C4FB146ABF105B49AD631C5AD82ECC45
              FDDC80F729EA87C95A94AD136B5B6218FA8E70CD95BC0668E5D1234EEE81518D
              6C08AA0CDFA0F6AAC3EB90D6BF0F4DE069F48411D345235F14E99A2C0D20086D
              5222348B7546A87C85C877D30DA6F73AA4101A058C1066FA79852A8D0D7540DA
              80863F2C41CDAAA5EFC416B8760D3980FEF4DA3D9D54DB88AFDB54AA68B185C0
              90054CC09D470E7051AA1F21725B926D3FCE7B17BCB8660D2E063828329676B5
              C2AB0768618D3320F2D3F582853A988A755AEF466983306AFF00049B56BB3B30
              706DFA37E61F4BE790494A1F236DFB160A59A087B5C493244C08127E09368B9C
              C05B5184660D812D33ED0A02B621ADCADC203BC4DEA4EA223DC9C622BB465660
              83407833DA49FE364F543E45AA44852CCD258F638CC4006493A7048E1DD98863
              9877C34832209B71098D5A94DB14B0C03B3820B5FA478A81C457327D04DCC906
              AC83D3C13B87C8B549F0390C6182ECD3D5C083ED50701260FD6B4F824FAD5DD9
              47A23A1A204D4048512FAD11E8EFFF0050FC541CA3ECCB22FE49969B9240E374
              D06272F1830A25F5458611F1E2DFC529ABFF00B6781D0B7F14B547E495928B45
              CA736BC5CEA989A87FE1AA7BDBF8A71DADC0C354F78FC51AA3F21620DE638F24
              66CCC451C06D5C362B12FECF0F45F9DEF2098026F004A1DA2AE69F46AA64DE0B
              7F149D82C6E3A954A029BA817B72873DC2DEE296B8FC919D38B4745B63E70B0D
              4B0846C2C3D4C7E29C61AE7D27329B3A99827C3E2B83C6E37E51ED9C4769B469
              E3310DCD229E58A6DE1668B0B1D755D0E0BE4C6268DEAED1A8E8E0D2405763F6
              5627B26B598EAED83C2A387DEA6F3BFF00D7FB30431462C2764E11ECD938563E
              AD4639B4E0B43C88B9468C33A6D88A83FEF2B3286CFC4B6935A71B5CC7FD43F8
              A229E06AB482EC557778D572CCDDFB963E42FD19FF00FBAAA3FEFF00E09FD15E
              7FE2AB7FAFF828B29B9BFDE38F8B8A943F9FC4A56C289370EF6EB5EA1F1729F6
              6E1FDE3BDE555BFEB1F7948F6BC1E47BD21D1616B849ED0882359BC83C3D8A27
              3013DA72D335E742A135802241920CC907CDD26BEB35E5D206EC0113E1F1BA9A
              D2EAC87A89E57E620D43026489E1AA443C30BA2A81120DC8F6D9560D611045B9
              A69A8038358C6E6104C926124E3EE49A658EED1B986712D1246F5933C39BDA7D
              31DD7002CED2FF0087C15751F59F9A625DA993F626356A92EDD6EF1075D227F1
              4EE22A91610F05C338DD765B075FC1201E43007439CE2D93A70FC554EAEF8601
              072B6F68BFF203DC90AEF05872B658ECDAEBE60236B1D4A89EF9008ACD871806
              FAFBBAA61DA100E76B674907C3D8A02B96868CA375D3C7CF009FB67F1634C1B4
              93CE63AA3D23F51270A8D99A8D104898378D7824E155A5D2F680D396609BFB94
              4D7CC5D9806CB89820F1D74F3D539AE5D9AC72B9C5C05C47B93A88BD6270AAD9
              2E786C12343AC4FDE9B7C58BBE2976C41261B266E09E2976863828C9AF62693F
              71BE901EF04E093FDE04BB53C484C6B1238281225BC3FBC094BC18CC3DAA22B3
              B4B25DA1E8810F99F3DE6A7DF98CCD4D9CC683DE9768796BD5310CECFCD84F8A
              AE6A4EAD56768E1C3E2A26A5FBA100449ABC0B5206B1B40F6048BFA35376872C
              8025310E7B48FAA94D48D028E73C825DA3B8B459311297FA83E2928F69FAA124
              C28DD01DEB27DEF594734A795A0A0620FAC98C93DE4E4A8A8318C67D64A0FAC9
              D2486341F59341F594924010877AC941F594A02481D9183EB2683EB29A640590
              20FAC98B4FACA698A432194F34C587D652948A00A6AD396C4A13B0876A8D74AA
              5C0CE8AA916A60CEA2666547B23CD106792890792AC9D941A479A8F65D55E414
              D079140CA3B094C70E15E27927BF24AC760A70C12385944DF92574585821C275
              4DE8A51974A0A2C2C0FD14C26F4572360A507922D8EC07D19C9FD15C8D8E8942
              2C2C07D19C97A33D1D9528E88B1580FA33D2F467A39349E4958581FA33D2F477
              E88C929A4F24585828A0FE69FB178E28993C93C945858386541A12AFC3B6A8A8
              0E629E4ABE8CE609A137B0534BF9AAAB8A8E1744341850AB202B19514B03C053
              05E9DA5482426C8CBD3CBF9A925213159197A5BEA529200843D287294A5290C8
              43F9A50E5394D2819187262D7153951940112C728E477456674D982065669B92
              C8E0A79824484015E47734B2B94E4252100421F291CD2A72131840C843C14A1E
              4E8A49A7AA006870E098074E8A536D528EA8111DE4FBDC827809EC9815CBB928
              CBB929B8A817040846634F82892EE43DC9664C5C1002CD70213491C13170E698
              BC7352223C8F5524D9C7349300FF004EABC99EE2AEA757155693EAB29B3B3610
              1CE36009B0D4ACF0569B31D853B32A618D2A8C77660362A0873A412632F4E7A0
              85D558E1EE739CE4B81CD2C7EE65A54AA677656F6551AF93131BA4F04CCA58FA
              956A526D1607527657E670001E524EA85C65563DF4E9D2766A54981AD8044989
              71F7CA3998AA071F5EBB718297D3676F6948BD8E1CE235F723B58EF817727F25
              629E3CD1755EC1A1ADCD324036D6D3261419E9B51B49CCA008ACE2DA7FAC46BC
              518EC7E0AA5239DF4CB40A8323A91351D2E71043B86A3E3AA6A5B53045F41C69
              D4A791EF195CFCED634B034583448E9D0F34FB38C5DDC853E8FB473E5EC29F77
              366CEDCB131DE98D54451DA0E6BDC30EDDC2410480491AC0993EC57BB118473A
              996E2E8D3AB4E0970A07B27DCFD58D44EB0A6DC6E1062AAE21B8D7657178731F
              4C97107D431BB3E211D9C61DD981E1EABAAD32E7000CC595A87C1FE84FED2217
              3E6AA4D236C378A1249D2502644A62A498A008A62A498A0654FD15455CF55154
              B2C4461342913D134F45124460250129E895D2243184CA4990032564AE941450
              0C92784D05201484D64A0A620A062B7329C78A6829C4A403FB524928400A4269
              09414D94A007909484D94A505004A4256E49804F0810F657518CC1520157D21B
              C14909860221575A14C68ABAAA65488B614ACA01482436280940E4924988564F
              64C920050128092490D0D0122024912802242890A44A8A0636509A13A4819121
              3429151400D0942529900284FED4C99031D3249200784A13494C4A6225098A8E
              64C5C801CA811D13171512E408723A28968E498BCA897A908458A3912CE52CE9
              88593AA4967490236061A8FA9F129FD168FA9F12924B439CBE4A74C7E05E8B47
              D4F894DE8D47D4F8949251D72F91E98FC0BD1A8FA9F129FD168FA9F1292496B9
              7C8698FC0FE8B47D4F894DE8B47D4F8949246B97C8698FC16329B69886081AA9
              24924DD931249249009314924808A629248648839566524954C9A226535D2494
              490D7492492631AE92492402BA57492400C53249206314C9248017B53A492005
              ED492490024BDA9248012492480124924802402BE90DE4925222C2868ABAA924
              A456402904924804924926212492481893249243424C524920225324926318A6
              B2492063262924801894D2924818D29A5249034294A5249021894C4A49204312
              A24A492920204A817249200892A24A492644897262E4924C42949249023FFFD9}
            Proportional = True
          end
          object Label31: TLabel
            Left = 176
            Top = 41
            Width = 43
            Height = 18
            Caption = 'Codigo'
          end
          object Label32: TLabel
            Left = 176
            Top = 54
            Width = 42
            Height = 18
            Caption = '000012'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 176
            Top = 105
            Width = 147
            Height = 18
            Caption = '000000000000000000000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 176
            Top = 77
            Width = 119
            Height = 18
            Caption = 'EAN RELACIONADO'
          end
          object Label39: TLabel
            Left = 12
            Top = 207
            Width = 75
            Height = 18
            Caption = 'LIVRO TESTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 12
            Top = 194
            Width = 38
            Height = 18
            Caption = 'Nome'
          end
          object Label47: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 342
            Height = 26
            Align = alTop
            Caption = 'Resumo do produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 171
          end
          object Label35: TLabel
            Left = 176
            Top = 93
            Width = 55
            Height = 18
            Caption = 'CAIXA 12'
          end
          object Label36: TLabel
            Left = 176
            Top = 132
            Width = 147
            Height = 18
            Caption = '000000000000000000000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 176
            Top = 120
            Width = 48
            Height = 18
            Caption = 'CAIXA 6'
          end
          object Label38: TLabel
            Left = 176
            Top = 159
            Width = 147
            Height = 18
            Caption = '000000000000000000000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label61: TLabel
            Left = 176
            Top = 147
            Width = 57
            Height = 18
            Caption = 'UNIDADE'
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 302
            Width = 348
            Height = 193
            Align = alBottom
            Caption = ' Resumo '
            TabOrder = 0
            object Label48: TLabel
              Left = 291
              Top = 22
              Width = 28
              Height = 18
              Alignment = taRightJustify
              Caption = '0030'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 12
              Top = 22
              Width = 50
              Height = 18
              Caption = 'Estoque'
            end
            object Label50: TLabel
              Left = 12
              Top = 46
              Width = 93
              Height = 18
              Caption = #218'ltima compra:'
            end
            object Label51: TLabel
              Left = 249
              Top = 46
              Width = 70
              Height = 18
              Alignment = taRightJustify
              Caption = '02/04/2021'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label52: TLabel
              Left = 12
              Top = 70
              Width = 85
              Height = 18
              Caption = #218'ltima venda:'
            end
            object Label53: TLabel
              Left = 249
              Top = 70
              Width = 70
              Height = 18
              Alignment = taRightJustify
              Caption = '01/07/2022'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label54: TLabel
              Left = 12
              Top = 94
              Width = 94
              Height = 18
              Caption = 'Departamento:'
            end
            object Label55: TLabel
              Left = 268
              Top = 94
              Width = 51
              Height = 18
              Alignment = taRightJustify
              Caption = 'LEITURA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label56: TLabel
              Left = 12
              Top = 118
              Width = 40
              Height = 18
              Caption = 'Se'#231#227'o:'
            end
            object Label57: TLabel
              Left = 275
              Top = 118
              Width = 44
              Height = 18
              Alignment = taRightJustify
              Caption = 'LIVROS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label58: TLabel
              Left = 12
              Top = 142
              Width = 42
              Height = 18
              Caption = 'Grupo:'
            end
            object Label59: TLabel
              Left = 248
              Top = 142
              Width = 71
              Height = 18
              Alignment = taRightJustify
              Caption = 'BIBLIOTECA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 12
              Top = 166
              Width = 89
              Height = 18
              Caption = 'Fornecedores:'
            end
            object Label42: TLabel
              Left = 210
              Top = 166
              Width = 109
              Height = 18
              Alignment = taRightJustify
              Caption = '0001; 00521;12541'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 816
          Height = 496
          Align = alClient
          TabOrder = 1
          object Label60: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 808
            Height = 26
            Align = alTop
            Caption = 'Lista de Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 148
          end
          object DBGrid3: TDBGrid
            Left = 1
            Top = 33
            Width = 814
            Height = 462
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
        end
      end
      object TSClientes: TTabSheet
        Caption = 'Clientes'
        ImageIndex = 3
        object Panel5: TPanel
          Left = 816
          Top = 0
          Width = 350
          Height = 496
          Align = alRight
          TabOrder = 0
          object Shape1: TShape
            Left = 12
            Top = 39
            Width = 145
            Height = 149
          end
          object Image1: TImage
            Left = 16
            Top = 41
            Width = 137
            Height = 145
            Picture.Data = {
              0D546478536D617274496D616765FFD8FFE000104A4649460001010000010001
              0000FFDB00840009060712131215121212151515151715151515121517151515
              151517171715151515181D2820181A251B151521312125292B2E2E2E171F3338
              332D37282D2E2B010A0A0A0E0D0E1A1010172D26201D2F2D2D2D2D2D2F2D2D2D
              2D2D2D2B2D2D2D2F2D2D2D2D2D2D2D2B2D2B2D2D2E2D2D2D2D2D2D2D2D2B2D2B
              2D2D2D372B2B2B37FFC0001108011300B703012200021101031101FFC4001C00
              00000701010000000000000000000000000102030405060708FFC40041100001
              0400040403040706050305000000010002031104122131050641511322617181
              91B107233252A1C1D114426272E1F0334382B2F192A2C21524536373FFC40019
              0101010101010100000000000000000000000102030405FFC4002D1101010002
              0201020405030500000000000001021103312104121332415142718191B161C1
              F01422233334FFDA000C03010002110311003F00D7D220D4B0D4A0172521A12C
              351D250081148C04AA460204D23A4A010A40548C84A0D42902291109CA459502
              290A4E654548A6C8454427690210361108E92CB11D206DBAA2704E0088840D10
              924276924B550DA24BA4140ED2308E900110004292A91D2A0A91809548C0409A
              47495481A0092741BA0201148F6B7ED380BD05902CF6D566F8A73586BB244DB7
              5900BB41A0B35DD73CE68E717E21AC60B618DCE360E8E045556E869D6F1BC522
              8EEDC2C0B206A40EE7B050F87F34616671635F447DE143DC765C566E609DD633
              9DB5EFEBAFF7B28D1639ED3609BEEAE95E888A663B46B81F611FDF54E52F3F33
              8FC8D029C41BD5C09B23A83DD6CF94F9F882D8E7D5A6866D49BEF67E4A6874E0
              D40B52DA411A142940D65432A729152A1BA4292C841032422A4B704548104224
              7AA081DCA8C04AA429109A4A010012A90269280468C040971A17D973CE77E70F
              0DC238DE7A921A68DD792C8E9766BD8B41F48BC524C360DCF8B4739CD666FBA1
              DB95C21EF739C4B8D93BDEFF00156413A7E2D23CEAF26AC81A796F55066B24EB
              BEA888D2C7FCA2D4EAB4A4BD9B0F6D907E011C4EDC6B7696C7FC7F24406FA5DE
              E9B3437F7D7DA9CC3E25C0EFA8363DC90F702763EC03D2B5F7A4B1A6AF4FD3B2
              0D870BE759E2235B68ABEE7E2BB270CC6B268992B0D870BEF5DC7C579C5874A3
              BAE81F46BCCB9241877B8D38D007604EDECD4859B15D5E90A4A282884109053A
              4249081B212693A925A81B211A3A4110B08E9009548080468C23080A92804290
              26813D06AA8E31F4A5C6A67629F0E622260680DAD0D805C7E2B04CD4E83D3FA2
              B9E69E2267C54B2137E621BD3CA090131C0F099E417B0D7F457A8D49BA9384E0
              8F7B743FA7B96A384F2C300A71B245129DC30D6874E8AC202E06D71F7D7AF1E2
              C504F23C560D9A53A2E498B6B57919240D54A6029EEABECC7ECC6E3B936C96B2
              C7A9DBF554D2F26BDA092EA23B76E86D74D2E2A2CEDBBBEA292E553E1E35C631
              582313B29D6BF1458494B256B8122883F0AD4FC16DB9978535F1970F296EA0FB
              1619B7B15D30CBDD1C3930F6D7A378463E39E26BE3787E80120ECEA1608E854B
              5CD3E8938A06E6808FB6491ADEA0751D340BA710AB91052484BA497281349296
              88A2104209548902D18410080D2912520084918734B4EC4107DE104B6AA3CCBC
              6220C95ED008F33B43B8D763EA3657BCB90D349F626B9FF85C9062DFE26A5E4B
              C3BB87135AFF007B291C11D5083ED59CFA75E2ED79868C9D95C61E035A858FF1
              E671A6100229F1F8A8FF00CC69F78B5CE62F47C4D7D1D0F072B46E14D739BBAE
              75C3F8DCAEACFBE9FD56A4CCE11E7A24274D4B2F95F9635DA00A3E230C40D161
              B1BCDD2B7489BEF3FD53F81E2D8C905B9ECF658BFC15B36CFBFCF85B63A2B058
              47DA14B98F13C218E42D5BF8F8838901FA1DAD65B9CE3A99BEAD3EF4E3F174CF
              36AE3B69BE88B020CCE94DDB5BA0F6EEBAC95CEFE8764263945680837DEFFE17
              442BABCB492934964249408281095488A884A08D0541B821494420A209291230
              AA825B5252820E31CFF9A7C64E1DFE5E8CF46B46DEF50F84C170B47A2D1F3E43
              E162A478179DAC70BF5194FF00B540E1D006D37B69F25CB2AF5638CF15558BC1
              C87A868FEF551A1E0ADF173190B9BF76ECFA0B1D2FE4B72CC3B08D427E1C0346
              A07C344993578D93C2F0731EB77AFE1EA0F55BC81E3F67AAE802A9C51B35F01F
              9ABDC3E1088469EAB3DB7319239E717E5F398B8BBCA6F6BBBF77651B8672F3E9
              D53F9B4CBF76BAD83B9FD174E8B0CD7B68FF00C28FFF00A7B587EC7BC05B96E9
              9B84DB2DC3B84CA347907D474F4D557F31F0D32CD136E851CC6B602AD6EA68B4
              B0A95EE6B646973735DB07A176C7F02B1D56AE3B9A5BFD1BCCCF0648D8CCA237
              0166ADD63735D745AD59FE47C07870BDDF7DE48F60D3F55A15D71E9E4E5D4CEE
              849251A30B4E64204251444204208E904002502891A205200230804502128144
              804190E7FC0E6F0E5AB68B63BE6DFCD63E2753BDFF00905D73178564AC31BC5B
              5DBFE441EEB95F1BC1F8389922174D232DEF44022D73CE3BF1E5F4FB2CB09285
              671BEC68B3D869295C61A7005922FDAB9CAF4FD143C5F8ABA1779232F39BCC01
              0081DF55690F37BC4472C6E7903ECB402E3EC17BA5E3DB149BE527BA5E0B0CC6
              3AB2685A2EC5AE923169DE15C45D3B7386B98F6FDA69E9AEC6BFBD15CC38ACC3
              5DD2300F8DBA34345F6D2D23121AD3636F453A6B7B338F96B65570C61DD2F29C
              C07A8B1F9A771535952B96B04647B8D80D6D5F736761F05CE79AB95F6CDB5BC3
              E2CB131BD4345FB4EA7F14F04A29242F4BE7DBBBB029349489015224A2E44812
              8928A24041291523440A460224680C23088208A50581FA44C2659E39BA3DB94F
              F333FA11F05BE0B27F4923EA23FF00F4FF00C5CB3974D617593171C9AA8F8CC6
              BEE9AD7387A57E6998E552619E971E9EADECEE0649DFA32368F4739A1DF13B2B
              461E236064DAB5F1197EFEF4A8E790EE06BEFF00C9223C6CB7B8FF00BAD6E58E
              92C5FE25F89D8C6C79FE0780EF952460B1B29B648DCAE1EB7F8A1C3F115A91AA
              18896CE7035D9632B2AD9E4E976A7E6B5DC9D05425FF007DC6BF95BA0FC6D610
              BCDD2E99C1A3AC3C43F802D71CF2E1CF978D2622251D20BB3CA2448C840A0490
              9296524A04A08C8448004692129100A082081482208C228D663E911BFF00B78C
              FF00F68FF6B9696695AC6973DC1AD1A92E3407B495CB39A3983F6AC516C6EFA9
              89B4DECF713E67FE143FAA97A6B0F9A28E6147D14AC1CAD268EFD91CD158A557
              28734EBEE2B93D17C34F098EF502D58C3E0837E5DBB0FC5617F6F7A7A3E264F4
              2534D4E46E9CF888D9BA765558BC434DD6CA8E1C5BFA90077FE8ACF018632903
              5CBD4F7F62962CCAD4BE1D0E6F39DBA2D9F02E63C23F2619B3B0CCD68698CD87
              6603568BDCFB152F841ADA02961F8E70E6C38B8F131921EEF3D740E6B853876B
              A5AE2F39698E7C7FDBB770B4153F06E66C36232B5B201210098DDA1BEA1B7F6B
              5ECAE4AEDA7949B40A0815012228E9112809040A081011DA45A3442ED04402A0
              E3FCDB0618967F8920FDC6FEEFF39E9ECDD24D8D0FA9597E39CF38782DB1FD73
              C7DD34C07D5DD7DCB03C7F9B67C4F94BB2B3FF008D9A0FF51EAB3B259DFE0BA4
              C3EE9B5B732F344F8A70F11D4D1AB58DD1A3D4F73EA55770A9F2CA01D9C2BDE9
              8959A8F628AF041CBEF69FC96AE3B9A5C6EAEDB7CAA3E2210774CF02E21E2372
              BBEDB77F51DD59165AF0D971BAAF74B329B8CF4D84236450615E76A57A708A56
              13089EE4F6A3F0CE0D745E6FE4B5185606E80526208694B6059DBA49A149AAC0
              F18C5E799C41B6B7CADF60DFE26D6979AB8AF84CF0D87EB1E3A6ED69EBED3B05
              886F60BD5E9F0FC55E6F519FE1871D310E6D12083763A52D7F09E78C44341F53
              33A6634F03D1FF00AAC5B8798293215E8B25799D7F83F37E127D03FC377DD93C
              A6FB03B157ABCF6F246A37571C279A31187AC92380FBA7CCC3FE93B7BA973B87
              D976ED68963B837D21C1253671E13BEF0D587F30B5B86C43246E68DED7B7BB48
              23F058B34A5A083820A0682A7E61E66830742424BDC2DAC60B711DCF40143C67
              3536F2C0DCFF00C6ED1BEE1B95CCF98B16F9B1123DE6CE83D000361D86E986B2
              BA5CB0B26EACF8DF3C6267B0C71899D1ACD0D7ABB727E0B3A1C4F5DF7BD493EA
              537913802F449A7328B521E13A502D45372B344D4B1B5C35531ADB4D88826841
              864731C1C376F51D47AABA879985F9A33EE3FAA8BE0B513F074342B3971CCBB6
              B1CF2C7A5CC5CCD0F56BC7B81FCD4C8F99F0FDDDFF004AC94913C74053799C3F
              7173FF004F8B7F1F26DCF3861C6CD90FB80F99487F3B32BC909BE999C3F20B25
              10BFDCAF6A90CC28DF65670607C7CC5899DD238BDE6DCE364FE48A0206E9EC83
              B24655D9C8DC7ABAD3F326A21AA7672823B9213810C34766D409704F60B192C4
              ECD148F8CFF09AF88EA8CB11F82AE86AB867D22E219E59D8D94771E477BEB43F
              04165BC11682CFB21B6E30787002C362F591E7BB9DF35BC6BE9A7D8B0C289DF7
              5E7F4D3BAF4FA9BD2398D07314ACA99942F53CA69A9DA4D035BA7B38401A11E4
              41AF096D90206CB138CD47CD19907AA4C52EBB2A0641B116130E66BA134A5BA5
              1D9473BDA8A90E60D804246A499F54892624FE81543859A26F2A539CEAEA9B66
              624000924D015B93B008A260D509C1068823407515A1160FB08D55870CC0C995
              F3B5CC6F8344B64A367A8C841CDA03A51D8ABBE29C41BC45EC89B147862DCDE7
              7969B635BF56CCF9465035D2EBDF4B1EE9FB2E99170D13F83679514F867DB81D
              430E5246D7AD0BF71F820D738682F45A88303CC9C937A51DAF76644F98970D51
              12CB6AD04D1C477082A35D3BE98E3D81F92C5780745ABE292544FF00E53F8E8B
              30C768BCDE9A78AF47A8EE1B2C288C47A94EBDC82F4BCE6843EA9F118A45495D
              100110462309F8D832DD27328AD826845F0C24B180153D80761F0090D203AE82
              BA11DD18EC997C46CD05720E854266AE3FDF44D03FD91DD8241875ABF829F883
              F828AD692E09A08C5B00A02FB26F0D8A96198184FD60D46B41A3BBFA57A152E7
              602E15D3E6A3440C45CECA1ED77F88D76E68DD876ED3D8FE0765329E1AC35EE9
              EEE9178A63257BDCE76B2B9C055592F3B65037B1A8AD36A57BC5B81B23843A2F
              15D236B3B5ED3A8B1675D2EACD376AA52709C0E1C5B22998E91995DA537EB0D1
              D033BD388E8689205E816B1DC3039AF8DEE8DBE5CAE6F8B52B34DCCA0D31DBEF
              F0E8B325F0ED7E1E3729DFDAB9DF0CC7E20C72C503878640748090079B4606B8
              ECE26F6ABA37A28B87207B75041D083D411D0ABFC76063C1E12DAC99ED73CD66
              0C043ACB47885A6B500069FDDF3796CACF303CB8C8F3E675581F64002801DE87
              5493CDF0CE730F663665BBF59F62DBF68268BFEB0A7FA82A139F521F615A7148
              95A09FD104C364F920A0BEE3727D51F5AF9854513B4561C764FAB3ED1F354904
              B442E1E9FE576E7F99309460A4BC689B6BD7A1C573CB7C1DD8BC4B2069ACD65E
              EFB8C6EAE77E43D48530F29639F2C8C8F073001EE0DCCDCAD0DB35F58FA0ED3A
              82A272A730BF053F8CC607DB5CC735C6ADAE20E846C6DA15CF19FA46C6CE0B63
              230EC3D22BCE7DB21D47FA694F21E7727981B58CC5C109DF234BA597D9E1803E
              74ABA59B06DD236CB37F14B51B3DCC61CDF170F62AAC159CC492493649B2493D
              493BA7D9861EAB510AF145E94076009F76A9A99EDBDC9D3AA59875A07DA74493
              87D6ECEB68A7C4ADAEBAAAE8A5F3B829CDC3F937D751D15AF26F2F412F8D88C5
              3F2C30D0DC8B71D4DD51EA3629453CF881B5683D774D0C41BE9FD16AB9CB96A0
              8228F13867668A43544935A58209375F1DD66F0C45DE89DA1A7BDD77F0A0A0E2
              73BB38D69A2CDEC3A6A7A6A47E2ADCBC5DA678663990CCEF11A5CD78AA00936E
              200343B593EDADF64AD6325BAB5D0F945D0C99238DAE6C2F83EA492347D1696D
              8766F11BF584FB74275A6315E42410E0E14C040376D364380D0E873650068745
              9F871430961F9C46E79735F0B2BF6769CA496D1CC1AE2D19A88EB5455DC5CCAE
              742D2EC4E15EDF338CEF635B95E72E52D8DC3439DC6EC1D6B536A77E572C72C2
              DC68B8D3E2742F33372C620A95A3359AAF09CC3B11A45477DBD6F9A70FC539CD
              F36E00E9B83A5FE0B5B3635B8B06364A66024CD3997380FCC0B9BE1926C46D78
              2729EDDA82CDF19C4C6F9E47426E36C6C6B48AF5774AEF5B296F95F87AC3DD7E
              A04D38762A062479CFB0FC94CC3BB3B4770A3629BA9F61461130F293B6BDA904
              FF0028419A6B3B31A4FBCE83E67E08D70CF9BDB74EFC7C5EE9BDAC78A3AD8551
              172BCC60B0550D29C37C68E6ED2F0F3F428DE541069480EB5DF6E092C7A79854
              2615298AC13B08EDD4C0E55903E8A9AC7AD41203907BB6F6A4B5C93277F62A87
              62755850B0B197E25B0191CC8E5203A8E9DF56ED760291D14FE03CA631FE286C
              C192300CAC2DBBD2C1B27AEA2BD0EAA5E86AF9EB0DE170D82389C248D8F01D25
              F6140577B0DFD173F85CB6DC7304705C2061A7737C57481CD683FC45C4FF007D
              973F8E71DD482C414C4C1E1E1EC34E6DD680D7B8823F04DB714128E2BD1551E1
              B88CD1750F69398B5FF78EE5AEDDA4D9D7D4F75364E318631667C6E6BC3C87B7
              3E67104795803C1CCDBB3AE86F5AD2EAA79AFB2885B988756A34FD0AC5C6577E
              2F53C9C7E25F0B5978FBF41878846C0413E2502F0352CCBB341AD6ABDD4AA9AD
              FB4E0C0C0E7B886037941D9B7E8838EE9186946523B14D698CF932CEEF2A4F0F
              9F2C95D0A938F6D59F43F25598A34E0558E327062BEAE007C744613B93A2CAC7
              3BAB8FE034F9DA0A6F068C35807608D7833BBBB7BB09AC74898B1A2CE4CEA715
              A3C58D167710DF315DB87B71E6E8D17A36BCA2CA1391B02F43CE71AF28BF683D
              0A29DC0689106EA892D908D75521939F551F320C72A8B164877D51BA4357AA6D
              9268835EE710D682E24D35AD04924F4006E550EF8F5D4A4418E9237678DEE63B
              6B69A35D8F71B68B6FC0FE8C311280FC4C830EDDF2019E4AF5D72B3E27D8AE70
              7C97C19AFF000CC8EC44A2C96895CF77977B6C0052B25BD44B64EDCB31B8B965
              76696473DDDDC6FE1D9460BABC983E5D712C3E470D0E638A8C83D8E7A00FB542
              E25F4690CAC32F0FC487F663DCD7B0FA091BF64FB41F72B971E58FCD2CFCE263
              9E37AAE72D3EA9D7015D5378982489EE8E56163D869CD76E0FF7D762835DA2CB
              469CF48825162D07A8921A2A0B79A300AAE68A71D54F63B3301EDA2AD94D38A5
              51E3A23569863CD47D838FCAC7E6A6B1D99A47A28805348ECE07F2FCD672E967
              6D670D9344142E1326882F158F7637C1DC5BF459EC41D4ABBC73B759F73BCC57
              4E3EDC797A005486681466A7657D05E9798CBDD653B08519A54A8F640E846D29
              0D28C396912D8ED1756FA3AE15160F06EE258816F70263EED8EF2B436FF79E7A
              F623D57251269A6FD177EE68E5F925C0C78780806111D30E81E236650DBE875B
              D74D16F8E63967265753EACE76CC6D9DB9B73073262B18ECAE710D71A6431921
              9A9A00FDF3B6A7F05D4B94B97998380300064700657F573BB03F746C07BF72B0
              7CA7CB53B714C971113A28A1B91EE96836DA096D1BD68D1BDBCAB76799A06B44
              92CB1C2C70B8C48EA96469D9FE1EED69DC0A248236D97D0F5B94B27171753ECF
              27A79AB73CFBFEA83CF3CA6CC6465EC0062182D8E1A6703FCB7F7BE87A1F4B5C
              8384F129B0D209217163DA751D1D5BB5EDEA3D177C8F8835D1B6501C1AF3E40E
              6E573AEF2F95D4466AD01A3A8EEB0BC47E8FC62673888710D6C331F12B212E05
              DABB2EA06A6CEB55755A27A3F5330C6F1F2F5FE784F51C172CA6587685F48785
              8F19818B8944007B434495BE4272969EE5927E04AE6D19D177D9F8244DC1C982
              8C797C17B6BADBC3BCE4F72EB2BCF30C8682F9D9EBDD7DBD7D1EDC77AF275C14
              1C505341B2A36282CD54AE1525823D146C58A2537C325A7A7F8837CC54FA29AC
              3C948F147CAE3E83F02146614F625DF54FFE52A5E88B0E1536882AEE1136882F
              259E5EBC6F85DE3F659C90F9CFB3F308D05AE3ED9E4E8EC68B1250417A5E6331
              A94DD9041205312023415449C27DB6FF00337E617A8A479F100E995C6BD439B5
              F32820AC2B35F499296F0F9729AB746D3EAD2F163D855772A40CF1632636173E
              2648F7B98D7485EE60713E238176E76BA0820BDDC7FF009AFE77F88F365FF6FE
              93FBA7F30485EFC4C4E24B19035ED6825B4F39CE6B146C16348EC46895C85339
              F877971BFAD27DEF8E391FF17BDE7FD451A0B9E53FE1BFA7F0D4F9FF00749C2C
              84F109DA4E830F86A1D05C93DAF3F3D8333856CE77CCA082E3C9DCFCA7F0EB8F
              44D6A98C504105CDA4084F9958E38FC820829155BD53F3FF0086FF00E4720828
              23F083A20820BCD7B7A71E9FFFD9}
            Proportional = True
          end
          object Label1: TLabel
            Left = 176
            Top = 41
            Width = 43
            Height = 18
            Caption = 'Codigo'
          end
          object Label2: TLabel
            Left = 176
            Top = 54
            Width = 42
            Height = 18
            Caption = '000012'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 176
            Top = 90
            Width = 97
            Height = 18
            Caption = '000.0000.000-00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 176
            Top = 77
            Width = 23
            Height = 18
            Caption = 'CPF'
          end
          object Label5: TLabel
            Left = 176
            Top = 116
            Width = 17
            Height = 18
            Caption = 'RG'
          end
          object Label6: TLabel
            Left = 176
            Top = 129
            Width = 53
            Height = 18
            Caption = '0000.000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 176
            Top = 167
            Width = 53
            Height = 18
            Caption = '0000.000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 176
            Top = 154
            Width = 89
            Height = 18
            Caption = 'Celular/Whats'
          end
          object Label9: TLabel
            Left = 12
            Top = 207
            Width = 152
            Height = 18
            Caption = 'NOME DO CLIENTE TESTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 12
            Top = 194
            Width = 38
            Height = 18
            Caption = 'Nome'
          end
          object Label11: TLabel
            Left = 12
            Top = 225
            Width = 65
            Height = 18
            Caption = 'UF/Cidade'
          end
          object Label12: TLabel
            Left = 12
            Top = 238
            Width = 118
            Height = 18
            Caption = 'Tocantins / Palmas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 12
            Top = 270
            Width = 221
            Height = 18
            Caption = '605 NORTE - PLANO DIRETOR NORTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 12
            Top = 257
            Width = 37
            Height = 18
            Caption = 'Bairro'
          end
          object Label15: TLabel
            Left = 12
            Top = 301
            Width = 92
            Height = 18
            Caption = 'RUA TESTE S/N'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 12
            Top = 288
            Width = 58
            Height = 18
            Caption = 'Endere'#231'o'
          end
          object Label29: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 342
            Height = 26
            Align = alTop
            Caption = 'Resumo do cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 161
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 327
            Width = 348
            Height = 168
            Align = alBottom
            Caption = ' Resumo '
            TabOrder = 0
            object Label17: TLabel
              Left = 291
              Top = 22
              Width = 28
              Height = 18
              Alignment = taRightJustify
              Caption = '0030'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 12
              Top = 22
              Width = 111
              Height = 18
              Caption = 'Total de compras: '
            end
            object Label19: TLabel
              Left = 12
              Top = 46
              Width = 103
              Height = 18
              Caption = 'Total de d'#233'bitos:'
            end
            object Label20: TLabel
              Left = 294
              Top = 46
              Width = 25
              Height = 18
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 12
              Top = 70
              Width = 146
              Height = 18
              Caption = 'Or'#231'amentos em aberto:'
            end
            object Label22: TLabel
              Left = 294
              Top = 70
              Width = 25
              Height = 18
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 12
              Top = 94
              Width = 111
              Height = 18
              Caption = 'Limite de compra:'
            end
            object Label24: TLabel
              Left = 294
              Top = 94
              Width = 25
              Height = 18
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 12
              Top = 118
              Width = 175
              Height = 18
              Caption = 'Limite de desconto m'#225'ximo:'
            end
            object Label26: TLabel
              Left = 294
              Top = 118
              Width = 25
              Height = 18
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 12
              Top = 142
              Width = 220
              Height = 18
              Caption = 'Situa'#231#227'o no serv. de prot ao cr'#233'dito:'
            end
            object Label28: TLabel
              Left = 263
              Top = 142
              Width = 56
              Height = 18
              Alignment = taRightJustify
              Caption = 'NORMAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 816
          Height = 496
          Align = alClient
          TabOrder = 1
          object Label30: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 808
            Height = 26
            Align = alTop
            Caption = 'Lista de Clientes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 140
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 33
            Width = 814
            Height = 462
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
          end
        end
      end
      object TSFornecedores: TTabSheet
        Caption = 'Fornecedores'
        ImageIndex = 4
        object Panel14: TPanel
          Left = 816
          Top = 0
          Width = 350
          Height = 496
          Align = alRight
          TabOrder = 0
          object Shape3: TShape
            Left = 12
            Top = 39
            Width = 145
            Height = 149
          end
          object Image5: TImage
            Left = 16
            Top = 41
            Width = 137
            Height = 145
            Picture.Data = {
              0D546478536D617274496D616765FFD8FFE000104A4649460001010000010001
              0000FFED008450686F746F73686F7020332E30003842494D0404000000000068
              1C026700146F7746344351574435735F386358474F316245491C0228004A4642
              4D44306630303037373030313030303034373037303030306564313430303030
              3837313630303030306131383030303033643237303030306234333430303030
              3661333530303030FFDB0043000B08080A08070B0A090A0D0C0B0D111C12110F
              0F1122191A141C29242B2A282427272D3240372D303D302727384C393D434548
              49482B364F554E465440474845FFDB0043010C0D0D110F1121121221452E272E
              4545454545454545454545454545454545454545454545454545454545454545
              454545454545454545454545454545454545FFC2001108014001400301220002
              1101031101FFC4001B0000010501010000000000000000000000000103040506
              0207FFC4001A010101010101010100000000000000000000010203040506FFDA
              000C03010002100310000000F251469050414105041400000000000141050459
              05D32EF1D8C01200A20A0828228A20A08295C0120000A082A000000000A00000
              0A003CD3AD5A3EC48A8E048000A8A08AA72AF1AAC81200A3606600002822A000
              0000280000280A2280F32F33AA488F22981E5867B75C961F733BDD8DD476EC91
              DC596B0C54C6140A6C1711050000454000014000014540151400A7D97D8D527C
              1B69A6275CC2C7A65D45C57DD72C56C8D7076B6E98D29E632F5E70C0C64545B1
              B0310014010004140014000500169075CB5877A6AD7E2AA49DDC52DECE96DA45
              639FD1CCB5B0AEBCF374BE85478E509894F76E702A74543AC47147205346C539
              4414105044540010145000E9FE6D3B8E96BBC97AB36CE6D973F76732BE8F50CE
              0BD2708D6F85F4ECE6B79F79EB9C667A2EAAE356F3E0F110EBE5B2812D8D6AA4
              0EBC154346C5394450A00139E9211420051050911A546B49515EAEC758591E93
              E5DE973D55559A3CDF9BAD046933BBF8AAB4B0EDF9F68F7D3E81EBAFAD8EFBC6
              F161596C9872ABB723B526374E0AA9D6E360738A22A8009CAA480102A28004DE
              786F5B95C4513BE51643D17CEB50EFB3C77A266B97AFCE6D063A78EDF9A591C7
              6F46E59B96AD5F932C9CE5F50EEAA71D6F971167C2DE4545DC6C53190504055E
              51533114015141148153AB505040513BE4B7D871ED4D9ED4893A44BE7D39B7A7
              90B37F49E3F4D756426FDB976735C7AB943891DBE3C9E699E331F565ED9B0590
              14540538454CC008153A100154554141054B44E9135F0E3ECF8FAB356BA749EA
              C056EE32DAE5A9CFCB638E68DC851BE8792549E6D3ADAF8D2E0719CB3D73CF3D
              0D3DA36A1A828ABC22B599D25FDA66630BDB8314BAA0CA97FC148BAC82509A5B
              03149AD816D0ADE3D547AA69C6ED7ACE48C76B4AC79ECB34A5874E19CEAD2E98
              CEBCED8EED3C28CEE4A2A648FB7277A88AA6E20AB2B4D3ECE73EAD2BC74C67D3
              BBF2F5ADBE87C9C37ACE2245BEB107CE221EA973E2687B257F94996EDCC11A7A
              55A791247AA49F2CEA6BD45CF214B9D55A60D0D86B3C8E61BBB3F220475A9037
              D8AD48EA3F5BD722AF59CF658AD768D7AC66AF4941A4E58A4BB86448204E562B
              6DAA0BEA2E342459449AAE72834494E4D62DA7D661B663D43711B2ABBBCF6A92
              86E1A995C44B0AF8ED992F94995D6E457B163DAB3A14EB79E99EFD17BB3ADB1D
              EA465B459EE585E3D7B39C33855D7ECEBC74F648279737EC991CDC3CAF618D5E
              387ABC067CDE66935A791163EBC78B48F5AAE6BCB1BF40D049E3CBE853D3CB93
              DAAA0F2D3D3E84C69E99A03C53B6C5150C9D950FADD96ED71DECBE23198E31D7
              5CE6CE0C38F21D775269E3B0E2D8B99C7D6D2D73AF4B67118A54996F5716E63E
              B6851749C67A75B25FCC125D40EA21A48F515326C6AAB834B160A94C028064EB
              8D3BBD305C3DE8D533F74BD7543C595570C6EB51E5367CF1BCC257347AD56E23
              ACB7369E3EE9B4D3F97448F4DA7CEB72FA747F33926AE0647BD4F5985E7AC927
              59E6B38F4B97E68C49B6F3296F1ACD4F92767A3D879B053700A0192CB8AF6AE8
              16157FD3ED713B2BC7396EB49B0F2F258FB0639E71561AF8714B59B00CC397BA
              A3CCD34B6A79F4ED2BCB9877738A961392EFECC24D7EFABCD34949EBE79BD36E
              2852159E926479ECAD3DD98787B38260EB35B9250EBAC92435235618A588AA57
              3CB8DA000000050001B59D1E787A1F679CAFAA3079A75BAAD973A7A415E61C3F
              7719D5405E7A2B945244500EF97B35144CD47392B8553DBC91565DD416DEE665
              B1C5C9A1D29A1E29A1EE635BD638E3BF49C555AE5E92CF9E4AB6DAD321CE5E89
              27CEAC6D6F8EA091B89C1055FE638E5F08E3A923721B7F3592741C9417445EAC
              BECF07DFB63F31FA6CFD4EAB2DF73E3AAF0BEEF9DD2A4A9B8B29C7BCBE9AE8D7
              2D79F6C4DB4858F437125F79903A931D9E61BD1F3C5DEF9B98B4CFFA1E4B5DE2
              4DA399E9E32E24E6FA6AB21D9D479B9AB6EB5CB2EBED2F3B694329E881CF6769
              FFC4003310000104020102040504010403010000000301020405001112131406
              101521202231324023303341162425345035425161FFDA0008010100010701FC
              8E39C535FF004AC623937F2B739627DBFF004ACFEFCD3EC5FF00A567F7E69F67
              EC6B78835C7B78FE5B3FBF34FE3F8382E6B11AAB8834CE4D6E7515570DF44FCB
              67D17CD3F8F1A25762F14C6B79620D7EA8B8E62EB6EE5E49F5C37DA9F96CFA2F
              9899B672E2AEC8D1508B8F87C1B84E237A62A85EDC6A27D1EC476D08C562F917
              ED4FCB1FD17C9136BAFAB9A32435087888858F849E12334F41C91E3D158BA013
              4ED13E88AAD42378F4D51DA2FDA9F9288AB883CDA353C9BF76471115AE2C3EAB
              5E8931BC46E6900C1B7935C263B66130A9B44519349F30D31A8B854DB3939CAB
              F8E8C5CE2899CD13392AF9EF238CF244D6040E8E26E22348BA2D588CBB254037
              8E8A21B150D19AE6E01C9D34C13139A6226D8B856F15FC446AAE20F36D6E2BD7
              1A8AF72244A67F2E6F871144B80A788467526C37C33F01B39BD1AD2C78B17A67
              9D2D15300F9672353B82457A30B291FEEE33758F908AD5C7BD382230EA9C302B
              A7E8CDFBBF0C689C5579E7255F26B55CBA81FE98DD505A31DF2344CEA754A462
              0DCE9DD19115B8AE51B958AFF6E3165BC254C249983C7D8B0EC51A35FC717688
              B8FF00E3DAEF49824E4F62226C9A5F9B97E1B7F8D7CC28CC7AED711EA888E62A
              B0C988AE56A63C6BC9C84FF8E5C32EDF8AB888AE7A276F2F8F20427C8272333A
              6C46C8723534D5EA39AD90DFD54C8EDFD45C1EFDDC8BFA9A2269EBF84DFE25F3
              6B1D9D3F6CD35AB9C9396E213985324B75F31BD9AF47FCE4764382925CE4584A
              899591BA81DEC71998791BDBCA5E6EC8ADDB91D207B7B3397063D5CEFD2D22EC
              AAA6FBFF0009A9B0E20B36C6629B15CABE71188E44C30343C91BDE2FB3D7213D
              5854C348FAA026A803C092DE67E14CA4C5C86BA6AA9535D2C5F77350AFF91A83
              4F6D9BEEFC242AA374AE55F8AAE527558C7B793352C0362EE60384A547A69B8D
              2FF5A454C54D7902B5E56A3891DA0639263F8F14E0A89BE8109B56ED8B85F7DA
              FE435CAC7238721AD8C27F0E0423D80F747CD84E07CEF4D2E444E68E63DAA8BA
              810BAAEE724ED17C86FD3089A44EE646D42A2CE1D25DBDED55C527F5EDFB2BFB
              E98AFE2C6A865B0111C20BDAE45C9B298901E390DD2A640FF919DBA925234CAC
              8A1D2B943C9E35523B18D684DB9360D6FCABD52AEFA4EC56393C91DFB0BF80D7
              6DE8D9DC792458D5862B76CAD605794E02FBBE17B4B4C8ED46A38A7329647173
              B647E38DC1AC6A91E65D0C6C6639531571DEFE5A6EB113DBE35FDCFEFE011DE4
              71DD5F1C6C035513DF1ECDA61858B154329AF24AE03E9B55A16F0477BBDDF760
              D38E0F83FE590250BB1717CD3ECF8573966F379BCDE6F379BCDE6F39672CE59C
              B39672CDE31E8D4C836C300919EB61CF5C063EE00EC25809F8B211AEDF72D68D
              D9CFD9718E44C69DA98B21B8B2915BC7FAF8113E4F85DF4F2934E60418929DE1
              C28E6B22C7AB5915ED940F0F34D28F1834A32B8EFF004037A9A44B0AAECE38A4
              575677CC3197C3EF494F147A953C20489D500868F43F86BA6A61B28C3DA80C5A
              920EA853EC6ACB5838CB02A9254574A6D015274807A139B3E286240594492C05
              5B8E0884915610BD052A8BA4390B0E1BEC260E3CFA948D112556D72D838ABFE3
              CE5980102B54F5EF97614C180D2A635DA4CF65C4CD7CAB89FC09F0AFD3CBD61B
              5B06BDBDDB5D6D5EE6C75ABAC8D1633D3FCB27BAAC2B3E8A5C27BFFDEE282FC0
              31C58EFA8177B513A0B5E20CF8D0461F4D875B0EF7BC5699D6323AEEB000FBB7
              5557E02D195B515A97F25D2E1561E147759F87BB58B144C7DA56838C59D490EB
              A392B66CD70E53648A9C963DDF5C6EB33ACA8B60CF0E9982B812CA8AEABF0F16
              351277116C618483AF95510FB65AAA9507887BB78E5AE227CBE48B9FFAAA8FDD
              BF0BBE9F06B359EDE612BE399859321D28EE37C3ACDE266B1BF4C5CDA2FC0C55
              6B91D325926C8536279317E4D7F7889A7672D374C769C9F0235708C546E41890
              4556B3AE60B2BAC1C18B5B5CD1C0149AC1C6A99254ADAD1D8C58A0AFAD936728
              45A38C52D7E4A815E6AF947A38209A7908EA586F915CEAFAE0C9B7385D5D0250
              61492F87840B09638F1E9DF50E9916B2B58C802935828F5320B6754D0BD99569
              1092DA24ACAD35EF622AC885B38806440929E7C8A3803B098E636BEBA458C210
              6001F02D0B26BEA22916147AA89E9910F06B61AD7BE645AA82434E20EAE04AB7
              60E743844AA6CF6AF939DAF217CCBF0404E53C0970AD510B209E0C9A8EC2EA68
              A7D8B8B1A6D69595C714F873E3CD8E6B48AFF10C33C0B20C5B0B2905B78CFB18
              3672A557C6AD981A59AC82F96F8162FF00588D2A349815D6279297CD930E1E0A
              FC0A96600CB0B3C3F223459D5A56571C53E1CF8F363D93E3DA1CC484F68A6809
              127C66F8924CBEFC10ECA1C89526BE2D5C98D52688396B926E630E556ACA955D
              1ABE70E4C8A898759E29B19D570C5572A088589615D22CA695F750FD74669D22
              147A76D7B71578F989782ED74AB8D4F7C5F6CACFFC947CB5FF008F1FCB5EDE7E
              DE5ED9AF973FACDE6F699F4F3083ACC2BBCBFF00C4F6C72FBAFC5BF851749E68
              BEF9C9153C93DB3EB90DCD04B1BEC4CC3083E402B629EAA04F0B03E1F737C4A8
              8DB21E0B90AA606560C8B4F01F003C876524B158DB969D26B2E4D0453E3C8244
              B36C47B09080CA97B7B010C646C0856537C443677318F03932860AA7CD6396CD
              6883395798ABA1E54113D382C90C67A2592B06C593173C352DDA3C7A9EE65C39
              D39C1415D2184D1DC45AE9122425941B76786BDA79DDA65BC1AF913E3C8244B3
              6FC089ED89B4CD6B1AE6235D9D54CEAE3D57CA37885A110321DCB440282C67BE
              CA638F327F7608828F7AF8C284C25A37B29115B7EF6CA8C57DDB79C56A5B391F
              60E178838344F8B74D147108379A7CA4B3B0759494206E40D8008BD54493D525
              DF71DDA7AC462C70B225CB0318210DDFCF2B13C42BEA3DC8ED851E598C3B0515
              51610FC43C2404A7BD73BB66CCBD61A29C55763E9B25C52DF6DF1112E5C8FB07
              7C099ACDE22EBCD70637148D19A96C238949E9B2FBA7468B513A68BAAF6398FE
              2EA89C91BB98F4F3CE0699F10ED175DB0653D00E91593218FA85A99F1E3F5D2A
              27BC0867C63340D90DA69EE3BC248128325B1E5554C82D47478C53B48BDB97B7
              69A4554E881EA8231A4AB9A28A6309E51D44E31CA17C194292D8D32AE6406B5D
              808A692845ED4DDBB4F22A67440F587513CB1BB8F81AB9FD79A0DEAC57A467F5
              18C901E815589A6E9D6677A56D3E707FF96CB7C7603B1A5CBBFF00CE4BC7F5CE
              77E738C3A5ACC80F8DE82C8EA70C9353BE5BA296785844077370A3EBFA8D1E59
              0D4D4CD4374BD46DB18FD78921C390D0A786A4E7864FDB2CE33A3042DAD43B43
              D95D2D34AECED804B10254C504197CF9F8872223BBCA4594D0A78664E6B3C2E7
              ED5679CF1C11C35B8AA755F10E47EB1C90C6FDF377C289CB24471A0D8F9C36B4
              23C88DE505CCD6A4F2B1FE463BFF0044C3CA2944212DC4F746ED966C856830E6
              79CCF32DD4F743EDA3DE4F8C0684934E50740763282C0B4D756121188961250A
              720EEAC1A04043B297011C9DE48FD7CF549BFA58D906181D1C320B1FAAD6584A
              10C4C4967443A6489B22519A665CCF09CA6F549BDDF74928CD8AF8C198E0C391
              1C328D1DA56ACC3AC664793733E603A23BAB0145EDBE04C6FD5702DE51C0D98C
              FF0048EC03BA618CA527414C59E56984275640F523A89F48BCE2E4CAB0C6F63D
              594771E9D328DA08863FF8D3B87065294BD864AA34103ACFF0E9996DD8C1A46C
              98A23B68242B6760E9CAB56D9D3EA4301A54251185321863D20CEC2A8A9D8661
              0C946549A705857F60A2744AB64881DD491B0277B0940614C8618F4A84618B61
              0495D31F1E4D39810624A7F870A293D08F52A784090B40664E95141E1E698319
              635273194B610495D31F1FCD33FF008E74D4E78877205C252395AD6AB95D8B9E
              19220A71DE42A9E6541EE12672D961BC7E2C14D7CB8A7A8B8CB2AD6D84D7D8C3
              90303FC3EEED56AEACC21CF09EDE5C71CA8A1A9A761A77645B8905B264FAB32F
              887BB70E5A8E7856D830E13D3FDF722C675A787FB5717AD77252FC211163E53F
              5FD038D8A11271F07382B6A087DBADA559E2F890A32DB2E7AC36B60D7A77285B
              1898307A6C3AD87DF8A52DA3030D4EDA594F67ADD7C917890A32DB2F96B35AF2
              1FCDB6FE2B7EB9ACF65FDC44F819F545F817E9FB5430013013080AB8C7B9707B
              0AE3D9C215855446D798FE8D08732C93D121FAA0195E1AA2D49E448891D95706
              492AE1827D8BDB5108F63015E9A72E59450C7895EFFD84C45F97F657E9FB54B3
              63468B3423915CCB2557DCC44975B92A716549571AF80C936674B380DB959D0A
              60414F611E1CBAF3D6022FF90B39D99C57A17CAAE3D8322B089932475C311BFB
              289FA7BD7C489BC50B95A98A99C738E70CE19C338674D73A6B8ADD66B359C571
              58A988D555CED4B8E0BD9AC5669AAB180A65723A0AB71D1BE55CE8AE2477BB1D
              19C99D15CE9AE20D71C3545CE188DC5669DA4DAB5AC333488ED7C1AC10382671
              D648172673D66B359ACD622A64756A1930AF4E6ABBDA6022BCD8B0DCD726181D
              2D63D8C7B533A1C599EEDC90F522B31DFC6B827A834FEABC8EC8B5889C5EF670
              7AB446F644F95D8E135D8A0C7095B84FBB3EEF6FEF1DF30D301A6B91663DAE44
              67F7E5F4F2862E64DB458E12671F6722B911739E23B789C95DA6C690ECED86C6
              E0DBD3CE08F5E441A3B4E699FAD4829CC35C6195188D4512FBBBA58BADE3FD95
              31FF0062672DB5A94C14795E4CB06A30C8E46FBE35DAC42FB67511176692D5C7
              2ED7113E4C4CDEB36ACDB5AAA45442C773468FF2FFC400251100020200050403
              010100000000000000000102110310122131042030411314512240FFDA000801
              0201013F00F1D7F9576E97E6F44735146A4B813B4EFCCF842743765B429B1BB6
              2E1F91459B21BBCA4CD91AA9E5ABC766EC66A1C531A63E33E1F8991D98ECA1EC
              C5C139A436288C62F15E72836F62C961AE1942C58B7A564E2C88BC8DC6A844F8
              312527508F2CC2E9A315487158687266A22EFB1F81C1C5D8E245ECE2CC1C37AF
              5314E952230BE7925B31905B95E148A449A6A8A46842742D87363779416E3450
              CA28A28A34F6D76A13A65092B3163A6546FDB4F2B1EFDEDD10E728ADCC65FDE5
              6596365E56597DAF24E8F9521E2C86EF3A435E37921F4F24A4DFA23D32D29BF7
              46245426D22848A1F6D0CAEC79449E361A8B80BAB518D24626239C9C8D4CBF0A
              EC7943928511AA28ACAB2B2D6579BDF379262C31A8C79278526F647C13FC3E0C
              4FC3E0C4FC1E0CE2ADA1A42A290C51B1A2B2A2C9313B28C44A1172662750E53B
              6741D44650A9BE0FB382BD9F6B0FD0FAB9354D13C59CD53286D64C4DD0B6213F
              4C718B274B643438FA231ADB2FFFC40026110002020104020104030000000000
              000000010211031012213020311314324041040522FFDA0008010301013F00EB
              A17E22F1A7DE8A28DA5D1769F7C50B1A8BE49A8BFB4DDCF24A3625C3ECA38198
              F964634A878A5FA464C2FD889AEAA2C8AB7C91C71AA89930C5C783165F8AF831
              CF77362CB7E8C99197C8FD753114607ED1336B94A918A1CD32A304396E90D548
              97143E9E0BD3049274C92B424E2EC53B7686D908493DC64F65DBB64BDF62375F
              DC4A31DB6457FB210E6D92CA37FB63658BB20B7F0471C5193154B722725E8B12
              1E8BC2CB2CB2CB2CB2191C7D1F5133EA663932CDCCBBD22B57D55E2B4BD65EFA
              AFC569110897BF14FB2CDC5BF14703EB46C6282A4C92A935E5457521CE3547C9
              4A91295BBF2B2FA9697F87B88C6535690A46E46E46E46E4CA6531464CA685163
              8B2994578E283C93504430C611DA8FEC306C9A947F62C73647064643F8B524D9
              F0536D1B211438A63491376C82B6919609478131D12AD5F3A7FFC4003D100002
              0103020305050606020007000000010203000411121321315110223241611420
              40527105233042628133435091A1B12472153553606382D1FFDA000801010008
              3F01FEBC7FF6E1A1FD14FF0042E43A9A5E358A53520E1D6968FF00413CABCA8D
              0A22BAD0E54451FE809C4D019F3C8A688E9EB5A7BDD4529C3F983E7D87B0FEDF
              186876A731C05303C7871ACE7029DB4D291229E63CE928D7AD74AF31FEA8FC48
              F7623C01C9A99B5BF967F2D1390DD698E7A0E9592BF4A524D79D3D7D4574F863
              DA0124D5DAE13E51CEA287BA9C4E4F16FA56B728FE1F4A6E5E47AD72C9E756EC
              A4E3C8F9D10723854B1155F36A90E54F85BDC1CB8D7AD1F3C8AE9F0668768AEE
              92070F4A971A9B963CE82F1C5670479513C7FD54839767023977BCA8C68FFF00
              5353215CD64E3AF69E9D9D1F347E19CE28567883C2979EAE15E9D9FABB4509D5
              D48EB53F7BD076FF007ECE947CEBF48F87CD673D8714B47CE8533E9C50E54796
              AC761F3E5D9EB8A1E66BA9C57ED43E10F60147B54F31CAB347B3380787663CF3
              4E7BBDBD2B9F0CD790E26BCEBA7C18ACFBD27D0761602B18CF1EC7FEFEE39D20
              D2648E009AE8958E75D29AB1CFE24731536A50E07EF4E75B13C38E6A40001D68
              0CC6DF9BB3CF98A229FC23FCD2E35FFAA73C49D46B1CF90A19E23882298E09EC
              CFC49A8D9D91574A83E5D69D15B571D5D3D3EB41F20D3316663C335E95FA6879
              D2F3C60570673E74DDE76E44D74A8477BE6A3FE6B3F17A0770F848E2D9C79D20
              12ED1FE22F9FA7AFD6B0221FE698991FA9A1FBF679D73F2AF2028735F3A1CA8F
              13EE1F8940BDF5E21BCA801A88E27DC1E1A5E2D58D5338E3FA457AD1EC92B395
              EBF1869D5DB1D2B6E4ADA93FC56DC9FE2B43D007D2B0C5DBCFB706B49A20D0E5
              F86A7712E7C80E47A53CEA1CC0663DDE5E95BA06671069C75A37F1A4B0B11A74
              731D6BDBE216B0E06FE38126B7A3D263DDDEF2D1D6A1B94B98243A43A8C71A92
              74B7821C6A91BD6B7D0A6C1B84900F18ADD037AE3634E3950FB46296656D3B41
              78D457D14B710AEB68B1838A9FED28A0DF4D615D695B5C6EDA4803C35311AA65
              D5A7E5A9EEA3B5803E80CE3393534F1C71C0BADE6F2C525CA4915D0263980A0E
              1762367E5CF142503DA65DA031E1A4FB421965DC11E80388E350DE4533DB7192
              3030454580CFE67CAADEEA3B9875E86283C268CAB0C50AEA791BCA92E51E29D0
              BA4C073C56E01A2558B4E3AD1FB46169A3FE569E3DA3B3A7E03A0950DB6A0BD1
              C7235348BAA7B1D258F53572E9BD25EA38556CF0AD431A24A85937F75640ACD8
              C8A86F1229A0B4DBD5CD59FE5A922861BD663B8901EEE3AD44CBBEEC8EAAC719
              A699370589818E7806A9DD37CDE893486CE0534567ECFBA30E9E3E7565B09769
              8EFF000CBC6471E35691D948043DEDFE62A6412C2FB8244FFEDC2A420BBA393F
              DEADD937E2B8D6559B1C31505D2CB24912E96638C91CC548E9BD0090C986F0E6
              A7DA6CDB3B81AB20F1ADB8A1FF00947B91F2152C56621F695C3C78D7E2AB3D88
              E68E4227E419E3FAD48C155832E4FA8AB874DE9A70CAAAD9E14ACA269E31A351
              C67153CA9B91248B260F87555CBC7BB35D215556CF01423B3F66F9FF0099EF7A
              7E34671221D40FAD384566E611703E014E0A9C8353040E79E85C67F1BED05964
              0D2ED2A4671FBD44C5A32032E7A1ABB1334F7C32191B8251C99A1BBD9CFA54B1
              CC7DA6242BA5F913CEA3867DBB689895D5C5981A804F02DD39568E6F12E2AC04
              B1B5A3E96D673A855CA3BAC50970A8789A449E28EE9CAB432F88549AB621D6C7
              1CC8156B1CB1472DC88248D9A9B51805B3CD09CF4A782E7EE8AA3E1F99ABA133
              4F7A32195B8251C99E1BBD9CFA55AAF705AACD265AAF2391849855D071839A8E
              29F1107D7DFE7D315EC5796E926AD5BC79F0A39DC824555E3EB53EA2A9197D09
              CDFD2A2DE8F758ACB6F27896883AED9808F8FAD4EF2C77223D5BE4F7757D29EC
              AF2E1E6525B60F2AB882E27FBD29A22FE58F5A432DE430634245E26CD412C9EC
              DB5BB229F1A63F2D582CB1AEEED3A4873F82788D6291748CB7FBABDB836FA26D
              D57D1AB35067695422E7D2AE6E5A29AC571B7A33AEAF266B6135C6FA3E9D548C
              7D9AD82A6B239E2B7746EA49B4D8F3CF0ADE732AE04B063C3D48AB3B869DEF1C
              1F06340CD3C8519EDD96323E6ABF9DD9633C59B8E2A0BC326EC4FCE3E4D9E157
              937DFC776AED84FC952BFDDBEE1B77C75F2A2DF7CF32B05C7955CDCBC5358AE3
              6F4675D5E4CD6C26B8DF47D3AAA194AC5696C02165FE2629CE1124527FBD34BA
              607D7A5F15FF00894F7AB1B1D41D4F7462ACAE1AE1EE640C7B98D02AF0BA295C
              24A99CC6DD684EF76D6CC4C9394C122ACEE5A792F1C1F06340CD4F23C92B458F
              65D27C58EB47ED49ECDE14C388D0F1AF6C96D2E164CEE804EEAFD2B764B37908
              30DC267875E15A99E1D8D9926D3C5BD6ACA7371997759F4E9F7B9530AC51F9AB
              FEDFEFB33EE67F07711044BABBC79FA0FC3CFE08A1D869F3A071A8FF0028E5FB
              F62C10B41730832EA4E2D9A451DCBE74CD2803EE12A29AC21CC393ED2389A885
              A6DF7DA7DE5FCBAABEC78637937F445A8725A9608C4AB646664C70D62AE2D904
              BBC0348830197A55D5B42B6B1A6AB72A070C559436F3C021FBEB66E1293D6AC5
              6DBDA35933453F8A41E86A1B548A6170230920D5B7488A86E2059182F2CD452D
              942CDAF26E473E34DA4E66E3A791E35782D7D98AE9834AF7F5D45358459B7048
              9D789AB316C6E351334730E320F4342DF608BB1DC3CD2B42FF00E564F2A31C45
              1217946A4E39AB58216BD77551DD18029A14498D8191D71C35D5CC31090DDED3
              685C6A5E752C112FB21FB928B8C71AC03A2DDD86454F0C6B2B5E0858A2E352D5
              D5B42B6B1A16B62A070C7E0638FBB25924B736CBA2298B7215796AB7514926EE
              09C61A9D42F9051E42B6F4FB3C7A339E74910FF8DAC1C9FE206A82DB6639A512
              0C3E74D6C291141B0CA5BC62ADAD16082DE4DDDB0D9D47EB463CFB60231ABC14
              D671BDDC49B693EAF2FA55CD9A5C981B544C5B1A6AF2D92E62B97D6C99C60D14
              11AA284441F9455CFD9C971B19C333E29134AEBD413A71E553DAABC370DAC216
              F036319AB8FB352568631187692AE2CD2E3D9DB542C5B1A6AF2D92E62BA6D6E9
              9C60D35AA98F676161D5C02D5BD9AC692C262DB0FCBD6827F1240FAF34D6A1C4
              76DECE54BF8AAD2DA3B68ADDF715178E5AADAC92DCDC9CCCE1B3AA8C2260C850
              A938E7505A470416D26EED29E66B6B3EDA08F1783DD1EFC6353B9C01D4D4B6AE
              A83CEB61B7906A29D055BDBB3C7D698608E041AF65936719D5515ABBA372229A
              26116AD1ABD7A5240C44E711FEAAB9B778D738C9A96D9D62EBD296D2468C8D40
              8E946322276D21BA9A5B6732200597870CD496F22CCFE14C73ABA81A353C8D45
              197DB1A9B1E42B6D8C6EDA03753D2AE2D9923EB50A172ABA8E3A5471968E3C6A
              6E99E5496CC648BC6BD29E07133724C73ABA81A356E47B218CBEDAEA6C790ADB
              3B4CDA0375353DB3A47D4D25AC8D1633ABF042F7479D1E6F44E681E3D45176EF
              212DC79F115A4E8D827563F48A7BD6B761C5102F8CE6BFF90D0335A5FA41C57C
              70BAD5C0BC3DC38F663577DD86E6774D64F80F9540BA6113BA27D00C544B7BAF
              DA9756F1EE73A5BD696430BEB80AF04A8B736FD9D75639542A5B17D27847D6A7
              7648F622D4C9CC5697C5A44FA6490E4BF0A82F5AEC6FA9D4CB8C1AD3AB6E0D58
              FDEA06D50497BBA9F422A3BD6B86232E857C0734DE0D5A1BE8697C53DD6E37FD
              41E1516AD7F758D353E7785B499D5CEA0BD6BB1BEA7532E307B31AB6E0D58FDE
              A060D6F2DF0913E86A7D7B7A4E3572A266B4BD583EE997BF0BAE28F3CFBA3F7A
              84F02714A3970AF9B35FFA7166BE65EC91B52443083A0A6B97DAD38C7A5194FF
              00C7FE17E9A95B53BF1268DD3EDE34E3D2A2B96544E43029DF31EB2F8F5351CC
              4080968F80EE93535CB36860EBC07315BA75CE0AC87E614B76EB185D200C72AB
              69D9037315BAC7DA3F8B9FCD5ED0D984154F406848765DB515F5A89B0255D2DE
              A29662AB0B6B41F29A590E2E3F89FABB2794BC880004F954772CB24DE3381C68
              DC319F1A759E941CECBB6A2BD4D28E13E9D5FB544FA44ABA1FD45194ED46DA95
              7A1A9EE59E3E9D692E9C458C63DF3E6F9AD5ABBF9AEAE6B00F20050233E62B74
              44110B96233CAA1BA8A686E64DB12A8E4693ED1865943E8DB55E348E1DF505D5
              C855BDEA5CEC3699542E34D7B645ED9B7B9ECF51C8A5AF7381F2E2ADEF23B98C
              49B6FA46341A6907142EB2639D5C5E25B09DB4440AE7556A1B96678A0FCD4CE1
              51A408AB8E7EB4DF68C2F347FCAD3C4D19069BAF0C98E547ED0890C39D6BA7C2
              01C5497D1456E926DACA478CD4D34714702EB794F2C5099678A65D4922F9D4D7
              91DBA6BD1DF5F3A8E55955793AF234641A6EBC3263955C5DC76D0C72ED0761E2
              6A94824798F3140EE25CF901C8F4A79D758B6339E1FE2B740DEB81069C72A790
              2EC44650D8F18A37F1472DCAEA8E365ABBB98ED238E5D9CBF1CB54A412BE63CC
              7BC89DD0B815E4D59E0BCA8927B0E9E16CFC1BCEA0D94B0D6BF76981A1FCF352
              C56420DF1878FC7CE99A3D9925C0EFFE8AB7B6581815D5DFCEE77A8DD2476461
              0DB81B8F2E552380BA2404F4CD5CC91EBB8B94280367201A988DDB7C985FD0AF
              1153DB2CE589C77F1A3BD51904ACD170EA2A35DB852E625893A0A11597B37CFF
              00CCAB8234EDC72C2DF2BE2B3FCB6FF66ADDD37A3B8D6559B1C31567751EEA40
              A811F8A4D8E6291238A72999A388E554D5B2DBBC9BE784FCB18A99635933C445
              E1AB8234EDC72C2DF2BE2AD9D37A3BC672ACD8E151B87088A991D69D04A86DB5
              05E8E391A9655D773F6768D44FE6353BA6F9BE12690D9C0A931ED16EB2A23754
              A12C4915B460BEA7AB374DC17AD2E19B1DD3E751B8711A2A123AFC60F811F8F3
              5B3DC345A7422360D3D9CD02243AFD9D9FBD21A586681A46226B6933C3F7A8ED
              27B478A508048DC24E35EC924EB6E23D11239CF1ADB91525B7694C2EDC50D4D6
              7233DB05D7F7BE3CD46855A795C377BCB34D0BBC16AA9A6256E64D2C4E905D46
              CC622DE123B221869A1D6FC7CFE36E67960DED3A5E21C6A69A7B985E2C099FC7
              1B75ADE9675B5625E791789A92691E30F950C790CD5B48DAE6DADAEEF4A5965C
              4D136B465F01C5393BB3E8D1C3A55FCB2446DE52EA5573A8542CD1CB394D9EEF
              4AB9958BC51B894E8F335672BCA9E65D71C6B735ED45A71A31A7FF00DF81143F
              0B3EE1ECD34C319ACD060314655A12A93F4ACD0ACF6E6B359EDF5A1EF7E6EC1C
              C73F7C9A1E7D8ABFDE982AD48CD83F20E149907F551AE14DCF15EB5F30C50353
              124F4AE1E638537601EE81439AF0A619CD278474F77C97B7A8F7146AFA568C7D
              69F5337E9E5590B5277BE951A2A0F53CE8E17D41AD385140370A627341DAB49F
              DFB3D6B3C8530F0F2EC55C6799A3DA687675E7D8391E069BC26B38F5AC1D3E5E
              BDBFFFC400271001000203000202020202030100000000010011213141105120
              61307140A1819150B1C1D1FFDA0008010100011E10FE4098137BFC5AFE0394D4
              60B751DBBFF854D0F27E51FCF388EF8DFF00804A823B6A2193C9FE46BE5BBC82
              CEF52C7271A8FB80CBB8928FEA540145C1FCA0F84D9334D482D56FB3147FE628
              C8652858B40C90C2844C7DC564B1F5E344FEC7C0FE44EF8BFD0D1ED8E3991B79
              2EDAC23C14E408E1774EE155C53FD337AB5AFD9184ACC8CA5E43913B0D93FBDF
              CA20B8F6200EB010CE80205D4902985D23111041319258443D2846AEBA301746
              E528F3FEA20F55C2E22921ABBDFF00254C13B296C6CF8D6FACCDD516762B817A
              202846594627789A45CA104B18A72CC9005A23B815F2D0961BCA5483EEF7187F
              0EFF0012AE2B78219EB1C4171EAF2523A41C87188CA9959D2277A3275002E98E
              1032DD3B090663B531D31DCC28B05F740B3B38545D38FC6FCABCE809D14E0DC5
              6B117B3501959508AF0994651A14A8C8459FB7A94595E7988B740015A21060A0
              EE81EBD50724BAF8BA2A8F10504F28A6F4F041B0289B19B605F28FFF0072C32D
              9F352BE15E5FC1402D227423B0F80012A8AD99DE52B487D890E036E330396BA6
              A55C2E89F79983E1899D6FD32F35C82B645180673AABC2161C223D2EC2D2C299
              2502372F4AE15631DAACBC54EC9129FC0F875F8DA5B55CC6212A40975B823EA3
              CBA03FB45C50BD08045A0DD4C50C20A8E37B0065ACDE82C082E3BE48010A3881
              28056008EED03626FF0049760A208AE8400C61AE6662F6328FF7E0F81F075F80
              66F156C5728FB8932A33FF002298846C6E0D98C46674C303EBC6585F66E111A5
              705DC6F88B6AE603AE084BA6CB094D30646F11382CC9FD4CC11CB88002E59E08
              56A6D7C1F123E1FC0E81D95E5CFA571B5544727C10F4E85473136AD8093A6A27
              F6525CB42C251398642115A08501C22DE88E5C1A5706E12CA1BD5ACFBDCACEF6
              B2C16CAAA832FDBE0F89E5F27C401004DBC1F021B95920E661855E154245C692
              5C5BAB3D841A2C9CD0DF80E58287383B13FC91F7305A2BFF00170B0A5D476C1C
              60DA92F510419215820C8894FE17F113B3BE08C4D258C3BD28A33630B40002E0
              B95B18DBBB61C3758688F54D375D91F6412A8F36080964F9C822A3F79659D05F
              23C310902DDCD2EE4DA2316E0553096A2423F07F1881E3BE3928A71798843241
              6EC27371913EF5F86D198418A956CB9056030DA3DA96DCE585CC0503AC128C92
              B31755C146A12DE88AC151DB7D428BF3D51EC2E71264886E639A7F3884276763
              390ABCEA00E3B989D1180764DA2002A75B63D378D24BC1BE453EF8C661D02C78
              1B387D1DA96E9FFB84A68158BE15D2C16D3EF9C024BE2A4C711AD5B8060D97F0
              277C6DF13C9B843C278063C149DA0AC1888C572067865E364D92DFF52DD2CBFF
              00139B1132FDCA0B77176C7316770F5D931AB7A31F62B8C6569FBF8AACCA7A62
              57F0040C07A607D329EA52F4CA4A7A61F46200398844C6E933FF00F2F12D7C85
              201FEA24B5366A080C0D7C3A0029CCDA8B1ACC9E1FD551BAE4B1B5BC2B1712BF
              4C715903C54AF206400194FA7252024AECE21BEF70B62BB4A60C59BF7BD8C95D
              2B7291335D350CADB3A55CE87D299C83036522B7B09B4DA8BDC67E8D9CC17D02
              D82F5EC83241D29E899917607118465B2DBF439D74E9A8B85656D9E10CDD0D85
              B658F11A2051D793C78907D602D1AEAD418D24FBAA182EF7EE84978B69DDA408
              EDAB1CB7B2804C45DCCCDA999FB94161D2D878AF073840CB7E1B7AE41FC85B13
              A52FAB5302E1C057E880D4C553103CFACC8C235B55CB8C4A4D232B357B9D8B61
              5E78484B72B5C962831554CC518D261521481269C969AD8B9F2CC1E7A476782C
              CD1833A0AE41449430516ABE593A1DB704AAB83D961A1AF405815CD1AD6E0C28
              6D2F3490E85DE21A816AD828F46BD4D9BB1025F821A7C2E84A9734CA29E9A947
              3A3C43C87C3AF0A4C25FD4B56501CFD2133FB90A5630AE047C9D3823E982690E
              92578254158A34103E883447398BF8CF4120B1BA625473FB941D119642C32D4B
              0BF51FD844504095298C22B79729AA54F16A582FDC861EB5E5DA7A9E67C24975
              1DF86D43CDE5DE7D5F4AAD4969E89966A54635B28914EC3B5546CC99DE6E5E7A
              01B2A6783DC3832284549413BF8B34EBB837C248CCEAB4DE8753EC82301335DA
              031764BABC6E190D94C4184B2EDD4C68F8B4BA5628CBBEB48B200F9AB77172E8
              18B049F69BBE4E67DB7F47169F1609762BC2858A819B650FBAA995B61A4A9550
              A8B2BA59711A3439F52855D010294918D30D2904DB0CBC513B248E0B4CBAEC4A
              092313B5DE6FF316758A4337636885A1FE62D5F565852B58A6635935CBC334EC
              8DD1422D855479CE521EFB3242036432F146AC9238DFCDDA14B8503F40155BD1
              03898854F2D45BAAF288B1A58680E2BB3280B942672A25683B418AC61E611B44
              B175B7B3F36580F2DCC5E453C7BF5A4F7B6086C843EF9155B604CCBD315AB17A
              AC40C133A4D4BAA2905A2C058AD3D8BFBF8C534D5D4183730E9710BC8941CC43
              6B350EC61ECC46E23954BF179DFAC6BD10CB44C1563FDC45050967BAE3E0ABCB
              1A758F02E42F83C7EDA2DB984A435A8360A65F05C6E8CB312FEC9DE726056030
              FA5A620128C81C29236149D5032B855682365E21189F0592193069382956E6A9
              E5F2E48458F1A635C48FB0AC5E8855E6DE14CEADE09195DA3A5169FD5B061E43
              E6AB5D6586E9B63E090659258DD7D469E24626C413CA9837B55913069F4459BB
              C1DE060B3712A2912E9A640D4C1068D159192ACBCC5D13FAC51815F40D617F0B
              2C44A24008C4D885479472C11D6589F5E14EFC8C864059F71B8361AF2D3380D5
              C929361D3F69E2800D840833277C93A6DB86A8D444FA756615EE708A85F477CD
              2DC40E335CEA7FA3B061DC72CECC29C8513819164CC291301497240A11DD0885
              B8C08152E52B0562445729CAAAFBC5599354A02258108611CB85D2201B3AC5C1
              5507F69006A511EDEA29D7567E2E920EA5DDB16D5D29F2B113C827DA60DB3FDD
              41CF65B45D03198F355A062A7390291EFBD975E4347F75A9822EBB662BB54926
              C172114926BDC607C0AEA06F0C31B873547E8361D4C8D8457202CCE526ED2D22
              C2E7AB9BAE521A971647D8A674D4576E3D83B5F70034954530BF31778ECF8BF3
              84AB14A89E021EDEBF3656BBD44EFA7A990E220D9F1E1152C79560EC8C0F0048
              D811598D5203625232FEE5E5EB2A9A4D8B0A6180DF76469220490D9535104095
              B3E3F63DC54A93B20950F4F78008AD8D939CE580A09A5EC77920016ACEC50156
              9F530729EC929284F7139DF74DCF70832457D2940AA9260BB0D36593FAD7B8B1
              57D5929C65135E668E65B638A721228346D82CD573DC20EFE9AE387E99A77A36
              D20D6CA60470B92EB577F0364077B3811D23BD8AA05D74424378E34D9A20DFA2
              B1C7EC89853606686DA76E36C5856F581D8CB06EB7D639FA0DB6475351E380D6
              61618DC731A0F603C2DA306A3E9D33326C5C483150B59EC01162F65829516435
              9792829293EC357293A151AFC064C0EA20623F3EA9DAF8A24E0D60C8D2004F56
              2D9091429078C0AE5042D0D64BA1DC62EB800CDFE593447BAB020109D38D87C4
              DA4541D9ED01FE24A5288CA72E7AC00C3BC2AA4C1B36975335F3F808BADC4D4D
              FA8F680374A8693514B06176895396C1516D5BA841246C206059A6EE96539CBD
              744897E299B83A38002CAE4516456A0ED1C9649B34C41D2AB5BE55E6AC45F3BF
              B49859194B7E9DA2D87045D75CD8DC28C6A1D45FBCC41D3AB559899B54A027A6
              B6D06600194FA726D26DAA691F94D5B98C4AB76832CB873E63BD8A9346569393
              5B64F017316563D0D3077A147EAE17016B57716AEEB1EA3D779ED9A40550DE30
              A1A18B55B941B8BA96357EFBE8170A140EC86D41F2D426C48ECCD1C3869F16F4
              2B32439CECD25EFB6B6E15BFF2FC8124CB2D09D40E6504C59659170281096C9C
              999DDC8292F15770D4FC48440E1870A6EFB7F5CAC0BAE1C6A351DA45C0A04386
              8DAEEEE09B4F7B1040CF7E1B7EE70CAC4206696356784539F7E38BE69C8486EB
              A36BEA3168AEC410974F01984E1531F14C4AFCC316E3C4E46B985DA17129AF26
              6207CD9CF3C5DC4A96EC0CAF15F90185AD76B58F89263B71E955C834E705422C
              22EA7B8D39456FE55797249E22CA5D3E2938E2FADE56CB1B7D7AB0CAF1AB6A28
              5B756DDBE157113E02D9656B4DCB18CBB858E2578A958FC73D509453528B34A4
              E32F1B35A98C4F2ED24103B8EC5BB9D602DB68001600048DA5083C1DA625756B
              624346FE3B4DA5DFC811765D95B10F233644F090C4C67ABA8D197C657C1150B6
              536B43247C8E125FD92FEC96F64B7B25BD92FEC82343710694B9D4235EDC7ED3
              05D35031097A80036B44C6BC73AC505DC818A80C444C0BCCA1FEBB012A060166
              6EB069C918AC8F7536E223D27DE45258252D12E3901EE22D591F307A2761F7B8
              A558D318312AF52A1640DB00EF2B714A0D3D7FBE7C8086862A901988CE59621A
              F7C9B331ED52BD7BDD290959E9A6D0991793414523B6005E4F2D62D103466F5F
              07FDB1831A58AE2C5704776E432B73068FA32DA5A22E6693CECADA8E8CA557F6
              B1B7ED63DC02A965BF4EB0AAC06FB0A6E37D2ED1292AC9952A5FB2C2E139654B
              08E76A90624372BEA3BAC1F6CDF57779AF61810B77528416B827A1B88C6A3D8A
              A8180DC34B07A420501B810F492A9209D031D9724F6D47606BFA8B1AB5AB4113
              C5EFFEA40E15EC85050997B973BE803DDB02C2AA6A70B2C3A835925982A1BB28
              558D97A2216880C451D57770A2D28D1DE117552384A532D934971C93FFC40024
              1001000202020202010500000000000000011011002030402150314160516170
              8081FFDA00080101001F3F10FEAEF8F4B4FA3465EC3DF7F92EB3CFEA67CFCFA6
              433CBE9C0F7CC2FAA6C7D0A2FC3E0DFF00DF76B102443CAE8F4CE64845D63178
              9A071EB783A2A1F7D22E5722C2A063041E68D97438691E3AC71632BDA0FB5F41
              570C80B83E135FB48D84D0F5481C22E17AAD81DA5748D071ADC68E087670EA5E
              315AB271D9CC5C970E38E1AB870988C03CB67244C584D0865747901973586649
              2E6B0C7F061351E8845100EC5DFE20BE30E6F3D972B4FFD9}
            Proportional = True
          end
          object Label100: TLabel
            Left = 176
            Top = 41
            Width = 43
            Height = 18
            Caption = 'Codigo'
          end
          object Label101: TLabel
            Left = 176
            Top = 54
            Width = 42
            Height = 18
            Caption = '000012'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label102: TLabel
            Left = 176
            Top = 90
            Width = 97
            Height = 18
            Caption = '000.0000.000-00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label103: TLabel
            Left = 176
            Top = 77
            Width = 23
            Height = 18
            Caption = 'CPF'
          end
          object Label104: TLabel
            Left = 176
            Top = 116
            Width = 30
            Height = 18
            Caption = 'CNPJ'
          end
          object Label105: TLabel
            Left = 176
            Top = 129
            Width = 132
            Height = 18
            Caption = '0000.000.000-0001/58'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label106: TLabel
            Left = 176
            Top = 167
            Width = 70
            Height = 18
            Caption = '6399999999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label107: TLabel
            Left = 176
            Top = 154
            Width = 141
            Height = 18
            Caption = 'Contato Celular/Whats'
          end
          object Label108: TLabel
            Left = 12
            Top = 207
            Width = 187
            Height = 18
            Caption = 'NOME DO FORNECEDOR TESTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label109: TLabel
            Left = 12
            Top = 194
            Width = 38
            Height = 18
            Caption = 'Nome'
          end
          object Label110: TLabel
            Left = 12
            Top = 225
            Width = 65
            Height = 18
            Caption = 'UF/Cidade'
          end
          object Label111: TLabel
            Left = 12
            Top = 238
            Width = 118
            Height = 18
            Caption = 'Tocantins / Palmas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label112: TLabel
            Left = 12
            Top = 270
            Width = 221
            Height = 18
            Caption = '605 NORTE - PLANO DIRETOR NORTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label113: TLabel
            Left = 12
            Top = 257
            Width = 37
            Height = 18
            Caption = 'Bairro'
          end
          object Label114: TLabel
            Left = 12
            Top = 301
            Width = 92
            Height = 18
            Caption = 'RUA TESTE S/N'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label115: TLabel
            Left = 12
            Top = 288
            Width = 58
            Height = 18
            Caption = 'Endere'#231'o'
          end
          object Label116: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 342
            Height = 26
            Align = alTop
            Caption = 'Resumo do fornecedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 198
          end
          object GroupBox5: TGroupBox
            Left = 1
            Top = 327
            Width = 348
            Height = 168
            Align = alBottom
            Caption = ' Resumo '
            TabOrder = 0
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 661
    Width = 1180
    Height = 19
    Panels = <>
  end
  object Panel7: TPanel
    Left = 0
    Top = 606
    Width = 1180
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Image2: TImage
      AlignWithMargins = True
      Left = 63
      Top = 3
      Width = 54
      Height = 49
      Align = alLeft
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000AF
        000000AF08060000008B928E7500000A37694343507352474220494543363139
        36362D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202
        480DBD48912E2A3109104AC090002236445470445191A6083228E080A34391B1
        228A850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9F
        BDCFDD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B67600701
        0CF000036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2A
        D33F8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC9
        98B6344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CE
        E265F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4
        B1197C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F
        58CCCF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC
        300E378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D
        2D6DBE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5
        D9FA876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E2
        2C672BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F393
        38927431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24
        BE882F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B9
        9689DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9
        CD8BD199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A
        02342000454003EA401BE80313C004B6C011B8000FE0030241288804716031E0
        821490014420171480B5A0189482AD6027A80675A0113483367018748163E034
        38072E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81C
        B28558901BE403054311501C940825434248021540EBA052A81CAA86EAA166E8
        5BE828741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38
        088E8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A711
        8010113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A
        4891A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA8
        3ED455D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8
        B3E811F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C6
        8C61A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E2
        7470B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0
        CBF165F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B
        78412412F5884EC470A280B88658493C443C4F1C25BE25514866243629812421
        6D21ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A58
        2A0428F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1
        A9125EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF2
        05E547142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA
        380D4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA1
        1BD103E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8
        F1D54AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD1
        38ABF1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2
        D6F2D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7
        A4CE63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A85
        7AED7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314
        C35D86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B4236713759
        66D26072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BB
        CD872DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F59
        1958C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7
        B6C6F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE
        8383A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763A
        E6F4D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725C
        EB5DA56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE7
        41CF675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73
        DF57CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940
        C7C095817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE7
        778582D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA
        60C9829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C748
        63AD6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1
        FA22E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06
        CEF4D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A
        764DDE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26
        BD3D0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C3625
        0A12356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E
        729E306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA
        55D0AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E66
        5D4F9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6
        AA4D1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16C
        CF56CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC
        50615751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66ED
        A6DAD7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D98
        7D39FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D
        9A2D65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F
        9BF8EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8E
        EB1E3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE6
        9F9C3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9D
        E9F7EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D
        063B871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1
        EB51D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8A
        FB9AF71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE8
        21F961C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFB
        CCE4D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD
        5719AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4
        F1EEA78C4F9F7E03F784F3FB8F70662A000000097048597300002E2300002E23
        0178A53F760000116149444154789CED9D0B7054D519C7CFD228418588485424
        010101491C5F414104EAA3AD52111F5544A9154D1DEC4C0B213C1C6D9D69A73A
        051B98422D0C32962A828808F8408AC89B01055B146201098F04A2263C049404
        41B7F7BFE4AE676FEEDEF7DDDD9BFBFFCD64B28FBB7BCFEEFEEF77BEF37DDF39
        272B1A8D0A3D8A8B8B5BE6E4E45C70F264B32CDD030849015959DFD51F3F7E7C
        FFB469D34E367A4EBED34C61E4C8D221916691929C73DB5CAD3C1439E3CC94B5
        93101D9A89B3CFC9A92B1D3D6EB1889EFA635959D916F599B87861694B468D79
        55B939202D6D2424392D94BF7B44246B5069E9D892B2B2097FC78331F12A0637
        525232FA1541E192CC264B44225314011F52043C3B265E45B8F72A0F0E4C77CB
        08B1423412993C7CF8F0774EBB0D91C88834B78710CB44846873F6D9AD7E9935
        62C488E65967645F97EE0611628B48A45F56341A6DA3DCFC51BADB42884D72B3
        229148B374B7821007584B40B46CD952E4E6B6F5BB31BE5257572FAAABAB5376
        3EED77969B9BAB3C768EA8DC5B254E9E3A1D6FAFA9A915C78E1D4B599B9A1A96
        C4DBBD5B573178F0BD7EB7C5572A2A7689A9D3A6FBF6FEEDDAB5135D3A7712F9
        F979A243877CD1BA756B5B6DDB5B59297655EC163B2B2AC4A953A77C6B675382
        A95F17B468D1425C79E515A26FDF3E22B7ADF39EA9B3227AFCDD74E38F63F737
        6DFA482C5DBA4C1C3A7CD8A396364D285E0740B40306DC2A7A165D23B2B2BCFF
        0A8B94F7C5DFD6F24F63224EA5BB1324285E9BC0D20EBA6360CC7FF59BC2821E
        B1BFC5EF2E11CB97AFF4FD7C4183E2B508ACEDD00787886E8AFF9F6A06DC76AB
        E8DCA99398F5CA1C65E05997F2F3672A14AF0520DCC7873FA60CCA2E4A5B1B70
        D18C2AF99D983A753A7DE106285E133241B82A88603CFEF86362E2A4C9B4C082
        E235E5D7C58F648470556202562EA6C9539E0F7D488DE235A05FDF1B6271DB4C
        0317D3FD83EF8DF9C06186E24D0232640887652A887A2C5FB12AD461348A3709
        83EEB8DD9718AE97C0FA4E9CF4B77437236D64F6AF9326509300CBE68663C7BE
        16EB376C10870F1D1635B5B562EFDECAD8E3C8A4C1AAA3EBBFBE772F919D9DED
        F81C788FC2C202B1756BB9ABB60615DFC5FBECB3E30317DA4176CB0D48EF2E7A
        F36DDD8800EA18C0E6CD1F8B356BD6C5ACA79BD8712C1347F112959E45458E5E
        87D1FFCC992F8B6DDBB75B3A1E15652FCC783166E5910071028AA6E0DE8431F2
        40F16A38DDAD3B4BFDCE9FBFC0B270656085910676E2AA40B85D3A777674DEA0
        43F16AE8E9D065D8BE7D87D8A8B80B4E819BD1BD7B37473E30DC0E8A97C4EA72
        9DB07EC307AECE0B1762F98A95B13A06BBA4A2482813A17835389931525F5FEF
        C9A0A97AFFE78E5E87E84518A17825205C27B1DD6DDBBCE9B26B6A6A1CBDAE65
        2B8A37F43875192A76EDF6E4FC0829226A60F7023A23C393297E11CE4F9D0488
        000905BB537ABC9C4489F7B233FF0D9C0C61980C50BC128816C811034CA48415
        94670277C86F784CE9AA55911F3AE45D12C689FF7AEC6838672053BC06A829DD
        54E1D4E70EEBF4798A3783C0DA0E4E401D4518A1783308A745EF8703563BE215
        146F860077A177AF5E8E5ECBC21C9256501EE9245386E848D0AAF6BC82E2CD00
        60756F6C582DC72E61B5BA80E2CD009C5A5D8082A0B0E2BB789F7C729CDFA7D0
        65F49827D2725EBB203CE674AE5C75F5E7F1E2F63042CB9B46B02604A6D63B9D
        2BB7F4BD651EB7285850BC690282C5FA0B7653C12AB0BA61F67701C59B0620DC
        610F3FE46A3193B05B5D40F1A61855B86E265D56565685DEEA028A378578215C
        944CCE9A35DBC35605178A374578215C80499E614D4A68A178538057C2753BC9
        B3A941F1FA8C57C245E5D8AB73E779D4AAA601C5EB235EADED1BF3735F991DDA
        BADD6450BC3EE1E5A2D4B0B861CEA42583E2F581F35AB7160FBB8CE3AACC7F63
        616C451DD2182EB4E731E7352CBDEF3473268344C4FAF51B3C6855D38496D743
        BC162EF66023C9A1783D82C24D3D14AF0760B192DF28C275B350B40A7C5CBA0A
        D6A0785DE2A570E7CE9DC724840D285E17A090DC0BE1DA5D949A9C86E275087C
        5C1492BB152E56989C356B0E85EB008AD7015E0DCE20DC7F4C9D1EEAEDA8DC40
        F1DA0499332420DC0A170B85701F617750BC3650A7EEB8CD9C61AD85192FBC48
        E1BA84E2B5C1D0A10FB8162EE69E4D9D369D1B5F7B00C56B114C4FC78E3D6EA0
        70BD85E2B500B698BAC9E18A362A14AEF750BC262009815D2ADD40E1FA03C56B
        00066843870E71B58136C2613367BE44E1FA00C56BC0CF07DC667B7F0A2D2824
        6754C11F28DE24601BD7BE7DFBB87A0F6C8CCDF515FC83E24DC2A03B06BA7A3D
        264C62B62F2E02BF416D44AAF7CFC804285E1D0A0B0B5CC773B1646971F1308F
        5A640CB275CF3C3B3E25E7CA24285E0D189CDD73F75DE96E06B100C5ABE1AA2B
        AF08ED46D44183E2D5D0BBB7B34D4D48EAA178259090C8CFCF4B77338845285E
        899E45D7A4BB09C40614AF4461A1BBC21B925A28DE06301FCD8B69EB247550BC
        0D20B64B8205C5DB40BB8BDCAF2B46520BC5DB80D31DD749FAA0781B80CF4B82
        8525F1EEAFFEDCF1D64975F5F58E5E974A302378F98A95E96E8663EAEB32FF3B
        F6034BE2C5BA024D796D01148A7361BBE041B78104168A9704168A9704168A97
        04168A9704168A9704168A9704168A9704168A9704168A9704168A9704168A97
        04168A9704168A9704168A9704168A970416CFC5DBAA554BD1B66D5B71E18517
        C41FFBE28B2FC5BE7DFBC48913DF7A7D3A12623C136F6C31E61BFA184E21FFF0
        C38D62C5CA55A2B6F68057A72521C6B5789B373F530CB97FB0A5750FAEBDB667
        EC6FC1C24562DDBAF56E4F4D428E2BF1B66D7BBE78F49161E2FCF3DBD87ADD5D
        770E8AEDDFFBD6DB8BDD9C9E841CC7E285C5BDEFBE5FE80A17FB307CB67367FC
        3EF631BBA463C78463FAF7EF273EFDDF365151B1CB691348C8712CDE9FFEE496
        46827C77C9BFC5DAB5EB1A0DCCE022602077F75D7726B817D8C7F7A9DF3FCD81
        1C718423F1B66F7F71CC72CAFC73E64BA2BCFCD3A4AF397AF49898F9AF97C5C0
        DB0724BCB6B0A0407CF49FFF3A690609398EC47BCBCD3725DC9F3367AEA17065
        E0E7E677C88F5BED5EBDAFA37889236C8B17DDBFDCF5C3BFB52BBE254B96C65C
        060011E33D619909B1836DF15EDAA54BC2FD65EF2FB77D520CD20E1C38181FEC
        E5E5E559B2DC18247651CE7FEEB93962C78ECF4CE3C5706F2EC8CD15D92DB263
        F7BFFAEA88A8AAAA4ADB8582F62381D341E97954DC247010EDE9DAF5D2D8E7DA
        A90C90C33676B02D5E74F32ABBF7EC51BEF8FD8E4E5C5E5E1EF77D3B5DD2B191
        78618D2FBFBC30761B1BE4D5D6D68AE2E247120689AB56ADD60DB7F5E9D33B16
        8E4B067A8B7716BFDB48FC10BB2A2C08C2CA0525B713E8C5AF215A0C70B5E304
        197C16AC07974C8005053D6217AD7A0EDC1FF6F04309C78C9FF0D75025806C89
        173F822C9E0DEB3F707C6284C90A94C1DA9AB56BC5962D5B1B3DDFAA55ABB800
        91D4B8CA42B80DEDD30A5C0FB83DF8D3FED8CD9B374F10FDE8314F987E0EF444
        EA6BD09B68C50BEB386EEC68D3F7C167C15860C68C1775058CFD3254770DDF97
        56B800A1CBE79F9F667AAEA6822DF1B66FDF3EE17EA5D2053B055DE55FC63F67
        E958243492592D394E8C2D57CD842B83048BDC06B4490696D8AC6791B767456F
        22838B09E7B00ADA0E0B6D96BCE9DFAFAFEEE39B377F6CF95C4D015BE2958B6D
        809B2ECA8E7F260B17DDEBF1BA3A71DBAD3F4BD8941A4243EA59066ECDB66DDB
        457D7DBDC8CECE56AC5751425205B7213EF502409BF01AF502800B61265EF99C
        BB76EF4978AE48B196DA248E9CC0D1BB2871DFC87D508F01B0F4E8B960FD6195
        C3B6FFB02DF15EDCAE5DFC763A76339763C99F7CB245E4E7FDB067DAF59ACDFF
        F4E2CEEFBFBF425C73F55562C890C1F1C73A76EC9060BD217655BC1085510D06
        5C02992A4D4FA4F5BBF57C520855EB0FA38733CB3CE222535D0CB411F173A7E3
        8FA0624BBC679D7556FCF6C183073D6F8C11B85864314204B210640B88EAB564
        832D84F5B029B62A963C8D2B849DDA61D58159B1917CF1C00ACA510CADB0110B
        D7EBA9203EB809F0FF552B8D1ECE4CBC8B16BD95609DC35827624BBCF28F79E8
        F061CF1B6384DEA04E052E838C59DC19DD7B321F5A6BBD8CFC5E237F17212C99
        ADE5C63D951C7DB142D8ACAC1E819949F1654D4DD2E78E1E3D9AE0AB9A59AD23
        478E183E0F2BAF5EA8467EAF91BF8BF8AD1ACB464F60E6E3DB3106E970D93211
        5FC52BC74DCD30ABEF35B234E8AE1122526771B805032A55BCC9FC5E337F1717
        102219380E21382F912BF6C28CAFE285708D9205325E14A743C456B267F205A5
        E7D7CAA3F6647EAFBCF595D6DF95B1129141484D1E0CCBB7497202E136C02570
        839A26868FAA0DA7E961C5EF45565045EBEF9A21A789D530978C3C30D6032E09
        098878BFF9FA1B5BC7436CC8C8C9D56B76819FAA0A5DCFEF45744045EBEFEA81
        746E418FCB44A74E9D6CCF3CD172E2C40957AF6F2AD812AF3C9041D0DF0C74BF
        48ED26C3AA4B61153BF3E9CC80CFAA8A57EBF7C2B79605A8F577659C4E9522E6
        38B6BCDAF8A81EB05646032D2FC50BE13EF3E73F593A56BE089321A7BEB5C7E6
        19C47765D0038C1CF15B4B6D92A325C41AB6C45BB56F5FFC87CCB45DD251D790
        0C08A352E905D0BDA37410FEA659FBF52ACED40BD18ABF8B8B69E8830F247D7F
        5C40F83EF7ECD91BB3F2A884A378ED614BBCDA8142A61491A31DDA8118E6D321
        5BE626982FFBBD18F0A9EF65C5DF45DDB1EC2AC042BFF7DEB298450F53D9A29F
        D8B3BC1ADFCE6A11B9DFC8F5B4C0ABBA56D9EF45A402993BABFE2E4A1855E43A
        04E21DB6C40B2B2BCF80C00F9409E2956777C0E29A09372727C7D2FBCA7E2F44
        FCDABCF996FD5DD92DC1B42733E1A2C28CD8C3F6806DE3A64D09852B99E23AA8
        C0553043F6598DD05E04881C3889EF5A599B4276458835EC8B77E30FE205588B
        0153DAED82018D1F98A562715E3B0530A81F568F471559BE949DB312DF55CF69
        647931186428CD3EB6C50B2B2B879AF01F35B2766610ABD375FCA0C765DD0D2D
        1DE2C076902BD0E0F7CA1101A3F8AE0C066FC9DC2B7C1756C369241147715E4C
        5E947D3AB5B8DB8A80FD08DACB213C080D82D39BD0A95DB1C7D27B6BFC5E1523
        7F17C8715BCC37D31B44C2E21A85D388318EC48B1F010323D97D808031EA7F63
        C142DD1F15E2E9D9B328E1352A4659382BC805E4006291A7DBA0D0C54A4D831E
        DA41AA8A99BF8BF964B295C6244CB8206AE9A3DEFA6DC41E8E336C9852D3BD7B
        B7841F409D952BCF1D037AC5272AB808DC569421FEAACD9AA96DD1439BCD426F
        6014A1D02B1437F377376DFAA85106D1C8D796DB946909A04CC555610E62977A
        53CD71DF8A55315BDFCC0E5A5726196ACCB564E488B835C5347B23F1EACDBC30
        F3773140C3E7D39BA2AE051679D5EA35E2E93F3C157FCC6C90475C8A175F2E8A
        C06FBEF9465D77201910D06BAFBDEE69A609EF05BF32993FAD66B854BF5CB6A6
        DA49985AB44235F3775570611A0918DF03E6A2A9993BD93DB1320933EC785212
        0917022134AC2760D635AE5CB9DA92B5C5D41ED517C6EA35568080317B413B83
        03D56DDA34F1860F3E8CFB9F66EF0FA1CA7EB9D5F6007C562CE30A31AA4B07D4
        D7D5EBA689E7BD3E3F7E8CB6EC71A3E286A83E3CBE1BE2613D2F7E60CC60C554
        6EBDF5B8B05C939D64068E75EA0B9B55B301EDEC6333DCF8E5E8A16045CD2CA9
        D1319990C9CC343C2F46C70F65453C84B82510332908D183E2258185E2258185
        E2258185E2258185E2258185E2258185E2258185E2258185E2258185E2258185
        E2258185E2258185E2258185E2258185E2258185E2258185E2258185E2258185
        E2258185E2258185E2258185E2258185E2258185E2258185E2258185E2258185
        E2258185E2258185E2258105E23D617A14219946549CC89A3265CA819251630E
        2977CF4B777B08B14E7447D6F7DF7F1F1D357ADCC28810FEECEA47883F2C88F9
        BC91E8A96744240BBBD965A7B94184981215D19513CB262C8B89B7ACAC6C5769
        E9D8474524824D849BA5B96D84185115897E371437E2D186B2B209B3478D1A7B
        44348B4C535C88F6E96B1B2149888A65274FD6FD6AF2E4C9D5B89B102A9B3871
        C23BA5A5A55D15E37B9FE24CF4572C31F655A2252669232AC4B791A8F84C199B
        BD3969D273ABE5E7FE0F37D747C061029CB50000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = 3
    end
    object Image3: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 54
      Height = 49
      Align = alLeft
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000AF
        000000AF08060000008B928E7500000A37694343507352474220494543363139
        36362D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202
        480DBD48912E2A3109104AC090002236445470445191A6083228E080A34391B1
        228A850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9F
        BDCFDD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B67600701
        0CF000036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2A
        D33F8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC9
        98B6344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CE
        E265F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4
        B1197C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F
        58CCCF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC
        300E378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D
        2D6DBE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5
        D9FA876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E2
        2C672BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F393
        38927431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24
        BE882F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B9
        9689DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9
        CD8BD199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A
        02342000454003EA401BE80313C004B6C011B8000FE0030241288804716031E0
        821490014420171480B5A0189482AD6027A80675A0113483367018748163E034
        38072E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81C
        B28558901BE403054311501C940825434248021540EBA052A81CAA86EAA166E8
        5BE828741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38
        088E8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A711
        8010113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A
        4891A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA8
        3ED455D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8
        B3E811F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C6
        8C61A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E2
        7470B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0
        CBF165F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B
        78412412F5884EC470A280B88658493C443C4F1C25BE25514866243629812421
        6D21ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A58
        2A0428F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1
        A9125EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF2
        05E547142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA
        380D4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA1
        1BD103E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8
        F1D54AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD1
        38ABF1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2
        D6F2D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7
        A4CE63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A85
        7AED7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314
        C35D86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B4236713759
        66D26072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BB
        CD872DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F59
        1958C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7
        B6C6F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE
        8383A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763A
        E6F4D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725C
        EB5DA56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE7
        41CF675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73
        DF57CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940
        C7C095817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE7
        778582D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA
        60C9829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C748
        63AD6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1
        FA22E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06
        CEF4D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A
        764DDE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26
        BD3D0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C3625
        0A12356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E
        729E306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA
        55D0AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E66
        5D4F9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6
        AA4D1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16C
        CF56CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC
        50615751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66ED
        A6DAD7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D98
        7D39FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D
        9A2D65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F
        9BF8EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8E
        EB1E3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE6
        9F9C3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9D
        E9F7EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D
        063B871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1
        EB51D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8A
        FB9AF71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE8
        21F961C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFB
        CCE4D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD
        5719AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4
        F1EEA78C4F9F7E03F784F3FB8F70662A000000097048597300002E2300002E23
        0178A53F7600000C0549444154789CEDDD7B7054D51D07F073D3D5C4E1113404
        284D00C10A2541A9A0C810C0A6480125A9834069E943643AF48F1692F0E8D84E
        67DA8ECE48BBD04267CC58C75279A8D48E22055B04E43988856A87840A080281
        95121E024A1241B6F7B79D7B397BB37BF7DCDD7BF6E617BE9F19C7BBAFDC93CD
        777FFBBBE73E0845A35191C8CC99333BE5E7E777BF72252794F0090059100A7D
        DE7CF9F2E593B5B5B5575A3D26DFC831CD995333CDC831AAF2BB14DC63DE65DC
        7473D6C60990408EE8D031BFA966EE82F5227AF597E170789FF5881D5EAAB455
        D5F35E32172704324680E46E31FF9B248C50654DCDFCAA7078E11FE8CE5878CD
        826B5455CD5D29105C68DB42C230969A013E670678552CBC6670279B774E0C7A
        64002AA286B164D6AC59EBFEDF3618C6EC80C703A0CC10A2A04387CEDF0DCD9E
        3D3B377453DEB0A00704E089618C0A45A3D10273F10B418F05C0A36E21C33072
        821E05401AD4764074EAD44974EB56A87B305A3535358B482412E81806F4EF2F
        7AF52E567A6E24F291A8ABABD73C22DE94C23BA0FF9D62EAD4C9BAC7A2D5E1C3
        47C433B5CF063A868ACA8745B742B522B067CF5E843705ECFACD92D2D212E5E0
        821A84374BC63E3826E821B43B086F160C1E7CB7E8D9F38B410FA3DD417835A3
        8DDDCA0AECBCD401E1D5ECA109E3CC00770C7A18ED12C2AB5179F90362E8D021
        410FA3DD427835A1D98509E3C7053D8C760DE1D58076464CFFCEB4A087D1EE21
        BC3EA399856F4D9D2C4221BCB5BAE11DF6D1A89165A2A2E2E1A08771C340787D
        4055F6D1498F60E32CCBB487F7A9A79E16E7CE9FD7BD9AC0F4ECD9534C9F3E0D
        BB7E0380CA9B81F2F20762BB7DD1DF0603EF7A1AFAF5EB2B26996D02AA6DB010
        5E0FA845183B768C282D1918F4504020BC4AE840FCF2AF616F595B83F0BAA039
        5B0A2D8E086B9B105E17C3EF1F86E0B66108AF6657AF5EC56C8426785735BA74
        E913F1C7E79E17D5553F097A28ED12C2AB099DFDBB6CD90BED7A074DD0105E0D
        EAEAF78B152B56C55A06D007E1F5118575C39B1BC5E6CD5B821ECA0D01E1F5C9
        F1E30DE2A597578BD3A71B831ECA0D03E1CD507373B3D8FCD61654DB0020BC69
        A2D06EDBBE436CDFBE53343535053D9C1B12C2EB1142DB7620BC8A4E3736C6AE
        1FB66BD76E84B68DD01EDE279E58A07B1509CD9DF7D38C7F06CD1EC402FBF66E
        71ECD8711F46057E42E575417BC7A0ED4278812D8417D84278812D8417D84278
        812D8417D84278812D8417D84278812D8417D8C285F6802D545E600BE105B610
        5E600BE105B6105E600BE105B6105E600BE105B6105E600BE105B6105E600BE1
        05B6105E600BE105B6105E600BE105B6105E600BE105B6105E600BE105B6105E
        600BE105B6105E600BE105B6105E600BE105B6105E600BE105B6105E604B29BC
        27231F890D6F6E4C6B054DCDCD69BDAE3D49E7BD8B98EF39B8530A6F241289FD
        07E9D9B021BD0F3EB843DB006C21BCC016C20B6C21BCC016C20B6C21BCC016C2
        0B6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B6C21BC
        C016C20B6C790A6FE7CE9DC4A041A5B1E58F3FBE20EAEBF77B5E6149C940D1A5
        4B7E6CF9D8B1E3E2C489939E7F0600F118DECEE2916F56DAB77FF5EB27C5C58B
        973CADF0DEA143446969496CF9D5D7D620BC90B68CDA86D1A3468AB57F5BEFD7
        58003CC92CBCA34789ADDBB67BAEBE007EC878830DD51782927978517D2120BE
        4C95A1FA4210FC092FAA2F0420A3F0D6D5D5DBD35E3AAB2FCD2F171717DBF3C3
        A74EFD579C387142B4B47CA6657D2A0A0BBB8A5EE698F26EC98BDDC69C75F665
        14DE8D9B365F0FAF86EA9B9B7BB318FBE098D8CF4E84E68977EEDC95F0B11123
        86DBCBFBF6D5298D4B65070A85F6A109E3EDDF5B76E6CC59F19757FE2A0E1F3E
        92725D90B98CC24B7F5C5DD597823B73E60C717B9F3E499F433B4C6EBBF5D684
        EB1C3CF8EEB8D7260BB9ECB11F7CCF5EFED3B2175A859782BB60FEDCA4AFEFDA
        B540FC68D60F63AF4D67EF23789371CFABA3FAAA04D742EBBCDCD424366D7A2B
        EEFEF7DF3F60BFFECB77DC9132BC144C59434343ABC7DD822BA30FC133B5CFA2
        026B9671787554DFB2B211AD824BEB38F4C107B1E5916565B12A67193FEE1BE2
        C081837195F2E8D163F672A2AF7827EA5F2DF4F5EFFC004E99F268ABD76CDDBA
        4D9C3B7F5EE4E5E5C5C620A30AFCB39FFF22D0BEBCBDF365B6C1CFEA4B1B67CE
        2038AB185551EA69E5E32CC67CBD5C2CFBF372FB366DD0C98A8ABEE4BA41D5AF
        5F5F7BB9BEBE3EEE31EA85E50FD387478F8AD5AB5F118D8D67ECFB76ECD8292A
        2B268AFBEEBBD7BE6FE8D0214AED0AA4C797F0FA597DE92B5E96ECEB974241FD
        AEB53147EBA6AF762B5054F1E431F5EEDDCB35BC72E88E7C7834EEB192815F89
        BBBD7CF9CA561F4E5ADF9AD7D78AC26E8576D0E9C385F0EAE3DBF1BC7E55DFFB
        870FB397297C6E7D235D715C9E89B8EBAE4171BD2FB519D698DCFA5EB77E97FA
        6F39D834C391ECF78A0578CD5A3167F68FEDFBA8A2A3F7D5C3B7F0FA557DE5AF
        E7EDE657B11B0ACB1B7FFF87DD660C18D03F2EBC34DD6571EB7BDDFADDC2C2C2
        B8E7EED9B3D7754CF43E505B61FD1E7DFAF4467835F1F54C8A4CAB2FF5A53295
        3F3A6DA859E1756EE439DB84647DAF5BBF4BED86853E9C2A1B60EFBDF76F7B2C
        C54545299F0FE9F135BC9956DFFCFC7C7B99AA978AC6C6C6B8DBB4C1277F6054
        FADEBE7DAF87D7D9EF525F6D69706C0426437B002D3D7AF4507A0D78E7FB396C
        99545F6BEF16F9F4934F955EE3AC8474B687BCBE547D2F855D9E7673CEEF1614
        5C7FAC59F15F366A6969B197E59F0DFEF23DBC7EF5BEAA558EC8EB733A78F090
        BD9CE839C529E6776572457583631CB243CBD9C37ECC3CA856B954E4B958E2EC
        7BFBDEDEC75E76F6BB4E724585E06909AFCE631ED2F1CE3BFFB4A7BB9C7D6F49
        C9F56AECEC77A16DD376DD864CAB2FED7255D5A16307D7C769D6C20AAFDCF7A6
        EA779D72737395C64373C3A09FB6F0665A7DBD4C31A53A80E7B8144AB9EFF5D2
        EF921E3DBA2B4DDF39E786410FAD57CC49547DDDD0854C2CA9AAA9C559E52E5E
        BCD8EA39CEBED7DA8DACD2EF9E3D7BD65E56FD36902B347D28400FADE14D547D
        DD5CB8703DBC2A8743922247854E563DE5BE97F6A8517855FA5D3A6ACCA2FA6D
        407BD52CA74E9D527A0D78A7FD5A65CEEAEB56899C534C2AC705C84171DBB121
        F7BDF47369FE57A5DF75EE62A64A9F6A2F1BEDA6B67FAE87293FF0467B789DD5
        37D5A4BD7C5CC0C8B211AEE1A520C9874FD201E8C958C702130AF1DE7FBD6BDF
        76EB779D7BF0521DE6485371F2B7867C5C31F82B2B578994AB6F2A6FEFDA6DFF
        F1E935742C6DB2536AE8FC36191DE7900C8593426A7D7886DCF355FB31B7F95D
        AAB272CB418739D28E0F671F4DE8C354593931EE3EE771C5E09FAC84D7597DDD
        C81592243BA5860E46970F87A460A6DAB34521B55EE376FC6EABD7EDFF4FDCF3
        E9AC0AE7C1E8B1E0564C8CABBA74A605CEA4D0276BD7E755ADBE5421E5C31C09
        9D5243ED041DAD459CA701113A6B37150A69A2339153CDEF52E597DB19FA3F9D
        CF4615F9642492F03420926A76053293B5F07AA9BE744A0D6DF4C8558C9693CD
        40508553997F4D145295F95D4295D67902A65C8D9DE80C625C8445AFAC5E195D
        B5FAD2572D85E5F1198FA5DCC0A3E0AAEEFC70F6BD24D5F10C166A112890F2E9
        F1C9E0D4F7ECC86A78BD545F0ACBE2DFFDDEF5A2232FBEF872DCAC810AB9EF25
        5E8E67A0403EBDF0B7AE171D59B172158E2ACB124FE1A5BD57740E5726D6AD7F
        C3DE2893E75013A10A4C55957A47E7E59ED23DB5E65DB36F96773CA4EA779DE8
        434567293B2FF7946C0602F4F118DE4B199F0D4B7F60AF7F645AAF5F5FC35415
        FDA88CE9FC1EE02FFC6B40C016C20B6C21BCC016C20B6C21BCC016C20B6C21BC
        C016C20B6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B
        6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B6C21BCC016C20B6C21BCC0
        16C20B6C21BCC016C20B6C21BCC016C20B6C21BCC01685B725E841007816152D
        A1A54B979EA9AA9E77CEBC795BD0E30150173D18BA76ED5AB47AEE82D70C2166
        043D1C000F5E8DF5BC46F4EA93C2087DDB5C54FB67CD01021415D12D8BC20B37
        C6C21B0E878FD4D4CC7F5C18C672F3664EC0630370D360443F9F4E0BF66C4338
        BC705575F5FC0B22C7A8355B88A2E0C6069044546CBC72A5E9FB4B962C89D0CD
        B8A9B2458B16AEABA9A9B9D32CBE53CC6662B45989BB0B546208505488CF8CA8
        38646E9BBDBE78F16FB6C98FFD0FC6C9082810E5CE4B0000000049454E44AE42
        6082}
      Stretch = True
      ExplicitLeft = 11
      ExplicitTop = 6
    end
  end
end
