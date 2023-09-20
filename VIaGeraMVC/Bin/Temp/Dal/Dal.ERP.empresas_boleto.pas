
unit Dal.ERP.empresas;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresas = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresas;  
    FModelList : TModelBaseList<TModelERPempresas>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresas.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresas) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresas );              

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

function TDalERPempresas.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresas) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresas ); 

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
  SQL.Insert(empresas_boleto).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.banco).Next;
     SQL.Field(Self.FModel.agencia).Next;
     SQL.Field(Self.FModel.agencia_digito).Next;
     SQL.Field(Self.FModel.codigo_cedente).Next;
     SQL.Field(Self.FModel.conta).Next;
     SQL.Field(Self.FModel.conta_digito).Next;
     SQL.Field(Self.FModel.convenio).Next;
     SQL.Field(Self.FModel.tipo_inscricao).Next;
     SQL.Field(Self.FModel.local_pagamento).Next;
     SQL.Field(Self.FModel.especie_documento).Next;
     SQL.Field(Self.FModel.especie_moeda).Next;
     SQL.Field(Self.FModel.carteira).Next;
     SQL.Field(Self.FModel.mensagem).Next;
     SQL.Field(Self.FModel.instrucao_1).Next;
     SQL.Field(Self.FModel.instrucao_2).Next;
     SQL.Field(Self.FModel.aceite).Next;
     SQL.Field(Self.FModel.tamanho_convenio).Next;
     SQL.Field(Self.FModel.mensagem_padrao).Next;
     SQL.Field(Self.FModel.tamanho_nosso_numero).Next;
     SQL.Field(Self.FModel.id_boleto).Next;
     SQL.Field(Self.FModel.remessa).Next;
     SQL.Field(Self.FModel.identificacao_carteira).Next;
     SQL.Field(Self.FModel.imprimir_numero_nfe).Next;
     SQL.Field(Self.FModel.codigo_protesto).Next;
     SQL.Field(Self.FModel.dias_protesto).Next;
     SQL.Field(Self.FModel.retorno_completo).Next;
     SQL.Field(Self.FModel.numero_remessa).Next;
     SQL.Field(Self.FModel.modalidade).Next;
     SQL.Field(Self.FModel.data_ultima_remessa).Next;
     SQL.Field(Self.FModel.sequencia_remessa).Next;
     SQL.Field(Self.FModel.pasta_remessa).Next;
     SQL.Field(Self.FModel.pasta_retorno).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.multa).Next;
     SQL.Field(Self.FModel.juros_mes).Next;
     SQL.Field(Self.FModel.juros_dia).Next;
     SQL.Field(Self.FModel.desc_abatimento).Next;
     SQL.Field(Self.FModel.conta_retorno).Next;
     SQL.Field(Self.FModel.conta_digito_retorno).Next;
     SQL.Field(Self.FModel.imprimir_juros).Next;
     SQL.Field(Self.FModel.imprimir_multa).Next;
     SQL.Field(Self.FModel.desconto_antecipacao).Next;
     SQL.Field(Self.FModel.dias_antecipacao).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.tamanho_documento).Next;
     SQL.Field(Self.FModel.imprimir_observacao_venda).Next;
     SQL.Field(Self.FModel.desconto_valor).Next;
     SQL.Field(Self.FModel.carencia_pgto_multa).Next;
     SQL.Field(Self.FModel.carencia_pgto_juros).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresas.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresas) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresas );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_boleto);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresas>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresas.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].banco      := SQL.getInteger(banco);
      Self.FModelList[I].agencia      := SQL.getInteger(agencia);
      Self.FModelList[I].agencia_digito      := SQL.getInteger(agencia_digito);
      Self.FModelList[I].codigo_cedente      := SQL.getInteger(codigo_cedente);
      Self.FModelList[I].conta      := SQL.getInteger(conta);
      Self.FModelList[I].conta_digito      := SQL.getInteger(conta_digito);
      Self.FModelList[I].convenio      := SQL.getInteger(convenio);
      Self.FModelList[I].tipo_inscricao      := SQL.getInteger(tipo_inscricao);
      Self.FModelList[I].local_pagamento      := SQL.getInteger(local_pagamento);
      Self.FModelList[I].especie_documento      := SQL.getInteger(especie_documento);
      Self.FModelList[I].especie_moeda      := SQL.getInteger(especie_moeda);
      Self.FModelList[I].carteira      := SQL.getInteger(carteira);
      Self.FModelList[I].mensagem      := SQL.getInteger(mensagem);
      Self.FModelList[I].instrucao_1      := SQL.getInteger(instrucao_1);
      Self.FModelList[I].instrucao_2      := SQL.getInteger(instrucao_2);
      Self.FModelList[I].aceite      := SQL.getInteger(aceite);
      Self.FModelList[I].tamanho_convenio      := SQL.getInteger(tamanho_convenio);
      Self.FModelList[I].mensagem_padrao      := SQL.getInteger(mensagem_padrao);
      Self.FModelList[I].tamanho_nosso_numero      := SQL.getInteger(tamanho_nosso_numero);
      Self.FModelList[I].id_boleto      := SQL.getInteger(id_boleto);
      Self.FModelList[I].remessa      := SQL.getInteger(remessa);
      Self.FModelList[I].identificacao_carteira      := SQL.getInteger(identificacao_carteira);
      Self.FModelList[I].imprimir_numero_nfe      := SQL.getInteger(imprimir_numero_nfe);
      Self.FModelList[I].codigo_protesto      := SQL.getInteger(codigo_protesto);
      Self.FModelList[I].dias_protesto      := SQL.getInteger(dias_protesto);
      Self.FModelList[I].retorno_completo      := SQL.getInteger(retorno_completo);
      Self.FModelList[I].numero_remessa      := SQL.getInteger(numero_remessa);
      Self.FModelList[I].modalidade      := SQL.getInteger(modalidade);
      Self.FModelList[I].data_ultima_remessa      := SQL.getInteger(data_ultima_remessa);
      Self.FModelList[I].sequencia_remessa      := SQL.getInteger(sequencia_remessa);
      Self.FModelList[I].pasta_remessa      := SQL.getInteger(pasta_remessa);
      Self.FModelList[I].pasta_retorno      := SQL.getInteger(pasta_retorno);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].multa      := SQL.getInteger(multa);
      Self.FModelList[I].juros_mes      := SQL.getInteger(juros_mes);
      Self.FModelList[I].juros_dia      := SQL.getInteger(juros_dia);
      Self.FModelList[I].desc_abatimento      := SQL.getInteger(desc_abatimento);
      Self.FModelList[I].conta_retorno      := SQL.getInteger(conta_retorno);
      Self.FModelList[I].conta_digito_retorno      := SQL.getInteger(conta_digito_retorno);
      Self.FModelList[I].imprimir_juros      := SQL.getInteger(imprimir_juros);
      Self.FModelList[I].imprimir_multa      := SQL.getInteger(imprimir_multa);
      Self.FModelList[I].desconto_antecipacao      := SQL.getInteger(desconto_antecipacao);
      Self.FModelList[I].dias_antecipacao      := SQL.getInteger(dias_antecipacao);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].tamanho_documento      := SQL.getInteger(tamanho_documento);
      Self.FModelList[I].imprimir_observacao_venda      := SQL.getInteger(imprimir_observacao_venda);
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

  Self.FModel := ( Model as TModelERPempresas );             

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
  SQL.Update(empresas_boleto);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
