
unit Dal.ERP.registro;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.registro, DalBaseCRUD,
  SQLQuery;

type
  TDalERPregistro = class(TDalBaseCRUD)
  private 
    FModel : TModelERPregistro;  
    FModelList : TModelBaseList<TModelERPregistro>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPregistro.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPregistro) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPregistro );              

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

function TDalERPregistro.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPregistro) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPregistro ); 

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
  SQL.Insert(registro_tef).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.coo).Next;
     SQL.Field(Self.FModel.ccf).Next;
     SQL.Field(Self.FModel.codfin).Next;
     SQL.Field(Self.FModel.nsu).Next;
     SQL.Field(Self.FModel.nsuhost).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.modalxxnn).Next;
     SQL.Field(Self.FModel.modaltexto).Next;
     SQL.Field(Self.FModel.primeiravia).Next;
     SQL.Field(Self.FModel.segundavia).Next;
     SQL.Field(Self.FModel.rede).Next;
     SQL.Field(Self.FModel.impresso).Next;
     SQL.Field(Self.FModel.bandeira).Next;
     SQL.Field(Self.FModel.bin).Next;
     SQL.Field(Self.FModel.estorno).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPregistro.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPregistro) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPregistro );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(registro_tef);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPregistro>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPregistro.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].coo      := SQL.getInteger(coo);
      Self.FModelList[I].ccf      := SQL.getInteger(ccf);
      Self.FModelList[I].codfin      := SQL.getInteger(codfin);
      Self.FModelList[I].nsu      := SQL.getInteger(nsu);
      Self.FModelList[I].nsuhost      := SQL.getInteger(nsuhost);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].modalxxnn      := SQL.getInteger(modalxxnn);
      Self.FModelList[I].modaltexto      := SQL.getInteger(modaltexto);
      Self.FModelList[I].primeiravia      := SQL.getInteger(primeiravia);
      Self.FModelList[I].segundavia      := SQL.getInteger(segundavia);
      Self.FModelList[I].rede      := SQL.getInteger(rede);
      Self.FModelList[I].impresso      := SQL.getInteger(impresso);
      Self.FModelList[I].bandeira      := SQL.getInteger(bandeira);
      Self.FModelList[I].bin      := SQL.getInteger(bin);
      Self.FModelList[I].estorno      := SQL.getInteger(estorno);
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

  Self.FModel := ( Model as TModelERPregistro );             

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
  SQL.Update(registro_tef);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
