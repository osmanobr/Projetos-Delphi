
unit Dal.ERP.conta_receber_custodia;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.conta_receber_custodia, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcontarecebercustodia = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcontarecebercustodia;  
    FModelList : TModelBaseList<TModelERPcontarecebercustodia>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcontarecebercustodia.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcontarecebercustodia) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontarecebercustodia );              

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

function TDalERPcontarecebercustodia.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcontarecebercustodia) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontarecebercustodia ); 

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
  SQL.Insert(conta_receber_fixa).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.dia).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.referente).Next;
     SQL.Field(Self.FModel.id_servico).Next;
     SQL.Field(Self.FModel.nome_servico).Next;
     SQL.Field(Self.FModel.valor_servico).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.valor_produto).Next;
     SQL.Field(Self.FModel.gera_venda).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.nome_vendedor).Next;
     SQL.Field(Self.FModel.codigo_protesto).Next;
     SQL.Field(Self.FModel.dias_protesto).Next;
     SQL.Field(Self.FModel.valor_cobranca).Next;
     SQL.Field(Self.FModel.id_empresas_boleto).Next;
     SQL.Field(Self.FModel.id_contas_fixas).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.data_inicial_cobranca).Next;
     SQL.Field(Self.FModel.alterar_valor_cobranca).Next;
     SQL.Field(Self.FModel.inicio_cobranca).Next;
     SQL.Field(Self.FModel.data_cobranca).Next;
     SQL.Field(Self.FModel.id_contador).Next;
     SQL.Field(Self.FModel.nome_contador).Next;
     SQL.Field(Self.FModel.percentual_desconto_antecipacao).Next;
     SQL.Field(Self.FModel.dias_antecipacao_desconto).Next;
     SQL.Field(Self.FModel.desconto_valor).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcontarecebercustodia.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcontarecebercustodia) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcontarecebercustodia );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(conta_receber_fixa);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcontarecebercustodia>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcontarecebercustodia.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].dia      := SQL.getInteger(dia);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].referente      := SQL.getInteger(referente);
      Self.FModelList[I].id_servico      := SQL.getInteger(id_servico);
      Self.FModelList[I].nome_servico      := SQL.getInteger(nome_servico);
      Self.FModelList[I].valor_servico      := SQL.getInteger(valor_servico);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].valor_produto      := SQL.getInteger(valor_produto);
      Self.FModelList[I].gera_venda      := SQL.getInteger(gera_venda);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].nome_vendedor      := SQL.getInteger(nome_vendedor);
      Self.FModelList[I].codigo_protesto      := SQL.getInteger(codigo_protesto);
      Self.FModelList[I].dias_protesto      := SQL.getInteger(dias_protesto);
      Self.FModelList[I].valor_cobranca      := SQL.getInteger(valor_cobranca);
      Self.FModelList[I].id_empresas_boleto      := SQL.getInteger(id_empresas_boleto);
      Self.FModelList[I].id_contas_fixas      := SQL.getInteger(id_contas_fixas);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].data_inicial_cobranca      := SQL.getInteger(data_inicial_cobranca);
      Self.FModelList[I].alterar_valor_cobranca      := SQL.getInteger(alterar_valor_cobranca);
      Self.FModelList[I].inicio_cobranca      := SQL.getInteger(inicio_cobranca);
      Self.FModelList[I].data_cobranca      := SQL.getInteger(data_cobranca);
      Self.FModelList[I].id_contador      := SQL.getInteger(id_contador);
      Self.FModelList[I].nome_contador      := SQL.getInteger(nome_contador);
      Self.FModelList[I].percentual_desconto_antecipacao      := SQL.getInteger(percentual_desconto_antecipacao);
      Self.FModelList[I].dias_antecipacao_desconto      := SQL.getInteger(dias_antecipacao_desconto);
      Self.FModelList[I].desconto_valor      := SQL.getInteger(desconto_valor);
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

  Self.FModel := ( Model as TModelERPcontarecebercustodia );             

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
  SQL.Update(conta_receber_fixa);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
