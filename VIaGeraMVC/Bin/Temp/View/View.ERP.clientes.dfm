
object  Frm_ViewERPclienteinscricaoestadual : TFrm_ViewERPclienteinscricaoestadual
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPclienteinscricaoestadual'
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
        object Edit_pessoa: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pessoa'
          TabOrder = 0                        
        end                                   
        object Edit_data_ficha: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_ficha'
          TabOrder = 0                        
        end                                   
        object Edit_nome: TLabeledEdit       
          Left = 64              
          Top =  80              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome'
          TabOrder = 0                        
        end                                   
        object Edit_id_cidade: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cidade'
          TabOrder = 0                        
        end                                   
        object Edit_razao_social: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'razao_social'
          TabOrder = 0                        
        end                                   
        object Edit_endereco: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'endereco'
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
        object Edit_uf: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf'
          TabOrder = 0                        
        end                                   
        object Edit_cep: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cep'
          TabOrder = 0                        
        end                                   
        object Edit_caixa_postal: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'caixa_postal'
          TabOrder = 0                        
        end                                   
        object Edit_fone1: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fone1'
          TabOrder = 0                        
        end                                   
        object Edit_fone2: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fone2'
          TabOrder = 0                        
        end                                   
        object Edit_celular1: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'celular1'
          TabOrder = 0                        
        end                                   
        object Edit_cnpj: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cnpj'
          TabOrder = 0                        
        end                                   
        object Edit_inscricao_estadual: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'inscricao_estadual'
          TabOrder = 0                        
        end                                   
        object Edit_rg_ssp: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rg_ssp'
          TabOrder = 0                        
        end                                   
        object Edit_rg: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rg'
          TabOrder = 0                        
        end                                   
        object Edit_cpf: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cpf'
          TabOrder = 0                        
        end                                   
        object Edit_titulo: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'titulo'
          TabOrder = 0                        
        end                                   
        object Edit_data_nasc: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_nasc'
          TabOrder = 0                        
        end                                   
        object Edit_sexo: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sexo'
          TabOrder = 0                        
        end                                   
        object Edit_id_natural: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_natural'
          TabOrder = 0                        
        end                                   
        object Edit_pai: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pai'
          TabOrder = 0                        
        end                                   
        object Edit_mae: TLabeledEdit       
          Left = 274              
          Top =  290              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mae'
          TabOrder = 0                        
        end                                   
        object Edit_qtd_filhos: TLabeledEdit       
          Left = 284              
          Top =  300              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'qtd_filhos'
          TabOrder = 0                        
        end                                   
        object Edit_conjugue: TLabeledEdit       
          Left = 294              
          Top =  310              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'conjugue'
          TabOrder = 0                        
        end                                   
        object Edit_data_nasc_conj: TLabeledEdit       
          Left = 304              
          Top =  320              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_nasc_conj'
          TabOrder = 0                        
        end                                   
        object Edit_aluguel: TLabeledEdit       
          Left = 314              
          Top =  330              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'aluguel'
          TabOrder = 0                        
        end                                   
        object Edit_valor_aluguel: TLabeledEdit       
          Left = 324              
          Top =  340              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_aluguel'
          TabOrder = 0                        
        end                                   
        object Edit_temp_resid: TLabeledEdit       
          Left = 334              
          Top =  350              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'temp_resid'
          TabOrder = 0                        
        end                                   
        object Edit_salario: TLabeledEdit       
          Left = 344              
          Top =  360              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'salario'
          TabOrder = 0                        
        end                                   
        object Edit_empresa: TLabeledEdit       
          Left = 354              
          Top =  370              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'empresa'
          TabOrder = 0                        
        end                                   
        object Edit_fone_empresa: TLabeledEdit       
          Left = 364              
          Top =  380              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'fone_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_data_admissao: TLabeledEdit       
          Left = 374              
          Top =  390              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_admissao'
          TabOrder = 0                        
        end                                   
        object Edit_cidade_empresa: TLabeledEdit       
          Left = 384              
          Top =  400              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cidade_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_uf_empresa: TLabeledEdit       
          Left = 394              
          Top =  410              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_funcao: TLabeledEdit       
          Left = 404              
          Top =  420              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'funcao'
          TabOrder = 0                        
        end                                   
        object Edit_referencia_comercial: TLabeledEdit       
          Left = 414              
          Top =  430              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'referencia_comercial'
          TabOrder = 0                        
        end                                   
        object Edit_referencia_bancaria: TLabeledEdit       
          Left = 424              
          Top =  440              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'referencia_bancaria'
          TabOrder = 0                        
        end                                   
        object Edit_data_consulta_spc: TLabeledEdit       
          Left = 434              
          Top =  450              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'data_consulta_spc'
          TabOrder = 0                        
        end                                   
        object Edit_obs_spc: TLabeledEdit       
          Left = 444              
          Top =  460              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_spc'
          TabOrder = 0                        
        end                                   
        object Edit_valor_limite: TLabeledEdit       
          Left = 454              
          Top =  470              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'valor_limite'
          TabOrder = 0                        
        end                                   
        object Edit_tipo: TLabeledEdit       
          Left = 464              
          Top =  480              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo'
          TabOrder = 0                        
        end                                   
        object Edit_e_mail: TLabeledEdit       
          Left = 474              
          Top =  490              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'e_mail'
          TabOrder = 0                        
        end                                   
        object Edit_home_page: TLabeledEdit       
          Left = 484              
          Top =  500              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'home_page'
          TabOrder = 0                        
        end                                   
        object Edit_endereco_entrega: TLabeledEdit       
          Left = 494              
          Top =  510              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'endereco_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_bairro_entrega: TLabeledEdit       
          Left = 504              
          Top =  520              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'bairro_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_cidade_entrega: TLabeledEdit       
          Left = 514              
          Top =  530              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cidade_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_uf_entrega: TLabeledEdit       
          Left = 524              
          Top =  540              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_referencia_entrega: TLabeledEdit       
          Left = 534              
          Top =  550              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'referencia_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_id_vendedor: TLabeledEdit       
          Left = 544              
          Top =  560              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_vendedor'
          TabOrder = 0                        
        end                                   
        object Edit_icm_ipi: TLabeledEdit       
          Left = 554              
          Top =  570              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'icm_ipi'
          TabOrder = 0                        
        end                                   
        object Edit_cep_entrega: TLabeledEdit       
          Left = 564              
          Top =  580              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cep_entrega'
          TabOrder = 0                        
        end                                   
        object Edit_obs_geral: TLabeledEdit       
          Left = 574              
          Top =  590              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'obs_geral'
          TabOrder = 0                        
        end                                   
        object Edit_estado_civil: TLabeledEdit       
          Left = 584              
          Top =  600              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estado_civil'
          TabOrder = 0                        
        end                                   
        object Edit_ficha: TLabeledEdit       
          Left = 594              
          Top =  610              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ficha'
          TabOrder = 0                        
        end                                   
        object Edit_temp_empre: TLabeledEdit       
          Left = 604              
          Top =  620              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'temp_empre'
          TabOrder = 0                        
        end                                   
        object Edit_cidade: TLabeledEdit       
          Left = 614              
          Top =  630              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cidade'
          TabOrder = 0                        
        end                                   
        object Edit_id_rota: TLabeledEdit       
          Left = 624              
          Top =  640              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_rota'
          TabOrder = 0                        
        end                                   
        object Edit_click: TLabeledEdit       
          Left = 634              
          Top =  650              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'click'
          TabOrder = 0                        
        end                                   
        object Edit_cod_anterior: TLabeledEdit       
          Left = 644              
          Top =  660              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cod_anterior'
          TabOrder = 0                        
        end                                   
        object Edit_id_atividade: TLabeledEdit       
          Left = 654              
          Top =  670              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_atividade'
          TabOrder = 0                        
        end                                   
        object Edit_ativo: TLabeledEdit       
          Left = 664              
          Top =  680              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ativo'
          TabOrder = 0                        
        end                                   
        object Edit_capital_social: TLabeledEdit       
          Left = 674              
          Top =  690              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'capital_social'
          TabOrder = 0                        
        end                                   
        object Edit_socio1: TLabeledEdit       
          Left = 684              
          Top =  700              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio1'
          TabOrder = 0                        
        end                                   
        object Edit_socio2: TLabeledEdit       
          Left = 694              
          Top =  710              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio2'
          TabOrder = 0                        
        end                                   
        object Edit_socio3: TLabeledEdit       
          Left = 704              
          Top =  720              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio3'
          TabOrder = 0                        
        end                                   
        object Edit_socio1valor: TLabeledEdit       
          Left = 714              
          Top =  730              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio1valor'
          TabOrder = 0                        
        end                                   
        object Edit_socio2valor: TLabeledEdit       
          Left = 724              
          Top =  740              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio2valor'
          TabOrder = 0                        
        end                                   
        object Edit_socio3valor: TLabeledEdit       
          Left = 734              
          Top =  750              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'socio3valor'
          TabOrder = 0                        
        end                                   
        object Edit_foto: TLabeledEdit       
          Left = 744              
          Top =  760              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'foto'
          TabOrder = 0                        
        end                                   
        object Edit_dia_vencimento: TLabeledEdit       
          Left = 754              
          Top =  770              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dia_vencimento'
          TabOrder = 0                        
        end                                   
        object Edit_produtor_ativo: TLabeledEdit       
          Left = 764              
          Top =  780              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'produtor_ativo'
          TabOrder = 0                        
        end                                   
        object Edit_apelido: TLabeledEdit       
          Left = 774              
          Top =  790              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'apelido'
          TabOrder = 0                        
        end                                   
        object Edit_tam_meia: TLabeledEdit       
          Left = 784              
          Top =  800              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_meia'
          TabOrder = 0                        
        end                                   
        object Edit_tam_calcado: TLabeledEdit       
          Left = 794              
          Top =  810              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_calcado'
          TabOrder = 0                        
        end                                   
        object Edit_tam_cinto: TLabeledEdit       
          Left = 804              
          Top =  820              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_cinto'
          TabOrder = 0                        
        end                                   
        object Edit_tam_calca: TLabeledEdit       
          Left = 814              
          Top =  830              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_calca'
          TabOrder = 0                        
        end                                   
        object Edit_tam_camisa: TLabeledEdit       
          Left = 824              
          Top =  840              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_camisa'
          TabOrder = 0                        
        end                                   
        object Edit_tam_sutia: TLabeledEdit       
          Left = 834              
          Top =  850              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tam_sutia'
          TabOrder = 0                        
        end                                   
        object Edit_atacado: TLabeledEdit       
          Left = 844              
          Top =  860              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'atacado'
          TabOrder = 0                        
        end                                   
        object Edit_uf_naturalidade: TLabeledEdit       
          Left = 854              
          Top =  870              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_naturalidade'
          TabOrder = 0                        
        end                                   
        object Edit_sistema: TLabeledEdit       
          Left = 864              
          Top =  880              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'sistema'
          TabOrder = 0                        
        end                                   
        object Edit_rota_ordem: TLabeledEdit       
          Left = 874              
          Top =  890              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rota_ordem'
          TabOrder = 0                        
        end                                   
        object Edit_email1: TLabeledEdit       
          Left = 884              
          Top =  900              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'email1'
          TabOrder = 0                        
        end                                   
        object Edit_email2: TLabeledEdit       
          Left = 894              
          Top =  910              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'email2'
          TabOrder = 0                        
        end                                   
        object Edit_telefone1: TLabeledEdit       
          Left = 904              
          Top =  920              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'telefone1'
          TabOrder = 0                        
        end                                   
        object Edit_telefone2: TLabeledEdit       
          Left = 914              
          Top =  930              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'telefone2'
          TabOrder = 0                        
        end                                   
        object Edit_alergias_medicamentos: TLabeledEdit       
          Left = 924              
          Top =  940              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'alergias_medicamentos'
          TabOrder = 0                        
        end                                   
        object Edit_dificuldades_disturbios: TLabeledEdit       
          Left = 934              
          Top =  950              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dificuldades_disturbios'
          TabOrder = 0                        
        end                                   
        object Edit_observacoes_necessarias: TLabeledEdit       
          Left = 944              
          Top =  960              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'observacoes_necessarias'
          TabOrder = 0                        
        end                                   
        object Edit_pagamento: TLabeledEdit       
          Left = 954              
          Top =  970              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'pagamento'
          TabOrder = 0                        
        end                                   
        object Edit_dia_mensalidade: TLabeledEdit       
          Left = 964              
          Top =  980              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'dia_mensalidade'
          TabOrder = 0                        
        end                                   
        object Edit_id_tabela_preco: TLabeledEdit       
          Left = 974              
          Top =  990              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_tabela_preco'
          TabOrder = 0                        
        end                                   
        object Edit_viacentral: TLabeledEdit       
          Left = 984              
          Top =  1000              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'viacentral'
          TabOrder = 0                        
        end                                   
        object Edit_nao_revenda: TLabeledEdit       
          Left = 994              
          Top =  1010              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nao_revenda'
          TabOrder = 0                        
        end                                   
        object Edit_contribuinte_icms: TLabeledEdit       
          Left = 1004              
          Top =  1020              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contribuinte_icms'
          TabOrder = 0                        
        end                                   
        object Edit_id_servidor: TLabeledEdit       
          Left = 1014              
          Top =  1030              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_servidor'
          TabOrder = 0                        
        end                                   
        object Edit_hash_local: TLabeledEdit       
          Left = 1024              
          Top =  1040              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hash_local'
          TabOrder = 0                        
        end                                   
        object Edit_hash_matriz: TLabeledEdit       
          Left = 1034              
          Top =  1050              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'hash_matriz'
          TabOrder = 0                        
        end                                   
        object Edit_estoque_terceiro: TLabeledEdit       
          Left = 1044              
          Top =  1060              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'estoque_terceiro'
          TabOrder = 0                        
        end                                   
        object Edit_rg_data_emissao: TLabeledEdit       
          Left = 1054              
          Top =  1070              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'rg_data_emissao'
          TabOrder = 0                        
        end                                   
        object Edit_cnh: TLabeledEdit       
          Left = 1064              
          Top =  1080              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cnh'
          TabOrder = 0                        
        end                                   
        object Edit_cnh_data_emissao: TLabeledEdit       
          Left = 1074              
          Top =  1090              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'cnh_data_emissao'
          TabOrder = 0                        
        end                                   
        object Edit_percentual_desconto: TLabeledEdit       
          Left = 1084              
          Top =  1100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'percentual_desconto'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
