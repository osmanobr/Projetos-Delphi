
unit Dal.ERP.equipamento;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.equipamento, DalBaseCRUD,
  SQLQuery;

type
  TDalERPequipamento = class(TDalBaseCRUD)
  private 
    FModel : TModelERPequipamento;  
    FModelList : TModelBaseList<TModelERPequipamento>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPequipamento.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPequipamento) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPequipamento );              

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

function TDalERPequipamento.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPequipamento) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPequipamento ); 

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
  SQL.Insert(estimativa_obra).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_obra).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_usuario_change).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.nome_obra).Next;
     SQL.Field(Self.FModel.valor_produtos).Next;
     SQL.Field(Self.FModel.valor_servico).Next;
     SQL.Field(Self.FModel.valor_total).Next;
     SQL.Field(Self.FModel.valor_produtos_entregue).Next;
     SQL.Field(Self.FModel.valor_servico_pago).Next;
     SQL.Field(Self.FModel.valor_produtos_pagos).Next;
     SQL.Field(Self.FModel.quantidade_total).Next;
     SQL.Field(Self.FModel.quantidade_entregue).Next;
     SQL.Field(Self.FModel.fechada).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.valor_total_pago).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.encerrada).Next;
     SQL.Field(Self.FModel.formas_pagamento).Next;
     SQL.Field(Self.FModel.valor_custo).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPequipamento.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPequipamento) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPequipamento );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(estimativa_obra);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPequipamento>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPequipamento.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_obra      := SQL.getInteger(id_obra);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_usuario_change      := SQL.getInteger(id_usuario_change);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].nome_obra      := SQL.getInteger(nome_obra);
      Self.FModelList[I].valor_produtos      := SQL.getInteger(valor_produtos);
      Self.FModelList[I].valor_servico      := SQL.getInteger(valor_servico);
      Self.FModelList[I].valor_total      := SQL.getInteger(valor_total);
      Self.FModelList[I].valor_produtos_entregue      := SQL.getInteger(valor_produtos_entregue);
      Self.FModelList[I].valor_servico_pago      := SQL.getInteger(valor_servico_pago);
      Self.FModelList[I].valor_produtos_pagos      := SQL.getInteger(valor_produtos_pagos);
      Self.FModelList[I].quantidade_total      := SQL.getInteger(quantidade_total);
      Self.FModelList[I].quantidade_entregue      := SQL.getInteger(quantidade_entregue);
      Self.FModelList[I].fechada      := SQL.getInteger(fechada);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].valor_total_pago      := SQL.getInteger(valor_total_pago);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].encerrada      := SQL.getInteger(encerrada);
      Self.FModelList[I].formas_pagamento      := SQL.getInteger(formas_pagamento);
      Self.FModelList[I].valor_custo      := SQL.getInteger(valor_custo);
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

  Self.FModel := ( Model as TModelERPequipamento );             

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
  SQL.Update(estimativa_obra);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
