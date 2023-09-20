
unit Dal.ERP.clientes_coringa;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.clientes_coringa, DalBaseCRUD,
  SQLQuery;

type
  TDalERPclientescoringa = class(TDalBaseCRUD)
  private 
    FModel : TModelERPclientescoringa;  
    FModelList : TModelBaseList<TModelERPclientescoringa>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPclientescoringa.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPclientescoringa) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclientescoringa );              

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

function TDalERPclientescoringa.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPclientescoringa) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclientescoringa ); 

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
  SQL.Insert(clientes_credito).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.vl_credito).Next;
     SQL.Field(Self.FModel.vl_usado).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.origem).Next;
     SQL.Field(Self.FModel.id_origem).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.historico).Next;
     SQL.Field(Self.FModel.estorno).Next;
     SQL.Field(Self.FModel.data_estorno).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPclientescoringa.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPclientescoringa) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPclientescoringa );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(clientes_credito);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPclientescoringa>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPclientescoringa.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].vl_credito      := SQL.getInteger(vl_credito);
      Self.FModelList[I].vl_usado      := SQL.getInteger(vl_usado);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].origem      := SQL.getInteger(origem);
      Self.FModelList[I].id_origem      := SQL.getInteger(id_origem);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].historico      := SQL.getInteger(historico);
      Self.FModelList[I].estorno      := SQL.getInteger(estorno);
      Self.FModelList[I].data_estorno      := SQL.getInteger(data_estorno);
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

  Self.FModel := ( Model as TModelERPclientescoringa );             

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
  SQL.Update(clientes_credito);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
