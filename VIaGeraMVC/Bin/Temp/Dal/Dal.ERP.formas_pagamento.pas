
unit Dal.ERP.formacao_preco;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.formacao_preco, DalBaseCRUD,
  SQLQuery;

type
  TDalERPformacaopreco = class(TDalBaseCRUD)
  private 
    FModel : TModelERPformacaopreco;  
    FModelList : TModelBaseList<TModelERPformacaopreco>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPformacaopreco.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPformacaopreco) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPformacaopreco );              

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

function TDalERPformacaopreco.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPformacaopreco) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPformacaopreco ); 

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
  SQL.Insert(formas_pagamento).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.condicao).Next;
     SQL.Field(Self.FModel.caixa).Next;
     SQL.Field(Self.FModel.cheque).Next;
     SQL.Field(Self.FModel.cartao).Next;
     SQL.Field(Self.FModel.cartao_condicao).Next;
     SQL.Field(Self.FModel.cartao_taxa).Next;
     SQL.Field(Self.FModel.tabela_preco).Next;
     SQL.Field(Self.FModel.comissao).Next;
     SQL.Field(Self.FModel.boleto).Next;
     SQL.Field(Self.FModel.financiadora).Next;
     SQL.Field(Self.FModel.taxa_financiadora).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.carne).Next;
     SQL.Field(Self.FModel.bandeira).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.pdv).Next;
     SQL.Field(Self.FModel.troco).Next;
     SQL.Field(Self.FModel.pdv_dinheiro).Next;
     SQL.Field(Self.FModel.pdv_cheque).Next;
     SQL.Field(Self.FModel.pdv_ticket).Next;
     SQL.Field(Self.FModel.pdv_valecompras).Next;
     SQL.Field(Self.FModel.pdv_debito).Next;
     SQL.Field(Self.FModel.pdv_credito).Next;
     SQL.Field(Self.FModel.pdv_convenio).Next;
     SQL.Field(Self.FModel.pdv_pos).Next;
     SQL.Field(Self.FModel.pdv_boleto).Next;
     SQL.Field(Self.FModel.pdv_fatura).Next;
     SQL.Field(Self.FModel.pdv_creditos).Next;
     SQL.Field(Self.FModel.pdv_outros).Next;
     SQL.Field(Self.FModel.pdv_vasilhame).Next;
     SQL.Field(Self.FModel.liberacao_venda).Next;
     SQL.Field(Self.FModel.nfce_fin).Next;
     SQL.Field(Self.FModel.nfce_bandeira).Next;
     SQL.Field(Self.FModel.inter_dias).Next;
     SQL.Field(Self.FModel.baixa_automatica).Next;
     SQL.Field(Self.FModel.baixa_intervalo).Next;
     SQL.Field(Self.FModel.baixa_caixa).Next;
     SQL.Field(Self.FModel.baixa_id_caixa).Next;
     SQL.Field(Self.FModel.baixa_id_conta).Next;
     SQL.Field(Self.FModel.financeira).Next;
     SQL.Field(Self.FModel.id_financeira).Next;
     SQL.Field(Self.FModel.deposito_transferencia).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.credito).Next;
     SQL.Field(Self.FModel.taxa_adicional).Next;
     SQL.Field(Self.FModel.taxa_antecipacao).Next;
     SQL.Field(Self.FModel.taxa_antecipacao_qd_umaparela).Next;
     SQL.Field(Self.FModel.taxa_credito_parcelado).Next;
     SQL.Field(Self.FModel.pix).Next;
     SQL.Field(Self.FModel.emissao_nfe_nfce_automatico).Next;
     SQL.Field(Self.FModel.permissao_desconto).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPformacaopreco.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPformacaopreco) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPformacaopreco );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(formas_pagamento);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPformacaopreco>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPformacaopreco.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].condicao      := SQL.getInteger(condicao);
      Self.FModelList[I].caixa      := SQL.getInteger(caixa);
      Self.FModelList[I].cheque      := SQL.getInteger(cheque);
      Self.FModelList[I].cartao      := SQL.getInteger(cartao);
      Self.FModelList[I].cartao_condicao      := SQL.getInteger(cartao_condicao);
      Self.FModelList[I].cartao_taxa      := SQL.getInteger(cartao_taxa);
      Self.FModelList[I].tabela_preco      := SQL.getInteger(tabela_preco);
      Self.FModelList[I].comissao      := SQL.getInteger(comissao);
      Self.FModelList[I].boleto      := SQL.getInteger(boleto);
      Self.FModelList[I].financiadora      := SQL.getInteger(financiadora);
      Self.FModelList[I].taxa_financiadora      := SQL.getInteger(taxa_financiadora);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].carne      := SQL.getInteger(carne);
      Self.FModelList[I].bandeira      := SQL.getInteger(bandeira);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].pdv      := SQL.getInteger(pdv);
      Self.FModelList[I].troco      := SQL.getInteger(troco);
      Self.FModelList[I].pdv_dinheiro      := SQL.getInteger(pdv_dinheiro);
      Self.FModelList[I].pdv_cheque      := SQL.getInteger(pdv_cheque);
      Self.FModelList[I].pdv_ticket      := SQL.getInteger(pdv_ticket);
      Self.FModelList[I].pdv_valecompras      := SQL.getInteger(pdv_valecompras);
      Self.FModelList[I].pdv_debito      := SQL.getInteger(pdv_debito);
      Self.FModelList[I].pdv_credito      := SQL.getInteger(pdv_credito);
      Self.FModelList[I].pdv_convenio      := SQL.getInteger(pdv_convenio);
      Self.FModelList[I].pdv_pos      := SQL.getInteger(pdv_pos);
      Self.FModelList[I].pdv_boleto      := SQL.getInteger(pdv_boleto);
      Self.FModelList[I].pdv_fatura      := SQL.getInteger(pdv_fatura);
      Self.FModelList[I].pdv_creditos      := SQL.getInteger(pdv_creditos);
      Self.FModelList[I].pdv_outros      := SQL.getInteger(pdv_outros);
      Self.FModelList[I].pdv_vasilhame      := SQL.getInteger(pdv_vasilhame);
      Self.FModelList[I].liberacao_venda      := SQL.getInteger(liberacao_venda);
      Self.FModelList[I].nfce_fin      := SQL.getInteger(nfce_fin);
      Self.FModelList[I].nfce_bandeira      := SQL.getInteger(nfce_bandeira);
      Self.FModelList[I].inter_dias      := SQL.getInteger(inter_dias);
      Self.FModelList[I].baixa_automatica      := SQL.getInteger(baixa_automatica);
      Self.FModelList[I].baixa_intervalo      := SQL.getInteger(baixa_intervalo);
      Self.FModelList[I].baixa_caixa      := SQL.getInteger(baixa_caixa);
      Self.FModelList[I].baixa_id_caixa      := SQL.getInteger(baixa_id_caixa);
      Self.FModelList[I].baixa_id_conta      := SQL.getInteger(baixa_id_conta);
      Self.FModelList[I].financeira      := SQL.getInteger(financeira);
      Self.FModelList[I].id_financeira      := SQL.getInteger(id_financeira);
      Self.FModelList[I].deposito_transferencia      := SQL.getInteger(deposito_transferencia);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].credito      := SQL.getInteger(credito);
      Self.FModelList[I].taxa_adicional      := SQL.getInteger(taxa_adicional);
      Self.FModelList[I].taxa_antecipacao      := SQL.getInteger(taxa_antecipacao);
      Self.FModelList[I].taxa_antecipacao_qd_umaparela      := SQL.getInteger(taxa_antecipacao_qd_umaparela);
      Self.FModelList[I].taxa_credito_parcelado      := SQL.getInteger(taxa_credito_parcelado);
      Self.FModelList[I].pix      := SQL.getInteger(pix);
      Self.FModelList[I].emissao_nfe_nfce_automatico      := SQL.getInteger(emissao_nfe_nfce_automatico);
      Self.FModelList[I].permissao_desconto      := SQL.getInteger(permissao_desconto);
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

  Self.FModel := ( Model as TModelERPformacaopreco );             

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
  SQL.Update(formas_pagamento);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
