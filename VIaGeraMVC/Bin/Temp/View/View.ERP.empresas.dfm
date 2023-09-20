
object  Frm_ViewERPefd : TFrm_ViewERPefd
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPefd'
  ClientHeight = 507                          
  ClientWidth = 1034                          
  Color = clBtnFace                           
  Font.Charset = DEFAULT_CHARSET              
  Font.Color = clWindowText                   
  Font.Height = -11                           
  Font.Name = 'Tahoma'                      
  Font.Style = []                             
  OldCreateOrder = False                      
  PixelsPerInch = 96                          
  TextHeight = 13                             
  object Panel1: TPanel                       
    Left = 0                                  
    Top = 0                                   
    Width = 1034                              
    Height = 41                               
    Align = alTop                             
    TabOrder = 0                              
    object bbIncluir: TSpeedButton            
      Left = 1                                
      Top = 1                                 
      Width = 121                             
      Height = 39                             
      Align = alLeft                          
      Caption = 'Incluir'                   
      ExplicitLeft = 282                      
      ExplicitTop = 0                         
    end                                       
    object bbAlterar: TSpeedButton            
      Left = 122                              
      Top = 1                                 
      Width = 121                             
      Height = 39                             
      Align = alLeft                          
      Caption = 'Altear'                    
      ExplicitLeft = 241                      
      ExplicitTop = 2                         
    end                                       
    object bbExcluir: TSpeedButton            
      Left = 243                              
      Top = 1                                 
      Width = 121                             
      Height = 39                             
      Align = alLeft                          
      Caption = 'Excluir'                   
      ExplicitLeft = 417                      
      ExplicitTop = 0                         
    end                                       
    object BBCancelar: TSpeedButton           
      Left = 364                              
      Top = 1                                 
      Width = 121                             
      Height = 39                             
      Align = alLeft                          
      Caption = 'Cancelar'                  
      ExplicitLeft = 491                      
      ExplicitTop = 2                         
    end                                       
    object BBConfirmar: TSpeedButton          
      Left = 485                              
      Top = 1                                 
      Width = 121                             
      Height = 39                             
      Align = alLeft                          
      Caption = 'Confirmar'                 
      ExplicitLeft = 628                      
      ExplicitTop = 2                         
    end                                       
  end                                         
  object PCMain: TPageControl                 
    Left = 0                                  
    Top = 41                                  
    Width = 1034                              
    Height = 466                              
    ActivePage = TSLista                      
    Align = alClient                          
    TabOrder = 1                              
    ExplicitLeft = 136                        
    ExplicitTop = 88                          
    ExplicitWidth = 289                       
    ExplicitHeight = 193                      
    object TSLista: TTabSheet                 
      Caption = 'Lista'                     
      ExplicitWidth = 281                     
      ExplicitHeight = 165                    
      object StringGrid1: TStringGrid         
        Left = 0                              
        Top = 0                               
        Width = 1026                          
        Height = 438                          
        Align = alClient                      
        TabOrder = 0                          
        ExplicitLeft = 40                     
        ExplicitTop = 48                      
        ExplicitWidth = 320                   
        ExplicitHeight = 120                  
      end                                     
    end                                       
    object TSDados: TTabSheet                 
      Caption = 'Dados'                     
      ImageIndex = 1                          
      ExplicitLeft = 1                        
      object Panel2: TPanel                   
        Left = 0                              
        Top = 0                               
        Width = 1026                          
        Height = 438                          
        Align = alClient                      
        TabOrder = 0                          
        ExplicitLeft = 120                    
        ExplicitTop = 120                     
        ExplicitWidth = 185                   
        ExplicitHeight = 41                   
  object ScrollBox1: TScrollBox      
    Left = 0                         
    Top = 41                         
    Width = 1034                     
    Height = 466                     
    Align = alClient                 
    TabOrder = 1                     
        object Edit_id: TLabeledEdit       
          Left = 24              
          Top =  40              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id'
          TabOrder = 0                        
        end                                   
        object Edit_nome: TLabeledEdit       
          Left = 34              
          Top =  50              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome'
          TabOrder = 0                        
        end                                   
        object Edit_endereco: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'endereco'
          TabOrder = 0                        
        end                                   
        object Edit_cnpj: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cnpj'
          TabOrder = 0                        
        end                                   
        object Edit_inscricao_estadual: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'inscricao_estadual'
          TabOrder = 0                        
        end                                   
        object Edit_fone1: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fone1'
          TabOrder = 0                        
        end                                   
        object Edit_fone2: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fone2'
          TabOrder = 0                        
        end                                   
        object Edit_fax: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fax'
          TabOrder = 0                        
        end                                   
        object Edit_bairro: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bairro'
          TabOrder = 0                        
        end                                   
        object Edit_id_cidade: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cidade'
          TabOrder = 0                        
        end                                   
        object Edit_uf: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf'
          TabOrder = 0                        
        end                                   
        object Edit_representante_legal: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'representante_legal'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_empresa: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_hostname: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hostname'
          TabOrder = 0                        
        end                                   
        object Edit_database: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'database'
          TabOrder = 0                        
        end                                   
        object Edit_porta: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'porta'
          TabOrder = 0                        
        end                                   
        object Edit_usuariodbms: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'usuariodbms'
          TabOrder = 0                        
        end                                   
        object Edit_senhadbms: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'senhadbms'
          TabOrder = 0                        
        end                                   
        object Edit_data_cadastro: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_cadastro'
          TabOrder = 0                        
        end                                   
        object Edit_cta_vendas: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_vendas'
          TabOrder = 0                        
        end                                   
        object Edit_cta_compra: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_compra'
          TabOrder = 0                        
        end                                   
        object Edit_cta_recparcela: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_recparcela'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estparcela: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estparcela'
          TabOrder = 0                        
        end                                   
        object Edit_cta_pagparcela: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_pagparcela'
          TabOrder = 0                        
        end                                   
        object Edit_cta_depbancario: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_depbancario'
          TabOrder = 0                        
        end                                   
        object Edit_cta_emissaocheq: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_emissaocheq'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estcaixa: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estcaixa'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estbanco: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estbanco'
          TabOrder = 0                        
        end                                   
        object Edit_cta_jrorecebido: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_jrorecebido'
          TabOrder = 0                        
        end                                   
        object Edit_cta_jropago: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_jropago'
          TabOrder = 0                        
        end                                   
        object Edit_cta_descrecebido: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_descrecebido'
          TabOrder = 0                        
        end                                   
        object Edit_cta_descpago: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_descpago'
          TabOrder = 0                        
        end                                   
        object Edit_cta_devolvenda: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_devolvenda'
          TabOrder = 0                        
        end                                   
        object Edit_desc_rateio: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desc_rateio'
          TabOrder = 0                        
        end                                   
        object Edit_mensagem_promocional: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mensagem_promocional'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_duplicata: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_duplicata'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_recibo: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_recibo'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_nota: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_nota'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_itensnota: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_itensnota'
          TabOrder = 0                        
        end                                   
        object Edit_tam_pagnota: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_pagnota'
          TabOrder = 0                        
        end                                   
        object Edit_seq_nronota: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'seq_nronota'
          TabOrder = 0                        
        end                                   
        object Edit_imprime_nota: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imprime_nota'
          TabOrder = 0                        
        end                                   
        object Edit_imprime_vendedor: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imprime_vendedor'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_negativo: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_negativo'
          TabOrder = 0                        
        end                                   
        object Edit_texto_cobranca: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'texto_cobranca'
          TabOrder = 0                        
        end                                   
        object Edit_custo_operacional: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_operacional'
          TabOrder = 0                        
        end                                   
        object Edit_custo_financeiro: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_financeiro'
          TabOrder = 0                        
        end                                   
        object Edit_juro_dia: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'juro_dia'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_avista: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_avista'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_aprazo: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_aprazo'
          TabOrder = 0                        
        end                                   
        object Edit_click: TLabeledEdit       
          Left = 524              
          Top =  540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'click'
          TabOrder = 0                        
        end                                   
        object Edit_salto_nota: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_nota'
          TabOrder = 0                        
        end                                   
        object Edit_caminho_nota: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'caminho_nota'
          TabOrder = 0                        
        end                                   
        object Edit_cotacao: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cotacao'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_decrescente: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_decrescente'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_a1: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_a1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_a2: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_a2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_b1: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_b1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_b2: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_b2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_c1: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_c1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_c2: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_c2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_d1: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_d1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_d2: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_d2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_e1: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_e1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_f1: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_f1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_f2: TLabeledEdit       
          Left = 674              
          Top =  690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_f2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_g1: TLabeledEdit       
          Left = 684              
          Top =  700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_g1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_g2: TLabeledEdit       
          Left = 694              
          Top =  710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_g2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_h1: TLabeledEdit       
          Left = 704              
          Top =  720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_h1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_h2: TLabeledEdit       
          Left = 714              
          Top =  730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_h2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_i1: TLabeledEdit       
          Left = 724              
          Top =  740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_i1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_i2: TLabeledEdit       
          Left = 734              
          Top =  750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_i2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_j1: TLabeledEdit       
          Left = 744              
          Top =  760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_j1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_j2: TLabeledEdit       
          Left = 754              
          Top =  770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_j2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_l1: TLabeledEdit       
          Left = 764              
          Top =  780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_l1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_l2: TLabeledEdit       
          Left = 774              
          Top =  790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_l2'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_m1: TLabeledEdit       
          Left = 784              
          Top =  800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_m1'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_m2: TLabeledEdit       
          Left = 794              
          Top =  810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_m2'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_a: TLabeledEdit       
          Left = 804              
          Top =  820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_a'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_b: TLabeledEdit       
          Left = 814              
          Top =  830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_b'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_c: TLabeledEdit       
          Left = 824              
          Top =  840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_c'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_d: TLabeledEdit       
          Left = 834              
          Top =  850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_d'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_e: TLabeledEdit       
          Left = 844              
          Top =  860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_e'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_f: TLabeledEdit       
          Left = 854              
          Top =  870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_f'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_g: TLabeledEdit       
          Left = 864              
          Top =  880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_g'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_h: TLabeledEdit       
          Left = 874              
          Top =  890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_h'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_i: TLabeledEdit       
          Left = 884              
          Top =  900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_i'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_j: TLabeledEdit       
          Left = 894              
          Top =  910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_j'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_l: TLabeledEdit       
          Left = 904              
          Top =  920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_l'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_m: TLabeledEdit       
          Left = 914              
          Top =  930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_m'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo_e2: TLabeledEdit       
          Left = 924              
          Top =  940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo_e2'
          TabOrder = 0                        
        end                                   
        object Edit_salto_duplicata: TLabeledEdit       
          Left = 934              
          Top =  950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_duplicata'
          TabOrder = 0                        
        end                                   
        object Edit_imagem: TLabeledEdit       
          Left = 944              
          Top =  960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imagem'
          TabOrder = 0                        
        end                                   
        object Edit_arquivo_imagem: TLabeledEdit       
          Left = 954              
          Top =  970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'arquivo_imagem'
          TabOrder = 0                        
        end                                   
        object Edit_produto_conjugado: TLabeledEdit       
          Left = 964              
          Top =  980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_conjugado'
          TabOrder = 0                        
        end                                   
        object Edit_rateio_comissao: TLabeledEdit       
          Left = 974              
          Top =  990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rateio_comissao'
          TabOrder = 0                        
        end                                   
        object Edit_cta_vendas_aprazo: TLabeledEdit       
          Left = 984              
          Top =  1000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_vendas_aprazo'
          TabOrder = 0                        
        end                                   
        object Edit_formacao_preco: TLabeledEdit       
          Left = 994              
          Top =  1010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'formacao_preco'
          TabOrder = 0                        
        end                                   
        object Edit_nosso_numero: TLabeledEdit       
          Left = 1004              
          Top =  1020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nosso_numero'
          TabOrder = 0                        
        end                                   
        object Edit_identifica_cupom: TLabeledEdit       
          Left = 1014              
          Top =  1030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'identifica_cupom'
          TabOrder = 0                        
        end                                   
        object Edit_atividade: TLabeledEdit       
          Left = 1024              
          Top =  1040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'atividade'
          TabOrder = 0                        
        end                                   
        object Edit_venda_rapida: TLabeledEdit       
          Left = 1034              
          Top =  1050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda_rapida'
          TabOrder = 0                        
        end                                   
        object Edit_grade: TLabeledEdit       
          Left = 1044              
          Top =  1060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'grade'
          TabOrder = 0                        
        end                                   
        object Edit_data_analise: TLabeledEdit       
          Left = 1054              
          Top =  1070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_analise'
          TabOrder = 0                        
        end                                   
        object Edit_cta_suprimento: TLabeledEdit       
          Left = 1064              
          Top =  1080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_suprimento'
          TabOrder = 0                        
        end                                   
        object Edit_cta_sangria: TLabeledEdit       
          Left = 1074              
          Top =  1090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_sangria'
          TabOrder = 0                        
        end                                   
        object Edit_cta_os: TLabeledEdit       
          Left = 1084              
          Top =  1100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_os'
          TabOrder = 0                        
        end                                   
        object Edit_bancocodigo: TLabeledEdit       
          Left = 1094              
          Top =  1110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bancocodigo'
          TabOrder = 0                        
        end                                   
        object Edit_banconome: TLabeledEdit       
          Left = 1104              
          Top =  1120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'banconome'
          TabOrder = 0                        
        end                                   
        object Edit_cedentecodigo: TLabeledEdit       
          Left = 1114              
          Top =  1130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cedentecodigo'
          TabOrder = 0                        
        end                                   
        object Edit_cedentecodigodigito: TLabeledEdit       
          Left = 1124              
          Top =  1140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cedentecodigodigito'
          TabOrder = 0                        
        end                                   
        object Edit_carteira: TLabeledEdit       
          Left = 1134              
          Top =  1150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'carteira'
          TabOrder = 0                        
        end                                   
        object Edit_agenciacodigo: TLabeledEdit       
          Left = 1144              
          Top =  1160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'agenciacodigo'
          TabOrder = 0                        
        end                                   
        object Edit_agenciadigito: TLabeledEdit       
          Left = 1154              
          Top =  1170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'agenciadigito'
          TabOrder = 0                        
        end                                   
        object Edit_agencianome: TLabeledEdit       
          Left = 1164              
          Top =  1180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'agencianome'
          TabOrder = 0                        
        end                                   
        object Edit_contanumero: TLabeledEdit       
          Left = 1174              
          Top =  1190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contanumero'
          TabOrder = 0                        
        end                                   
        object Edit_contanumerodigito: TLabeledEdit       
          Left = 1184              
          Top =  1200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contanumerodigito'
          TabOrder = 0                        
        end                                   
        object Edit_proximonossonumero: TLabeledEdit       
          Left = 1194              
          Top =  1210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'proximonossonumero'
          TabOrder = 0                        
        end                                   
        object Edit_salto_etiqueta1: TLabeledEdit       
          Left = 1204              
          Top =  1220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_etiqueta1'
          TabOrder = 0                        
        end                                   
        object Edit_salto_etiqueta2: TLabeledEdit       
          Left = 1214              
          Top =  1230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_etiqueta2'
          TabOrder = 0                        
        end                                   
        object Edit_salto_etiqueta3: TLabeledEdit       
          Left = 1224              
          Top =  1240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_etiqueta3'
          TabOrder = 0                        
        end                                   
        object Edit_salto_etiqueta4: TLabeledEdit       
          Left = 1234              
          Top =  1250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_etiqueta4'
          TabOrder = 0                        
        end                                   
        object Edit_filtro_nome: TLabeledEdit       
          Left = 1244              
          Top =  1260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filtro_nome'
          TabOrder = 0                        
        end                                   
        object Edit_dir_sistema: TLabeledEdit       
          Left = 1254              
          Top =  1270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dir_sistema'
          TabOrder = 0                        
        end                                   
        object Edit_dir_banco: TLabeledEdit       
          Left = 1264              
          Top =  1280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dir_banco'
          TabOrder = 0                        
        end                                   
        object Edit_valorreceber_maior: TLabeledEdit       
          Left = 1274              
          Top =  1290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valorreceber_maior'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_devolucao: TLabeledEdit       
          Left = 1284              
          Top =  1300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_devolucao'
          TabOrder = 0                        
        end                                   
        object Edit_devolucao_financeiro: TLabeledEdit       
          Left = 1294              
          Top =  1310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'devolucao_financeiro'
          TabOrder = 0                        
        end                                   
        object Edit_vendedor_venda: TLabeledEdit       
          Left = 1304              
          Top =  1320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vendedor_venda'
          TabOrder = 0                        
        end                                   
        object Edit_instrucoes: TLabeledEdit       
          Left = 1314              
          Top =  1330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'instrucoes'
          TabOrder = 0                        
        end                                   
        object Edit_forma_boleto: TLabeledEdit       
          Left = 1324              
          Top =  1340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'forma_boleto'
          TabOrder = 0                        
        end                                   
        object Edit_cupom_automatico: TLabeledEdit       
          Left = 1334              
          Top =  1350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cupom_automatico'
          TabOrder = 0                        
        end                                   
        object Edit_simples: TLabeledEdit       
          Left = 1344              
          Top =  1360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples'
          TabOrder = 0                        
        end                                   
        object Edit_vl_enc_federal: TLabeledEdit       
          Left = 1354              
          Top =  1370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_enc_federal'
          TabOrder = 0                        
        end                                   
        object Edit_vl_enc_estadual: TLabeledEdit       
          Left = 1364              
          Top =  1380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_enc_estadual'
          TabOrder = 0                        
        end                                   
        object Edit_convenio: TLabeledEdit       
          Left = 1374              
          Top =  1390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'convenio'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_convenio: TLabeledEdit       
          Left = 1384              
          Top =  1400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_convenio'
          TabOrder = 0                        
        end                                   
        object Edit_dir_backup: TLabeledEdit       
          Left = 1394              
          Top =  1410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dir_backup'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_carne: TLabeledEdit       
          Left = 1404              
          Top =  1420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_carne'
          TabOrder = 0                        
        end                                   
        object Edit_iss: TLabeledEdit       
          Left = 1414              
          Top =  1430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'iss'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_itensnotaservico: TLabeledEdit       
          Left = 1424              
          Top =  1440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_itensnotaservico'
          TabOrder = 0                        
        end                                   
        object Edit_texto_aniversario: TLabeledEdit       
          Left = 1434              
          Top =  1450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'texto_aniversario'
          TabOrder = 0                        
        end                                   
        object Edit_ordemproc_produto: TLabeledEdit       
          Left = 1444              
          Top =  1460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ordemproc_produto'
          TabOrder = 0                        
        end                                   
        object Edit_extrato_produto: TLabeledEdit       
          Left = 1454              
          Top =  1470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'extrato_produto'
          TabOrder = 0                        
        end                                   
        object Edit_boleto: TLabeledEdit       
          Left = 1464              
          Top =  1480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'boleto'
          TabOrder = 0                        
        end                                   
        object Edit_salto_boleto: TLabeledEdit       
          Left = 1474              
          Top =  1490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_boleto'
          TabOrder = 0                        
        end                                   
        object Edit_cliente_coringa: TLabeledEdit       
          Left = 1484              
          Top =  1500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cliente_coringa'
          TabOrder = 0                        
        end                                   
        object Edit_mostra_conta: TLabeledEdit       
          Left = 1494              
          Top =  1510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mostra_conta'
          TabOrder = 0                        
        end                                   
        object Edit_numero: TLabeledEdit       
          Left = 1504              
          Top =  1520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'numero'
          TabOrder = 0                        
        end                                   
        object Edit_cep: TLabeledEdit       
          Left = 1514              
          Top =  1530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cep'
          TabOrder = 0                        
        end                                   
        object Edit_responsavel: TLabeledEdit       
          Left = 1524              
          Top =  1540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'responsavel'
          TabOrder = 0                        
        end                                   
        object Edit_st: TLabeledEdit       
          Left = 1534              
          Top =  1550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'st'
          TabOrder = 0                        
        end                                   
        object Edit_ipi: TLabeledEdit       
          Left = 1544              
          Top =  1560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi'
          TabOrder = 0                        
        end                                   
        object Edit_industria: TLabeledEdit       
          Left = 1554              
          Top =  1570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'industria'
          TabOrder = 0                        
        end                                   
        object Edit_locacao: TLabeledEdit       
          Left = 1564              
          Top =  1580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'locacao'
          TabOrder = 0                        
        end                                   
        object Edit_obs_orcamento: TLabeledEdit       
          Left = 1574              
          Top =  1590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_insc_mun: TLabeledEdit       
          Left = 1584              
          Top =  1600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'insc_mun'
          TabOrder = 0                        
        end                                   
        object Edit_nfe: TLabeledEdit       
          Left = 1594              
          Top =  1610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe'
          TabOrder = 0                        
        end                                   
        object Edit_supervisor: TLabeledEdit       
          Left = 1604              
          Top =  1620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'supervisor'
          TabOrder = 0                        
        end                                   
        object Edit_salto_etiqueta5: TLabeledEdit       
          Left = 1614              
          Top =  1630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_etiqueta5'
          TabOrder = 0                        
        end                                   
        object Edit_juro_carencia: TLabeledEdit       
          Left = 1624              
          Top =  1640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'juro_carencia'
          TabOrder = 0                        
        end                                   
        object Edit_baixa_simples: TLabeledEdit       
          Left = 1634              
          Top =  1650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'baixa_simples'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne1: TLabeledEdit       
          Left = 1644              
          Top =  1660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne1'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne2: TLabeledEdit       
          Left = 1654              
          Top =  1670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne2'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne3: TLabeledEdit       
          Left = 1664              
          Top =  1680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne3'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne4: TLabeledEdit       
          Left = 1674              
          Top =  1690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne4'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne5: TLabeledEdit       
          Left = 1684              
          Top =  1700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne5'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne6: TLabeledEdit       
          Left = 1694              
          Top =  1710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne6'
          TabOrder = 0                        
        end                                   
        object Edit_venda_maior: TLabeledEdit       
          Left = 1704              
          Top =  1720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda_maior'
          TabOrder = 0                        
        end                                   
        object Edit_substituto_tributario: TLabeledEdit       
          Left = 1714              
          Top =  1730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'substituto_tributario'
          TabOrder = 0                        
        end                                   
        object Edit_diretorio_fotos: TLabeledEdit       
          Left = 1724              
          Top =  1740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'diretorio_fotos'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne7: TLabeledEdit       
          Left = 1734              
          Top =  1750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne7'
          TabOrder = 0                        
        end                                   
        object Edit_obs_carne8: TLabeledEdit       
          Left = 1744              
          Top =  1760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_carne8'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_ficha: TLabeledEdit       
          Left = 1754              
          Top =  1770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_ficha'
          TabOrder = 0                        
        end                                   
        object Edit_pis: TLabeledEdit       
          Left = 1764              
          Top =  1780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pis'
          TabOrder = 0                        
        end                                   
        object Edit_cofins: TLabeledEdit       
          Left = 1774              
          Top =  1790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cofins'
          TabOrder = 0                        
        end                                   
        object Edit_ajusta_fatura: TLabeledEdit       
          Left = 1784              
          Top =  1800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ajusta_fatura'
          TabOrder = 0                        
        end                                   
        object Edit_simples_nacional: TLabeledEdit       
          Left = 1794              
          Top =  1810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples_nacional'
          TabOrder = 0                        
        end                                   
        object Edit_produto_consulta: TLabeledEdit       
          Left = 1804              
          Top =  1820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_consulta'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_orcamento: TLabeledEdit       
          Left = 1814              
          Top =  1830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_expedicao: TLabeledEdit       
          Left = 1824              
          Top =  1840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_expedicao'
          TabOrder = 0                        
        end                                   
        object Edit_dias_backup: TLabeledEdit       
          Left = 1834              
          Top =  1850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dias_backup'
          TabOrder = 0                        
        end                                   
        object Edit_imprime_notad1: TLabeledEdit       
          Left = 1844              
          Top =  1860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imprime_notad1'
          TabOrder = 0                        
        end                                   
        object Edit_farmacia_popular: TLabeledEdit       
          Left = 1854              
          Top =  1870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'farmacia_popular'
          TabOrder = 0                        
        end                                   
        object Edit_fpb: TLabeledEdit       
          Left = 1864              
          Top =  1880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fpb'
          TabOrder = 0                        
        end                                   
        object Edit_irpj: TLabeledEdit       
          Left = 1874              
          Top =  1890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'irpj'
          TabOrder = 0                        
        end                                   
        object Edit_cont_social: TLabeledEdit       
          Left = 1884              
          Top =  1900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cont_social'
          TabOrder = 0                        
        end                                   
        object Edit_casas_decimais: TLabeledEdit       
          Left = 1894              
          Top =  1910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'casas_decimais'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_desconto: TLabeledEdit       
          Left = 1904              
          Top =  1920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_custo_servico: TLabeledEdit       
          Left = 1914              
          Top =  1930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_servico'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_juro_venda: TLabeledEdit       
          Left = 1924              
          Top =  1940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_juro_venda'
          TabOrder = 0                        
        end                                   
        object Edit_bloqueio_automatico: TLabeledEdit       
          Left = 1934              
          Top =  1950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bloqueio_automatico'
          TabOrder = 0                        
        end                                   
        object Edit_controle_caixa: TLabeledEdit       
          Left = 1944              
          Top =  1960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controle_caixa'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_juro: TLabeledEdit       
          Left = 1954              
          Top =  1970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_juro'
          TabOrder = 0                        
        end                                   
        object Edit_aproveitamento_credito_atacado: TLabeledEdit       
          Left = 1964              
          Top =  1980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'aproveitamento_credito_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida: TLabeledEdit       
          Left = 1974              
          Top =  1990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida'
          TabOrder = 0                        
        end                                   
        object Edit_compras_red_fora: TLabeledEdit       
          Left = 1984              
          Top =  2000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'compras_red_fora'
          TabOrder = 0                        
        end                                   
        object Edit_compras_red_dentro: TLabeledEdit       
          Left = 1994              
          Top =  2010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'compras_red_dentro'
          TabOrder = 0                        
        end                                   
        object Edit_atacado: TLabeledEdit       
          Left = 2004              
          Top =  2020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'atacado'
          TabOrder = 0                        
        end                                   
        object Edit_aprazo: TLabeledEdit       
          Left = 2014              
          Top =  2030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'aprazo'
          TabOrder = 0                        
        end                                   
        object Edit_id_tabela_preco: TLabeledEdit       
          Left = 2024              
          Top =  2040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_tabela_preco'
          TabOrder = 0                        
        end                                   
        object Edit_multa: TLabeledEdit       
          Left = 2034              
          Top =  2050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'multa'
          TabOrder = 0                        
        end                                   
        object Edit_tributado: TLabeledEdit       
          Left = 2044              
          Top =  2060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tributado'
          TabOrder = 0                        
        end                                   
        object Edit_substituicao: TLabeledEdit       
          Left = 2054              
          Top =  2070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'substituicao'
          TabOrder = 0                        
        end                                   
        object Edit_isento: TLabeledEdit       
          Left = 2064              
          Top =  2080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'isento'
          TabOrder = 0                        
        end                                   
        object Edit_reducao: TLabeledEdit       
          Left = 2074              
          Top =  2090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'reducao'
          TabOrder = 0                        
        end                                   
        object Edit_credencial: TLabeledEdit       
          Left = 2084              
          Top =  2100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'credencial'
          TabOrder = 0                        
        end                                   
        object Edit_controleestoquevenda: TLabeledEdit       
          Left = 2094              
          Top =  2110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controleestoquevenda'
          TabOrder = 0                        
        end                                   
        object Edit_cta_transf_saida: TLabeledEdit       
          Left = 2104              
          Top =  2120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_transf_saida'
          TabOrder = 0                        
        end                                   
        object Edit_cta_transf_entrada: TLabeledEdit       
          Left = 2114              
          Top =  2130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_transf_entrada'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estorno_emissao_cheque: TLabeledEdit       
          Left = 2124              
          Top =  2140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estorno_emissao_cheque'
          TabOrder = 0                        
        end                                   
        object Edit_cta_custodia: TLabeledEdit       
          Left = 2134              
          Top =  2150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estorno_custodia: TLabeledEdit       
          Left = 2144              
          Top =  2160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estorno_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_cta_juros_custodia: TLabeledEdit       
          Left = 2154              
          Top =  2170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_juros_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estorno_juros_custodia: TLabeledEdit       
          Left = 2164              
          Top =  2180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estorno_juros_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estorno_pagamento: TLabeledEdit       
          Left = 2174              
          Top =  2190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estorno_pagamento'
          TabOrder = 0                        
        end                                   
        object Edit_cta_taxa_juros: TLabeledEdit       
          Left = 2184              
          Top =  2200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_taxa_juros'
          TabOrder = 0                        
        end                                   
        object Edit_razao_social: TLabeledEdit       
          Left = 2194              
          Top =  2210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'razao_social'
          TabOrder = 0                        
        end                                   
        object Edit_celular: TLabeledEdit       
          Left = 2204              
          Top =  2220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'celular'
          TabOrder = 0                        
        end                                   
        object Edit_contato: TLabeledEdit       
          Left = 2214              
          Top =  2230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contato'
          TabOrder = 0                        
        end                                   
        object Edit_parceiro: TLabeledEdit       
          Left = 2224              
          Top =  2240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'parceiro'
          TabOrder = 0                        
        end                                   
        object Edit_cta_recebimento_cartao: TLabeledEdit       
          Left = 2234              
          Top =  2250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_recebimento_cartao'
          TabOrder = 0                        
        end                                   
        object Edit_obs_promissoria: TLabeledEdit       
          Left = 2244              
          Top =  2260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_promissoria'
          TabOrder = 0                        
        end                                   
        object Edit_boleto_novo: TLabeledEdit       
          Left = 2254              
          Top =  2270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'boleto_novo'
          TabOrder = 0                        
        end                                   
        object Edit_modelo_contrato_locacao: TLabeledEdit       
          Left = 2264              
          Top =  2280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo_contrato_locacao'
          TabOrder = 0                        
        end                                   
        object Edit_elimina_zero: TLabeledEdit       
          Left = 2274              
          Top =  2290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'elimina_zero'
          TabOrder = 0                        
        end                                   
        object Edit_eliminar_digito_fabricante: TLabeledEdit       
          Left = 2284              
          Top =  2300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'eliminar_digito_fabricante'
          TabOrder = 0                        
        end                                   
        object Edit_cta_trocaproduto: TLabeledEdit       
          Left = 2294              
          Top =  2310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_trocaproduto'
          TabOrder = 0                        
        end                                   
        object Edit_forma_pgto_compras: TLabeledEdit       
          Left = 2304              
          Top =  2320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'forma_pgto_compras'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_tributado_interno: TLabeledEdit       
          Left = 2314              
          Top =  2330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_tributado_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_tributado_externo: TLabeledEdit       
          Left = 2324              
          Top =  2340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_tributado_externo'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_subst_interno: TLabeledEdit       
          Left = 2334              
          Top =  2350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_subst_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_subst_externo: TLabeledEdit       
          Left = 2344              
          Top =  2360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_subst_externo'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_naoincidencia_interno: TLabeledEdit       
          Left = 2354              
          Top =  2370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_naoincidencia_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_naoincidencia_externo: TLabeledEdit       
          Left = 2364              
          Top =  2380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_naoincidencia_externo'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_isento_interno: TLabeledEdit       
          Left = 2374              
          Top =  2390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_isento_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_isento_externo: TLabeledEdit       
          Left = 2384              
          Top =  2400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_isento_externo'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_tribpautafiscal_interno: TLabeledEdit       
          Left = 2394              
          Top =  2410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_tribpautafiscal_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_tribpautafiscal_externo: TLabeledEdit       
          Left = 2404              
          Top =  2420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_tribpautafiscal_externo'
          TabOrder = 0                        
        end                                   
        object Edit_parametro_troca: TLabeledEdit       
          Left = 2414              
          Top =  2430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'parametro_troca'
          TabOrder = 0                        
        end                                   
        object Edit_cliente_consumidor: TLabeledEdit       
          Left = 2424              
          Top =  2440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cliente_consumidor'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_devolucao_venda: TLabeledEdit       
          Left = 2434              
          Top =  2450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_devolucao_venda'
          TabOrder = 0                        
        end                                   
        object Edit_troca_nfe: TLabeledEdit       
          Left = 2444              
          Top =  2460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'troca_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_localizacao_orcamento: TLabeledEdit       
          Left = 2454              
          Top =  2470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'localizacao_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_produto_tributado: TLabeledEdit       
          Left = 2464              
          Top =  2480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_tributado'
          TabOrder = 0                        
        end                                   
        object Edit_produto_substituicao: TLabeledEdit       
          Left = 2474              
          Top =  2490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_substituicao'
          TabOrder = 0                        
        end                                   
        object Edit_produto_isento: TLabeledEdit       
          Left = 2484              
          Top =  2500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_isento'
          TabOrder = 0                        
        end                                   
        object Edit_produto_reducao: TLabeledEdit       
          Left = 2494              
          Top =  2510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_reducao'
          TabOrder = 0                        
        end                                   
        object Edit_hora_reducao_z: TLabeledEdit       
          Left = 2504              
          Top =  2520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hora_reducao_z'
          TabOrder = 0                        
        end                                   
        object Edit_buscar_ean_letra: TLabeledEdit       
          Left = 2514              
          Top =  2530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'buscar_ean_letra'
          TabOrder = 0                        
        end                                   
        object Edit_imprimir_cod_fabric_cupom: TLabeledEdit       
          Left = 2524              
          Top =  2540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imprimir_cod_fabric_cupom'
          TabOrder = 0                        
        end                                   
        object Edit_remessa_antigo: TLabeledEdit       
          Left = 2534              
          Top =  2550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'remessa_antigo'
          TabOrder = 0                        
        end                                   
        object Edit_caixa_baixa_simples: TLabeledEdit       
          Left = 2544              
          Top =  2560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'caixa_baixa_simples'
          TabOrder = 0                        
        end                                   
        object Edit_visualizacao_antecipada_locacao: TLabeledEdit       
          Left = 2554              
          Top =  2570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'visualizacao_antecipada_locacao'
          TabOrder = 0                        
        end                                   
        object Edit_antecipar_locacao: TLabeledEdit       
          Left = 2564              
          Top =  2580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'antecipar_locacao'
          TabOrder = 0                        
        end                                   
        object Edit_senha_usuario_quitar_contareceber: TLabeledEdit       
          Left = 2574              
          Top =  2590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'senha_usuario_quitar_contareceber'
          TabOrder = 0                        
        end                                   
        object Edit_conta_receber_sem_banco: TLabeledEdit       
          Left = 2584              
          Top =  2600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'conta_receber_sem_banco'
          TabOrder = 0                        
        end                                   
        object Edit_utilizar_caixa_exclusivo: TLabeledEdit       
          Left = 2594              
          Top =  2610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'utilizar_caixa_exclusivo'
          TabOrder = 0                        
        end                                   
        object Edit_caixa_exclusivo: TLabeledEdit       
          Left = 2604              
          Top =  2620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'caixa_exclusivo'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_entrada_compras: TLabeledEdit       
          Left = 2614              
          Top =  2630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_entrada_compras'
          TabOrder = 0                        
        end                                   
        object Edit_cta_insumos: TLabeledEdit       
          Left = 2624              
          Top =  2640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_insumos'
          TabOrder = 0                        
        end                                   
        object Edit_cta_almoxarifado: TLabeledEdit       
          Left = 2634              
          Top =  2650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_almoxarifado'
          TabOrder = 0                        
        end                                   
        object Edit_cta_pag_funcionario: TLabeledEdit       
          Left = 2644              
          Top =  2660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_pag_funcionario'
          TabOrder = 0                        
        end                                   
        object Edit_utilizar_controle_financeiro_comissao: TLabeledEdit       
          Left = 2654              
          Top =  2670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'utilizar_controle_financeiro_comissao'
          TabOrder = 0                        
        end                                   
        object Edit_cta_cheque_emitido: TLabeledEdit       
          Left = 2664              
          Top =  2680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_cheque_emitido'
          TabOrder = 0                        
        end                                   
        object Edit_controle_fabricante: TLabeledEdit       
          Left = 2674              
          Top =  2690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controle_fabricante'
          TabOrder = 0                        
        end                                   
        object Edit_desossa_aut: TLabeledEdit       
          Left = 2684              
          Top =  2700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desossa_aut'
          TabOrder = 0                        
        end                                   
        object Edit_movimento_food: TLabeledEdit       
          Left = 2694              
          Top =  2710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'movimento_food'
          TabOrder = 0                        
        end                                   
        object Edit_pesquisa_venda: TLabeledEdit       
          Left = 2704              
          Top =  2720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pesquisa_venda'
          TabOrder = 0                        
        end                                   
        object Edit_nfce: TLabeledEdit       
          Left = 2714              
          Top =  2730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce'
          TabOrder = 0                        
        end                                   
        object Edit_trabalha_nfce: TLabeledEdit       
          Left = 2724              
          Top =  2740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'trabalha_nfce'
          TabOrder = 0                        
        end                                   
        object Edit_tolerancia_ponto: TLabeledEdit       
          Left = 2734              
          Top =  2750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tolerancia_ponto'
          TabOrder = 0                        
        end                                   
        object Edit_venda: TLabeledEdit       
          Left = 2744              
          Top =  2760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda'
          TabOrder = 0                        
        end                                   
        object Edit_expedicao: TLabeledEdit       
          Left = 2754              
          Top =  2770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'expedicao'
          TabOrder = 0                        
        end                                   
        object Edit_romaneio: TLabeledEdit       
          Left = 2764              
          Top =  2780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'romaneio'
          TabOrder = 0                        
        end                                   
        object Edit_cotacaop: TLabeledEdit       
          Left = 2774              
          Top =  2790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cotacaop'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_venda_entrega_futura: TLabeledEdit       
          Left = 2784              
          Top =  2800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_venda_entrega_futura'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_entrega_futura: TLabeledEdit       
          Left = 2794              
          Top =  2810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_entrega_futura'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_entrega_fut_fora_estado: TLabeledEdit       
          Left = 2804              
          Top =  2820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_entrega_fut_fora_estado'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_venda_fut_fora_estado: TLabeledEdit       
          Left = 2814              
          Top =  2830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_venda_fut_fora_estado'
          TabOrder = 0                        
        end                                   
        object Edit_relatorio_gerencia_servico: TLabeledEdit       
          Left = 2824              
          Top =  2840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'relatorio_gerencia_servico'
          TabOrder = 0                        
        end                                   
        object Edit_pasta_xml: TLabeledEdit       
          Left = 2834              
          Top =  2850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pasta_xml'
          TabOrder = 0                        
        end                                   
        object Edit_imagem_fundo: TLabeledEdit       
          Left = 2844              
          Top =  2860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imagem_fundo'
          TabOrder = 0                        
        end                                   
        object Edit_pasta_nfe: TLabeledEdit       
          Left = 2854              
          Top =  2870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pasta_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_regime_especial_st: TLabeledEdit       
          Left = 2864              
          Top =  2880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'regime_especial_st'
          TabOrder = 0                        
        end                                   
        object Edit_confissao_divida: TLabeledEdit       
          Left = 2874              
          Top =  2890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'confissao_divida'
          TabOrder = 0                        
        end                                   
        object Edit_utiliza_duplicata_grande: TLabeledEdit       
          Left = 2884              
          Top =  2900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'utiliza_duplicata_grande'
          TabOrder = 0                        
        end                                   
        object Edit_controla_serial_celular: TLabeledEdit       
          Left = 2894              
          Top =  2910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controla_serial_celular'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_devolucao_compra_interestadual: TLabeledEdit       
          Left = 2904              
          Top =  2920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_devolucao_compra_interestadual'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_devolucao_venda_interestadual: TLabeledEdit       
          Left = 2914              
          Top =  2930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_devolucao_venda_interestadual'
          TabOrder = 0                        
        end                                   
        object Edit_nota_promissoria: TLabeledEdit       
          Left = 2924              
          Top =  2940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nota_promissoria'
          TabOrder = 0                        
        end                                   
        object Edit_explodir_kit: TLabeledEdit       
          Left = 2934              
          Top =  2950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'explodir_kit'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_subsequente: TLabeledEdit       
          Left = 2944              
          Top =  2960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_subsequente'
          TabOrder = 0                        
        end                                   
        object Edit_validar_fornecedor: TLabeledEdit       
          Left = 2954              
          Top =  2970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'validar_fornecedor'
          TabOrder = 0                        
        end                                   
        object Edit_os_sem_veiculo: TLabeledEdit       
          Left = 2964              
          Top =  2980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'os_sem_veiculo'
          TabOrder = 0                        
        end                                   
        object Edit_informar_cfop_saida: TLabeledEdit       
          Left = 2974              
          Top =  2990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'informar_cfop_saida'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_transferencia: TLabeledEdit       
          Left = 2984              
          Top =  3000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_transferencia'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_transferencia_interestadual: TLabeledEdit       
          Left = 2994              
          Top =  3010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_transferencia_interestadual'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_retorno_mercadoria: TLabeledEdit       
          Left = 3004              
          Top =  3020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_retorno_mercadoria'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_retorno_mercadoria_interestadual: TLabeledEdit       
          Left = 3014              
          Top =  3030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_retorno_mercadoria_interestadual'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_entrada_produto: TLabeledEdit       
          Left = 3024              
          Top =  3040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_entrada_produto'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_entrada_produto_interestadual: TLabeledEdit       
          Left = 3034              
          Top =  3050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_entrada_produto_interestadual'
          TabOrder = 0                        
        end                                   
        object Edit_validar_cliente: TLabeledEdit       
          Left = 3044              
          Top =  3060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'validar_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_imagem_tela_inicial: TLabeledEdit       
          Left = 3054              
          Top =  3070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'imagem_tela_inicial'
          TabOrder = 0                        
        end                                   
        object Edit_kit_baixar_filhos: TLabeledEdit       
          Left = 3064              
          Top =  3080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'kit_baixar_filhos'
          TabOrder = 0                        
        end                                   
        object Edit_padrao_central_custodia: TLabeledEdit       
          Left = 3074              
          Top =  3090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'padrao_central_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_balanca: TLabeledEdit       
          Left = 3084              
          Top =  3100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_balanca'
          TabOrder = 0                        
        end                                   
        object Edit_path_balanca: TLabeledEdit       
          Left = 3094              
          Top =  3110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'path_balanca'
          TabOrder = 0                        
        end                                   
        object Edit_filial_produtos: TLabeledEdit       
          Left = 3104              
          Top =  3120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filial_produtos'
          TabOrder = 0                        
        end                                   
        object Edit_filial_clientes: TLabeledEdit       
          Left = 3114              
          Top =  3130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filial_clientes'
          TabOrder = 0                        
        end                                   
        object Edit_filial_fornecedor: TLabeledEdit       
          Left = 3124              
          Top =  3140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filial_fornecedor'
          TabOrder = 0                        
        end                                   
        object Edit_host_matriz: TLabeledEdit       
          Left = 3134              
          Top =  3150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'host_matriz'
          TabOrder = 0                        
        end                                   
        object Edit_faturar_aluguel_locacao: TLabeledEdit       
          Left = 3144              
          Top =  3160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'faturar_aluguel_locacao'
          TabOrder = 0                        
        end                                   
        object Edit_cta_imposto_sindicato: TLabeledEdit       
          Left = 3154              
          Top =  3170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_imposto_sindicato'
          TabOrder = 0                        
        end                                   
        object Edit_cta_imposto_inss: TLabeledEdit       
          Left = 3164              
          Top =  3180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_imposto_inss'
          TabOrder = 0                        
        end                                   
        object Edit_lancamento_inss_sindicato: TLabeledEdit       
          Left = 3174              
          Top =  3190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'lancamento_inss_sindicato'
          TabOrder = 0                        
        end                                   
        object Edit_parceiro_conta_pagar: TLabeledEdit       
          Left = 3184              
          Top =  3200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'parceiro_conta_pagar'
          TabOrder = 0                        
        end                                   
        object Edit_troco_troca: TLabeledEdit       
          Left = 3194              
          Top =  3210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'troco_troca'
          TabOrder = 0                        
        end                                   
        object Edit_movimentacao_data_saida: TLabeledEdit       
          Left = 3204              
          Top =  3220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'movimentacao_data_saida'
          TabOrder = 0                        
        end                                   
        object Edit_salto_orcamento: TLabeledEdit       
          Left = 3214              
          Top =  3230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salto_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_senhas_criptografadas: TLabeledEdit       
          Left = 3224              
          Top =  3240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'senhas_criptografadas'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_produtos_orcamento: TLabeledEdit       
          Left = 3234              
          Top =  3250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_produtos_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_servico_orcamento: TLabeledEdit       
          Left = 3244              
          Top =  3260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_servico_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_numero_pag_orcamento: TLabeledEdit       
          Left = 3254              
          Top =  3270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'numero_pag_orcamento'
          TabOrder = 0                        
        end                                   
        object Edit_icms2016: TLabeledEdit       
          Left = 3264              
          Top =  3280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms2016'
          TabOrder = 0                        
        end                                   
        object Edit_plano_conta_13digitos: TLabeledEdit       
          Left = 3274              
          Top =  3290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'plano_conta_13digitos'
          TabOrder = 0                        
        end                                   
        object Edit_consulta_produto_especifico: TLabeledEdit       
          Left = 3284              
          Top =  3300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'consulta_produto_especifico'
          TabOrder = 0                        
        end                                   
        object Edit_reducao_nfe: TLabeledEdit       
          Left = 3294              
          Top =  3310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'reducao_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_informa_venda_em_aberto: TLabeledEdit       
          Left = 3304              
          Top =  3320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'informa_venda_em_aberto'
          TabOrder = 0                        
        end                                   
        object Edit_conversao_sped_simples_nacional: TLabeledEdit       
          Left = 3314              
          Top =  3330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'conversao_sped_simples_nacional'
          TabOrder = 0                        
        end                                   
        object Edit_visualizar_vendas: TLabeledEdit       
          Left = 3324              
          Top =  3340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'visualizar_vendas'
          TabOrder = 0                        
        end                                   
        object Edit_acrescimo_frete: TLabeledEdit       
          Left = 3334              
          Top =  3350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'acrescimo_frete'
          TabOrder = 0                        
        end                                   
        object Edit_pasta_retorno: TLabeledEdit       
          Left = 3344              
          Top =  3360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pasta_retorno'
          TabOrder = 0                        
        end                                   
        object Edit_data_hora_nfe: TLabeledEdit       
          Left = 3354              
          Top =  3370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_hora_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_email_nfe: TLabeledEdit       
          Left = 3364              
          Top =  3380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'email_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_motorista: TLabeledEdit       
          Left = 3374              
          Top =  3390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'motorista'
          TabOrder = 0                        
        end                                   
        object Edit_orcamento_peso_bruto: TLabeledEdit       
          Left = 3384              
          Top =  3400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'orcamento_peso_bruto'
          TabOrder = 0                        
        end                                   
        object Edit_mensagem_carne: TLabeledEdit       
          Left = 3394              
          Top =  3410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mensagem_carne'
          TabOrder = 0                        
        end                                   
        object Edit_banco_contas_fixas: TLabeledEdit       
          Left = 3404              
          Top =  3420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'banco_contas_fixas'
          TabOrder = 0                        
        end                                   
        object Edit_cpf: TLabeledEdit       
          Left = 3414              
          Top =  3430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cpf'
          TabOrder = 0                        
        end                                   
        object Edit_juros_mes: TLabeledEdit       
          Left = 3424              
          Top =  3440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'juros_mes'
          TabOrder = 0                        
        end                                   
        object Edit_cidade: TLabeledEdit       
          Left = 3434              
          Top =  3450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cidade'
          TabOrder = 0                        
        end                                   
        object Edit_cte: TLabeledEdit       
          Left = 3444              
          Top =  3460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cte'
          TabOrder = 0                        
        end                                   
        object Edit_simples_subst: TLabeledEdit       
          Left = 3454              
          Top =  3470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples_subst'
          TabOrder = 0                        
        end                                   
        object Edit_cta_contas_fixas: TLabeledEdit       
          Left = 3464              
          Top =  3480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_contas_fixas'
          TabOrder = 0                        
        end                                   
        object Edit_seq_lote: TLabeledEdit       
          Left = 3474              
          Top =  3490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'seq_lote'
          TabOrder = 0                        
        end                                   
        object Edit_numero_filial: TLabeledEdit       
          Left = 3484              
          Top =  3500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'numero_filial'
          TabOrder = 0                        
        end                                   
        object Edit_data_base_matriz: TLabeledEdit       
          Left = 3494              
          Top =  3510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_base_matriz'
          TabOrder = 0                        
        end                                   
        object Edit_filial_documentos: TLabeledEdit       
          Left = 3504              
          Top =  3520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filial_documentos'
          TabOrder = 0                        
        end                                   
        object Edit_cta_vendacredito_cliente: TLabeledEdit       
          Left = 3514              
          Top =  3530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_vendacredito_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_cta_geracaocredito_cliente: TLabeledEdit       
          Left = 3524              
          Top =  3540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_geracaocredito_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_cta_recebimento_duplicata_credito_cliente: TLabeledEdit       
          Left = 3534              
          Top =  3550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_recebimento_duplicata_credito_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_cta_estorno_credito_cliente: TLabeledEdit       
          Left = 3544              
          Top =  3560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cta_estorno_credito_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_timezone: TLabeledEdit       
          Left = 3554              
          Top =  3570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'timezone'
          TabOrder = 0                        
        end                                   
        object Edit_timezone_utc: TLabeledEdit       
          Left = 3564              
          Top =  3580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'timezone_utc'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
