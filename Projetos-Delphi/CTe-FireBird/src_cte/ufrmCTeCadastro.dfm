inherited frmCTeCadastro: TfrmCTeCadastro
  Caption = 'CT-e'
  ClientHeight = 604
  ClientWidth = 969
  ExplicitWidth = 985
  ExplicitHeight = 643
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 548
    Width = 963
    Height = 34
    ExplicitTop = 548
    ExplicitWidth = 963
    ExplicitHeight = 34
    inherited btnCancelar: TJvSpeedButton
      Left = 850
      Height = 28
      ExplicitLeft = 850
      ExplicitHeight = 28
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 734
      Height = 28
      ExplicitLeft = 734
      ExplicitHeight = 28
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 963
    Height = 539
    ExplicitWidth = 963
    ExplicitHeight = 539
    inherited tabDefault: TTabSheet
      ExplicitWidth = 955
      ExplicitHeight = 511
      object JvPageControl1: TJvPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 949
        Height = 505
        ActivePage = tabDOCANT
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados CT-e'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object JvgGroupBox3: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 198
            Align = alTop
            Caption = 'Dados Principais'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label21: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 925
              Height = 13
              Align = alTop
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 24
            end
            object Label4: TLabel
              Left = 153
              Top = 19
              Width = 123
              Height = 13
              Caption = 'Data e Hora de emiss'#227'o *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 72
              Top = 19
              Width = 43
              Height = 13
              Caption = 'N'#250'mero*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 5
              Top = 104
              Width = 34
              Height = 13
              Caption = 'Modal*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label17: TLabel
              Left = 322
              Top = 62
              Width = 107
              Height = 13
              Caption = 'Natureza da opera'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label15: TLabel
              Left = 333
              Top = 20
              Width = 27
              Height = 13
              Caption = 'CFOP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label24: TLabel
              Left = 233
              Top = 104
              Width = 79
              Height = 13
              Caption = 'Tipo de Servi'#231'o*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label26: TLabel
              Left = 461
              Top = 104
              Width = 110
              Height = 13
              Caption = 'Finalidade de Emiss'#227'o*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label27: TLabel
              Left = 679
              Top = 104
              Width = 92
              Height = 13
              Caption = 'Forma de Emiss'#227'o*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label28: TLabel
              Left = 3
              Top = 146
              Width = 187
              Height = 13
              Caption = 'Chave de acesso do CT-e referenciado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbCTJ1: TLabel
              Left = 369
              Top = 147
              Width = 165
              Height = 13
              Caption = 'Data/Hora entrada em contig'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbCTJ2: TLabel
              Left = 558
              Top = 148
              Width = 187
              Height = 13
              Caption = 'Justificativa de entrada em contig'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object ID_CTE: TJvDBMaskEdit
              Left = 72
              Top = 35
              Width = 75
              Height = 21
              TabStop = False
              DataField = 'ID_CTE'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              EditMask = ''
            end
            object ID_SERIE: TJvDBMaskEdit
              Tag = 1
              Left = 5
              Top = 35
              Width = 61
              Height = 21
              TabStop = False
              DataField = 'ID_SERIE'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              EditMask = ''
            end
            object DT_HORA_EMISSAO: TJvDBDateTimePicker
              Left = 153
              Top = 35
              Width = 163
              Height = 21
              Date = 43642.677190798610000000
              Time = 43642.677190798610000000
              Checked = False
              TabOrder = 2
              DropDownDate = 43384.000000000000000000
              DataField = 'DT_HORA_EMISSAO'
              DataSource = dtsDefault
            end
            object ID_IND_CTE_GLOBALIZADO: TJvDBCheckBox
              Left = 3
              Top = 79
              Width = 159
              Height = 17
              Caption = 'Indicador de CT-e Globalizado'
              DataField = 'ID_IND_CTE_GLOBALIZADO'
              DataSource = dtsDefault
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ID_CHAVE_CTE_REFERENCIADO: TJvDBMaskEdit
              Left = 3
              Top = 161
              Width = 360
              Height = 21
              TabStop = False
              DataField = 'ID_CHAVE_CTE_REFERENCIADO'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              EditMask = ''
            end
            object ID_MODAL: TJvDBComboBox
              Left = 5
              Top = 119
              Width = 222
              Height = 21
              DataField = 'ID_MODAL'
              DataSource = dtsDefault
              Items.Strings = (
                'Rodovi'#225'rio')
              TabOrder = 5
              Values.Strings = (
                '0')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object ID_TIPO_SERVICO: TJvDBComboBox
              Left = 233
              Top = 119
              Width = 222
              Height = 21
              DataField = 'ID_TIPO_SERVICO'
              DataSource = dtsDefault
              Items.Strings = (
                'Normal'
                'Subcontrata'#231#227'o'
                'Redespacho'
                'Redespacho Intermedi'#225'rio'
                'Servi'#231'o vinculado a multimodal')
              TabOrder = 6
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = ID_TIPO_SERVICOChange
            end
            object ID_FINALIDADE_EMISSAO: TJvDBComboBox
              Left = 461
              Top = 119
              Width = 222
              Height = 21
              DataField = 'ID_FINALIDADE_EMISSAO'
              DataSource = dtsDefault
              Items.Strings = (
                'CT-e Normal'
                'CT-e de Complemento de Valores'
                'CT-e de Anula'#231#227'o de Valores'
                'CT-e de Substitui'#231#227'o')
              TabOrder = 7
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
            object ID_FORMA_EMISSAO: TJvDBComboBox
              Left = 689
              Top = 119
              Width = 225
              Height = 21
              DataField = 'ID_FORMA_EMISSAO'
              DataSource = dtsDefault
              Items.Strings = (
                'Normal'
                'Contig'#234'ncia')
              TabOrder = 8
              Values.Strings = (
                '0'
                '1')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = ID_FORMA_EMISSAOChange
            end
            object CONTIGENCIA_DT_HORA: TJvDBDateTimePicker
              Left = 369
              Top = 163
              Width = 183
              Height = 21
              Date = 43642.677190752310000000
              Time = 43642.677190752310000000
              TabOrder = 9
              DropDownDate = 43177.000000000000000000
              DataField = 'CONTIGENCIA_DT_HORA'
              DataSource = dtsDefault
            end
            object CONTIGENCIA_MOTIVO: TJvDBMaskEdit
              Left = 558
              Top = 163
              Width = 356
              Height = 21
              TabStop = False
              DataField = 'CONTIGENCIA_MOTIVO'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              EditMask = ''
            end
            object ID_CFOP: TJvDBComboBox
              Left = 333
              Top = 35
              Width = 581
              Height = 21
              DataField = 'ID_CFOP'
              DataSource = dtsDefault
              Items.Strings = (
                
                  '5351 - PRESTACAO DE SERVICO DE TRANSPORTE PARA EXECUCAO DE SERVI' +
                  'CO DA MESMA NATUREZA'
                
                  '5352 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO INDU' +
                  'STRIAL'
                
                  '5353 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO COME' +
                  'RCIAL'
                
                  '5354 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE P' +
                  'RESTADOR DE SERVICO DE COMUNICACAO'
                
                  '5355 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE G' +
                  'ERADORA OU DE DISTRIBUIDORA DE ENERGIA ELETRICA'
                
                  '5356 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE P' +
                  'RODUTOR RURAL'
                '5357 - PRESTACAO DE SERVICO DE TRANSPORTE A NAO CONTRIBUINTE'
                
                  '5359 - PRESTACAO DE SERVICO DE TRANSPORTE A CONTRIBUINTE OU A NA' +
                  'O CONTRIBUINTE QUANDO A MERCADORIA TRANSPORTADA ESTA DISPENSADA ' +
                  'DE EMISSAO DE NOTA FISCAL'
                
                  '5932 - PRESTACAO DE SERVICO DE TRANSPORTE INICIADA EM UNIDADE DA' +
                  ' FEDERACAO DIVERSA DAQUELA ONDE INSCRITO O PRESTADOR'
                '5933 - PRESTACAO DE SERVICO TRIBUTADO PELO ISS'
                
                  '6351 - PRESTACAO DE SERVICO DE TRANSPORTE PARA EXECUCAO DE SERVI' +
                  'CO DA MESMA NATUREZA'
                
                  '6352 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO INDU' +
                  'STRIAL'
                
                  '6353 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO COME' +
                  'RCIAL'
                
                  '6354 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE P' +
                  'RESTADOR DE SERVICO DE COMUNICACAO'
                
                  '6355 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE G' +
                  'ERADORA OU DE DISTRIBUIDORA DE ENERGIA ELETRICA'
                
                  '6356 - PRESTACAO DE SERVICO DE TRANSPORTE A ESTABELECIMENTO DE P' +
                  'RODUTOR RURAL'
                '6357 - PRESTACAO DE SERVICO DE TRANSPORTE A NAO CONTRIBUINTE'
                
                  '6359 - PRESTACAO DE SERVICO DE TRANSPORTE A CONTRIBUINTE OU A NA' +
                  'O CONTRIBUINTE QUANDO A MERCADORIA TRANSPORTADA ESTA DISPENSADA ' +
                  'DE EMISSAO DE NOTA FISCAL'
                
                  '6932 - PRESTACAO DE SERVICO DE TRANSPORTE INICIADA EM UNIDADE DA' +
                  ' FEDERACAO DIVERSA DAQUELA ONDE INSCRITO O PRESTADOR'
                '6933 - PRESTACAO DE SERVICO TRIBUTADO PELO ISS')
              TabOrder = 11
              Values.Strings = (
                '5351'
                '5352'
                '5353'
                '5354'
                '5355'
                '5356'
                '5357'
                '5359'
                '5932'
                '5933'
                '6351'
                '6352'
                '6353'
                '6354'
                '6355'
                '6356'
                '6357'
                '6359'
                '6932'
                '6933')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnClick = ID_CFOPClick
            end
            object NAT_OPERACAO: TJvDBMaskEdit
              Left = 322
              Top = 77
              Width = 592
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NAT_OPERACAO'
              DataSource = dtsDefault
              TabOrder = 12
              EditMask = ''
            end
          end
          object JvgGroupBox2: TJvgGroupBox
            Left = 3
            Top = 207
            Width = 301
            Height = 74
            Caption = 'Local de emiss'#227'o do CT-e'
            TabOrder = 1
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label8: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 291
              Height = 13
              Align = alTop
              Caption = 'UF*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 19
            end
            object Label12: TLabel
              Left = 61
              Top = 19
              Width = 49
              Height = 13
              Caption = 'Munic'#237'pio*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object ID_UF_EMISSAO: TJvDBLookupCombo
              Left = 5
              Top = 32
              Width = 49
              Height = 21
              DataField = 'ID_UF_EMISSAO'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryUF
              TabOrder = 0
              OnChange = ID_UF_EMISSAOChange
            end
            object ID_MUNICIPIO_EMISSAO: TJvDBLookupCombo
              Left = 62
              Top = 32
              Width = 236
              Height = 21
              DataField = 'ID_MUNICIPIO_EMISSAO'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'DESCRICAO'
              LookupSource = dtsqryMunicipioEmissao
              TabOrder = 1
            end
          end
          object JvgGroupBox8: TJvgGroupBox
            Left = 310
            Top = 207
            Width = 301
            Height = 74
            Caption = 'Local de in'#237'cio da presta'#231#227'o'
            TabOrder = 2
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label22: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 291
              Height = 13
              Align = alTop
              Caption = 'UF*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 19
            end
            object Label23: TLabel
              Left = 60
              Top = 19
              Width = 49
              Height = 13
              Caption = 'Munic'#237'pio*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object ID_UF_INICIO_PRESTACAO: TJvDBLookupCombo
              Left = 5
              Top = 32
              Width = 49
              Height = 21
              DataField = 'ID_UF_INICIO_PRESTACAO'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryUF
              TabOrder = 0
              OnChange = ID_UF_INICIO_PRESTACAOChange
            end
            object ID_MUNICIPIO_INICIO_PRESTACAO: TJvDBLookupCombo
              Left = 60
              Top = 32
              Width = 236
              Height = 21
              DataField = 'ID_MUNICIPIO_INICIO_PRESTACAO'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'DESCRICAO'
              LookupSource = dtsqryMunicipioInicioPrestacao
              TabOrder = 1
            end
          end
          object JvgGroupBox9: TJvgGroupBox
            Left = 617
            Top = 207
            Width = 321
            Height = 74
            Caption = 'Local de t'#233'rmino da presta'#231#227'o'
            TabOrder = 3
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label25: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 311
              Height = 13
              Align = alTop
              Caption = 'UF*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 19
            end
            object Label29: TLabel
              Left = 60
              Top = 19
              Width = 49
              Height = 13
              Caption = 'Munic'#237'pio*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object ID_UF_TERMINO_PRESTACAO: TJvDBLookupCombo
              Left = 5
              Top = 32
              Width = 49
              Height = 21
              DataField = 'ID_UF_TERMINO_PRESTACAO'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryUF
              TabOrder = 0
              OnChange = ID_UF_TERMINO_PRESTACAOChange
            end
            object ID_MUNICIPIO_TERMINO_PRESTACA: TJvDBLookupCombo
              Left = 60
              Top = 32
              Width = 240
              Height = 21
              DataField = 'ID_MUNICIPIO_TERMINO_PRESTACA'
              DataSource = dtsDefault
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'DESCRICAO'
              LookupSource = dtsqryMunicipioTerminoPrestacao
              TabOrder = 1
            end
          end
          object JvPageControl2: TJvPageControl
            Left = 0
            Top = 290
            Width = 941
            Height = 187
            ActivePage = TabSheet5
            Align = alBottom
            TabOrder = 4
            object TabSheet5: TTabSheet
              Caption = 'Tomador,Remetente, ...'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object JvgGroupBox30: TJvgGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 927
                Height = 153
                Align = alClient
                Caption = 'Dados'
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object Label41: TLabel
                  AlignWithMargins = True
                  Left = 5
                  Top = 19
                  Width = 917
                  Height = 13
                  Align = alTop
                  Caption = 'Tomador do Servi'#231'o*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  ExplicitWidth = 101
                end
                object Label43: TLabel
                  Left = 121
                  Top = 19
                  Width = 78
                  Height = 13
                  Caption = 'Tomador Outros'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label44: TLabel
                  Left = 5
                  Top = 60
                  Width = 97
                  Height = 13
                  Caption = 'Tipo do Remetente*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label46: TLabel
                  Left = 121
                  Top = 60
                  Width = 53
                  Height = 13
                  Caption = 'Remetente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label47: TLabel
                  Left = 5
                  Top = 101
                  Width = 92
                  Height = 13
                  Caption = 'Tipo do Expedidor*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label48: TLabel
                  Left = 121
                  Top = 102
                  Width = 48
                  Height = 13
                  Caption = 'Expedidor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label59: TLabel
                  Left = 431
                  Top = 20
                  Width = 96
                  Height = 13
                  Caption = 'Tipo do Recebedor*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label60: TLabel
                  Left = 547
                  Top = 20
                  Width = 52
                  Height = 13
                  Caption = 'Recebedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label61: TLabel
                  Left = 431
                  Top = 61
                  Width = 102
                  Height = 13
                  Caption = 'Tipo do Destinat'#225'rio*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label62: TLabel
                  Left = 547
                  Top = 61
                  Width = 58
                  Height = 13
                  Caption = 'Destinat'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object ID_TOMADOR_TIPO: TJvDBComboBox
                  Left = 5
                  Top = 34
                  Width = 110
                  Height = 21
                  DataField = 'ID_TOMADOR_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'Remetente'
                    'Expedidor'
                    'Recebedor'
                    'Destinat'#225'rio'
                    'Outros')
                  TabOrder = 0
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  OnChange = ID_TOMADOR_TIPOChange
                end
                object ID_REMETENTE_TIPO: TJvDBComboBox
                  Left = 5
                  Top = 75
                  Width = 110
                  Height = 21
                  DataField = 'ID_REMETENTE_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'Com Remetente'
                    'Sem Remetente: Redespacho Intermedi'#225'rio'
                    'Sem Remetente: Servi'#231'o vinculado a multimodal')
                  TabOrder = 1
                  Values.Strings = (
                    '0'
                    '1'
                    '2')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  OnChange = ID_REMETENTE_TIPOChange
                end
                object ID_EXPEDIDOR_TIPO: TJvDBComboBox
                  Left = 5
                  Top = 116
                  Width = 110
                  Height = 21
                  DataField = 'ID_EXPEDIDOR_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'Com Expedidor'
                    'Sem Expedidor')
                  TabOrder = 2
                  Values.Strings = (
                    '0'
                    '1')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  OnChange = ID_EXPEDIDOR_TIPOChange
                end
                object ID_TOMADOR_OUTROS: TDBLookupComboBox
                  Left = 121
                  Top = 34
                  Width = 304
                  Height = 21
                  DataField = 'ID_TOMADOR_OUTROS'
                  DataSource = dtsDefault
                  KeyField = 'ID_PESSOA'
                  ListField = 'RAZAOSOCIAL'
                  ListSource = dtsqryPESSOA
                  TabOrder = 3
                end
                object ID_REMETENTE: TDBLookupComboBox
                  Left = 121
                  Top = 75
                  Width = 304
                  Height = 21
                  DataField = 'ID_REMETENTE'
                  DataSource = dtsDefault
                  KeyField = 'ID_PESSOA'
                  ListField = 'RAZAOSOCIAL'
                  ListSource = dtsqryPESSOA
                  TabOrder = 4
                end
                object ID_EXPEDIDOR: TDBLookupComboBox
                  Left = 121
                  Top = 116
                  Width = 304
                  Height = 21
                  DataField = 'ID_EXPEDIDOR'
                  DataSource = dtsDefault
                  KeyField = 'ID_PESSOA'
                  ListField = 'RAZAOSOCIAL'
                  ListSource = dtsqryPESSOA
                  TabOrder = 5
                end
                object ID_RECEBEDOR_TIPO: TJvDBComboBox
                  Left = 431
                  Top = 34
                  Width = 110
                  Height = 21
                  DataField = 'ID_RECEBEDOR_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'Com Recebedor'
                    'Sem Recebedor')
                  TabOrder = 6
                  Values.Strings = (
                    '0'
                    '1')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  OnChange = ID_RECEBEDOR_TIPOChange
                end
                object ID_DESTINATARIO_TIPO: TJvDBComboBox
                  Left = 431
                  Top = 75
                  Width = 110
                  Height = 21
                  DataField = 'ID_DESTINATARIO_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'Com Destinat'#225'rio'
                    'Sem Destinat'#225'rio: Redespacho Intermedi'#225'rio'
                    'Sem Destinat'#225'rio: Servi'#231'o vinculado a multimodal')
                  TabOrder = 7
                  Values.Strings = (
                    '0'
                    '1'
                    '2')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  OnChange = ID_DESTINATARIO_TIPOChange
                end
                object ID_RECEBEDOR: TDBLookupComboBox
                  Left = 547
                  Top = 34
                  Width = 363
                  Height = 21
                  DataField = 'ID_RECEBEDOR'
                  DataSource = dtsDefault
                  KeyField = 'ID_PESSOA'
                  ListField = 'RAZAOSOCIAL'
                  ListSource = dtsqryPESSOA
                  TabOrder = 8
                end
                object ID_DESTINATARIO: TDBLookupComboBox
                  Left = 547
                  Top = 75
                  Width = 363
                  Height = 21
                  DataField = 'ID_DESTINATARIO'
                  DataSource = dtsDefault
                  KeyField = 'ID_PESSOA'
                  ListField = 'RAZAOSOCIAL'
                  ListSource = dtsqryPESSOA
                  TabOrder = 9
                end
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Dados Complementares'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object JvgGroupBox11: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 471
            Align = alClient
            Caption = 'Local de emiss'#227'o do CT-e'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object JvPageControl3: TJvPageControl
              AlignWithMargins = True
              Left = 5
              Top = 112
              Width = 925
              Height = 354
              ActivePage = TabSheet6
              Align = alClient
              TabOrder = 0
              object TabSheet6: TTabSheet
                Caption = 'Previs'#227'o de Fluxo de Carga'
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Panel15: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 911
                  Height = 41
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label35: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 127
                    Height = 13
                    Align = alTop
                    Caption = 'C'#243'digo da rota de entrega'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object FLUXO_CODIGO_ROTA: TJvDBMaskEdit
                    Tag = 1
                    Left = 4
                    Top = 18
                    Width = 326
                    Height = 21
                    TabStop = False
                    DataField = 'FLUXO_CODIGO_ROTA'
                    DataSource = dtsDefault
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    EditMask = ''
                  end
                end
                object JvgGroupBox12: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 50
                  Width = 911
                  Height = 273
                  Align = alClient
                  Caption = 'Sigla ou c'#243'digo interno da Filial/Porto/Esta'#231#227'o/Aeroporto'
                  TabOrder = 1
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Panel2: TPanel
                    AlignWithMargins = True
                    Left = 5
                    Top = 19
                    Width = 901
                    Height = 39
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Label36: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 34
                      Height = 13
                      Align = alTop
                      Caption = 'Origem'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object Label37: TLabel
                      Left = 391
                      Top = 3
                      Width = 36
                      Height = 13
                      Caption = 'Destino'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object FLUXO_MUNICIPIO_ORIGEM: TJvDBMaskEdit
                      Tag = 1
                      Left = 3
                      Top = 18
                      Width = 382
                      Height = 21
                      TabStop = False
                      DataField = 'FLUXO_MUNICIPIO_ORIGEM'
                      DataSource = dtsDefault
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      EditMask = ''
                    end
                    object FLUXO_MUNICIPIO_DESTINO: TJvDBMaskEdit
                      Tag = 1
                      Left = 391
                      Top = 18
                      Width = 382
                      Height = 21
                      TabStop = False
                      DataField = 'FLUXO_MUNICIPIO_DESTINO'
                      DataSource = dtsDefault
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      EditMask = ''
                    end
                  end
                  object Panel4: TPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 556
                    Width = 923
                    Height = 34
                    BevelOuter = bvNone
                    TabOrder = 1
                  end
                  object Panel5: TPanel
                    AlignWithMargins = True
                    Left = 5
                    Top = 64
                    Width = 901
                    Height = 204
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 2
                    object JvgGroupBox13: TJvgGroupBox
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 895
                      Height = 198
                      Align = alClient
                      Caption = 'Passagem'
                      TabOrder = 0
                      Border.Inner = bvSpace
                      Border.Outer = bvNone
                      Border.Bold = False
                      CaptionBorder.Inner = bvSpace
                      CaptionBorder.Outer = bvNone
                      CaptionBorder.Bold = False
                      CaptionGradient.Active = False
                      CaptionGradient.Orientation = fgdHorizontal
                      CaptionShift.X = 8
                      CaptionShift.Y = 0
                      Colors.Text = clHighlightText
                      Colors.TextActive = clHighlightText
                      Colors.Caption = clBtnShadow
                      Colors.CaptionActive = clBtnShadow
                      Colors.Client = clBtnFace
                      Colors.ClientActive = clBtnFace
                      Gradient.FromColor = clBlack
                      Gradient.ToColor = clGray
                      Gradient.Active = False
                      Gradient.Orientation = fgdHorizontal
                      Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                      FullHeight = 0
                      object Panel8: TPanel
                        AlignWithMargins = True
                        Left = 5
                        Top = 160
                        Width = 885
                        Height = 33
                        Align = alBottom
                        BevelOuter = bvNone
                        TabOrder = 0
                        object btnPassagemExcluir: TJvSpeedButton
                          AlignWithMargins = True
                          Left = 119
                          Top = 3
                          Width = 110
                          Height = 27
                          Hint = 'Cancela opera'#231#227'o atual'
                          Align = alLeft
                          Caption = 'Excluir'
                          Glyph.Data = {
                            36040000424D3604000000000000360000002800000010000000100000000100
                            2000000000000004000000000000000000000000000000000000000000000000
                            00000000000000000000000000000000000000000000000000001B2856664463
                            D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                            0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                            D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                            D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                            F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                            F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                            D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                            D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                            D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                            83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000}
                          Layout = blGlyphLeft
                          OnClick = btnPassagemExcluirClick
                        end
                        object btnPassagemIncluir: TJvSpeedButton
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 110
                          Height = 27
                          Hint = 'Confirma opera'#231#227'o atual'
                          Align = alLeft
                          Caption = 'Incluir'
                          Glyph.Data = {
                            36040000424D3604000000000000360000002800000010000000100000000100
                            2000000000000004000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            000097A776FF97A776FF00000000000000000000000000000000000000000000
                            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                            FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                            76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                            76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                            0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                            83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000}
                          Layout = blGlyphLeft
                          OnClick = btnPassagemIncluirClick
                        end
                      end
                      object Panel3: TPanel
                        AlignWithMargins = True
                        Left = 5
                        Top = 46
                        Width = 885
                        Height = 108
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 1
                        object JvDBGrid1: TJvDBGrid
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 879
                          Height = 102
                          Align = alClient
                          DataSource = dtstabCTe_FLUXO_PASSAGENS
                          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                          ReadOnly = True
                          TabOrder = 0
                          TitleFont.Charset = DEFAULT_CHARSET
                          TitleFont.Color = clWindowText
                          TitleFont.Height = -11
                          TitleFont.Name = 'Tahoma'
                          TitleFont.Style = []
                          MultiSelect = True
                          AlternateRowColor = clInactiveCaption
                          SelectColumnsDialogStrings.Caption = 'Select columns'
                          SelectColumnsDialogStrings.OK = '&OK'
                          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                          EditControls = <>
                          RowsHeight = 17
                          TitleRowHeight = 17
                          Columns = <
                            item
                              Expanded = False
                              FieldName = 'PASSAGEM'
                              Title.Caption = 'N'#250'mero da Passagem'
                              Width = 333
                              Visible = True
                            end>
                        end
                      end
                      object Panel28: TPanel
                        AlignWithMargins = True
                        Left = 5
                        Top = 19
                        Width = 885
                        Height = 21
                        Align = alTop
                        BevelOuter = bvNone
                        TabOrder = 2
                        object Label3: TLabel
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 37
                          Height = 13
                          Align = alTop
                          Caption = 'N'#250'mero'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          Transparent = True
                        end
                        object PASS_NUMERO: TJvMaskEdit
                          Left = 48
                          Top = 0
                          Width = 140
                          Height = 21
                          TabOrder = 0
                          Text = ''
                        end
                      end
                    end
                  end
                end
              end
              object TabSheet7: TTabSheet
                Caption = 'Previs'#227'o de Entrega'
                ImageIndex = 1
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object JvgGroupBox14: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 74
                  Width = 911
                  Height = 65
                  Align = alTop
                  Caption = ''
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label38: TLabel
                    AlignWithMargins = True
                    Left = 5
                    Top = 19
                    Width = 901
                    Height = 13
                    Align = alTop
                    Caption = 'Previs'#227'o de Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                    ExplicitWidth = 82
                  end
                  object lbPRVhoraA: TLabel
                    Left = 187
                    Top = 19
                    Width = 25
                    Height = 13
                    Caption = 'In'#237'cio'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object lbPRVhoraB: TLabel
                    Left = 287
                    Top = 19
                    Width = 16
                    Height = 13
                    Caption = 'Fim'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object PREVISAO_ENTREGA_HORA_INICIO: TJvDBDateTimePicker
                    Left = 187
                    Top = 34
                    Width = 94
                    Height = 21
                    Date = 43642.677190717590000000
                    Time = 43642.677190717590000000
                    Kind = dtkTime
                    TabOrder = 0
                    DropDownDate = 43177.000000000000000000
                    DataField = 'PREVISAO_ENTREGA_HORA_INICIO'
                    DataSource = dtsDefault
                  end
                  object PREVISAO_ENTREGA_HORA_FINAL: TJvDBDateTimePicker
                    Left = 287
                    Top = 34
                    Width = 94
                    Height = 21
                    Date = 43642.677190706020000000
                    Time = 43642.677190706020000000
                    Kind = dtkTime
                    TabOrder = 1
                    DropDownDate = 43177.000000000000000000
                    DataField = 'PREVISAO_ENTREGA_HORA_FINAL'
                    DataSource = dtsDefault
                  end
                  object PREVISAO_ENTREGA_HORA_ID_TIPO: TJvDBComboBox
                    Left = 5
                    Top = 34
                    Width = 176
                    Height = 21
                    DataField = 'PREVISAO_ENTREGA_HORA_ID_TIPO'
                    DataSource = dtsDefault
                    Items.Strings = (
                      'Sem hora definida'
                      'No hor'#225'rio'
                      'At'#233' o hor'#225'rio'
                      'A partir do hor'#225'rio'
                      'No intervalo de tempo')
                    TabOrder = 2
                    Values.Strings = (
                      '0'
                      '1'
                      '2'
                      '3'
                      '4')
                    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                    ListSettings.OutfilteredValueFont.Color = clRed
                    ListSettings.OutfilteredValueFont.Height = -11
                    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                    ListSettings.OutfilteredValueFont.Style = []
                    OnChange = PREVISAO_ENTREGA_HORA_ID_TIPOChange
                  end
                end
                object JvgGroupBox15: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 911
                  Height = 65
                  Align = alTop
                  Caption = ''
                  TabOrder = 1
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label45: TLabel
                    AlignWithMargins = True
                    Left = 5
                    Top = 19
                    Width = 901
                    Height = 13
                    Align = alTop
                    Caption = 'Previs'#227'o de Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                    ExplicitWidth = 82
                  end
                  object lbPRVdataA: TLabel
                    Left = 187
                    Top = 19
                    Width = 25
                    Height = 13
                    Caption = 'In'#237'cio'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object lbPRVdataB: TLabel
                    Left = 287
                    Top = 19
                    Width = 16
                    Height = 13
                    Caption = 'Fim'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object PREVISAO_ENTREGA_DATA_INICIO: TJvDBDateTimePicker
                    Left = 187
                    Top = 34
                    Width = 94
                    Height = 21
                    Date = 43642.677190706020000000
                    Time = 43642.677190706020000000
                    TabOrder = 0
                    DropDownDate = 43384.000000000000000000
                    DataField = 'PREVISAO_ENTREGA_DATA_INICIO'
                    DataSource = dtsDefault
                  end
                  object PREVISAO_ENTREGA_DATA_FINAL: TJvDBDateTimePicker
                    Left = 287
                    Top = 34
                    Width = 94
                    Height = 21
                    Date = 43642.677190694440000000
                    Time = 43642.677190694440000000
                    TabOrder = 1
                    DropDownDate = 43384.000000000000000000
                    DataField = 'PREVISAO_ENTREGA_DATA_FINAL'
                    DataSource = dtsDefault
                  end
                  object PREVISAO_ENTREGA_DATA_ID_TIPO: TJvDBComboBox
                    Left = 5
                    Top = 34
                    Width = 176
                    Height = 21
                    DataField = 'PREVISAO_ENTREGA_DATA_ID_TIPO'
                    DataSource = dtsDefault
                    Items.Strings = (
                      'Sem data definida'
                      'Na data'
                      'At'#233' a data'
                      'A partir da data'
                      'No periodo')
                    TabOrder = 2
                    Values.Strings = (
                      '0'
                      '1'
                      '2'
                      '3'
                      '4')
                    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                    ListSettings.OutfilteredValueFont.Color = clRed
                    ListSettings.OutfilteredValueFont.Height = -11
                    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                    ListSettings.OutfilteredValueFont.Style = []
                    OnChange = PREVISAO_ENTREGA_DATA_ID_TIPOChange
                  end
                end
              end
            end
            object Panel1: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 925
              Height = 87
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object Label30: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 179
                Height = 13
                Align = alTop
                Caption = 'Caracteristica adicional do transporte'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label31: TLabel
                Left = 343
                Top = 3
                Width = 162
                Height = 13
                Caption = 'Caracteristica adicional do servi'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label32: TLabel
                Left = 681
                Top = 3
                Width = 135
                Height = 13
                Caption = 'Funcion'#225'rio emissor do CT-e'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label33: TLabel
                Left = 3
                Top = 45
                Width = 241
                Height = 13
                Caption = 'Municipio de origem para efeito de c'#225'lculo do frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label34: TLabel
                Left = 343
                Top = 45
                Width = 244
                Height = 13
                Caption = 'Municipio de destino para efeito de c'#225'lculo do frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object CARACTERISTICA_ADICIONAL_TRANSP: TJvDBMaskEdit
                Left = 3
                Top = 18
                Width = 332
                Height = 21
                TabStop = False
                DataField = 'CARACTERISTICA_ADICIONAL_TRANSP'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                EditMask = ''
              end
              object CARACTERISTICA_ADICIONAL_SERVIC: TJvDBMaskEdit
                Left = 341
                Top = 18
                Width = 334
                Height = 21
                TabStop = False
                DataField = 'CARACTERISTICA_ADICIONAL_SERVIC'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                EditMask = ''
              end
              object FUNCIONARIO_EMISSOR_CTE: TJvDBMaskEdit
                Left = 681
                Top = 18
                Width = 164
                Height = 21
                TabStop = False
                DataField = 'FUNCIONARIO_EMISSOR_CTE'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                EditMask = ''
              end
              object ID_MUNICIPIO_ORIGEM_CALC_FRETE: TJvDBMaskEdit
                Left = 3
                Top = 60
                Width = 334
                Height = 21
                TabStop = False
                DataField = 'ID_MUNICIPIO_ORIGEM_CALC_FRETE'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                EditMask = ''
              end
              object ID_MUNICIPIO_DESTINO_CALC_FRETE: TJvDBMaskEdit
                Left = 343
                Top = 60
                Width = 334
                Height = 21
                TabStop = False
                DataField = 'ID_MUNICIPIO_DESTINO_CALC_FRETE'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                EditMask = ''
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Dados da Retirada'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object JvgGroupBox16: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 471
            Align = alClient
            Caption = ''
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Panel6: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 59
              Width = 925
              Height = 407
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvgGroupBox17: TJvgGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 919
                Height = 401
                Align = alClient
                Caption = 'Detalhes'
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object Panel10: TPanel
                  AlignWithMargins = True
                  Left = 5
                  Top = 19
                  Width = 909
                  Height = 377
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object RECEBEDOR_DETALHES: TDBMemo
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 903
                    Height = 371
                    Align = alClient
                    DataField = 'RECEBEDOR_DETALHES'
                    DataSource = dtsDefault
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel7: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 925
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object RECEBEDOR_RETIRA: TJvDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 441
                Height = 28
                Align = alLeft
                Caption = 
                  'Recebedor retina no Aeroporto, Filial, Porto ou Esta'#231#227'o de Desti' +
                  'no ?'
                DataField = 'RECEBEDOR_RETIRA'
                DataSource = dtsDefault
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnChange = RECEBEDOR_RETIRAChange
              end
            end
          end
        end
        object tabDOCANT: TTabSheet
          Caption = 'Documentos Anterioes'
          ImageIndex = 3
          object JvPageControl6: TJvPageControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 471
            ActivePage = TabSheet14
            Align = alClient
            TabOrder = 0
            object TabSheet14: TTabSheet
              Caption = 'NF-es'
              object Panel44: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 407
                Width = 921
                Height = 33
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object btnDOCANTexcluir: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 235
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Cancela opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Excluir'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000001B2856664463
                    D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                    0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                    D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                    D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                    F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                    F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                    D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                    D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                    D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnDOCANTexcluirClick
                end
                object btnDOCANTincluir: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Confirma opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Incluir'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000097A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                    FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                    76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                    76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnDOCANTincluirClick
                end
                object btnDOCANTeditar: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 119
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Cancela opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Alterar'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000003827174DB8824DFF3827174D00000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                    FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                    4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                    4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                    FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                    BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                    4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                    52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnDOCANTeditarClick
                end
              end
              object Panel45: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 921
                Height = 398
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object JvDBGrid4: TJvDBGrid
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 915
                  Height = 392
                  Align = alClient
                  DataSource = dtstabCTE_DOCANT
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  MultiSelect = True
                  AlternateRowColor = clInactiveCaption
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'XML_CHAVE'
                      Title.Caption = 'Chave de Acesso'
                      Width = 333
                      Visible = True
                    end>
                end
              end
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Servi'#231'os e Impostos'
      ImageIndex = 3
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 319
        Width = 949
        Height = 189
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object JvgGroupBox22: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 943
          Height = 183
          Align = alClient
          Caption = 'ICMS'
          TabOrder = 0
          Border.Inner = bvSpace
          Border.Outer = bvNone
          Border.Bold = False
          CaptionBorder.Inner = bvSpace
          CaptionBorder.Outer = bvNone
          CaptionBorder.Bold = False
          CaptionGradient.Active = False
          CaptionGradient.Orientation = fgdHorizontal
          CaptionShift.X = 8
          CaptionShift.Y = 0
          Colors.Text = clHighlightText
          Colors.TextActive = clHighlightText
          Colors.Caption = clBtnShadow
          Colors.CaptionActive = clBtnShadow
          Colors.Client = clBtnFace
          Colors.ClientActive = clBtnFace
          Gradient.FromColor = clBlack
          Gradient.ToColor = clGray
          Gradient.Active = False
          Gradient.Orientation = fgdHorizontal
          Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
          FullHeight = 0
          object Panel26: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 933
            Height = 159
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 137
              Height = 13
              Caption = 'C'#243'digo da Situa'#231#227'o Tribit'#225'ria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label53: TLabel
              Left = 3
              Top = 30
              Width = 142
              Height = 13
              Caption = 'Percentual da Redu'#231#227'o da BC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label55: TLabel
              Left = 3
              Top = 57
              Width = 98
              Height = 13
              Caption = 'Valor da BC do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label56: TLabel
              Left = 3
              Top = 84
              Width = 82
              Height = 13
              Caption = 'Al'#237'quota do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label57: TLabel
              Left = 3
              Top = 111
              Width = 67
              Height = 13
              Caption = 'Valor do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label58: TLabel
              Left = 3
              Top = 138
              Width = 185
              Height = 13
              Caption = 'Valor do Cr'#233'dito Outorgado/Presumido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object ICMS_ID_CST: TJvDBComboBox
              Left = 202
              Top = 0
              Width = 281
              Height = 21
              DataField = 'ICMS_ID_CST'
              DataSource = dtsDefault
              Items.Strings = (
                '00 - Tributa'#231#227'o normal do ICMS'
                '20 - Tributa'#231#227'o com redu'#231#227'o de BC do ICMS'
                '40 - ICMS isen'#231#227'o'
                '41 - ICMS n'#227'o tributado'
                '51 - ICMS diferido'
                '60 - ICMS cobrado anteriomente por substitui'#231#227'o tribut'#225'ria'
                '90 - ICMS outros'
                
                  '91 - ICMS devido '#224' UF de origem da presta'#231#227'o, quanto diferente d' +
                  'a UF...'
                '99 - Simples Nacional')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = ICMS_ID_CSTChange
            end
            object ICMS_PERCENTUAL_RED_DA_BC: TJvDBCalcEdit
              Left = 351
              Top = 27
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
              DataField = 'ICMS_PERCENTUAL_RED_DA_BC'
              DataSource = dtsDefault
            end
            object ICMS_VALOR_DA_BC: TJvDBCalcEdit
              Left = 351
              Top = 54
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
              OnChange = ICMS_VALOR_DA_BCChange
              DataField = 'ICMS_VALOR_DA_BC'
              DataSource = dtsDefault
            end
            object ICMS_ALIQUOTA: TJvDBCalcEdit
              Left = 351
              Top = 81
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 3
              DecimalPlacesAlwaysShown = False
              OnChange = ICMS_VALOR_DA_BCChange
              DataField = 'ICMS_ALIQUOTA'
              DataSource = dtsDefault
            end
            object ICMS_VALOR: TJvDBCalcEdit
              Left = 351
              Top = 108
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 4
              DecimalPlacesAlwaysShown = False
              DataField = 'ICMS_VALOR'
              DataSource = dtsDefault
            end
            object ICMS_VALOR_CREDITO_OUT_REC: TJvDBCalcEdit
              Left = 351
              Top = 135
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 5
              DecimalPlacesAlwaysShown = False
              DataField = 'ICMS_VALOR_CREDITO_OUT_REC'
              DataSource = dtsDefault
            end
            object JvgGroupBox21: TJvgGroupBox
              Left = 499
              Top = 0
              Width = 434
              Height = 159
              Align = alRight
              Caption = 'Informa'#231#245'es adicionais de interesse do Fisco'
              TabOrder = 6
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionBorder.Inner = bvSpace
              CaptionBorder.Outer = bvNone
              CaptionBorder.Bold = False
              CaptionGradient.Active = False
              CaptionGradient.Orientation = fgdHorizontal
              CaptionShift.X = 8
              CaptionShift.Y = 0
              Colors.Text = clHighlightText
              Colors.TextActive = clHighlightText
              Colors.Caption = clBtnShadow
              Colors.CaptionActive = clBtnShadow
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Panel24: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 424
                Height = 135
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object ICMS_INF_ADICIONAIS_FISCO: TDBMemo
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 418
                  Height = 129
                  Align = alClient
                  DataField = 'ICMS_INF_ADICIONAIS_FISCO'
                  DataSource = dtsDefault
                  TabOrder = 0
                end
              end
              object Panel25: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 556
                Width = 923
                Height = 34
                BevelOuter = bvNone
                TabOrder = 1
              end
            end
          end
          object Panel27: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 556
            Width = 923
            Height = 34
            BevelOuter = bvNone
            TabOrder = 1
          end
        end
      end
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 949
        Height = 310
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object JvgGroupBox18: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 496
          Height = 304
          Align = alLeft
          Caption = 'Valores da Presta'#231#227'o de Servi'#231'o'
          TabOrder = 0
          Border.Inner = bvSpace
          Border.Outer = bvNone
          Border.Bold = False
          CaptionBorder.Inner = bvSpace
          CaptionBorder.Outer = bvNone
          CaptionBorder.Bold = False
          CaptionGradient.Active = False
          CaptionGradient.Orientation = fgdHorizontal
          CaptionShift.X = 8
          CaptionShift.Y = 0
          Colors.Text = clHighlightText
          Colors.TextActive = clHighlightText
          Colors.Caption = clBtnShadow
          Colors.CaptionActive = clBtnShadow
          Colors.Client = clBtnFace
          Colors.ClientActive = clBtnFace
          Gradient.FromColor = clBlack
          Gradient.ToColor = clGray
          Gradient.Active = False
          Gradient.Orientation = fgdHorizontal
          Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
          FullHeight = 0
          object Panel22: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 486
            Height = 85
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 480
              Height = 13
              Align = alTop
              Caption = 'Valor Total da Presta'#231#227'o de Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 170
            end
            object Label13: TLabel
              Left = 3
              Top = 51
              Width = 113
              Height = 13
              Caption = 'Valor Total dos Tributos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label16: TLabel
              Left = 3
              Top = 27
              Width = 76
              Height = 13
              Caption = 'Valor a Receber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 3
              Top = 70
              Width = 393
              Height = 11
              Caption = 
                'Valor aproximado total de tributos federais, estaduais e municip' +
                'ais conforme disposto da Lei n'#186'12.741/12.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object VALOR_TOTAL_PRETACAO_SERVICO: TJvDBCalcEdit
              Left = 351
              Top = 0
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'VALOR_TOTAL_PRETACAO_SERVICO'
              DataSource = dtsDefault
            end
            object VALOR_A_RECEBER: TJvDBCalcEdit
              Left = 351
              Top = 24
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
              DataField = 'VALOR_A_RECEBER'
              DataSource = dtsDefault
            end
            object VALOR_TOTAL_DOS_TRIBUTOS: TJvDBCalcEdit
              Left = 351
              Top = 48
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
              DataField = 'VALOR_TOTAL_DOS_TRIBUTOS'
              DataSource = dtsDefault
            end
          end
          object Panel23: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 110
            Width = 486
            Height = 189
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvgGroupBox19: TJvgGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 480
              Height = 183
              Align = alClient
              Caption = 'Componentes do valor da presta'#231#227'o'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionBorder.Inner = bvSpace
              CaptionBorder.Outer = bvNone
              CaptionBorder.Bold = False
              CaptionGradient.Active = False
              CaptionGradient.Orientation = fgdHorizontal
              CaptionShift.X = 8
              CaptionShift.Y = 0
              Colors.Text = clHighlightText
              Colors.TextActive = clHighlightText
              Colors.Caption = clBtnShadow
              Colors.CaptionActive = clBtnShadow
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Panel12: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 470
                Height = 37
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label19: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 464
                  Height = 13
                  Align = alTop
                  Caption = 'Nome'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  ExplicitWidth = 27
                end
                object Label20: TLabel
                  Left = 342
                  Top = 3
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object CPN_NOME: TJvMaskEdit
                  Left = 3
                  Top = 16
                  Width = 334
                  Height = 21
                  TabOrder = 0
                  Text = ''
                end
                object CPN_VALOR: TJvCalcEdit
                  Left = 343
                  Top = 16
                  Width = 124
                  Height = 21
                  ShowButton = False
                  TabOrder = 1
                  DecimalPlacesAlwaysShown = False
                end
              end
              object Panel13: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 556
                Width = 923
                Height = 34
                BevelOuter = bvNone
                TabOrder = 1
              end
              object Panel14: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 62
                Width = 470
                Height = 116
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
                object JvDBGrid2: TJvDBGrid
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 464
                  Height = 72
                  Align = alClient
                  DataSource = dtstabCTE_COMPONENTES
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  MultiSelect = True
                  AlternateRowColor = clInactiveCaption
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'NOME'
                      Title.Caption = 'Nome'
                      Width = 300
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VALOR'
                      Title.Caption = 'Valor'
                      Visible = True
                    end>
                end
                object Panel16: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 81
                  Width = 464
                  Height = 32
                  Align = alBottom
                  BevelOuter = bvNone
                  TabOrder = 1
                  object btnCPNexcluir: TJvSpeedButton
                    AlignWithMargins = True
                    Left = 119
                    Top = 3
                    Width = 110
                    Height = 26
                    Hint = 'Cancela opera'#231#227'o atual'
                    Align = alLeft
                    Caption = 'Excluir'
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000000000000000
                      00000000000000000000000000000000000000000000000000001B2856664463
                      D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                      0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                      D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                      F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                      F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                      D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                      D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                      D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                      83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000}
                    Layout = blGlyphLeft
                    OnClick = btnCPNexcluirClick
                  end
                  object btnCPNincluir: TJvSpeedButton
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 110
                    Height = 26
                    Hint = 'Confirma opera'#231#227'o atual'
                    Align = alLeft
                    Caption = 'Incluir'
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000097A776FF97A776FF00000000000000000000000000000000000000000000
                      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                      FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                      76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                      76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                      83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000}
                    Layout = blGlyphLeft
                    OnClick = btnCPNincluirClick
                  end
                end
              end
            end
          end
        end
        object JvgGroupBox7: TJvgGroupBox
          AlignWithMargins = True
          Left = 505
          Top = 3
          Width = 441
          Height = 304
          Align = alClient
          Caption = 'Cobranca de ICMS na Opera'#231#227'o Interestadual'
          TabOrder = 1
          Border.Inner = bvSpace
          Border.Outer = bvNone
          Border.Bold = False
          CaptionBorder.Inner = bvSpace
          CaptionBorder.Outer = bvNone
          CaptionBorder.Bold = False
          CaptionGradient.Active = False
          CaptionGradient.Orientation = fgdHorizontal
          CaptionShift.X = 8
          CaptionShift.Y = 0
          Colors.Text = clHighlightText
          Colors.TextActive = clHighlightText
          Colors.Caption = clBtnShadow
          Colors.CaptionActive = clBtnShadow
          Colors.Client = clBtnFace
          Colors.ClientActive = clBtnFace
          Gradient.FromColor = clBlack
          Gradient.ToColor = clGray
          Gradient.Active = False
          Gradient.Orientation = fgdHorizontal
          Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
          FullHeight = 0
          object Label7: TLabel
            Left = 5
            Top = 49
            Width = 160
            Height = 13
            Caption = 'Valor da Base de C'#225'lculo do ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 5
            Top = 75
            Width = 161
            Height = 13
            Caption = 'Al'#237'quota interna da UF de t'#233'rmino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 5
            Top = 102
            Width = 105
            Height = 13
            Caption = 'Al'#237'quota interestadual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label49: TLabel
            Left = 5
            Top = 129
            Width = 169
            Height = 13
            Caption = '% de partilha para a UF de t'#233'rmino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label50: TLabel
            Left = 5
            Top = 156
            Width = 212
            Height = 13
            Caption = 'Valor do ICMS de partilha para a UF de in'#237'cio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label51: TLabel
            Left = 5
            Top = 183
            Width = 225
            Height = 13
            Caption = 'Valor do ICMS de partilha para a UF de t'#233'rmino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label52: TLabel
            Left = 5
            Top = 210
            Width = 286
            Height = 13
            Caption = '% do ICMS ao Fundo de Combate '#224' Pobreza da UF T'#233'rmino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label54: TLabel
            Left = 5
            Top = 237
            Width = 299
            Height = 13
            Caption = 'Valor do ICMS ao Fundo de Combate '#224' Pobreza da UF T'#233'rmino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ICMS_I_VALOR_BASE_CALCULO: TJvDBCalcEdit
            Left = 309
            Top = 46
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_VALOR_BASE_CALCULO'
            DataSource = dtsDefault
          end
          object ICMS_I_ALIQUOTA_INTERNA_UF_TERM: TJvDBCalcEdit
            Left = 309
            Top = 72
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_ALIQUOTA_INTERNA_UF_TERM'
            DataSource = dtsDefault
          end
          object ICMS_I_ALIQUOTA_INTERESTADUAL: TJvDBCalcEdit
            Left = 309
            Top = 99
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_ALIQUOTA_INTERESTADUAL'
            DataSource = dtsDefault
          end
          object ICMS_I_COBR_OPER_INTERESTADUAL: TJvDBCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 431
            Height = 17
            Align = alTop
            Caption = 
              'Preencher o ICMS devido para a UF de t'#233'rmino do servi'#231'o de trans' +
              'porte'
            DataField = 'ICMS_I_COBR_OPER_INTERESTADUAL'
            DataSource = dtsDefault
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = ICMS_I_COBR_OPER_INTERESTADUALClick
          end
          object ICMS_I_PORC_PARTILHA_UF_TERMINO: TJvDBCalcEdit
            Left = 309
            Top = 126
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 4
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_PORC_PARTILHA_UF_TERMINO'
            DataSource = dtsDefault
          end
          object ICMS_I_VLR_ICMS_PARTILH_UF_INIC: TJvDBCalcEdit
            Left = 309
            Top = 153
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_VLR_ICMS_PARTILH_UF_INIC'
            DataSource = dtsDefault
          end
          object ICMS_I_VLR_ICMS_PARTILH_UF_TERM: TJvDBCalcEdit
            Left = 309
            Top = 180
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 6
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_VLR_ICMS_PARTILH_UF_TERM'
            DataSource = dtsDefault
          end
          object ICMS_I_PORC_FCP_UF_TERMINO: TJvDBCalcEdit
            Left = 309
            Top = 207
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 7
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_PORC_FCP_UF_TERMINO'
            DataSource = dtsDefault
          end
          object ICMS_I_VLR_FCP_UF_TERMINO: TJvDBCalcEdit
            Left = 309
            Top = 234
            Width = 125
            Height = 21
            DisplayFormat = '#0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 8
            DecimalPlacesAlwaysShown = False
            DataField = 'ICMS_I_VLR_FCP_UF_TERMINO'
            DataSource = dtsDefault
          end
          object ICMS_I_IDPORC_PARTILHA: TJvDBComboBox
            Left = 180
            Top = 126
            Width = 123
            Height = 21
            DataField = 'ICMS_I_IDPORC_PARTILHA'
            DataSource = dtsDefault
            Items.Strings = (
              ''
              '40% em 2016'
              '60% em 2017'
              '80% em 2018'
              '100% a partir de 2019'
              'Outro Valor')
            TabOrder = 9
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = ICMS_I_IDPORC_PARTILHAChange
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'CT-e Normal'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvPageControl4: TJvPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 949
        Height = 505
        ActivePage = TabSheet9
        Align = alClient
        TabOrder = 0
        object TabSheet9: TTabSheet
          Caption = 'Inf. da Carga'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel17: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 43
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 929
              Height = 13
              Align = alTop
              Caption = 'Valor da Carga*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 77
            end
            object Label39: TLabel
              Left = 141
              Top = 3
              Width = 113
              Height = 13
              Caption = 'Produto Predominante*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label40: TLabel
              Left = 508
              Top = 3
              Width = 163
              Height = 13
              Caption = 'Outras Caracter'#237'sticas do Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object CARGA_VALOR: TJvDBCalcEdit
              Left = 3
              Top = 17
              Width = 132
              Height = 21
              DisplayFormat = '#0.00'
              FormatOnEditing = True
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'CARGA_VALOR'
              DataSource = dtsDefault
            end
            object CARGA_PRODUTO_PREDOMINANTE: TJvDBMaskEdit
              Left = 141
              Top = 17
              Width = 361
              Height = 21
              TabStop = False
              DataField = 'CARGA_PRODUTO_PREDOMINANTE'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              EditMask = ''
            end
            object CARGA_PRODUTO_CARACTERISTICAS: TJvDBMaskEdit
              Left = 508
              Top = 17
              Width = 361
              Height = 21
              TabStop = False
              DataField = 'CARGA_PRODUTO_CARACTERISTICAS'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              EditMask = ''
            end
          end
          object JvgGroupBox20: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 52
            Width = 935
            Height = 422
            Align = alClient
            Caption = 'Quantidades da Carga'
            TabOrder = 1
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Panel30: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 384
              Width = 925
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object btnINFCARGAexcluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 235
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Excluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001B2856664463
                  D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                  0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                  D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnINFCARGAexcluirClick
              end
              object btnINFCARGAincluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Confirma opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Incluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000097A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnINFCARGAincluirClick
              end
              object btnINFCARGAeditar: TJvSpeedButton
                AlignWithMargins = True
                Left = 119
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Alterar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000003827174DB8824DFF3827174D00000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                  4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                  FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                  BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                  4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                  52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnINFCARGAeditarClick
              end
            end
            object Panel31: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 925
              Height = 359
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object JvDBGrid5: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 919
                Height = 353
                Align = alClient
                DataSource = dtstbCTE_CARGA_QUANTIDADES
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                MultiSelect = True
                AlternateRowColor = clInactiveCaption
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TIPO_MEDIDA'
                    Title.Caption = 'Tipo da Medida'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUANTIDADE'
                    Title.Caption = 'Quantidade da Carga'
                    Width = 130
                    Visible = True
                  end>
              end
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Inf. Documentos'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object JvPageControl5: TJvPageControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 471
            ActivePage = TabSheet13
            Align = alClient
            TabOrder = 0
            object TabSheet13: TTabSheet
              Caption = 'NF-es'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel42: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 407
                Width = 921
                Height = 33
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object btnNFEexcluir: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 235
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Cancela opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Excluir'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000001B2856664463
                    D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                    0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                    D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                    D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                    F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                    F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                    D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                    D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                    D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnNFEexcluirClick
                end
                object btnNFEincluir: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Confirma opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Incluir'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000097A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                    FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                    76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                    76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnNFEincluirClick
                end
                object btnNFEeditar: TJvSpeedButton
                  AlignWithMargins = True
                  Left = 119
                  Top = 3
                  Width = 110
                  Height = 27
                  Hint = 'Cancela opera'#231#227'o atual'
                  Align = alLeft
                  Caption = 'Alterar'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000003827174DB8824DFF3827174D00000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                    FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                    4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                    4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                    FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                    BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                    4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                    52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                    0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                    0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                    83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Layout = blGlyphLeft
                  OnClick = btnNFEeditarClick
                end
              end
              object Panel43: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 921
                Height = 398
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object JvDBGrid7: TJvDBGrid
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 915
                  Height = 392
                  Align = alClient
                  DataSource = dtstabCTE_NFE
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  MultiSelect = True
                  AlternateRowColor = clInactiveCaption
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'NFE_CHAVE'
                      Title.Caption = 'Chave de Acesso'
                      Width = 333
                      Visible = True
                    end
                    item
                      Expanded = False
                      Title.Caption = 'PIN'
                      Width = 133
                      Visible = True
                    end>
                end
              end
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Ve'#237'culos Novos'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object JvgGroupBox23: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 471
            Align = alClient
            Caption = 'Informa'#231#245'es dos Ve'#237'culos Transportados'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Panel29: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 433
              Width = 925
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object btnVEICULOexcluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 235
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Excluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001B2856664463
                  D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                  0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                  D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnVEICULOexcluirClick
              end
              object btnVEICULOincluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Confirma opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Incluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000097A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnVEICULOincluirClick
              end
              object btnVEICULOeditar: TJvSpeedButton
                AlignWithMargins = True
                Left = 119
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Alterar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000003827174DB8824DFF3827174D00000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                  4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                  FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                  BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                  4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                  52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnVEICULOeditarClick
              end
            end
            object Panel32: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 925
              Height = 408
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object JvDBGrid6: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 919
                Height = 402
                Align = alClient
                DataSource = dtstabCTE_VEICULOS_NOVOS
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                MultiSelect = True
                AlternateRowColor = clInactiveCaption
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CHASSI'
                    Title.Caption = 'Chassi'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COR'
                    Title.Caption = 'Cor'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COR_DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o da Cor'
                    Width = 300
                    Visible = True
                  end>
              end
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'CT-e de Substitui'#231#227'o'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel33: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 239
            Width = 935
            Height = 98
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object CTE_SUB_TOMADOR_NCONTRIBUINTE: TDBCheckBox
              Left = 0
              Top = 0
              Width = 25
              Height = 98
              Align = alLeft
              DataField = 'CTE_SUB_TOMADOR_NCONTRIBUINTE'
              DataSource = dtsDefault
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = CTE_SUB_TOMADOR_NCONTRIBUINTEClick
            end
            object JvgGroupBox24: TJvgGroupBox
              AlignWithMargins = True
              Left = 28
              Top = 3
              Width = 509
              Height = 92
              Align = alLeft
              Caption = 'Tomador n'#227'o '#233' contribuinte do ICMS'
              TabOrder = 1
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionBorder.Inner = bvSpace
              CaptionBorder.Outer = bvNone
              CaptionBorder.Bold = False
              CaptionGradient.Active = False
              CaptionGradient.Orientation = fgdHorizontal
              CaptionShift.X = 8
              CaptionShift.Y = 0
              Colors.Text = clHighlightText
              Colors.TextActive = clHighlightText
              Colors.Caption = clBtnShadow
              Colors.CaptionActive = clBtnShadow
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Panel35: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 499
                Height = 62
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object JvgGroupBox25: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 493
                  Height = 56
                  Align = alClient
                  Caption = 'Chave de Acesso do CT-e de Anula'#231#227'o'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object CTE_SUB_CHAVE_ANULACAO: TJvDBMaskEdit
                    Left = 11
                    Top = 24
                    Width = 350
                    Height = 21
                    TabStop = False
                    DataField = 'CTE_SUB_CHAVE_ANULACAO'
                    DataSource = dtsDefault
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    EditMask = ''
                  end
                end
              end
              object Panel36: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 87
                Width = 499
                Height = 66
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
              end
              object Panel37: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 159
                Width = 499
                Height = 0
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
              end
            end
          end
          object Panel34: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 935
            Height = 54
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 246
              Height = 13
              Align = alTop
              Caption = 'Chave de Acesso do CT-e a ser subtitu'#237'do (original)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object CTE_SUB_CHAVE_ORIGINAL: TJvDBMaskEdit
              Left = 3
              Top = 18
              Width = 350
              Height = 21
              TabStop = False
              DataField = 'CTE_SUB_CHAVE_ORIGINAL'
              DataSource = dtsDefault
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              EditMask = ''
            end
          end
          object Panel38: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 63
            Width = 935
            Height = 170
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object CTE_SUB_TOMADOR_CONTRIBUINTE: TDBCheckBox
              Left = 0
              Top = 0
              Width = 25
              Height = 170
              Align = alLeft
              DataField = 'CTE_SUB_TOMADOR_CONTRIBUINTE'
              DataSource = dtsDefault
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = CTE_SUB_TOMADOR_CONTRIBUINTEClick
            end
            object JvgGroupBox27: TJvgGroupBox
              AlignWithMargins = True
              Left = 28
              Top = 3
              Width = 509
              Height = 164
              Align = alLeft
              Caption = 'Tomador '#233' contribuinte do ICMS'
              TabOrder = 1
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionBorder.Inner = bvSpace
              CaptionBorder.Outer = bvNone
              CaptionBorder.Bold = False
              CaptionGradient.Active = False
              CaptionGradient.Orientation = fgdHorizontal
              CaptionShift.X = 8
              CaptionShift.Y = 0
              Colors.Text = clHighlightText
              Colors.TextActive = clHighlightText
              Colors.Caption = clBtnShadow
              Colors.CaptionActive = clBtnShadow
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Panel39: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 499
                Height = 62
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object JvgGroupBox28: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 493
                  Height = 56
                  Align = alClient
                  Caption = 'Chave de Acesso do CT-e emitido pelo Tomador'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object CTE_SUB_CHAVE_CTE_SUBSTITUTO: TJvDBMaskEdit
                    Left = 11
                    Top = 24
                    Width = 350
                    Height = 21
                    TabStop = False
                    DataField = 'CTE_SUB_CHAVE_CTE_SUBSTITUTO'
                    DataSource = dtsDefault
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    EditMask = ''
                  end
                end
              end
              object Panel40: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 87
                Width = 499
                Height = 66
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object JvgGroupBox29: TJvgGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 493
                  Height = 60
                  Align = alClient
                  Caption = 'Chave de Acesso da NF-e emitida pelo Tomador'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionBorder.Inner = bvSpace
                  CaptionBorder.Outer = bvNone
                  CaptionBorder.Bold = False
                  CaptionGradient.Active = False
                  CaptionGradient.Orientation = fgdHorizontal
                  CaptionShift.X = 8
                  CaptionShift.Y = 0
                  Colors.Text = clHighlightText
                  Colors.TextActive = clHighlightText
                  Colors.Caption = clBtnShadow
                  Colors.CaptionActive = clBtnShadow
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object CTE_SUB_CHAVE_NFE_SUBSTITUTO: TJvDBMaskEdit
                    Left = 11
                    Top = 25
                    Width = 350
                    Height = 21
                    TabStop = False
                    DataField = 'CTE_SUB_CHAVE_NFE_SUBSTITUTO'
                    DataSource = dtsDefault
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    EditMask = ''
                  end
                end
              end
              object Panel41: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 159
                Width = 499
                Height = 0
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
              end
            end
          end
        end
      end
    end
    object tabRodoviario: TTabSheet
      Caption = 'Rodovi'#225'rio'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvgGroupBox5: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 949
        Height = 505
        Align = alClient
        Caption = 'Gerais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 939
          Height = 54
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 34
            Height = 13
            Align = alTop
            Caption = 'RNTRC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object RODO_RNTRC: TJvDBMaskEdit
            Left = 3
            Top = 18
            Width = 142
            Height = 21
            TabStop = False
            DataField = 'RODO_RNTRC'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            EditMask = ''
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 79
          Width = 939
          Height = 421
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object JvgGroupBox6: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 933
            Height = 415
            Align = alClient
            Caption = 'Ordens de Coleta'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Panel20: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 377
              Width = 923
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object btnORDEMCOLETAexcluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 235
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Excluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001B2856664463
                  D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
                  0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
                  F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
                  D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
                  D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnORDEMCOLETAexcluirClick
              end
              object btnORDEMCOLETAincluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Confirma opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Incluir'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000097A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
                  76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnORDEMCOLETAincluirClick
              end
              object btnORDEMCOLETAeditar: TJvSpeedButton
                AlignWithMargins = True
                Left = 119
                Top = 3
                Width = 110
                Height = 27
                Hint = 'Cancela opera'#231#227'o atual'
                Align = alLeft
                Caption = 'Alterar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000003827174DB8824DFF3827174D00000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                  FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                  4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                  FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                  BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                  4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                  52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
                  0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
                  0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
                  83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Layout = blGlyphLeft
                OnClick = btnORDEMCOLETAeditarClick
              end
            end
            object Panel21: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 923
              Height = 352
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object JvDBGrid3: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 917
                Height = 346
                Align = alClient
                DataSource = dtstabCTE_ORDEM_COLETA
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                MultiSelect = True
                AlternateRowColor = clInactiveCaption
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID_SERIE'
                    Title.Caption = 'S'#233'rie'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO'
                    Title.Caption = 'N'#250'mero'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DT_EMISSAO'
                    Title.Caption = 'Data de Emiss'#227'o'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJ'
                    Title.Caption = 'CNPJ do Emitente'
                    Width = 160
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
    object tabObservacoes: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvgGroupBox4: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 337
        Width = 949
        Height = 171
        Align = alClient
        Caption = 'Observa'#231#245'es do Interesse do Fisco'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object OBSERVACOES_FISCO: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 939
          Height = 147
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'OBSERVACOES_FISCO'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 949
        Height = 161
        Align = alTop
        Caption = 'Observa'#231#245'es Gerais'
        TabOrder = 1
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object OBSERVACOES_GERAIS: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 939
          Height = 137
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'OBSERVACOES_GERAIS'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
      object JvgGroupBox10: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 170
        Width = 949
        Height = 161
        Align = alTop
        Caption = 'Observa'#231#245'es do Interesse do Contribuinte'
        TabOrder = 2
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object OBSERVACOES_CONTRIBUINTE: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 939
          Height = 137
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'OBSERVACOES_CONTRIBUINTE'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 585
    Width = 969
    ExplicitTop = 585
    ExplicitWidth = 969
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 613
    Top = 24
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmCTe.tabCTE
    Left = 814
    Top = 24
  end
  object dtsqryUF: TDataSource
    DataSet = dtmCTe.qryUF
    Left = 1112
    Top = 281
  end
  object qryMunicipioEmissao: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CIDADES.*'
      'FROM'
      '  CIDADES'
      'WHERE'
      '  ID_CIDADES_UF = :ID_CIDADES_UF'
      'ORDER BY'
      '  DESCRICAO'
      '')
    Left = 1008
    Top = 48
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object qryMunicipioEmissaoID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMunicipioEmissaoID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryMunicipioEmissaoID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object qryMunicipioEmissaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtsqryMunicipioEmissao: TDataSource
    DataSet = qryMunicipioEmissao
    Left = 1022
    Top = 65
  end
  object dtsqryNATUREZAS: TDataSource
    DataSet = dtmCTe.qryNATUREZAS
    Left = 1094
    Top = 257
  end
  object qryMunicipioInicioPrestacao: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CIDADES.*'
      'FROM'
      '  CIDADES'
      'WHERE'
      '  ID_CIDADES_UF = :ID_CIDADES_UF'
      'ORDER BY'
      '  DESCRICAO'
      '')
    Left = 1040
    Top = 112
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtsqryMunicipioInicioPrestacao: TDataSource
    DataSet = qryMunicipioInicioPrestacao
    Left = 1054
    Top = 129
  end
  object qryMunicipioTerminoPrestacao: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  CIDADES.*'
      'FROM'
      '  CIDADES'
      'WHERE'
      '  ID_CIDADES_UF = :ID_CIDADES_UF'
      'ORDER BY'
      '  DESCRICAO'
      '')
    Left = 1064
    Top = 184
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object IntegerField3: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtsqryMunicipioTerminoPrestacao: TDataSource
    DataSet = qryMunicipioTerminoPrestacao
    Left = 1078
    Top = 201
  end
  object dtsqryCTeEVENTOS: TDataSource
    DataSet = dtmCTe.qryCTeEVENTOS
    Left = 402
    Top = 461
  end
  object dtstabCTe_FLUXO_PASSAGENS: TDataSource
    DataSet = dtmCTe.tabCTE_FLUXO_PASSAGENS
    OnDataChange = dtstabCTe_FLUXO_PASSAGENSDataChange
    Left = 833
    Top = 49
  end
  object dtstabCTE_COMPONENTES: TDataSource
    DataSet = dtmCTe.tabCTE_COMPONENTES
    OnDataChange = dtstabCTE_COMPONENTESDataChange
    Left = 857
    Top = 73
  end
  object dtstabCTE_ORDEM_COLETA: TDataSource
    DataSet = dtmCTe.tabCTE_ORDEM_COLETA
    OnDataChange = dtstabCTE_ORDEM_COLETADataChange
    Left = 873
    Top = 97
  end
  object dtstbCTE_CARGA_QUANTIDADES: TDataSource
    DataSet = dtmCTe.tabCTE_CARGA_QUANTIDADES
    OnDataChange = dtstbCTE_CARGA_QUANTIDADESDataChange
    Left = 889
    Top = 121
  end
  object dtstabCTE_VEICULOS_NOVOS: TDataSource
    DataSet = dtmCTe.tabCTE_VEICULOS_NOVOS
    OnDataChange = dtstbCTE_CARGA_QUANTIDADESDataChange
    Left = 905
    Top = 145
  end
  object dtstabCTE_NFE: TDataSource
    DataSet = dtmCTe.tabCTE_NFE
    OnDataChange = dtstabCTE_NFEDataChange
    Left = 921
    Top = 169
  end
  object dtsqryPESSOA: TDataSource
    DataSet = dtmCTe.qryPESSOA
    Left = 1128
    Top = 305
  end
  object dtstabCTE_DOCANT: TDataSource
    DataSet = dtmCTe.tabCTE_DOCANT
    OnDataChange = dtstabCTE_DOCANTDataChange
    Left = 937
    Top = 185
  end
end
