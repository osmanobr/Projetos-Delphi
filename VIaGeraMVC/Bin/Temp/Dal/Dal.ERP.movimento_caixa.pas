
unit Dal.ERP.movimento_banco;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.movimento_banco, DalBaseCRUD,
  SQLQuery;

type
  TDalERPmovimentobanco = class(TDalBaseCRUD)
  private 
    FModel : TModelERPmovimentobanco;  
    FModelList : TModelBaseList<TModelERPmovimentobanco>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPmovimentobanco.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPmovimentobanco) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmovimentobanco );              

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

function TDalERPmovimentobanco.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPmovimentobanco) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmovimentobanco ); 

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
  SQL.Insert(movimento_caixa).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_pedido).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.historico).Next;
     SQL.Field(Self.FModel.debcre).Next;
     SQL.Field(Self.FModel.tipo_pgto).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_compra).Next;
     SQL.Field(Self.FModel.id_parcela_receber).Next;
     SQL.Field(Self.FModel.id_conta_receber).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.id_pagamentos).Next;
     SQL.Field(Self.FModel.id_cliser).Next;
     SQL.Field(Self.FModel.filial).Next;
     SQL.Field(Self.FModel.matriz).Next;
     SQL.Field(Self.FModel.cancelado).Next;
     SQL.Field(Self.FModel.id_credito_cliente).Next;
     SQL.Field(Self.FModel.id_conta_receber_uniao).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPmovimentobanco.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPmovimentobanco) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPmovimentobanco );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(movimento_caixa);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPmovimentobanco>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPmovimentobanco.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_pedido      := SQL.getInteger(id_pedido);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].historico      := SQL.getInteger(historico);
      Self.FModelList[I].debcre      := SQL.getInteger(debcre);
      Self.FModelList[I].tipo_pgto      := SQL.getInteger(tipo_pgto);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_compra      := SQL.getInteger(id_compra);
      Self.FModelList[I].id_parcela_receber      := SQL.getInteger(id_parcela_receber);
      Self.FModelList[I].id_conta_receber      := SQL.getInteger(id_conta_receber);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].id_pagamentos      := SQL.getInteger(id_pagamentos);
      Self.FModelList[I].id_cliser      := SQL.getInteger(id_cliser);
      Self.FModelList[I].filial      := SQL.getInteger(filial);
      Self.FModelList[I].matriz      := SQL.getInteger(matriz);
      Self.FModelList[I].cancelado      := SQL.getInteger(cancelado);
      Self.FModelList[I].id_credito_cliente      := SQL.getInteger(id_credito_cliente);
      Self.FModelList[I].id_conta_receber_uniao      := SQL.getInteger(id_conta_receber_uniao);
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

  Self.FModel := ( Model as TModelERPmovimentobanco );             

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
  SQL.Update(movimento_caixa);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
