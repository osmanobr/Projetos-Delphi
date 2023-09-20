
object  Frm_ViewERPveiculostransporte : TFrm_ViewERPveiculostransporte
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPveiculostransporte'
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
        object Edit_nota: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nota'
          TabOrder = 0                        
        end                                   
        object Edit_cupom: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cupom'
          TabOrder = 0                        
        end                                   
        object Edit_data_emissao: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_emissao'
          TabOrder = 0                        
        end                                   
        object Edit_hora: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hora'
          TabOrder = 0                        
        end                                   
        object Edit_data_saida: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_saida'
          TabOrder = 0                        
        end                                   
        object Edit_gerado: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'gerado'
          TabOrder = 0                        
        end                                   
        object Edit_id_cliente: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_nome_cliente: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_id_vendedor: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_vendedor'
          TabOrder = 0                        
        end                                   
        object Edit_id_forma: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_forma'
          TabOrder = 0                        
        end                                   
        object Edit_id_conta: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_conta'
          TabOrder = 0                        
        end                                   
        object Edit_id_caixa: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_caixa'
          TabOrder = 0                        
        end                                   
        object Edit_id_transportadora: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_transportadora'
          TabOrder = 0                        
        end                                   
        object Edit_id_funcionario: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_funcionario'
          TabOrder = 0                        
        end                                   
        object Edit_id_credito: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_credito'
          TabOrder = 0                        
        end                                   
        object Edit_vl_produto: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_produto'
          TabOrder = 0                        
        end                                   
        object Edit_vl_servico: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_servico'
          TabOrder = 0                        
        end                                   
        object Edit_vl_desconto: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_vl_frete: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_frete'
          TabOrder = 0                        
        end                                   
        object Edit_vl_seguro: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_seguro'
          TabOrder = 0                        
        end                                   
        object Edit_vl_outras: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_outras'
          TabOrder = 0                        
        end                                   
        object Edit_vl_pago: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_pago'
          TabOrder = 0                        
        end                                   
        object Edit_vl_troco: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_troco'
          TabOrder = 0                        
        end                                   
        object Edit_vl_total: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_total'
          TabOrder = 0                        
        end                                   
        object Edit_vl_icms: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_icms'
          TabOrder = 0                        
        end                                   
        object Edit_base_icms: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'base_icms'
          TabOrder = 0                        
        end                                   
        object Edit_base_ipi: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'base_ipi'
          TabOrder = 0                        
        end                                   
        object Edit_base_substituicao: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'base_substituicao'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_itens: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_itens'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_desconto: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_peso_bruto: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'peso_bruto'
          TabOrder = 0                        
        end                                   
        object Edit_peso_liquido: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'peso_liquido'
          TabOrder = 0                        
        end                                   
        object Edit_id_cfop: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cfop'
          TabOrder = 0                        
        end                                   
        object Edit_rateio: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rateio'
          TabOrder = 0                        
        end                                   
        object Edit_duplicatacheque: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'duplicatacheque'
          TabOrder = 0                        
        end                                   
        object Edit_parcelas: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'parcelas'
          TabOrder = 0                        
        end                                   
        object Edit_vl_juros: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_juros'
          TabOrder = 0                        
        end                                   
        object Edit_comentrada: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comentrada'
          TabOrder = 0                        
        end                                   
        object Edit_intervalo: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'intervalo'
          TabOrder = 0                        
        end                                   
        object Edit_dia: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dia'
          TabOrder = 0                        
        end                                   
        object Edit_cotacao: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cotacao'
          TabOrder = 0                        
        end                                   
        object Edit_id_usuario_desconto: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_usuario_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_usuario_desconto: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_usuario_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_id_rota: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_rota'
          TabOrder = 0                        
        end                                   
        object Edit_id_tabela_preco: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_tabela_preco'
          TabOrder = 0                        
        end                                   
        object Edit_obs: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs'
          TabOrder = 0                        
        end                                   
        object Edit_juros: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'juros'
          TabOrder = 0                        
        end                                   
        object Edit_click: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'click'
          TabOrder = 0                        
        end                                   
        object Edit_placa: TLabeledEdit       
          Left = 524              
          Top =  540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'placa'
          TabOrder = 0                        
        end                                   
        object Edit_id_usuario: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_usuario'
          TabOrder = 0                        
        end                                   
        object Edit_motorista: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'motorista'
          TabOrder = 0                        
        end                                   
        object Edit_uso: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uso'
          TabOrder = 0                        
        end                                   
        object Edit_devolucao: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'devolucao'
          TabOrder = 0                        
        end                                   
        object Edit_cancelada: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cancelada'
          TabOrder = 0                        
        end                                   
        object Edit_expedicao: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'expedicao'
          TabOrder = 0                        
        end                                   
        object Edit_id_carga: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_carga'
          TabOrder = 0                        
        end                                   
        object Edit_vl_iss: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_iss'
          TabOrder = 0                        
        end                                   
        object Edit_id_palm: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_palm'
          TabOrder = 0                        
        end                                   
        object Edit_id_coringa: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_coringa'
          TabOrder = 0                        
        end                                   
        object Edit_entregafutura: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'entregafutura'
          TabOrder = 0                        
        end                                   
        object Edit_id_supervisor: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_supervisor'
          TabOrder = 0                        
        end                                   
        object Edit_nfe: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe'
          TabOrder = 0                        
        end                                   
        object Edit_nfe_chave: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe_chave'
          TabOrder = 0                        
        end                                   
        object Edit_volume_quantidade: TLabeledEdit       
          Left = 674              
          Top =  690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'volume_quantidade'
          TabOrder = 0                        
        end                                   
        object Edit_volume_numero: TLabeledEdit       
          Left = 684              
          Top =  700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'volume_numero'
          TabOrder = 0                        
        end                                   
        object Edit_especie: TLabeledEdit       
          Left = 694              
          Top =  710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'especie'
          TabOrder = 0                        
        end                                   
        object Edit_vl_icmsst: TLabeledEdit       
          Left = 704              
          Top =  720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_icmsst'
          TabOrder = 0                        
        end                                   
        object Edit_vl_devolucao: TLabeledEdit       
          Left = 714              
          Top =  730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_devolucao'
          TabOrder = 0                        
        end                                   
        object Edit_nfe_protocolo: TLabeledEdit       
          Left = 724              
          Top =  740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe_protocolo'
          TabOrder = 0                        
        end                                   
        object Edit_bonificacao: TLabeledEdit       
          Left = 734              
          Top =  750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bonificacao'
          TabOrder = 0                        
        end                                   
        object Edit_frete: TLabeledEdit       
          Left = 744              
          Top =  760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'frete'
          TabOrder = 0                        
        end                                   
        object Edit_serie: TLabeledEdit       
          Left = 754              
          Top =  770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'serie'
          TabOrder = 0                        
        end                                   
        object Edit_nf_manual: TLabeledEdit       
          Left = 764              
          Top =  780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nf_manual'
          TabOrder = 0                        
        end                                   
        object Edit_servidor: TLabeledEdit       
          Left = 774              
          Top =  790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'servidor'
          TabOrder = 0                        
        end                                   
        object Edit_fabricacao: TLabeledEdit       
          Left = 784              
          Top =  800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fabricacao'
          TabOrder = 0                        
        end                                   
        object Edit_pis: TLabeledEdit       
          Left = 794              
          Top =  810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pis'
          TabOrder = 0                        
        end                                   
        object Edit_cofins: TLabeledEdit       
          Left = 804              
          Top =  820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cofins'
          TabOrder = 0                        
        end                                   
        object Edit_id_prescritor: TLabeledEdit       
          Left = 814              
          Top =  830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_prescritor'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_receituario: TLabeledEdit       
          Left = 824              
          Top =  840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_receituario'
          TabOrder = 0                        
        end                                   
        object Edit_notificacao: TLabeledEdit       
          Left = 834              
          Top =  850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'notificacao'
          TabOrder = 0                        
        end                                   
        object Edit_fpb: TLabeledEdit       
          Left = 844              
          Top =  860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fpb'
          TabOrder = 0                        
        end                                   
        object Edit_fpb_parcela_ms: TLabeledEdit       
          Left = 854              
          Top =  870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fpb_parcela_ms'
          TabOrder = 0                        
        end                                   
        object Edit_vl_custo_prod: TLabeledEdit       
          Left = 864              
          Top =  880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_custo_prod'
          TabOrder = 0                        
        end                                   
        object Edit_vl_custo_serv: TLabeledEdit       
          Left = 874              
          Top =  890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_custo_serv'
          TabOrder = 0                        
        end                                   
        object Edit_produtor_ativo: TLabeledEdit       
          Left = 884              
          Top =  900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produtor_ativo'
          TabOrder = 0                        
        end                                   
        object Edit_nfe_placa: TLabeledEdit       
          Left = 894              
          Top =  910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe_placa'
          TabOrder = 0                        
        end                                   
        object Edit_reativacao: TLabeledEdit       
          Left = 904              
          Top =  920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'reativacao'
          TabOrder = 0                        
        end                                   
        object Edit_venda_bloqueada: TLabeledEdit       
          Left = 914              
          Top =  930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda_bloqueada'
          TabOrder = 0                        
        end                                   
        object Edit_codigo_liberacao: TLabeledEdit       
          Left = 924              
          Top =  940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'codigo_liberacao'
          TabOrder = 0                        
        end                                   
        object Edit_id_uniao: TLabeledEdit       
          Left = 934              
          Top =  950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_uniao'
          TabOrder = 0                        
        end                                   
        object Edit_data_saidanf: TLabeledEdit       
          Left = 944              
          Top =  960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_saidanf'
          TabOrder = 0                        
        end                                   
        object Edit_hora_saidanf: TLabeledEdit       
          Left = 954              
          Top =  970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hora_saidanf'
          TabOrder = 0                        
        end                                   
        object Edit_id_movimento: TLabeledEdit       
          Left = 964              
          Top =  980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_movimento'
          TabOrder = 0                        
        end                                   
        object Edit_id_cupons: TLabeledEdit       
          Left = 974              
          Top =  990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cupons'
          TabOrder = 0                        
        end                                   
        object Edit_bc_st: TLabeledEdit       
          Left = 984              
          Top =  1000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bc_st'
          TabOrder = 0                        
        end                                   
        object Edit_romaneio: TLabeledEdit       
          Left = 994              
          Top =  1010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'romaneio'
          TabOrder = 0                        
        end                                   
        object Edit_ecf: TLabeledEdit       
          Left = 1004              
          Top =  1020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ecf'
          TabOrder = 0                        
        end                                   
        object Edit_nfce: TLabeledEdit       
          Left = 1014              
          Top =  1030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce'
          TabOrder = 0                        
        end                                   
        object Edit_nfce_chave: TLabeledEdit       
          Left = 1024              
          Top =  1040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce_chave'
          TabOrder = 0                        
        end                                   
        object Edit_nfce_protocolo: TLabeledEdit       
          Left = 1034              
          Top =  1050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce_protocolo'
          TabOrder = 0                        
        end                                   
        object Edit_vl_custo: TLabeledEdit       
          Left = 1044              
          Top =  1060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_custo'
          TabOrder = 0                        
        end                                   
        object Edit_pedido_alm: TLabeledEdit       
          Left = 1054              
          Top =  1070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pedido_alm'
          TabOrder = 0                        
        end                                   
        object Edit_id_obra: TLabeledEdit       
          Left = 1064              
          Top =  1080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_obra'
          TabOrder = 0                        
        end                                   
        object Edit_id_estimativa: TLabeledEdit       
          Left = 1074              
          Top =  1090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_estimativa'
          TabOrder = 0                        
        end                                   
        object Edit_id_motorista: TLabeledEdit       
          Left = 1084              
          Top =  1100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_motorista'
          TabOrder = 0                        
        end                                   
        object Edit_id_veiculo: TLabeledEdit       
          Left = 1094              
          Top =  1110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_veiculo'
          TabOrder = 0                        
        end                                   
        object Edit_id_pedido_carregamento: TLabeledEdit       
          Left = 1104              
          Top =  1120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_pedido_carregamento'
          TabOrder = 0                        
        end                                   
        object Edit_id_funcionario_faturista: TLabeledEdit       
          Left = 1114              
          Top =  1130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_funcionario_faturista'
          TabOrder = 0                        
        end                                   
        object Edit_id_funcionario_producao: TLabeledEdit       
          Left = 1124              
          Top =  1140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_funcionario_producao'
          TabOrder = 0                        
        end                                   
        object Edit_descartaveis: TLabeledEdit       
          Left = 1134              
          Top =  1150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'descartaveis'
          TabOrder = 0                        
        end                                   
        object Edit_nfce_chave_cnt: TLabeledEdit       
          Left = 1144              
          Top =  1160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce_chave_cnt'
          TabOrder = 0                        
        end                                   
        object Edit_id_os: TLabeledEdit       
          Left = 1154              
          Top =  1170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_os'
          TabOrder = 0                        
        end                                   
        object Edit_nfe_protocolo_cancelada: TLabeledEdit       
          Left = 1164              
          Top =  1180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfe_protocolo_cancelada'
          TabOrder = 0                        
        end                                   
        object Edit_busca: TLabeledEdit       
          Left = 1174              
          Top =  1190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'busca'
          TabOrder = 0                        
        end                                   
        object Edit_troca: TLabeledEdit       
          Left = 1184              
          Top =  1200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'troca'
          TabOrder = 0                        
        end                                   
        object Edit_id_responsavel_tecnico: TLabeledEdit       
          Left = 1194              
          Top =  1210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_responsavel_tecnico'
          TabOrder = 0                        
        end                                   
        object Edit_nf_uniao: TLabeledEdit       
          Left = 1204              
          Top =  1220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nf_uniao'
          TabOrder = 0                        
        end                                   
        object Edit_nfce_protocolo_cancelada: TLabeledEdit       
          Left = 1214              
          Top =  1230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nfce_protocolo_cancelada'
          TabOrder = 0                        
        end                                   
        object Edit_vl_acrescimo: TLabeledEdit       
          Left = 1224              
          Top =  1240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_acrescimo'
          TabOrder = 0                        
        end                                   
        object Edit_id_contacorrente: TLabeledEdit       
          Left = 1234              
          Top =  1250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_contacorrente'
          TabOrder = 0                        
        end                                   
        object Edit_impri_orca: TLabeledEdit       
          Left = 1244              
          Top =  1260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'impri_orca'
          TabOrder = 0                        
        end                                   
        object Edit_nf_denegada: TLabeledEdit       
          Left = 1254              
          Top =  1270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nf_denegada'
          TabOrder = 0                        
        end                                   
        object Edit_num_pedido_compra: TLabeledEdit       
          Left = 1264              
          Top =  1280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'num_pedido_compra'
          TabOrder = 0                        
        end                                   
        object Edit_data_cancelamento: TLabeledEdit       
          Left = 1274              
          Top =  1290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_cancelamento'
          TabOrder = 0                        
        end                                   
        object Edit_id_usuario_cancelamento: TLabeledEdit       
          Left = 1284              
          Top =  1300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_usuario_cancelamento'
          TabOrder = 0                        
        end                                   
        object Edit_uniao: TLabeledEdit       
          Left = 1294              
          Top =  1310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uniao'
          TabOrder = 0                        
        end                                   
        object Edit_data_protocolo_nfe: TLabeledEdit       
          Left = 1304              
          Top =  1320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_protocolo_nfe'
          TabOrder = 0                        
        end                                   
        object Edit_id_cliente_inscricao_estadual: TLabeledEdit       
          Left = 1314              
          Top =  1330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cliente_inscricao_estadual'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
