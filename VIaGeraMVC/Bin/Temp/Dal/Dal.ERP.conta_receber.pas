
unit Dal.ERP.conta_pagar_parceiros;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.conta_pagar_parceiros, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcontapagarparceiros = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcontapagarparceiros;  
    FModelList : TModelBaseList<TModelERPcontapagarparceiros>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcontapagarparceiros.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcontapagarparceiros) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontapagarparceiros );              

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

function TDalERPcontapagarparceiros.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcontapagarparceiros) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontapagarparceiros ); 

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
  SQL.Insert(conta_receber).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.data_pgto).Next;
     SQL.Field(Self.FModel.data_vencto).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.nota).Next;
     SQL.Field(Self.FModel.id_pedido).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_cobrador).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.tx_juros).Next;
     SQL.Field(Self.FModel.vl_juros).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.vl_divida).Next;
     SQL.Field(Self.FModel.vl_geral).Next;
     SQL.Field(Self.FModel.vl_jurospago).Next;
     SQL.Field(Self.FModel.situacao).Next;
     SQL.Field(Self.FModel.data_entrega_cobrador).Next;
     SQL.Field(Self.FModel.data_prev_pgto).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_credito).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.nova_conta).Next;
     SQL.Field(Self.FModel.id_custodia).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.desdobramento).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.arq_boleto).Next;
     SQL.Field(Self.FModel.id_uniao).Next;
     SQL.Field(Self.FModel.id_locacao).Next;
     SQL.Field(Self.FModel.protesto).Next;
     SQL.Field(Self.FModel.data_protesto).Next;
     SQL.Field(Self.FModel.valor_protesto).Next;
     SQL.Field(Self.FModel.desativada).Next;
     SQL.Field(Self.FModel.vl_apagar).Next;
     SQL.Field(Self.FModel.data_cobranca).Next;
     SQL.Field(Self.FModel.contato_cobranca).Next;
     SQL.Field(Self.FModel.id_cobrador_cobranca).Next;
     SQL.Field(Self.FModel.id_usuario_desconto).Next;
     SQL.Field(Self.FModel.percentual_usuario_desconto).Next;
     SQL.Field(Self.FModel.taxa_bancaria).Next;
     SQL.Field(Self.FModel.custodia).Next;
     SQL.Field(Self.FModel.id_empresas_boleto).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.id_pagamentos).Next;
     SQL.Field(Self.FModel.identifica_carteira).Next;
     SQL.Field(Self.FModel.codigo_protesto).Next;
     SQL.Field(Self.FModel.dias_protesto).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.usuario_click).Next;
     SQL.Field(Self.FModel.nfce).Next;
     SQL.Field(Self.FModel.id_contacorrente).Next;
     SQL.Field(Self.FModel.id_dependente).Next;
     SQL.Field(Self.FModel.boleto_web).Next;
     SQL.Field(Self.FModel.excluido).Next;
     SQL.Field(Self.FModel.id_fixa).Next;
     SQL.Field(Self.FModel.enviar_email).Next;
     SQL.Field(Self.FModel.data_boleto_web).Next;
     SQL.Field(Self.FModel.ocorrencia_bancaria).Next;
     SQL.Field(Self.FModel.id_cliser).Next;
     SQL.Field(Self.FModel.filial).Next;
     SQL.Field(Self.FModel.matriz).Next;
     SQL.Field(Self.FModel.multa).Next;
     SQL.Field(Self.FModel.nosso_numero).Next;
     SQL.Field(Self.FModel.lancamento_credito_cliente).Next;
     SQL.Field(Self.FModel.percentual_multa).Next;
     SQL.Field(Self.FModel.vl_multa_paga).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcontapagarparceiros.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcontapagarparceiros) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcontapagarparceiros );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(conta_receber);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcontapagarparceiros>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcontapagarparceiros.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].data_pgto      := SQL.getInteger(data_pgto);
      Self.FModelList[I].data_vencto      := SQL.getInteger(data_vencto);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].nota      := SQL.getInteger(nota);
      Self.FModelList[I].id_pedido      := SQL.getInteger(id_pedido);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_cobrador      := SQL.getInteger(id_cobrador);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].tx_juros      := SQL.getInteger(tx_juros);
      Self.FModelList[I].vl_juros      := SQL.getInteger(vl_juros);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].vl_divida      := SQL.getInteger(vl_divida);
      Self.FModelList[I].vl_geral      := SQL.getInteger(vl_geral);
      Self.FModelList[I].vl_jurospago      := SQL.getInteger(vl_jurospago);
      Self.FModelList[I].situacao      := SQL.getInteger(situacao);
      Self.FModelList[I].data_entrega_cobrador      := SQL.getInteger(data_entrega_cobrador);
      Self.FModelList[I].data_prev_pgto      := SQL.getInteger(data_prev_pgto);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_credito      := SQL.getInteger(id_credito);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].nova_conta      := SQL.getInteger(nova_conta);
      Self.FModelList[I].id_custodia      := SQL.getInteger(id_custodia);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].desdobramento      := SQL.getInteger(desdobramento);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].arq_boleto      := SQL.getInteger(arq_boleto);
      Self.FModelList[I].id_uniao      := SQL.getInteger(id_uniao);
      Self.FModelList[I].id_locacao      := SQL.getInteger(id_locacao);
      Self.FModelList[I].protesto      := SQL.getInteger(protesto);
      Self.FModelList[I].data_protesto      := SQL.getInteger(data_protesto);
      Self.FModelList[I].valor_protesto      := SQL.getInteger(valor_protesto);
      Self.FModelList[I].desativada      := SQL.getInteger(desativada);
      Self.FModelList[I].vl_apagar      := SQL.getInteger(vl_apagar);
      Self.FModelList[I].data_cobranca      := SQL.getInteger(data_cobranca);
      Self.FModelList[I].contato_cobranca      := SQL.getInteger(contato_cobranca);
      Self.FModelList[I].id_cobrador_cobranca      := SQL.getInteger(id_cobrador_cobranca);
      Self.FModelList[I].id_usuario_desconto      := SQL.getInteger(id_usuario_desconto);
      Self.FModelList[I].percentual_usuario_desconto      := SQL.getInteger(percentual_usuario_desconto);
      Self.FModelList[I].taxa_bancaria      := SQL.getInteger(taxa_bancaria);
      Self.FModelList[I].custodia      := SQL.getInteger(custodia);
      Self.FModelList[I].id_empresas_boleto      := SQL.getInteger(id_empresas_boleto);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].id_pagamentos      := SQL.getInteger(id_pagamentos);
      Self.FModelList[I].identifica_carteira      := SQL.getInteger(identifica_carteira);
      Self.FModelList[I].codigo_protesto      := SQL.getInteger(codigo_protesto);
      Self.FModelList[I].dias_protesto      := SQL.getInteger(dias_protesto);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].usuario_click      := SQL.getInteger(usuario_click);
      Self.FModelList[I].nfce      := SQL.getInteger(nfce);
      Self.FModelList[I].id_contacorrente      := SQL.getInteger(id_contacorrente);
      Self.FModelList[I].id_dependente      := SQL.getInteger(id_dependente);
      Self.FModelList[I].boleto_web      := SQL.getInteger(boleto_web);
      Self.FModelList[I].excluido      := SQL.getInteger(excluido);
      Self.FModelList[I].id_fixa      := SQL.getInteger(id_fixa);
      Self.FModelList[I].enviar_email      := SQL.getInteger(enviar_email);
      Self.FModelList[I].data_boleto_web      := SQL.getInteger(data_boleto_web);
      Self.FModelList[I].ocorrencia_bancaria      := SQL.getInteger(ocorrencia_bancaria);
      Self.FModelList[I].id_cliser      := SQL.getInteger(id_cliser);
      Self.FModelList[I].filial      := SQL.getInteger(filial);
      Self.FModelList[I].matriz      := SQL.getInteger(matriz);
      Self.FModelList[I].multa      := SQL.getInteger(multa);
      Self.FModelList[I].nosso_numero      := SQL.getInteger(nosso_numero);
      Self.FModelList[I].lancamento_credito_cliente      := SQL.getInteger(lancamento_credito_cliente);
      Self.FModelList[I].percentual_multa      := SQL.getInteger(percentual_multa);
      Self.FModelList[I].vl_multa_paga      := SQL.getInteger(vl_multa_paga);
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

  Self.FModel := ( Model as TModelERPcontapagarparceiros );             

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
  SQL.Update(conta_receber);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
