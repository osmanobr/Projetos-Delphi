
object  Frm_ViewERPmdfedocumentos : TFrm_ViewERPmdfedocumentos
  Left = 0                                    
  Top = 0                                     
  Caption = 'ViewERPmdfedocumentos'
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
        object Edit_serie: TLabeledEdit       
          Left = 34              
          Top =  50              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'serie'
          TabOrder = 0                        
        end                                   
        object Edit_id_venda: TLabeledEdit       
          Left = 44              
          Top =  60              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_venda'
          TabOrder = 0                        
        end                                   
        object Edit_num_mdfe: TLabeledEdit       
          Left = 54              
          Top =  70              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'num_mdfe'
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
        object Edit_uf_ini: TLabeledEdit       
          Left = 74              
          Top =  90              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_ini'
          TabOrder = 0                        
        end                                   
        object Edit_uf_per: TLabeledEdit       
          Left = 84              
          Top =  100              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_per'
          TabOrder = 0                        
        end                                   
        object Edit_uf_fim: TLabeledEdit       
          Left = 94              
          Top =  110              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'uf_fim'
          TabOrder = 0                        
        end                                   
        object Edit_mdfe_chave: TLabeledEdit       
          Left = 104              
          Top =  120              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mdfe_chave'
          TabOrder = 0                        
        end                                   
        object Edit_mdfe_protocolo: TLabeledEdit       
          Left = 114              
          Top =  130              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mdfe_protocolo'
          TabOrder = 0                        
        end                                   
        object Edit_situacao: TLabeledEdit       
          Left = 124              
          Top =  140              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'situacao'
          TabOrder = 0                        
        end                                   
        object Edit_xml: TLabeledEdit       
          Left = 134              
          Top =  150              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'xml'
          TabOrder = 0                        
        end                                   
        object Edit_contingencia: TLabeledEdit       
          Left = 144              
          Top =  160              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'contingencia'
          TabOrder = 0                        
        end                                   
        object Edit_mdfe_protocolo_canc: TLabeledEdit       
          Left = 154              
          Top =  170              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mdfe_protocolo_canc'
          TabOrder = 0                        
        end                                   
        object Edit_mdfe_protocolo_ence: TLabeledEdit       
          Left = 164              
          Top =  180              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'mdfe_protocolo_ence'
          TabOrder = 0                        
        end                                   
        object Edit_id_cliente: TLabeledEdit       
          Left = 174              
          Top =  190              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_nome_cliente: TLabeledEdit       
          Left = 184              
          Top =  200              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'nome_cliente'
          TabOrder = 0                        
        end                                   
        object Edit_id_empresa: TLabeledEdit       
          Left = 194              
          Top =  210              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'id_empresa'
          TabOrder = 0                        
        end                                   
        object Edit_placa: TLabeledEdit       
          Left = 204              
          Top =  220              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'placa'
          TabOrder = 0                        
        end                                   
        object Edit_ativo: TLabeledEdit       
          Left = 214              
          Top =  230              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ativo'
          TabOrder = 0                        
        end                                   
        object Edit_xml_encerramento: TLabeledEdit       
          Left = 224              
          Top =  240              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'xml_encerramento'
          TabOrder = 0                        
        end                                   
        object Edit_tipo_carga: TLabeledEdit       
          Left = 234              
          Top =  250              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'tipo_carga'
          TabOrder = 0                        
        end                                   
        object Edit_prod_predominante: TLabeledEdit       
          Left = 244              
          Top =  260              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'prod_predominante'
          TabOrder = 0                        
        end                                   
        object Edit_ean: TLabeledEdit       
          Left = 254              
          Top =  270              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ean'
          TabOrder = 0                        
        end                                   
        object Edit_ncm: TLabeledEdit       
          Left = 264              
          Top =  280              
          Width = 121                         
          Height = 21                         
          EditLabel.Width = 49                
          EditLabel.Height = 13               
          EditLabel.Caption = 'ncm'
          TabOrder = 0                        
        end                                   
  end                                         
      end                                     
    end                                       
  end                                         
end                                           
