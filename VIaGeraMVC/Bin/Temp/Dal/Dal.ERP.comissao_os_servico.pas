
unit Dal.ERP.comissao_os_produto;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.comissao_os_produto, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcomissaoosproduto = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcomissaoosproduto;  
    FModelList : TModelBaseList<TModelERPcomissaoosproduto>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcomissaoosproduto.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcomissaoosproduto) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcomissaoosproduto );              

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

function TDalERPcomissaoosproduto.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcomissaoosproduto) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcomissaoosproduto ); 

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
  SQL.Insert(comissao_os_servico).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_servico).Next;
     SQL.Field(Self.FModel.nome_servico).Next;
     SQL.Field(Self.FModel.vl_unitario).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.desconto_servico).Next;
     SQL.Field(Self.FModel.total_servico).Next;
     SQL.Field(Self.FModel.vl_comissao).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.avistaaprazo).Next;
     SQL.Field(Self.FModel.operacao).Next;
     SQL.Field(Self.FModel.comissao).Next;
     SQL.Field(Self.FModel.pago).Next;
     SQL.Field(Self.FModel.click).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcomissaoosproduto.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcomissaoosproduto) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcomissaoosproduto );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(comissao_os_servico);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcomissaoosproduto>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcomissaoosproduto.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_servico      := SQL.getInteger(id_servico);
      Self.FModelList[I].nome_servico      := SQL.getInteger(nome_servico);
      Self.FModelList[I].vl_unitario      := SQL.getInteger(vl_unitario);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].desconto_servico      := SQL.getInteger(desconto_servico);
      Self.FModelList[I].total_servico      := SQL.getInteger(total_servico);
      Self.FModelList[I].vl_comissao      := SQL.getInteger(vl_comissao);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].avistaaprazo      := SQL.getInteger(avistaaprazo);
      Self.FModelList[I].operacao      := SQL.getInteger(operacao);
      Self.FModelList[I].comissao      := SQL.getInteger(comissao);
      Self.FModelList[I].pago      := SQL.getInteger(pago);
      Self.FModelList[I].click      := SQL.getInteger(click);
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

  Self.FModel := ( Model as TModelERPcomissaoosproduto );             

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
  SQL.Update(comissao_os_servico);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
