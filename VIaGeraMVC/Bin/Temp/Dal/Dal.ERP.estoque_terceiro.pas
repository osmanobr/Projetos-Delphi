
unit Dal.ERP.estoque_insumo;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.estoque_insumo, DalBaseCRUD,
  SQLQuery;

type
  TDalERPestoqueinsumo = class(TDalBaseCRUD)
  private 
    FModel : TModelERPestoqueinsumo;  
    FModelList : TModelBaseList<TModelERPestoqueinsumo>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPestoqueinsumo.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPestoqueinsumo) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPestoqueinsumo );              

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

function TDalERPestoqueinsumo.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPestoqueinsumo) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPestoqueinsumo ); 

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
  SQL.Insert(estoque_terceiro).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.quantidade_empresa_terceiro).Next;
     SQL.Field(Self.FModel.quantidade_terceiro_empresa).Next;
     SQL.Field(Self.FModel.estoque).Next;
     SQL.Field(Self.FModel.chave_nfe).Next;
     SQL.Field(Self.FModel.datahora).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.operacao).Next;
     SQL.Field(Self.FModel.id_operacao).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPestoqueinsumo.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPestoqueinsumo) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPestoqueinsumo );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(estoque_terceiro);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPestoqueinsumo>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPestoqueinsumo.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].quantidade_empresa_terceiro      := SQL.getInteger(quantidade_empresa_terceiro);
      Self.FModelList[I].quantidade_terceiro_empresa      := SQL.getInteger(quantidade_terceiro_empresa);
      Self.FModelList[I].estoque      := SQL.getInteger(estoque);
      Self.FModelList[I].chave_nfe      := SQL.getInteger(chave_nfe);
      Self.FModelList[I].datahora      := SQL.getInteger(datahora);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].operacao      := SQL.getInteger(operacao);
      Self.FModelList[I].id_operacao      := SQL.getInteger(id_operacao);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
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

  Self.FModel := ( Model as TModelERPestoqueinsumo );             

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
  SQL.Update(estoque_terceiro);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
