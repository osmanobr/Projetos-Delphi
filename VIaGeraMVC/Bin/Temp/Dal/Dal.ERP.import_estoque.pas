
unit Dal.ERP.import_ean_produto_alterados;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.import_ean_produto_alterados, DalBaseCRUD,
  SQLQuery;

type
  TDalERPimporteanprodutoalterados = class(TDalBaseCRUD)
  private 
    FModel : TModelERPimporteanprodutoalterados;  
    FModelList : TModelBaseList<TModelERPimporteanprodutoalterados>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPimporteanprodutoalterados.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPimporteanprodutoalterados) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimporteanprodutoalterados );              

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

function TDalERPimporteanprodutoalterados.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPimporteanprodutoalterados) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimporteanprodutoalterados ); 

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
  SQL.Insert(import_estoque).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.codigo).Next;
     SQL.Field(Self.FModel.descricao).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.posicao).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.unitario).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.ippt).Next;
     SQL.Field(Self.FModel.iat).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPimporteanprodutoalterados.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPimporteanprodutoalterados) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPimporteanprodutoalterados );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(import_estoque);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPimporteanprodutoalterados>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPimporteanprodutoalterados.Create ); 
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].codigo      := SQL.getInteger(codigo);
      Self.FModelList[I].descricao      := SQL.getInteger(descricao);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].posicao      := SQL.getInteger(posicao);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].unitario      := SQL.getInteger(unitario);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].ippt      := SQL.getInteger(ippt);
      Self.FModelList[I].iat      := SQL.getInteger(iat);
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

  Self.FModel := ( Model as TModelERPimporteanprodutoalterados );             

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
  SQL.Update(import_estoque);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
