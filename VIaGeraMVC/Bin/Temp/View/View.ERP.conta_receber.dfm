
object  Frm_ViewERPcontapagarparceiros : TFrm_ViewERPcontapagarparceiros
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPcontapagarparceiros'
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
        object Edit_id_empresa: TLabeledEdit       
          Left = 34              
          Top =  50              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_data_emissao: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_emissao'
          TabOrder = 0                        
        end                                   
        object Edit_data_pgto: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_pgto'
          TabOrder = 0                        
        end                                   
        object Edit_data_vencto: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_vencto'
          TabOrder = 0                        
        end                                   
        object Edit_documento: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'documento'
          TabOrder = 0                        
        end                                   
        object Edit_parcela: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'parcela'
          TabOrder = 0                        
        end                                   
        object Edit_nota: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nota'
          TabOrder = 0                        
        end                                   
        object Edit_id_pedido: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_pedido'
          TabOrder = 0                        
        end                                   
        object Edit_id_os: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_os'
          TabOrder = 0                        
        end                                   
        object Edit_id_cliente: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_nome_cliente: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_id_forma: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_forma'
          TabOrder = 0                        
        end                                   
        object Edit_id_cobrador: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cobrador'
          TabOrder = 0                        
        end                                   
        object Edit_id_vendedor: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_vendedor'
          TabOrder = 0                        
        end                                   
        object Edit_id_caixa: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_caixa'
          TabOrder = 0                        
        end                                   
        object Edit_id_conta: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_conta'
          TabOrder = 0                        
        end                                   
        object Edit_tx_juros: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tx_juros'
          TabOrder = 0                        
        end                                   
        object Edit_vl_juros: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_juros'
          TabOrder = 0                        
        end                                   
        object Edit_vl_total: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_total'
          TabOrder = 0                        
        end                                   
        object Edit_vl_desconto: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_vl_pago: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_pago'
          TabOrder = 0                        
        end                                   
        object Edit_vl_divida: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_divida'
          TabOrder = 0                        
        end                                   
        object Edit_vl_geral: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_geral'
          TabOrder = 0                        
        end                                   
        object Edit_vl_jurospago: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_jurospago'
          TabOrder = 0                        
        end                                   
        object Edit_situacao: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'situacao'
          TabOrder = 0                        
        end                                   
        object Edit_data_entrega_cobrador: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_entrega_cobrador'
          TabOrder = 0                        
        end                                   
        object Edit_data_prev_pgto: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_prev_pgto'
          TabOrder = 0                        
        end                                   
        object Edit_click: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'click'
          TabOrder = 0                        
        end                                   
        object Edit_id_credito: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_credito'
          TabOrder = 0                        
        end                                   
        object Edit_cupom: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cupom'
          TabOrder = 0                        
        end                                   
        object Edit_nova_conta: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nova_conta'
          TabOrder = 0                        
        end                                   
        object Edit_id_custodia: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_custodia'
          TabOrder = 0                        
        end                                   
        object Edit_id_usuario: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_usuario'
          TabOrder = 0                        
        end                                   
        object Edit_obs: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs'
          TabOrder = 0                        
        end                                   
        object Edit_desdobramento: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desdobramento'
          TabOrder = 0                        
        end                                   
        object Edit_ativo: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ativo'
          TabOrder = 0                        
        end                                   
        object Edit_arq_boleto: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'arq_boleto'
          TabOrder = 0                        
        end                                   
        object Edit_id_uniao: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_uniao'
          TabOrder = 0                        
        end                                   
        object Edit_id_locacao: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_locacao'
          TabOrder = 0                        
        end                                   
        object Edit_protesto: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'protesto'
          TabOrder = 0                        
        end                                   
        object Edit_data_protesto: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_protesto'
          TabOrder = 0                        
        end                                   
        object Edit_valor_protesto: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_protesto'
          TabOrder = 0                        
        end                                   
        object Edit_desativada: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desativada'
          TabOrder = 0                        
        end                                   
        object Edit_vl_apagar: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_apagar'
          TabOrder = 0                        
        end                                   
        object Edit_data_cobranca: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_cobranca'
          TabOrder = 0                        
        end                                   
        object Edit_contato_cobranca: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contato_cobranca'
          TabOrder = 0                        
        end                                   
        object Edit_id_cobrador_cobranca: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cobrador_cobranca'
          TabOrder = 0                        
        end                                   
        object Edit_id_usuario_desconto: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_usuario_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_usuario_desconto: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_usuario_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_taxa_bancaria: TLabeledEdit       
          Left = 524              
          Top =  540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'taxa_bancaria'
          TabOrder = 0                        
        end                                   
        object Edit_custodia: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custodia'
          TabOrder = 0                        
        end                                   
        object Edit_id_empresas_boleto: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_empresas_boleto'
          TabOrder = 0                        
        end                                   
        object Edit_id_movimento: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_movimento'
          TabOrder = 0                        
        end                                   
        object Edit_id_cupons: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cupons'
          TabOrder = 0                        
        end                                   
        object Edit_id_pagamentos: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_pagamentos'
          TabOrder = 0                        
        end                                   
        object Edit_identifica_carteira: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'identifica_carteira'
          TabOrder = 0                        
        end                                   
        object Edit_codigo_protesto: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'codigo_protesto'
          TabOrder = 0                        
        end                                   
        object Edit_dias_protesto: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dias_protesto'
          TabOrder = 0                        
        end                                   
        object Edit_nfe: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe'
          TabOrder = 0                        
        end                                   
        object Edit_usuario_click: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'usuario_click'
          TabOrder = 0                        
        end                                   
        object Edit_nfce: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce'
          TabOrder = 0                        
        end                                   
        object Edit_id_contacorrente: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_contacorrente'
          TabOrder = 0                        
        end                                   
        object Edit_id_dependente: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_dependente'
          TabOrder = 0                        
        end                                   
        object Edit_boleto_web: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'boleto_web'
          TabOrder = 0                        
        end                                   
        object Edit_excluido: TLabeledEdit       
          Left = 674              
          Top =  690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'excluido'
          TabOrder = 0                        
        end                                   
        object Edit_id_fixa: TLabeledEdit       
          Left = 684              
          Top =  700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_fixa'
          TabOrder = 0                        
        end                                   
        object Edit_enviar_email: TLabeledEdit       
          Left = 694              
          Top =  710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'enviar_email'
          TabOrder = 0                        
        end                                   
        object Edit_data_boleto_web: TLabeledEdit       
          Left = 704              
          Top =  720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_boleto_web'
          TabOrder = 0                        
        end                                   
        object Edit_ocorrencia_bancaria: TLabeledEdit       
          Left = 714              
          Top =  730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ocorrencia_bancaria'
          TabOrder = 0                        
        end                                   
        object Edit_id_cliser: TLabeledEdit       
          Left = 724              
          Top =  740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cliser'
          TabOrder = 0                        
        end                                   
        object Edit_filial: TLabeledEdit       
          Left = 734              
          Top =  750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'filial'
          TabOrder = 0                        
        end                                   
        object Edit_matriz: TLabeledEdit       
          Left = 744              
          Top =  760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'matriz'
          TabOrder = 0                        
        end                                   
        object Edit_multa: TLabeledEdit       
          Left = 754              
          Top =  770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'multa'
          TabOrder = 0                        
        end                                   
        object Edit_nosso_numero: TLabeledEdit       
          Left = 764              
          Top =  780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nosso_numero'
          TabOrder = 0                        
        end                                   
        object Edit_lancamento_credito_cliente: TLabeledEdit       
          Left = 774              
          Top =  790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'lancamento_credito_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_multa: TLabeledEdit       
          Left = 784              
          Top =  800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_multa'
          TabOrder = 0                        
        end                                   
        object Edit_vl_multa_paga: TLabeledEdit       
          Left = 794              
          Top =  810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_multa_paga'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
