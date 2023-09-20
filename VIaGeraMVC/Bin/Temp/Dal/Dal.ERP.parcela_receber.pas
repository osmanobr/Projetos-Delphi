
unit Dal.ERP.parcela_pagar;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.parcela_pagar, DalBaseCRUD,
  SQLQuery;

type
  TDalERPparcelapagar = class(TDalBaseCRUD)
  private 
    FModel : TModelERPparcelapagar;  
    FModelList : TModelBaseList<TModelERPparcelapagar>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPparcelapagar.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPparcelapagar) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparcelapagar );              

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

function TDalERPparcelapagar.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPparcelapagar) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparcelapagar ); 

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
  SQL.Insert(parcela_receber).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_conta_receber).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_contacorrente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.data_pgto).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.vl_juros).Next;
     SQL.Field(Self.FModel.vl_jurospago).Next;
     SQL.Field(Self.FModel.debcre).Next;
     SQL.Field(Self.FModel.id_cobrador).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_credito).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.baixa_manual).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.id_pagamentos).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.multa_paga).Next;
     SQL.Field(Self.FModel.id_conta_receber_uniao).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPparcelapagar.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPparcelapagar) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPparcelapagar );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(parcela_receber);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPparcelapagar>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPparcelapagar.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_conta_receber      := SQL.getInteger(id_conta_receber);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_contacorrente      := SQL.getInteger(id_contacorrente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].data_pgto      := SQL.getInteger(data_pgto);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].vl_juros      := SQL.getInteger(vl_juros);
      Self.FModelList[I].vl_jurospago      := SQL.getInteger(vl_jurospago);
      Self.FModelList[I].debcre      := SQL.getInteger(debcre);
      Self.FModelList[I].id_cobrador      := SQL.getInteger(id_cobrador);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_credito      := SQL.getInteger(id_credito);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].baixa_manual      := SQL.getInteger(baixa_manual);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].id_pagamentos      := SQL.getInteger(id_pagamentos);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].multa_paga      := SQL.getInteger(multa_paga);
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

  Self.FModel := ( Model as TModelERPparcelapagar );             

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
  SQL.Update(parcela_receber);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
