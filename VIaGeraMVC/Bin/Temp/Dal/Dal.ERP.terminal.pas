
unit Dal.ERP.temp_etiquetas;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.temp_etiquetas, DalBaseCRUD,
  SQLQuery;

type
  TDalERPtempetiquetas = class(TDalBaseCRUD)
  private 
    FModel : TModelERPtempetiquetas;  
    FModelList : TModelBaseList<TModelERPtempetiquetas>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPtempetiquetas.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPtempetiquetas) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPtempetiquetas );              

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

function TDalERPtempetiquetas.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPtempetiquetas) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPtempetiquetas ); 

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
  SQL.Insert(terminal).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.hd).Next;
     SQL.Field(Self.FModel.ip).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.loja).Next;
     SQL.Field(Self.FModel.datahora).Next;
     SQL.Field(Self.FModel.viaerp).Next;
     SQL.Field(Self.FModel.viapdv).Next;
     SQL.Field(Self.FModel.viafood).Next;
     SQL.Field(Self.FModel.viaposto).Next;
     SQL.Field(Self.FModel.viapvd).Next;
     SQL.Field(Self.FModel.vianfe).Next;
     SQL.Field(Self.FModel.viasped).Next;
     SQL.Field(Self.FModel.notify).Next;
     SQL.Field(Self.FModel.use_vianfe).Next;
     SQL.Field(Self.FModel.use_viasped).Next;
     SQL.Field(Self.FModel.use_vianfce).Next;
     SQL.Field(Self.FModel.id_terminal).Next;
     SQL.Field(Self.FModel.vianfce).Next;
     SQL.Field(Self.FModel.rel_zebrado).Next;
     SQL.Field(Self.FModel.versao_browser).Next;
     SQL.Field(Self.FModel.port_impr).Next;
     SQL.Field(Self.FModel.modelo).Next;
     SQL.Field(Self.FModel.salto_linha).Next;
     SQL.Field(Self.FModel.baud).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.parity).Next;
     SQL.Field(Self.FModel.stop).Next;
     SQL.Field(Self.FModel.handshake).Next;
     SQL.Field(Self.FModel.hardflow).Next;
     SQL.Field(Self.FModel.softflow).Next;
     SQL.Field(Self.FModel.term_matr).Next;
     SQL.Field(Self.FModel.serial).Next;
     SQL.Field(Self.FModel.espaco_entre_linhas).Next;
     SQL.Field(Self.FModel.viamdfe).Next;
     SQL.Field(Self.FModel.use_viamdfe).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPtempetiquetas.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPtempetiquetas) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPtempetiquetas );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(terminal);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPtempetiquetas>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPtempetiquetas.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].hd      := SQL.getInteger(hd);
      Self.FModelList[I].ip      := SQL.getInteger(ip);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].loja      := SQL.getInteger(loja);
      Self.FModelList[I].datahora      := SQL.getInteger(datahora);
      Self.FModelList[I].viaerp      := SQL.getInteger(viaerp);
      Self.FModelList[I].viapdv      := SQL.getInteger(viapdv);
      Self.FModelList[I].viafood      := SQL.getInteger(viafood);
      Self.FModelList[I].viaposto      := SQL.getInteger(viaposto);
      Self.FModelList[I].viapvd      := SQL.getInteger(viapvd);
      Self.FModelList[I].vianfe      := SQL.getInteger(vianfe);
      Self.FModelList[I].viasped      := SQL.getInteger(viasped);
      Self.FModelList[I].notify      := SQL.getInteger(notify);
      Self.FModelList[I].use_vianfe      := SQL.getInteger(use_vianfe);
      Self.FModelList[I].use_viasped      := SQL.getInteger(use_viasped);
      Self.FModelList[I].use_vianfce      := SQL.getInteger(use_vianfce);
      Self.FModelList[I].id_terminal      := SQL.getInteger(id_terminal);
      Self.FModelList[I].vianfce      := SQL.getInteger(vianfce);
      Self.FModelList[I].rel_zebrado      := SQL.getInteger(rel_zebrado);
      Self.FModelList[I].versao_browser      := SQL.getInteger(versao_browser);
      Self.FModelList[I].port_impr      := SQL.getInteger(port_impr);
      Self.FModelList[I].modelo      := SQL.getInteger(modelo);
      Self.FModelList[I].salto_linha      := SQL.getInteger(salto_linha);
      Self.FModelList[I].baud      := SQL.getInteger(baud);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].parity      := SQL.getInteger(parity);
      Self.FModelList[I].stop      := SQL.getInteger(stop);
      Self.FModelList[I].handshake      := SQL.getInteger(handshake);
      Self.FModelList[I].hardflow      := SQL.getInteger(hardflow);
      Self.FModelList[I].softflow      := SQL.getInteger(softflow);
      Self.FModelList[I].term_matr      := SQL.getInteger(term_matr);
      Self.FModelList[I].serial      := SQL.getInteger(serial);
      Self.FModelList[I].espaco_entre_linhas      := SQL.getInteger(espaco_entre_linhas);
      Self.FModelList[I].viamdfe      := SQL.getInteger(viamdfe);
      Self.FModelList[I].use_viamdfe      := SQL.getInteger(use_viamdfe);
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

  Self.FModel := ( Model as TModelERPtempetiquetas );             

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
  SQL.Update(terminal);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
