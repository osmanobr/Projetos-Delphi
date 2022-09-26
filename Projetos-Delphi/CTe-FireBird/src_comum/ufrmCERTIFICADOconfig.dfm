inherited frmCERTIFICADOconfig: TfrmCERTIFICADOconfig
  Caption = 'Configura'#231#245'es do Sistema'
  ClientHeight = 500
  ClientWidth = 670
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 445
    Width = 664
    inherited btnCancelar: TJvSpeedButton
      Left = 551
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 435
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 664
    Height = 436
    HideAllTabs = True
    inherited tabDefault: TTabSheet
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 656
        Height = 408
        ActivePage = TabSheet1
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Configura'#231#245'es'
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 642
            Height = 62
            Align = alTop
            Caption = 'Certificado'
            TabOrder = 0
            object Label25: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 632
              Height = 13
              Align = alTop
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object Label2: TLabel
              Left = 460
              Top = 18
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object sbtnGetCert: TSpeedButton
              Left = 431
              Top = 34
              Width = 23
              Height = 23
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnGetCertClick
            end
            object CERTIFICADO_NUMERO: TJvDBMaskEdit
              Left = 5
              Top = 34
              Width = 420
              Height = 21
              DataField = 'CERTIFICADO_NUMERO'
              DataSource = dtsDefault
              TabOrder = 0
              EditMask = ''
            end
            object CERTIFICADO_SENHA: TJvDBMaskEdit
              Left = 460
              Top = 34
              Width = 170
              Height = 21
              DataField = 'CERTIFICADO_SENHA'
              DataSource = dtsDefault
              TabOrder = 1
              EditMask = ''
            end
          end
          object GroupBox6: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 71
            Width = 642
            Height = 234
            Align = alTop
            Caption = 'WebService'
            TabOrder = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 632
              Height = 13
              Align = alTop
              Caption = 'Selecione UF da SEFAZ-Autorizadora (Emitente):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lSSLLib1: TLabel
              Left = 466
              Top = 18
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'SSLType'
              Color = clBtnFace
              ParentColor = False
            end
            object WS_UF_DESTINO: TJvDBComboBox
              AlignWithMargins = True
              Left = 5
              Top = 34
              Width = 449
              Height = 21
              DataField = 'WS_UF_DESTINO'
              DataSource = dtsDefault
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              TabOrder = 0
              Values.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object ID_TIPO_AMBIENTE: TDBRadioGroup
              AlignWithMargins = True
              Left = 5
              Top = 61
              Width = 203
              Height = 57
              BiDiMode = bdLeftToRight
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              DataField = 'ID_TIPO_AMBIENTE'
              DataSource = dtsDefault
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              ParentBiDiMode = False
              TabOrder = 2
              Values.Strings = (
                '0'
                '1')
            end
            object gbProxy: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 147
              Width = 627
              Height = 66
              Caption = 'Proxy'
              TabOrder = 6
              object Label8: TLabel
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 617
                Height = 13
                Align = alTop
                Caption = 'Host'
              end
              object Label9: TLabel
                Left = 298
                Top = 18
                Width = 26
                Height = 13
                Caption = 'Porta'
              end
              object Label10: TLabel
                Left = 354
                Top = 18
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object Label11: TLabel
                Left = 483
                Top = 18
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object WS_PROXY_HOST: TJvDBMaskEdit
                Left = 5
                Top = 34
                Width = 287
                Height = 21
                DataField = 'WS_PROXY_HOST'
                DataSource = dtsDefault
                TabOrder = 0
                EditMask = ''
              end
              object WS_PROXY_PORTA: TJvDBMaskEdit
                Left = 298
                Top = 34
                Width = 50
                Height = 21
                DataField = 'WS_PROXY_PORTA'
                DataSource = dtsDefault
                TabOrder = 1
                EditMask = ''
              end
              object WS_PROXY_USUARIO: TJvDBMaskEdit
                Left = 354
                Top = 34
                Width = 123
                Height = 21
                DataField = 'WS_PROXY_USUARIO'
                DataSource = dtsDefault
                TabOrder = 2
                EditMask = ''
              end
              object WS_PROXY_SENHA: TJvDBMaskEdit
                Left = 483
                Top = 34
                Width = 139
                Height = 21
                DataField = 'WS_PROXY_SENHA'
                DataSource = dtsDefault
                TabOrder = 3
                EditMask = ''
              end
            end
            object ID_SSL_TYPE: TJvDBComboBox
              AlignWithMargins = True
              Left = 460
              Top = 34
              Width = 170
              Height = 21
              DataField = 'ID_SSL_TYPE'
              DataSource = dtsDefault
              Items.Strings = (
                'LT_all'
                'LT_SSLv2'
                'LT_SSLv3'
                'LT_TLSv1'
                'LT_TLSv1_1'
                'LT_TLSv1_2'
                'LT_SSHv2')
              TabOrder = 1
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object ID_FORMA_EMISSAO: TDBRadioGroup
              Left = 214
              Top = 61
              Width = 207
              Height = 57
              BiDiMode = bdLeftToRight
              Caption = 'Forma de Emiss'#227'o'
              Columns = 2
              DataField = 'ID_FORMA_EMISSAO'
              DataSource = dtsDefault
              Items.Strings = (
                'Normal'
                'Contig'#234'ncia')
              ParentBiDiMode = False
              TabOrder = 3
              Values.Strings = (
                '0'
                '1')
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 427
              Top = 61
              Width = 203
              Height = 57
              BiDiMode = bdLeftToRight
              Caption = 'Orienta'#231#227'o do Relat'#243'rio'
              Columns = 2
              DataField = 'ID_REPORT_ORIENTACAO'
              DataSource = dtsDefault
              Items.Strings = (
                'Retrato'
                'Paisagem')
              ParentBiDiMode = False
              TabOrder = 4
              Values.Strings = (
                '0'
                '1')
            end
            object MANTER_ARQUIVOS_TEMPORARIOS: TJvDBCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 124
              Width = 244
              Height = 17
              Caption = 'Salvar Arquivos de Envio e Resposta'
              DataField = 'MANTER_ARQUIVOS_TEMPORARIOS'
              DataSource = dtsDefault
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object CAMPOS_FAT_OBRIGATORIO: TJvDBCheckBox
              AlignWithMargins = True
              Left = 246
              Top = 124
              Width = 244
              Height = 17
              Caption = 'Campos FAT Obrigat'#243'rios'
              DataField = 'CAMPOS_FAT_OBRIGATORIO'
              DataSource = dtsDefault
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 311
            Width = 642
            Height = 62
            Align = alTop
            Caption = 'Logomarca'
            TabOrder = 2
            object Label4: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 632
              Height = 13
              Align = alTop
              Caption = 'Local do arquivo'
            end
            object SpeedButton1: TSpeedButton
              Left = 602
              Top = 34
              Width = 23
              Height = 21
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = SpeedButton1Click
            end
            object LOGOMARCA: TJvDBMaskEdit
              Left = 5
              Top = 34
              Width = 591
              Height = 21
              DataField = 'LOGOMARCA'
              DataSource = dtsDefault
              TabOrder = 0
              EditMask = ''
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Outras'
          ImageIndex = 1
          object Label7: TLabel
            Left = 3
            Top = 482
            Width = 55
            Height = 13
            Caption = 'Logo Marca'
          end
          object EMAIL_ENVIAR: TJvDBCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 642
            Height = 17
            Align = alTop
            Caption = 'Envia E-Mail Autom'#225'tico'
            DataField = 'EMAIL_ENVIAR'
            DataSource = dtsDefault
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnChange = EMAIL_ENVIARChange
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 174
            Width = 642
            Height = 136
            Align = alTop
            Caption = 'TimeZone'
            TabOrder = 1
            object Label3: TLabel
              Left = 489
              Top = 21
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fuso Hor'#225'rio'
              Color = clBtnFace
              ParentColor = False
            end
            object TIME_ZONE_MODO: TDBRadioGroup
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 478
              Height = 100
              BiDiMode = bdLeftToRight
              Caption = 'Configura'#231#227'o de Fuso Hor'#225'rio'
              DataField = 'TIME_ZONE_MODO'
              DataSource = dtsDefault
              Items.Strings = (
                'Obter do Windows'
                'Tramento alternativo (Tenta utilizar a UF para obter o TimeZone)'
                'Entrada Manual')
              ParentBiDiMode = False
              TabOrder = 0
              Values.Strings = (
                '0'
                '1'
                '2')
              OnChange = TIME_ZONE_MODOChange
            end
            object TIMEZONE_MANUAL: TJvDBComboBox
              AlignWithMargins = True
              Left = 489
              Top = 37
              Width = 141
              Height = 21
              DataField = 'TIME_ZONE_MANUAL'
              DataSource = dtsDefault
              Items.Strings = (
                '-02:00'
                '-03:00'
                '-04:00'
                '-05:00')
              TabOrder = 1
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 26
            Width = 642
            Height = 142
            Align = alTop
            Caption = 'E-Mail'
            TabOrder = 2
            object Label6: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 69
              Height = 13
              Align = alTop
              Caption = 'Servidor SMTP'
            end
            object Label12: TLabel
              Left = 489
              Top = 18
              Width = 26
              Height = 13
              Caption = 'Porta'
            end
            object Label13: TLabel
              Left = 5
              Top = 61
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label14: TLabel
              Left = 489
              Top = 61
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object EMAIL_SERVIDOR: TJvDBMaskEdit
              Left = 5
              Top = 34
              Width = 478
              Height = 21
              DataField = 'EMAIL_SERVIDOR'
              DataSource = dtsDefault
              TabOrder = 0
              EditMask = ''
            end
            object EMAIL_USUARIO: TJvDBMaskEdit
              Left = 5
              Top = 77
              Width = 478
              Height = 21
              DataField = 'EMAIL_USUARIO'
              DataSource = dtsDefault
              TabOrder = 2
              EditMask = ''
            end
            object EMAIL_SENHA: TJvDBMaskEdit
              Left = 489
              Top = 77
              Width = 141
              Height = 21
              DataField = 'EMAIL_SENHA'
              DataSource = dtsDefault
              TabOrder = 3
              EditMask = ''
            end
            object EMAIL_PORTA: TJvDBMaskEdit
              Left = 489
              Top = 34
              Width = 141
              Height = 21
              DataField = 'EMAIL_PORTA'
              DataSource = dtsDefault
              TabOrder = 1
              EditMask = ''
            end
            object EMAIL_SENHA_SEGURA: TJvDBCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 104
              Width = 84
              Height = 17
              Caption = 'Utiizar SSL'
              DataField = 'EMAIL_SENHA_SEGURA'
              DataSource = dtsDefault
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object EMAIL_SENHA_TLS: TJvDBCheckBox
              AlignWithMargins = True
              Left = 95
              Top = 104
              Width = 84
              Height = 17
              Caption = 'Utiizar TLS'
              DataField = 'EMAIL_SENHA_TLS'
              DataSource = dtsDefault
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 481
    Width = 670
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 221
    Top = 360
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabCERTIFICADO_CONFIG
    Left = 206
    Top = 339
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 382
    Top = 178
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos de imagem|*.jpg;*.jpeg;*.bmp'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Procurar logomarca'
    Left = 372
    Top = 40
  end
end
