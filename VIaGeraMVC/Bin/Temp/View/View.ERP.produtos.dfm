
object  Frm_ViewERPprintfile : TFrm_ViewERPprintfile
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPprintfile'
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
        object Edit_nome: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome'
          TabOrder = 0                        
        end                                   
        object Edit_id_grupo: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_grupo'
          TabOrder = 0                        
        end                                   
        object Edit_nome_grupo: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_grupo'
          TabOrder = 0                        
        end                                   
        object Edit_id_fornecedor: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_fornecedor'
          TabOrder = 0                        
        end                                   
        object Edit_nome_fornecedor: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_fornecedor'
          TabOrder = 0                        
        end                                   
        object Edit_codigo_fabricante: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'codigo_fabricante'
          TabOrder = 0                        
        end                                   
        object Edit_unidade: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'unidade'
          TabOrder = 0                        
        end                                   
        object Edit_peso_bruto: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'peso_bruto'
          TabOrder = 0                        
        end                                   
        object Edit_peso_liquido: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'peso_liquido'
          TabOrder = 0                        
        end                                   
        object Edit_garantia: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'garantia'
          TabOrder = 0                        
        end                                   
        object Edit_modelo: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'modelo'
          TabOrder = 0                        
        end                                   
        object Edit_cor: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cor'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo'
          TabOrder = 0                        
        end                                   
        object Edit_preco_compra: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_compra'
          TabOrder = 0                        
        end                                   
        object Edit_preco_venda: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_venda'
          TabOrder = 0                        
        end                                   
        object Edit_preco_venda_ant: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_venda_ant'
          TabOrder = 0                        
        end                                   
        object Edit_localizacao: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'localizacao'
          TabOrder = 0                        
        end                                   
        object Edit_referencia: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'referencia'
          TabOrder = 0                        
        end                                   
        object Edit_comissao: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao'
          TabOrder = 0                        
        end                                   
        object Edit_embalagem: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'embalagem'
          TabOrder = 0                        
        end                                   
        object Edit_embalagem_itens: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'embalagem_itens'
          TabOrder = 0                        
        end                                   
        object Edit_fracionado: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fracionado'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_minimo: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_minimo'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_atual: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_atual'
          TabOrder = 0                        
        end                                   
        object Edit_etiqueta_pdv: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'etiqueta_pdv'
          TabOrder = 0                        
        end                                   
        object Edit_balanca_pdv: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'balanca_pdv'
          TabOrder = 0                        
        end                                   
        object Edit_st: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'st'
          TabOrder = 0                        
        end                                   
        object Edit_icms_entrada: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_entrada'
          TabOrder = 0                        
        end                                   
        object Edit_icms_saida: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_saida'
          TabOrder = 0                        
        end                                   
        object Edit_reducao: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'reducao'
          TabOrder = 0                        
        end                                   
        object Edit_ipi_entrada: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi_entrada'
          TabOrder = 0                        
        end                                   
        object Edit_ipi_saida: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ipi_saida'
          TabOrder = 0                        
        end                                   
        object Edit_data_ultimacompra: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_ultimacompra'
          TabOrder = 0                        
        end                                   
        object Edit_data_ultimavenda: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_ultimavenda'
          TabOrder = 0                        
        end                                   
        object Edit_diferido: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'diferido'
          TabOrder = 0                        
        end                                   
        object Edit_referencia_tecnica: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'referencia_tecnica'
          TabOrder = 0                        
        end                                   
        object Edit_promocao: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'promocao'
          TabOrder = 0                        
        end                                   
        object Edit_preco_promocao: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_promocao'
          TabOrder = 0                        
        end                                   
        object Edit_vl_frete: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_frete'
          TabOrder = 0                        
        end                                   
        object Edit_vl_outras: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_outras'
          TabOrder = 0                        
        end                                   
        object Edit_vl_substituicao: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_substituicao'
          TabOrder = 0                        
        end                                   
        object Edit_vl_margem_lucro: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_margem_lucro'
          TabOrder = 0                        
        end                                   
        object Edit_vl_enc_estadual: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_enc_estadual'
          TabOrder = 0                        
        end                                   
        object Edit_vl_enc_federal: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_enc_federal'
          TabOrder = 0                        
        end                                   
        object Edit_ult_preco_venda: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ult_preco_venda'
          TabOrder = 0                        
        end                                   
        object Edit_ult_preco_compra: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ult_preco_compra'
          TabOrder = 0                        
        end                                   
        object Edit_ativo: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ativo'
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
        object Edit_produto_variado: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produto_variado'
          TabOrder = 0                        
        end                                   
        object Edit_id_planocelular: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_planocelular'
          TabOrder = 0                        
        end                                   
        object Edit_frete: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'frete'
          TabOrder = 0                        
        end                                   
        object Edit_simples: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'simples'
          TabOrder = 0                        
        end                                   
        object Edit_vl_pmz: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_pmz'
          TabOrder = 0                        
        end                                   
        object Edit_ippt: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ippt'
          TabOrder = 0                        
        end                                   
        object Edit_iat: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'iat'
          TabOrder = 0                        
        end                                   
        object Edit_atacado: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'atacado'
          TabOrder = 0                        
        end                                   
        object Edit_quantidade_atacado: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'quantidade_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_preco_atacado: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_deposito: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_deposito'
          TabOrder = 0                        
        end                                   
        object Edit_pauta: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pauta'
          TabOrder = 0                        
        end                                   
        object Edit_ncm: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ncm'
          TabOrder = 0                        
        end                                   
        object Edit_cst: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cst'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_interno: TLabeledEdit       
          Left = 674              
          Top =  690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_interno'
          TabOrder = 0                        
        end                                   
        object Edit_cfop_externo: TLabeledEdit       
          Left = 684              
          Top =  700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cfop_externo'
          TabOrder = 0                        
        end                                   
        object Edit_tamanho: TLabeledEdit       
          Left = 694              
          Top =  710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tamanho'
          TabOrder = 0                        
        end                                   
        object Edit_sexo: TLabeledEdit       
          Left = 704              
          Top =  720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sexo'
          TabOrder = 0                        
        end                                   
        object Edit_especial: TLabeledEdit       
          Left = 714              
          Top =  730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'especial'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_padrao: TLabeledEdit       
          Left = 724              
          Top =  740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_padrao'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_bonificacao: TLabeledEdit       
          Left = 734              
          Top =  750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_bonificacao'
          TabOrder = 0                        
        end                                   
        object Edit_piscofins: TLabeledEdit       
          Left = 744              
          Top =  760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'piscofins'
          TabOrder = 0                        
        end                                   
        object Edit_tipo: TLabeledEdit       
          Left = 754              
          Top =  770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo'
          TabOrder = 0                        
        end                                   
        object Edit_reg_ms: TLabeledEdit       
          Left = 764              
          Top =  780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'reg_ms'
          TabOrder = 0                        
        end                                   
        object Edit_csts_ipi: TLabeledEdit       
          Left = 774              
          Top =  790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'csts_ipi'
          TabOrder = 0                        
        end                                   
        object Edit_validade: TLabeledEdit       
          Left = 784              
          Top =  800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'validade'
          TabOrder = 0                        
        end                                   
        object Edit_dosagem: TLabeledEdit       
          Left = 794              
          Top =  810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dosagem'
          TabOrder = 0                        
        end                                   
        object Edit_vl_pis: TLabeledEdit       
          Left = 804              
          Top =  820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_pis'
          TabOrder = 0                        
        end                                   
        object Edit_vl_cofins: TLabeledEdit       
          Left = 814              
          Top =  830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_cofins'
          TabOrder = 0                        
        end                                   
        object Edit_ean: TLabeledEdit       
          Left = 824              
          Top =  840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ean'
          TabOrder = 0                        
        end                                   
        object Edit_comissao_servico: TLabeledEdit       
          Left = 834              
          Top =  850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'comissao_servico'
          TabOrder = 0                        
        end                                   
        object Edit_ean_caixa: TLabeledEdit       
          Left = 844              
          Top =  860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ean_caixa'
          TabOrder = 0                        
        end                                   
        object Edit_id_fabricante: TLabeledEdit       
          Left = 854              
          Top =  870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_fabricante'
          TabOrder = 0                        
        end                                   
        object Edit_kit: TLabeledEdit       
          Left = 864              
          Top =  880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'kit'
          TabOrder = 0                        
        end                                   
        object Edit_icms_atacado: TLabeledEdit       
          Left = 874              
          Top =  890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icms_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_atacado: TLabeledEdit       
          Left = 884              
          Top =  900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo_atacado: TLabeledEdit       
          Left = 894              
          Top =  910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo_atacado'
          TabOrder = 0                        
        end                                   
        object Edit_preco_atacado_ant: TLabeledEdit       
          Left = 904              
          Top =  920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_atacado_ant'
          TabOrder = 0                        
        end                                   
        object Edit_controle_proprio: TLabeledEdit       
          Left = 914              
          Top =  930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controle_proprio'
          TabOrder = 0                        
        end                                   
        object Edit_validade_proprio: TLabeledEdit       
          Left = 924              
          Top =  940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'validade_proprio'
          TabOrder = 0                        
        end                                   
        object Edit_tabela_pdv: TLabeledEdit       
          Left = 934              
          Top =  950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tabela_pdv'
          TabOrder = 0                        
        end                                   
        object Edit_venda_fracionada: TLabeledEdit       
          Left = 944              
          Top =  960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda_fracionada'
          TabOrder = 0                        
        end                                   
        object Edit_valor_unitario_item_nf: TLabeledEdit       
          Left = 954              
          Top =  970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_unitario_item_nf'
          TabOrder = 0                        
        end                                   
        object Edit_id_insumo: TLabeledEdit       
          Left = 964              
          Top =  980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_insumo'
          TabOrder = 0                        
        end                                   
        object Edit_id_almoxarifado: TLabeledEdit       
          Left = 974              
          Top =  990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_almoxarifado'
          TabOrder = 0                        
        end                                   
        object Edit_cst_natureza_receita: TLabeledEdit       
          Left = 984              
          Top =  1000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cst_natureza_receita'
          TabOrder = 0                        
        end                                   
        object Edit_prod_kit: TLabeledEdit       
          Left = 994              
          Top =  1010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'prod_kit'
          TabOrder = 0                        
        end                                   
        object Edit_pauta_dentro: TLabeledEdit       
          Left = 1004              
          Top =  1020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pauta_dentro'
          TabOrder = 0                        
        end                                   
        object Edit_pauta_fora: TLabeledEdit       
          Left = 1014              
          Top =  1030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pauta_fora'
          TabOrder = 0                        
        end                                   
        object Edit_balanca_soft: TLabeledEdit       
          Left = 1024              
          Top =  1040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'balanca_soft'
          TabOrder = 0                        
        end                                   
        object Edit_balanca_dias: TLabeledEdit       
          Left = 1034              
          Top =  1050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'balanca_dias'
          TabOrder = 0                        
        end                                   
        object Edit_balanca_tecla: TLabeledEdit       
          Left = 1044              
          Top =  1060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'balanca_tecla'
          TabOrder = 0                        
        end                                   
        object Edit_codigo_anp: TLabeledEdit       
          Left = 1054              
          Top =  1070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'codigo_anp'
          TabOrder = 0                        
        end                                   
        object Edit_id_setor: TLabeledEdit       
          Left = 1064              
          Top =  1080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_setor'
          TabOrder = 0                        
        end                                   
        object Edit_id_secao: TLabeledEdit       
          Left = 1074              
          Top =  1090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_secao'
          TabOrder = 0                        
        end                                   
        object Edit_id_grupos: TLabeledEdit       
          Left = 1084              
          Top =  1100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_grupos'
          TabOrder = 0                        
        end                                   
        object Edit_id_subgrupo: TLabeledEdit       
          Left = 1094              
          Top =  1110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_subgrupo'
          TabOrder = 0                        
        end                                   
        object Edit_formacao_preco: TLabeledEdit       
          Left = 1104              
          Top =  1120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'formacao_preco'
          TabOrder = 0                        
        end                                   
        object Edit_trabalha_metro_cubico: TLabeledEdit       
          Left = 1114              
          Top =  1130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'trabalha_metro_cubico'
          TabOrder = 0                        
        end                                   
        object Edit_ean_caixa2: TLabeledEdit       
          Left = 1124              
          Top =  1140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ean_caixa2'
          TabOrder = 0                        
        end                                   
        object Edit_ean_caixa3: TLabeledEdit       
          Left = 1134              
          Top =  1150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ean_caixa3'
          TabOrder = 0                        
        end                                   
        object Edit_embalagem_itens2: TLabeledEdit       
          Left = 1144              
          Top =  1160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'embalagem_itens2'
          TabOrder = 0                        
        end                                   
        object Edit_embalagem_itens3: TLabeledEdit       
          Left = 1154              
          Top =  1170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'embalagem_itens3'
          TabOrder = 0                        
        end                                   
        object Edit_valor_unitario_item_nf2: TLabeledEdit       
          Left = 1164              
          Top =  1180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_unitario_item_nf2'
          TabOrder = 0                        
        end                                   
        object Edit_valor_unitario_item_nf3: TLabeledEdit       
          Left = 1174              
          Top =  1190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_unitario_item_nf3'
          TabOrder = 0                        
        end                                   
        object Edit_custo_financeiro: TLabeledEdit       
          Left = 1184              
          Top =  1200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_financeiro'
          TabOrder = 0                        
        end                                   
        object Edit_contribuicao_social: TLabeledEdit       
          Left = 1194              
          Top =  1210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contribuicao_social'
          TabOrder = 0                        
        end                                   
        object Edit_custo_operacional: TLabeledEdit       
          Left = 1204              
          Top =  1220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'custo_operacional'
          TabOrder = 0                        
        end                                   
        object Edit_vl_irpj: TLabeledEdit       
          Left = 1214              
          Top =  1230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_irpj'
          TabOrder = 0                        
        end                                   
        object Edit_complemento_aliq: TLabeledEdit       
          Left = 1224              
          Top =  1240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'complemento_aliq'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo_nf: TLabeledEdit       
          Left = 1234              
          Top =  1250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo_nf'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo_nf2: TLabeledEdit       
          Left = 1244              
          Top =  1260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo_nf2'
          TabOrder = 0                        
        end                                   
        object Edit_preco_custo_nf3: TLabeledEdit       
          Left = 1254              
          Top =  1270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_custo_nf3'
          TabOrder = 0                        
        end                                   
        object Edit_generico: TLabeledEdit       
          Left = 1264              
          Top =  1280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'generico'
          TabOrder = 0                        
        end                                   
        object Edit_desconto_formacao: TLabeledEdit       
          Left = 1274              
          Top =  1290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desconto_formacao'
          TabOrder = 0                        
        end                                   
        object Edit_cst_piscofins_saida: TLabeledEdit       
          Left = 1284              
          Top =  1300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cst_piscofins_saida'
          TabOrder = 0                        
        end                                   
        object Edit_cst_piscofins_entrada: TLabeledEdit       
          Left = 1294              
          Top =  1310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cst_piscofins_entrada'
          TabOrder = 0                        
        end                                   
        object Edit_id_familia: TLabeledEdit       
          Left = 1304              
          Top =  1320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_familia'
          TabOrder = 0                        
        end                                   
        object Edit_quantidade_empresa_terceiro: TLabeledEdit       
          Left = 1314              
          Top =  1330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'quantidade_empresa_terceiro'
          TabOrder = 0                        
        end                                   
        object Edit_quantidade_terceiro_empresa: TLabeledEdit       
          Left = 1324              
          Top =  1340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'quantidade_terceiro_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_preco_compra_alterado: TLabeledEdit       
          Left = 1334              
          Top =  1350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'preco_compra_alterado'
          TabOrder = 0                        
        end                                   
        object Edit_medida: TLabeledEdit       
          Left = 1344              
          Top =  1360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'medida'
          TabOrder = 0                        
        end                                   
        object Edit_lona: TLabeledEdit       
          Left = 1354              
          Top =  1370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'lona'
          TabOrder = 0                        
        end                                   
        object Edit_lote: TLabeledEdit       
          Left = 1364              
          Top =  1380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'lote'
          TabOrder = 0                        
        end                                   
        object Edit_controlar_lote_tipo: TLabeledEdit       
          Left = 1374              
          Top =  1390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controlar_lote_tipo'
          TabOrder = 0                        
        end                                   
        object Edit_controlar_lote: TLabeledEdit       
          Left = 1384              
          Top =  1400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'controlar_lote'
          TabOrder = 0                        
        end                                   
        object Edit_sem_gtin: TLabeledEdit       
          Left = 1394              
          Top =  1410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sem_gtin'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_desconto: TLabeledEdit       
          Left = 1404              
          Top =  1420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_desconto'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_b: TLabeledEdit       
          Left = 1414              
          Top =  1430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_b'
          TabOrder = 0                        
        end                                   
        object Edit_vl_margem_lucro_b: TLabeledEdit       
          Left = 1424              
          Top =  1440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'vl_margem_lucro_b'
          TabOrder = 0                        
        end                                   
        object Edit_quantidade_kit: TLabeledEdit       
          Left = 1434              
          Top =  1450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'quantidade_kit'
          TabOrder = 0                        
        end                                   
        object Edit_complemento: TLabeledEdit       
          Left = 1444              
          Top =  1460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'complemento'
          TabOrder = 0                        
        end                                   
        object Edit_desconto_zero: TLabeledEdit       
          Left = 1454              
          Top =  1470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'desconto_zero'
          TabOrder = 0                        
        end                                   
        object Edit_margem_lucro_sugestao: TLabeledEdit       
          Left = 1464              
          Top =  1480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'margem_lucro_sugestao'
          TabOrder = 0                        
        end                                   
        object Edit_gera_comissao: TLabeledEdit       
          Left = 1474              
          Top =  1490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'gera_comissao'
          TabOrder = 0                        
        end                                   
        object Edit_venda_metade: TLabeledEdit       
          Left = 1484              
          Top =  1500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'venda_metade'
          TabOrder = 0                        
        end                                   
        object Edit_metade_porcentagem: TLabeledEdit       
          Left = 1494              
          Top =  1510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'metade_porcentagem'
          TabOrder = 0                        
        end                                   
        object Edit_inadimplencia: TLabeledEdit       
          Left = 1504              
          Top =  1520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'inadimplencia'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
