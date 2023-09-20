
unit Dal.ERP.veiculos_transporte;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.veiculos_transporte, DalBaseCRUD,
  SQLQuery;

type
  TDalERPveiculostransporte = class(TDalBaseCRUD)
  private 
    FModel : TModelERPveiculostransporte;  
    FModelList : TModelBaseList<TModelERPveiculostransporte>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPveiculostransporte.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPveiculostransporte) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculostransporte );              

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

function TDalERPveiculostransporte.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPveiculostransporte) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculostransporte ); 

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
  SQL.Insert(venda).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.nota).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.hora).Next;
     SQL.Field(Self.FModel.data_saida).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_transportadora).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.id_credito).Next;
     SQL.Field(Self.FModel.vl_produto).Next;
     SQL.Field(Self.FModel.vl_servico).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.vl_seguro).Next;
     SQL.Field(Self.FModel.vl_outras).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.vl_troco).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.base_ipi).Next;
     SQL.Field(Self.FModel.base_substituicao).Next;
     SQL.Field(Self.FModel.qtd_itens).Next;
     SQL.Field(Self.FModel.percentual_desconto).Next;
     SQL.Field(Self.FModel.peso_bruto).Next;
     SQL.Field(Self.FModel.peso_liquido).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.rateio).Next;
     SQL.Field(Self.FModel.duplicatacheque).Next;
     SQL.Field(Self.FModel.parcelas).Next;
     SQL.Field(Self.FModel.vl_juros).Next;
     SQL.Field(Self.FModel.comentrada).Next;
     SQL.Field(Self.FModel.intervalo).Next;
     SQL.Field(Self.FModel.dia).Next;
     SQL.Field(Self.FModel.cotacao).Next;
     SQL.Field(Self.FModel.id_usuario_desconto).Next;
     SQL.Field(Self.FModel.percentual_usuario_desconto).Next;
     SQL.Field(Self.FModel.id_rota).Next;
     SQL.Field(Self.FModel.id_tabela_preco).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.juros).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.motorista).Next;
     SQL.Field(Self.FModel.uso).Next;
     SQL.Field(Self.FModel.devolucao).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.expedicao).Next;
     SQL.Field(Self.FModel.id_carga).Next;
     SQL.Field(Self.FModel.vl_iss).Next;
     SQL.Field(Self.FModel.id_palm).Next;
     SQL.Field(Self.FModel.id_coringa).Next;
     SQL.Field(Self.FModel.entregafutura).Next;
     SQL.Field(Self.FModel.id_supervisor).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.nfe_chave).Next;
     SQL.Field(Self.FModel.volume_quantidade).Next;
     SQL.Field(Self.FModel.volume_numero).Next;
     SQL.Field(Self.FModel.especie).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.vl_devolucao).Next;
     SQL.Field(Self.FModel.nfe_protocolo).Next;
     SQL.Field(Self.FModel.bonificacao).Next;
     SQL.Field(Self.FModel.frete).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.nf_manual).Next;
     SQL.Field(Self.FModel.servidor).Next;
     SQL.Field(Self.FModel.fabricacao).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.id_prescritor).Next;
     SQL.Field(Self.FModel.tipo_receituario).Next;
     SQL.Field(Self.FModel.notificacao).Next;
     SQL.Field(Self.FModel.fpb).Next;
     SQL.Field(Self.FModel.fpb_parcela_ms).Next;
     SQL.Field(Self.FModel.vl_custo_prod).Next;
     SQL.Field(Self.FModel.vl_custo_serv).Next;
     SQL.Field(Self.FModel.produtor_ativo).Next;
     SQL.Field(Self.FModel.nfe_placa).Next;
     SQL.Field(Self.FModel.reativacao).Next;
     SQL.Field(Self.FModel.venda_bloqueada).Next;
     SQL.Field(Self.FModel.codigo_liberacao).Next;
     SQL.Field(Self.FModel.id_uniao).Next;
     SQL.Field(Self.FModel.data_saidanf).Next;
     SQL.Field(Self.FModel.hora_saidanf).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.bc_st).Next;
     SQL.Field(Self.FModel.romaneio).Next;
     SQL.Field(Self.FModel.ecf).Next;
     SQL.Field(Self.FModel.nfce).Next;
     SQL.Field(Self.FModel.nfce_chave).Next;
     SQL.Field(Self.FModel.nfce_protocolo).Next;
     SQL.Field(Self.FModel.vl_custo).Next;
     SQL.Field(Self.FModel.pedido_alm).Next;
     SQL.Field(Self.FModel.id_obra).Next;
     SQL.Field(Self.FModel.id_estimativa).Next;
     SQL.Field(Self.FModel.id_motorista).Next;
     SQL.Field(Self.FModel.id_veiculo).Next;
     SQL.Field(Self.FModel.id_pedido_carregamento).Next;
     SQL.Field(Self.FModel.id_funcionario_faturista).Next;
     SQL.Field(Self.FModel.id_funcionario_producao).Next;
     SQL.Field(Self.FModel.descartaveis).Next;
     SQL.Field(Self.FModel.nfce_chave_cnt).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.nfe_protocolo_cancelada).Next;
     SQL.Field(Self.FModel.busca).Next;
     SQL.Field(Self.FModel.troca).Next;
     SQL.Field(Self.FModel.id_responsavel_tecnico).Next;
     SQL.Field(Self.FModel.nf_uniao).Next;
     SQL.Field(Self.FModel.nfce_protocolo_cancelada).Next;
     SQL.Field(Self.FModel.vl_acrescimo).Next;
     SQL.Field(Self.FModel.id_contacorrente).Next;
     SQL.Field(Self.FModel.impri_orca).Next;
     SQL.Field(Self.FModel.nf_denegada).Next;
     SQL.Field(Self.FModel.num_pedido_compra).Next;
     SQL.Field(Self.FModel.data_cancelamento).Next;
     SQL.Field(Self.FModel.id_usuario_cancelamento).Next;
     SQL.Field(Self.FModel.uniao).Next;
     SQL.Field(Self.FModel.data_protocolo_nfe).Next;
     SQL.Field(Self.FModel.id_cliente_inscricao_estadual).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPveiculostransporte.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPveiculostransporte) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPveiculostransporte );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(venda);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPveiculostransporte>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPveiculostransporte.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].nota      := SQL.getInteger(nota);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].hora      := SQL.getInteger(hora);
      Self.FModelList[I].data_saida      := SQL.getInteger(data_saida);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_transportadora      := SQL.getInteger(id_transportadora);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].id_credito      := SQL.getInteger(id_credito);
      Self.FModelList[I].vl_produto      := SQL.getInteger(vl_produto);
      Self.FModelList[I].vl_servico      := SQL.getInteger(vl_servico);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].vl_seguro      := SQL.getInteger(vl_seguro);
      Self.FModelList[I].vl_outras      := SQL.getInteger(vl_outras);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].vl_troco      := SQL.getInteger(vl_troco);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].base_ipi      := SQL.getInteger(base_ipi);
      Self.FModelList[I].base_substituicao      := SQL.getInteger(base_substituicao);
      Self.FModelList[I].qtd_itens      := SQL.getInteger(qtd_itens);
      Self.FModelList[I].percentual_desconto      := SQL.getInteger(percentual_desconto);
      Self.FModelList[I].peso_bruto      := SQL.getInteger(peso_bruto);
      Self.FModelList[I].peso_liquido      := SQL.getInteger(peso_liquido);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].rateio      := SQL.getInteger(rateio);
      Self.FModelList[I].duplicatacheque      := SQL.getInteger(duplicatacheque);
      Self.FModelList[I].parcelas      := SQL.getInteger(parcelas);
      Self.FModelList[I].vl_juros      := SQL.getInteger(vl_juros);
      Self.FModelList[I].comentrada      := SQL.getInteger(comentrada);
      Self.FModelList[I].intervalo      := SQL.getInteger(intervalo);
      Self.FModelList[I].dia      := SQL.getInteger(dia);
      Self.FModelList[I].cotacao      := SQL.getInteger(cotacao);
      Self.FModelList[I].id_usuario_desconto      := SQL.getInteger(id_usuario_desconto);
      Self.FModelList[I].percentual_usuario_desconto      := SQL.getInteger(percentual_usuario_desconto);
      Self.FModelList[I].id_rota      := SQL.getInteger(id_rota);
      Self.FModelList[I].id_tabela_preco      := SQL.getInteger(id_tabela_preco);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].juros      := SQL.getInteger(juros);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].motorista      := SQL.getInteger(motorista);
      Self.FModelList[I].uso      := SQL.getInteger(uso);
      Self.FModelList[I].devolucao      := SQL.getInteger(devolucao);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].expedicao      := SQL.getInteger(expedicao);
      Self.FModelList[I].id_carga      := SQL.getInteger(id_carga);
      Self.FModelList[I].vl_iss      := SQL.getInteger(vl_iss);
      Self.FModelList[I].id_palm      := SQL.getInteger(id_palm);
      Self.FModelList[I].id_coringa      := SQL.getInteger(id_coringa);
      Self.FModelList[I].entregafutura      := SQL.getInteger(entregafutura);
      Self.FModelList[I].id_supervisor      := SQL.getInteger(id_supervisor);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].nfe_chave      := SQL.getInteger(nfe_chave);
      Self.FModelList[I].volume_quantidade      := SQL.getInteger(volume_quantidade);
      Self.FModelList[I].volume_numero      := SQL.getInteger(volume_numero);
      Self.FModelList[I].especie      := SQL.getInteger(especie);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].vl_devolucao      := SQL.getInteger(vl_devolucao);
      Self.FModelList[I].nfe_protocolo      := SQL.getInteger(nfe_protocolo);
      Self.FModelList[I].bonificacao      := SQL.getInteger(bonificacao);
      Self.FModelList[I].frete      := SQL.getInteger(frete);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].nf_manual      := SQL.getInteger(nf_manual);
      Self.FModelList[I].servidor      := SQL.getInteger(servidor);
      Self.FModelList[I].fabricacao      := SQL.getInteger(fabricacao);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].id_prescritor      := SQL.getInteger(id_prescritor);
      Self.FModelList[I].tipo_receituario      := SQL.getInteger(tipo_receituario);
      Self.FModelList[I].notificacao      := SQL.getInteger(notificacao);
      Self.FModelList[I].fpb      := SQL.getInteger(fpb);
      Self.FModelList[I].fpb_parcela_ms      := SQL.getInteger(fpb_parcela_ms);
      Self.FModelList[I].vl_custo_prod      := SQL.getInteger(vl_custo_prod);
      Self.FModelList[I].vl_custo_serv      := SQL.getInteger(vl_custo_serv);
      Self.FModelList[I].produtor_ativo      := SQL.getInteger(produtor_ativo);
      Self.FModelList[I].nfe_placa      := SQL.getInteger(nfe_placa);
      Self.FModelList[I].reativacao      := SQL.getInteger(reativacao);
      Self.FModelList[I].venda_bloqueada      := SQL.getInteger(venda_bloqueada);
      Self.FModelList[I].codigo_liberacao      := SQL.getInteger(codigo_liberacao);
      Self.FModelList[I].id_uniao      := SQL.getInteger(id_uniao);
      Self.FModelList[I].data_saidanf      := SQL.getInteger(data_saidanf);
      Self.FModelList[I].hora_saidanf      := SQL.getInteger(hora_saidanf);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].bc_st      := SQL.getInteger(bc_st);
      Self.FModelList[I].romaneio      := SQL.getInteger(romaneio);
      Self.FModelList[I].ecf      := SQL.getInteger(ecf);
      Self.FModelList[I].nfce      := SQL.getInteger(nfce);
      Self.FModelList[I].nfce_chave      := SQL.getInteger(nfce_chave);
      Self.FModelList[I].nfce_protocolo      := SQL.getInteger(nfce_protocolo);
      Self.FModelList[I].vl_custo      := SQL.getInteger(vl_custo);
      Self.FModelList[I].pedido_alm      := SQL.getInteger(pedido_alm);
      Self.FModelList[I].id_obra      := SQL.getInteger(id_obra);
      Self.FModelList[I].id_estimativa      := SQL.getInteger(id_estimativa);
      Self.FModelList[I].id_motorista      := SQL.getInteger(id_motorista);
      Self.FModelList[I].id_veiculo      := SQL.getInteger(id_veiculo);
      Self.FModelList[I].id_pedido_carregamento      := SQL.getInteger(id_pedido_carregamento);
      Self.FModelList[I].id_funcionario_faturista      := SQL.getInteger(id_funcionario_faturista);
      Self.FModelList[I].id_funcionario_producao      := SQL.getInteger(id_funcionario_producao);
      Self.FModelList[I].descartaveis      := SQL.getInteger(descartaveis);
      Self.FModelList[I].nfce_chave_cnt      := SQL.getInteger(nfce_chave_cnt);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].nfe_protocolo_cancelada      := SQL.getInteger(nfe_protocolo_cancelada);
      Self.FModelList[I].busca      := SQL.getInteger(busca);
      Self.FModelList[I].troca      := SQL.getInteger(troca);
      Self.FModelList[I].id_responsavel_tecnico      := SQL.getInteger(id_responsavel_tecnico);
      Self.FModelList[I].nf_uniao      := SQL.getInteger(nf_uniao);
      Self.FModelList[I].nfce_protocolo_cancelada      := SQL.getInteger(nfce_protocolo_cancelada);
      Self.FModelList[I].vl_acrescimo      := SQL.getInteger(vl_acrescimo);
      Self.FModelList[I].id_contacorrente      := SQL.getInteger(id_contacorrente);
      Self.FModelList[I].impri_orca      := SQL.getInteger(impri_orca);
      Self.FModelList[I].nf_denegada      := SQL.getInteger(nf_denegada);
      Self.FModelList[I].num_pedido_compra      := SQL.getInteger(num_pedido_compra);
      Self.FModelList[I].data_cancelamento      := SQL.getInteger(data_cancelamento);
      Self.FModelList[I].id_usuario_cancelamento      := SQL.getInteger(id_usuario_cancelamento);
      Self.FModelList[I].uniao      := SQL.getInteger(uniao);
      Self.FModelList[I].data_protocolo_nfe      := SQL.getInteger(data_protocolo_nfe);
      Self.FModelList[I].id_cliente_inscricao_estadual      := SQL.getInteger(id_cliente_inscricao_estadual);
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

  Self.FModel := ( Model as TModelERPveiculostransporte );             

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
  SQL.Update(venda);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
