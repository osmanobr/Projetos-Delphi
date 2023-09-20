
unit Dal.ERP.d;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.d, DalBaseCRUD,
  SQLQuery;

type
  TDalERPd = class(TDalBaseCRUD)
  private 
    FModel : TModelERPd;  
    FModelList : TModelBaseList<TModelERPd>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPd.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPd) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPd );              

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

function TDalERPd.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPd) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPd ); 

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
  SQL.Insert(dados_boleto).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa_from_conta_receber).Next;
     SQL.Field(Self.FModel.id_empresa_from_empresas_boleto).Next;
     SQL.Field(Self.FModel.id_conta_receber).Next;
     SQL.Field(Self.FModel.id_empresas_boleto).Next;
     SQL.Field(Self.FModel.nosso_numero).Next;
     SQL.Field(Self.FModel.percentual_multa).Next;
     SQL.Field(Self.FModel.percentual_desconto_abatimento).Next;
     SQL.Field(Self.FModel.dias_antecipacao_desconto).Next;
     SQL.Field(Self.FModel.percentual_desconto_antecipacao).Next;
     SQL.Field(Self.FModel.vencto_original).Next;
     SQL.Field(Self.FModel.codigo_protesto).Next;
     SQL.Field(Self.FModel.dias_protesto).Next;
     SQL.Field(Self.FModel.baixado).Next;
     SQL.Field(Self.FModel.data_instrucao_baixa).Next;
     SQL.Field(Self.FModel.data_registro_baixa).Next;
     SQL.Field(Self.FModel.registrado).Next;
     SQL.Field(Self.FModel.data_registro).Next;
     SQL.Field(Self.FModel.rejeitado).Next;
     SQL.Field(Self.FModel.motivo_rejeicao).Next;
     SQL.Field(Self.FModel.historico).Next;
     SQL.Field(Self.FModel.desconto_valor).Next;
     SQL.Field(Self.FModel.carencia_pgto_multa).Next;
     SQL.Field(Self.FModel.carencia_pgto_juros).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPd.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPd) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPd );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(dados_boleto);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPd>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPd.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa_from_conta_receber      := SQL.getInteger(id_empresa_from_conta_receber);
      Self.FModelList[I].id_empresa_from_empresas_boleto      := SQL.getInteger(id_empresa_from_empresas_boleto);
      Self.FModelList[I].id_conta_receber      := SQL.getInteger(id_conta_receber);
      Self.FModelList[I].id_empresas_boleto      := SQL.getInteger(id_empresas_boleto);
      Self.FModelList[I].nosso_numero      := SQL.getInteger(nosso_numero);
      Self.FModelList[I].percentual_multa      := SQL.getInteger(percentual_multa);
      Self.FModelList[I].percentual_desconto_abatimento      := SQL.getInteger(percentual_desconto_abatimento);
      Self.FModelList[I].dias_antecipacao_desconto      := SQL.getInteger(dias_antecipacao_desconto);
      Self.FModelList[I].percentual_desconto_antecipacao      := SQL.getInteger(percentual_desconto_antecipacao);
      Self.FModelList[I].vencto_original      := SQL.getInteger(vencto_original);
      Self.FModelList[I].codigo_protesto      := SQL.getInteger(codigo_protesto);
      Self.FModelList[I].dias_protesto      := SQL.getInteger(dias_protesto);
      Self.FModelList[I].baixado      := SQL.getInteger(baixado);
      Self.FModelList[I].data_instrucao_baixa      := SQL.getInteger(data_instrucao_baixa);
      Self.FModelList[I].data_registro_baixa      := SQL.getInteger(data_registro_baixa);
      Self.FModelList[I].registrado      := SQL.getInteger(registrado);
      Self.FModelList[I].data_registro      := SQL.getInteger(data_registro);
      Self.FModelList[I].rejeitado      := SQL.getInteger(rejeitado);
      Self.FModelList[I].motivo_rejeicao      := SQL.getInteger(motivo_rejeicao);
      Self.FModelList[I].historico      := SQL.getInteger(historico);
      Self.FModelList[I].desconto_valor      := SQL.getInteger(desconto_valor);
      Self.FModelList[I].carencia_pgto_multa      := SQL.getInteger(carencia_pgto_multa);
      Self.FModelList[I].carencia_pgto_juros      := SQL.getInteger(carencia_pgto_juros);
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

  Self.FModel := ( Model as TModelERPd );             

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
  SQL.Update(dados_boleto);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
