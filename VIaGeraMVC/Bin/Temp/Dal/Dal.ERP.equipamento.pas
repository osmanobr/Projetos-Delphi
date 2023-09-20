
unit Dal.ERP.entrega;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.entrega, DalBaseCRUD,
  SQLQuery;

type
  TDalERPentrega = class(TDalBaseCRUD)
  private 
    FModel : TModelERPentrega;  
    FModelList : TModelBaseList<TModelERPentrega>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPentrega.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPentrega) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPentrega );              

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

function TDalERPentrega.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPentrega) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPentrega ); 

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
  SQL.Insert(equipamento).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.patrimonio).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.valor_garantia).Next;
     SQL.Field(Self.FModel.valor_locacaodia).Next;
     SQL.Field(Self.FModel.valor_locacaosemana).Next;
     SQL.Field(Self.FModel.valor_locacaoquinzenal).Next;
     SQL.Field(Self.FModel.valor_locacaomensal).Next;
     SQL.Field(Self.FModel.status).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.multi_garantia).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.tipo_locacao).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.qtd_unidade_por_metro).Next;
     SQL.Field(Self.FModel.quantidade_estoque).Next;
     SQL.Field(Self.FModel.valor_locacaoanual).Next;
     SQL.Field(Self.FModel.valor_locacaodoisanos).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPentrega.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPentrega) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPentrega );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(equipamento);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPentrega>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPentrega.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].patrimonio      := SQL.getInteger(patrimonio);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].valor_garantia      := SQL.getInteger(valor_garantia);
      Self.FModelList[I].valor_locacaodia      := SQL.getInteger(valor_locacaodia);
      Self.FModelList[I].valor_locacaosemana      := SQL.getInteger(valor_locacaosemana);
      Self.FModelList[I].valor_locacaoquinzenal      := SQL.getInteger(valor_locacaoquinzenal);
      Self.FModelList[I].valor_locacaomensal      := SQL.getInteger(valor_locacaomensal);
      Self.FModelList[I].status      := SQL.getInteger(status);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].multi_garantia      := SQL.getInteger(multi_garantia);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].tipo_locacao      := SQL.getInteger(tipo_locacao);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].qtd_unidade_por_metro      := SQL.getInteger(qtd_unidade_por_metro);
      Self.FModelList[I].quantidade_estoque      := SQL.getInteger(quantidade_estoque);
      Self.FModelList[I].valor_locacaoanual      := SQL.getInteger(valor_locacaoanual);
      Self.FModelList[I].valor_locacaodoisanos      := SQL.getInteger(valor_locacaodoisanos);
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

  Self.FModel := ( Model as TModelERPentrega );             

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
  SQL.Update(equipamento);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
