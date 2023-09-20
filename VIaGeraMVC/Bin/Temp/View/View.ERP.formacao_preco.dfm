
object  Frm_ViewERPfinanceira : TFrm_ViewERPfinanceira
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPfinanceira'
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
        object Edit_data: TLabeledEdit       
          Left = 34              
          Top =  50              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data'
          TabOrder = 0                        
        end                                   
        object Edit_preco_compra: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_compra'
          TabOrder = 0                        
        end                                   
        object Edit_valor_frete: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_frete'
          TabOrder = 0                        
        end                                   
        object Edit_frete_percentual: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'frete_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_ipi_entrada_percentual: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi_entrada_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_valor_ipi: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_ipi'
          TabOrder = 0                        
        end                                   
        object Edit_credito_icms: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'credito_icms'
          TabOrder = 0                        
        end                                   
        object Edit_credito_percentual: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'credito_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_custo_financeiro: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_financeiro'
          TabOrder = 0                        
        end                                   
        object Edit_custo_financeiro_percentual: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_financeiro_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_outras_despesas: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'outras_despesas'
          TabOrder = 0                        
        end                                   
        object Edit_outras_despesas_percentual: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'outras_despesas_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_substituicao: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'substituicao'
          TabOrder = 0                        
        end                                   
        object Edit_substituicao_percentual: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'substituicao_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida_percentual: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida_atacado: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida_atac_percentual: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida_atac_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_ipi: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi'
          TabOrder = 0                        
        end                                   
        object Edit_ipi_percentual: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_cofins: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cofins'
          TabOrder = 0                        
        end                                   
        object Edit_cofins_percentual: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cofins_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_pis: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pis'
          TabOrder = 0                        
        end                                   
        object Edit_pis_percentual: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pis_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_irpj: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'irpj'
          TabOrder = 0                        
        end                                   
        object Edit_irpj_percentual: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'irpj_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_cont_social: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cont_social'
          TabOrder = 0                        
        end                                   
        object Edit_cont_social_percentual: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cont_social_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_outros_encargos: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'outros_encargos'
          TabOrder = 0                        
        end                                   
        object Edit_outros_encargos_percentual: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'outros_encargos_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_encargos_fedarais: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'encargos_fedarais'
          TabOrder = 0                        
        end                                   
        object Edit_encargos_federais_percentual: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'encargos_federais_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_simples_nacional: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples_nacional'
          TabOrder = 0                        
        end                                   
        object Edit_simples_nacional_percentual: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples_nacional_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_custo_operacional: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_operacional'
          TabOrder = 0                        
        end                                   
        object Edit_custo_operacional_percentual: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_operacional_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_venda: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_venda'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_venda_percentual: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_venda_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_servico: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_servico'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_servico_percentual: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_servico_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_percentual: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_atacado: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_atacado_percentual: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_atacado_percentual'
          TabOrder = 0                        
        end                                   
        object Edit_sugestao_venda: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sugestao_venda'
          TabOrder = 0                        
        end                                   
        object Edit_sugestao_venda_atacado: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sugestao_venda_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_id_produto: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_produto'
          TabOrder = 0                        
        end                                   
        object Edit_nome_produto: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_produto'
          TabOrder = 0                        
        end                                   
        object Edit_id_compra: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_compra'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_varejo: TLabeledEdit       
          Left = 524              
          Top =  540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_varejo'
          TabOrder = 0                        
        end                                   
        object Edit_preco_venda_atual_varejo: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_venda_atual_varejo'
          TabOrder = 0                        
        end                                   
        object Edit_preco_venda_atual_atacado: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_venda_atual_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_atacado2: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_atacado2'
          TabOrder = 0                        
        end                                   
        object Edit_vl_pmz: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_pmz'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo_atacado: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_data_inicial: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_inicial'
          TabOrder = 0                        
        end                                   
        object Edit_data_final: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_final'
          TabOrder = 0                        
        end                                   
        object Edit_quantidade: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'quantidade'
          TabOrder = 0                        
        end                                   
        object Edit_media_venda: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'media_venda'
          TabOrder = 0                        
        end                                   
        object Edit_total: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'total'
          TabOrder = 0                        
        end                                   
        object Edit_xpmz: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'xpmz'
          TabOrder = 0                        
        end                                   
        object Edit_inadimplencia: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'inadimplencia'
          TabOrder = 0                        
        end                                   
        object Edit_id_grupo: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_grupo'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
