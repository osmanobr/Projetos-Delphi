
unit Dal.ERP.grupo_produto;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.grupo_produto, DalBaseCRUD,
  SQLQuery;

type
  TDalERPgrupoproduto = class(TDalBaseCRUD)
  private 
    FModel : TModelERPgrupoproduto;  
    FModelList : TModelBaseList<TModelERPgrupoproduto>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPgrupoproduto.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPgrupoproduto) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPgrupoproduto );              

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

function TDalERPgrupoproduto.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPgrupoproduto) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPgrupoproduto ); 

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
  SQL.Insert(ibpt).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.codigo).Next;
     SQL.Field(Self.FModel.ex).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.descricao).Next;
     SQL.Field(Self.FModel.nacionalfederal).Next;
     SQL.Field(Self.FModel.importadosfederal).Next;
     SQL.Field(Self.FModel.estadual).Next;
     SQL.Field(Self.FModel.municipal).Next;
     SQL.Field(Self.FModel.vigenciainicio).Next;
     SQL.Field(Self.FModel.vigenciafim).Next;
     SQL.Field(Self.FModel.chave).Next;
     SQL.Field(Self.FModel.versao).Next;
     SQL.Field(Self.FModel.fonte).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPgrupoproduto.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPgrupoproduto) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPgrupoproduto );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(ibpt);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPgrupoproduto>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPgrupoproduto.Create ); 
      Self.FModelList[I].codigo      := SQL.getInteger(codigo);
      Self.FModelList[I].ex      := SQL.getInteger(ex);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].descricao      := SQL.getInteger(descricao);
      Self.FModelList[I].nacionalfederal      := SQL.getInteger(nacionalfederal);
      Self.FModelList[I].importadosfederal      := SQL.getInteger(importadosfederal);
      Self.FModelList[I].estadual      := SQL.getInteger(estadual);
      Self.FModelList[I].municipal      := SQL.getInteger(municipal);
      Self.FModelList[I].vigenciainicio      := SQL.getInteger(vigenciainicio);
      Self.FModelList[I].vigenciafim      := SQL.getInteger(vigenciafim);
      Self.FModelList[I].chave      := SQL.getInteger(chave);
      Self.FModelList[I].versao      := SQL.getInteger(versao);
      Self.FModelList[I].fonte      := SQL.getInteger(fonte);
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

  Self.FModel := ( Model as TModelERPgrupoproduto );             

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
  SQL.Update(ibpt);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
