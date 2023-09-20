
unit Dal.ERP.lote_controle;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.lote_controle, DalBaseCRUD,
  SQLQuery;

type
  TDalERPlotecontrole = class(TDalBaseCRUD)
  private 
    FModel : TModelERPlotecontrole;  
    FModelList : TModelBaseList<TModelERPlotecontrole>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPlotecontrole.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPlotecontrole) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlotecontrole );              

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

function TDalERPlotecontrole.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPlotecontrole) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlotecontrole ); 

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
  SQL.Insert(lote_controle_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_lote).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.data_fabricacao).Next;
     SQL.Field(Self.FModel.data_validade).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.vl_unitario).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.nro_garantia).Next;
     SQL.Field(Self.FModel.data_garantia).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.icms_cupom).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_ipi).Next;
     SQL.Field(Self.FModel.diferido).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.estoque).Next;
     SQL.Field(Self.FModel.item).Next;
     SQL.Field(Self.FModel.id_grade).Next;
     SQL.Field(Self.FModel.cor_grade).Next;
     SQL.Field(Self.FModel.tam_grade).Next;
     SQL.Field(Self.FModel.devolucao).Next;
     SQL.Field(Self.FModel.id_planocelular).Next;
     SQL.Field(Self.FModel.nro_celular).Next;
     SQL.Field(Self.FModel.tipoplano).Next;
     SQL.Field(Self.FModel.valor_plano).Next;
     SQL.Field(Self.FModel.valor_recarga).Next;
     SQL.Field(Self.FModel.data_ativacao).Next;
     SQL.Field(Self.FModel.migracao_prepos).Next;
     SQL.Field(Self.FModel.troca_pospago).Next;
     SQL.Field(Self.FModel.expedicao).Next;
     SQL.Field(Self.FModel.peso_bruto).Next;
     SQL.Field(Self.FModel.peso_liquido).Next;
     SQL.Field(Self.FModel.id_carga).Next;
     SQL.Field(Self.FModel.qtd_entregue).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.vlbc_icms).Next;
     SQL.Field(Self.FModel.base_substituicao).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.lote).Next;
     SQL.Field(Self.FModel.fpb_posologia).Next;
     SQL.Field(Self.FModel.fpb_dias).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.vl_custo).Next;
     SQL.Field(Self.FModel.produtor_ativo).Next;
     SQL.Field(Self.FModel.bico).Next;
     SQL.Field(Self.FModel.ipi).Next;
     SQL.Field(Self.FModel.estoque_saida).Next;
     SQL.Field(Self.FModel.quantidade_devolucao).Next;
     SQL.Field(Self.FModel.taxa_ibpt).Next;
     SQL.Field(Self.FModel.taxa_valor).Next;
     SQL.Field(Self.FModel.cfop).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.bc_st).Next;
     SQL.Field(Self.FModel.id_pedido_alm).Next;
     SQL.Field(Self.FModel.id_produto_alm).Next;
     SQL.Field(Self.FModel.vl_fcp_uf_dest).Next;
     SQL.Field(Self.FModel.vl_icms_uf_dest).Next;
     SQL.Field(Self.FModel.vl_icms_uf_rem).Next;
     SQL.Field(Self.FModel.taxa_federal).Next;
     SQL.Field(Self.FModel.taxa_estadual).Next;
     SQL.Field(Self.FModel.taxa_municipal).Next;
     SQL.Field(Self.FModel.valor_federal).Next;
     SQL.Field(Self.FModel.valor_estadual).Next;
     SQL.Field(Self.FModel.valor_municipal).Next;
     SQL.Field(Self.FModel.qdt_devolvida).Next;
     SQL.Field(Self.FModel.cfop_externo).Next;
     SQL.Field(Self.FModel.unitario_original).Next;
     SQL.Field(Self.FModel.vl_unitario_itens_caixa).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPlotecontrole.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPlotecontrole) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPlotecontrole );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(lote_controle_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPlotecontrole>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPlotecontrole.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_lote      := SQL.getInteger(id_lote);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].data_fabricacao      := SQL.getInteger(data_fabricacao);
      Self.FModelList[I].data_validade      := SQL.getInteger(data_validade);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].vl_unitario      := SQL.getInteger(vl_unitario);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].nro_garantia      := SQL.getInteger(nro_garantia);
      Self.FModelList[I].data_garantia      := SQL.getInteger(data_garantia);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].icms_cupom      := SQL.getInteger(icms_cupom);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_ipi      := SQL.getInteger(vl_ipi);
      Self.FModelList[I].diferido      := SQL.getInteger(diferido);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].estoque      := SQL.getInteger(estoque);
      Self.FModelList[I].item      := SQL.getInteger(item);
      Self.FModelList[I].id_grade      := SQL.getInteger(id_grade);
      Self.FModelList[I].cor_grade      := SQL.getInteger(cor_grade);
      Self.FModelList[I].tam_grade      := SQL.getInteger(tam_grade);
      Self.FModelList[I].devolucao      := SQL.getInteger(devolucao);
      Self.FModelList[I].id_planocelular      := SQL.getInteger(id_planocelular);
      Self.FModelList[I].nro_celular      := SQL.getInteger(nro_celular);
      Self.FModelList[I].tipoplano      := SQL.getInteger(tipoplano);
      Self.FModelList[I].valor_plano      := SQL.getInteger(valor_plano);
      Self.FModelList[I].valor_recarga      := SQL.getInteger(valor_recarga);
      Self.FModelList[I].data_ativacao      := SQL.getInteger(data_ativacao);
      Self.FModelList[I].migracao_prepos      := SQL.getInteger(migracao_prepos);
      Self.FModelList[I].troca_pospago      := SQL.getInteger(troca_pospago);
      Self.FModelList[I].expedicao      := SQL.getInteger(expedicao);
      Self.FModelList[I].peso_bruto      := SQL.getInteger(peso_bruto);
      Self.FModelList[I].peso_liquido      := SQL.getInteger(peso_liquido);
      Self.FModelList[I].id_carga      := SQL.getInteger(id_carga);
      Self.FModelList[I].qtd_entregue      := SQL.getInteger(qtd_entregue);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].vlbc_icms      := SQL.getInteger(vlbc_icms);
      Self.FModelList[I].base_substituicao      := SQL.getInteger(base_substituicao);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].lote      := SQL.getInteger(lote);
      Self.FModelList[I].fpb_posologia      := SQL.getInteger(fpb_posologia);
      Self.FModelList[I].fpb_dias      := SQL.getInteger(fpb_dias);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].vl_custo      := SQL.getInteger(vl_custo);
      Self.FModelList[I].produtor_ativo      := SQL.getInteger(produtor_ativo);
      Self.FModelList[I].bico      := SQL.getInteger(bico);
      Self.FModelList[I].ipi      := SQL.getInteger(ipi);
      Self.FModelList[I].estoque_saida      := SQL.getInteger(estoque_saida);
      Self.FModelList[I].quantidade_devolucao      := SQL.getInteger(quantidade_devolucao);
      Self.FModelList[I].taxa_ibpt      := SQL.getInteger(taxa_ibpt);
      Self.FModelList[I].taxa_valor      := SQL.getInteger(taxa_valor);
      Self.FModelList[I].cfop      := SQL.getInteger(cfop);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].bc_st      := SQL.getInteger(bc_st);
      Self.FModelList[I].id_pedido_alm      := SQL.getInteger(id_pedido_alm);
      Self.FModelList[I].id_produto_alm      := SQL.getInteger(id_produto_alm);
      Self.FModelList[I].vl_fcp_uf_dest      := SQL.getInteger(vl_fcp_uf_dest);
      Self.FModelList[I].vl_icms_uf_dest      := SQL.getInteger(vl_icms_uf_dest);
      Self.FModelList[I].vl_icms_uf_rem      := SQL.getInteger(vl_icms_uf_rem);
      Self.FModelList[I].taxa_federal      := SQL.getInteger(taxa_federal);
      Self.FModelList[I].taxa_estadual      := SQL.getInteger(taxa_estadual);
      Self.FModelList[I].taxa_municipal      := SQL.getInteger(taxa_municipal);
      Self.FModelList[I].valor_federal      := SQL.getInteger(valor_federal);
      Self.FModelList[I].valor_estadual      := SQL.getInteger(valor_estadual);
      Self.FModelList[I].valor_municipal      := SQL.getInteger(valor_municipal);
      Self.FModelList[I].qdt_devolvida      := SQL.getInteger(qdt_devolvida);
      Self.FModelList[I].cfop_externo      := SQL.getInteger(cfop_externo);
      Self.FModelList[I].unitario_original      := SQL.getInteger(unitario_original);
      Self.FModelList[I].vl_unitario_itens_caixa      := SQL.getInteger(vl_unitario_itens_caixa);
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

  Self.FModel := ( Model as TModelERPlotecontrole );             

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
  SQL.Update(lote_controle_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
