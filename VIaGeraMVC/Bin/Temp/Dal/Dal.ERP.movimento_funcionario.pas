
unit Dal.ERP.movimento_financeira;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.movimento_financeira, DalBaseCRUD,
  SQLQuery;

type
  TDalERPmovimentofinanceira = class(TDalBaseCRUD)
  private 
    FModel : TModelERPmovimentofinanceira;  
    FModelList : TModelBaseList<TModelERPmovimentofinanceira>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPmovimentofinanceira.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPmovimentofinanceira) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmovimentofinanceira );              

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

function TDalERPmovimentofinanceira.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPmovimentofinanceira) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmovimentofinanceira ); 

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
  SQL.Insert(movimento_funcionario).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.debcre).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.data_baixa).Next;
     SQL.Field(Self.FModel.situacao).Next;
     SQL.Field(Self.FModel.operacao).Next;
     SQL.Field(Self.FModel.id_operacao).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.id_conta_pagar).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPmovimentofinanceira.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPmovimentofinanceira) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPmovimentofinanceira );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(movimento_funcionario);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPmovimentofinanceira>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPmovimentofinanceira.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].debcre      := SQL.getInteger(debcre);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].data_baixa      := SQL.getInteger(data_baixa);
      Self.FModelList[I].situacao      := SQL.getInteger(situacao);
      Self.FModelList[I].operacao      := SQL.getInteger(operacao);
      Self.FModelList[I].id_operacao      := SQL.getInteger(id_operacao);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].id_conta_pagar      := SQL.getInteger(id_conta_pagar);
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

  Self.FModel := ( Model as TModelERPmovimentofinanceira );             

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
  SQL.Update(movimento_funcionario);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
