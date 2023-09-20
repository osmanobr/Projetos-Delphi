
unit Dal.ERP.venda_uniao_itens;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.venda_uniao_itens, DalBaseCRUD,
  SQLQuery;

type
  TDalERPvendauniaoitens = class(TDalBaseCRUD)
  private 
    FModel : TModelERPvendauniaoitens;  
    FModelList : TModelBaseList<TModelERPvendauniaoitens>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPvendauniaoitens.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPvendauniaoitens) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendauniaoitens );              

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then  
  begin                       
    ListError.Insert('Exclusão de registros','Nenhum valor foi passado para o NCM!');  
    Result := (ListError.Count = 0);  
    Exit;                     
  end;                        
  SQL.DeleteFrom('ncm_regra_substituicao').Where('id').Equal( Self.FModel.id );  
  dbDelete;                                
  Result := (ListError.Count = 0);         
end;                                       

function TDalERPvendauniaoitens.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPvendauniaoitens) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendauniaoitens ); 

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if not Self.FModel.Validate then 
  begin                            
    ListError.Assign( Self.FModel.ListError );  
    Result := (ListError.Count = 0);  
    Exit;                             
  end;                                
  SQL.Insert(venda_xml).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.nfce).Next;
     SQL.Field(Self.FModel.caixa).Next;
     SQL.Field(Self.FModel.loja).Next;
     SQL.Field(Self.FModel.xml).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.xml_off).Next;
     SQL.Field(Self.FModel.contingencia).Next;
     SQL.Field(Self.FModel.associacao).Next;
     SQL.Field(Self.FModel.cte).Next;
     SQL.Field(Self.FModel.consulta_seq).Next;
     SQL.Field(Self.FModel.enviar_seq).Next;
     SQL.Field(Self.FModel.consulta_hora).Next;
     SQL.Field(Self.FModel.enviar_hora).Next;
     SQL.Field(Self.FModel.xml_md5).Next;
     SQL.Field(Self.FModel.xml_off_md5).Next;
     SQL.Field(Self.FModel.validar_contingencia).Next;
     SQL.Field(Self.FModel.validar_protocolo).Next;
     SQL.Field(Self.FModel.data_protocolo).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.enviado_servidor).Next;
     SQL.Field(Self.FModel.retirado_monitor).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPvendauniaoitens.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPvendauniaoitens) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPvendauniaoitens );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(venda_xml);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPvendauniaoitens>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPvendauniaoitens.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].nfce      := SQL.getInteger(nfce);
      Self.FModelList[I].caixa      := SQL.getInteger(caixa);
      Self.FModelList[I].loja      := SQL.getInteger(loja);
      Self.FModelList[I].xml      := SQL.getInteger(xml);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].xml_off      := SQL.getInteger(xml_off);
      Self.FModelList[I].contingencia      := SQL.getInteger(contingencia);
      Self.FModelList[I].associacao      := SQL.getInteger(associacao);
      Self.FModelList[I].cte      := SQL.getInteger(cte);
      Self.FModelList[I].consulta_seq      := SQL.getInteger(consulta_seq);
      Self.FModelList[I].enviar_seq      := SQL.getInteger(enviar_seq);
      Self.FModelList[I].consulta_hora      := SQL.getInteger(consulta_hora);
      Self.FModelList[I].enviar_hora      := SQL.getInteger(enviar_hora);
      Self.FModelList[I].xml_md5      := SQL.getInteger(xml_md5);
      Self.FModelList[I].xml_off_md5      := SQL.getInteger(xml_off_md5);
      Self.FModelList[I].validar_contingencia      := SQL.getInteger(validar_contingencia);
      Self.FModelList[I].validar_protocolo      := SQL.getInteger(validar_protocolo);
      Self.FModelList[I].data_protocolo      := SQL.getInteger(data_protocolo);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].enviado_servidor      := SQL.getInteger(enviado_servidor);
      Self.FModelList[I].retirado_monitor      := SQL.getInteger(retirado_monitor);
      SQL.DataSet.Next;
    end;               
    Self.FModelList.TrimExcess; 
    ModelList := TModelBaseList<TModelBase>( Self.FModelList );
  end;                
  Result := ( ListError.Count = 0 ); 
end;   
function TDalERPNcmRegraSubstituicao.Update(Model: TModelBase): Boolean; 
begin                                                                    
  if not (Model is TModelERPNcmRegraSubstituicao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendauniaoitens );             

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then           
  begin                                
    ListError.Insert('Atualização de registros','Parece que o modelo esta em Branco!');  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  if not Self.FModel.Validate then     
  begin                                
    ListError.Assign( Self.FModel.ListError ); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  SQL.Update(venda_xml);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
