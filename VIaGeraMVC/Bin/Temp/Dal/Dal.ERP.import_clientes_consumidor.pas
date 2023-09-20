
unit Dal.ERP.import_clientes_alterados;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.import_clientes_alterados, DalBaseCRUD,
  SQLQuery;

type
  TDalERPimportclientesalterados = class(TDalBaseCRUD)
  private 
    FModel : TModelERPimportclientesalterados;  
    FModelList : TModelBaseList<TModelERPimportclientesalterados>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPimportclientesalterados.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPimportclientesalterados) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimportclientesalterados );              

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

function TDalERPimportclientesalterados.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPimportclientesalterados) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimportclientesalterados ); 

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
  SQL.Insert(import_clientes_consumidor).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.numero).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.estado).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.telefone).Next;
     SQL.Field(Self.FModel.celular).Next;
     SQL.Field(Self.FModel.datamov).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.fisica).Next;
     SQL.Field(Self.FModel.id_erp).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPimportclientesalterados.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPimportclientesalterados) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPimportclientesalterados );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(import_clientes_consumidor);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPimportclientesalterados>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPimportclientesalterados.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].numero      := SQL.getInteger(numero);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].estado      := SQL.getInteger(estado);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].telefone      := SQL.getInteger(telefone);
      Self.FModelList[I].celular      := SQL.getInteger(celular);
      Self.FModelList[I].datamov      := SQL.getInteger(datamov);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].fisica      := SQL.getInteger(fisica);
      Self.FModelList[I].id_erp      := SQL.getInteger(id_erp);
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

  Self.FModel := ( Model as TModelERPimportclientesalterados );             

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
  SQL.Update(import_clientes_consumidor);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
