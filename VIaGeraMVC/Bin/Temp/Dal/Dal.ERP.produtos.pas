
unit Dal.ERP.print_file;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.print_file, DalBaseCRUD,
  SQLQuery;

type
  TDalERPprintfile = class(TDalBaseCRUD)
  private 
    FModel : TModelERPprintfile;  
    FModelList : TModelBaseList<TModelERPprintfile>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPprintfile.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPprintfile) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPprintfile );              

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

function TDalERPprintfile.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPprintfile) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPprintfile ); 

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
  SQL.Insert(produtos).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.nome_grupo).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.nome_fornecedor).Next;
     SQL.Field(Self.FModel.codigo_fabricante).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.peso_bruto).Next;
     SQL.Field(Self.FModel.peso_liquido).Next;
     SQL.Field(Self.FModel.garantia).Next;
     SQL.Field(Self.FModel.modelo).Next;
     SQL.Field(Self.FModel.cor).Next;
     SQL.Field(Self.FModel.margem_lucro).Next;
     SQL.Field(Self.FModel.preco_custo).Next;
     SQL.Field(Self.FModel.preco_compra).Next;
     SQL.Field(Self.FModel.preco_venda).Next;
     SQL.Field(Self.FModel.preco_venda_ant).Next;
     SQL.Field(Self.FModel.localizacao).Next;
     SQL.Field(Self.FModel.referencia).Next;
     SQL.Field(Self.FModel.comissao).Next;
     SQL.Field(Self.FModel.embalagem).Next;
     SQL.Field(Self.FModel.embalagem_itens).Next;
     SQL.Field(Self.FModel.fracionado).Next;
     SQL.Field(Self.FModel.estoque_minimo).Next;
     SQL.Field(Self.FModel.estoque_atual).Next;
     SQL.Field(Self.FModel.etiqueta_pdv).Next;
     SQL.Field(Self.FModel.balanca_pdv).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms_entrada).Next;
     SQL.Field(Self.FModel.icms_saida).Next;
     SQL.Field(Self.FModel.reducao).Next;
     SQL.Field(Self.FModel.ipi_entrada).Next;
     SQL.Field(Self.FModel.ipi_saida).Next;
     SQL.Field(Self.FModel.data_ultimacompra).Next;
     SQL.Field(Self.FModel.data_ultimavenda).Next;
     SQL.Field(Self.FModel.diferido).Next;
     SQL.Field(Self.FModel.referencia_tecnica).Next;
     SQL.Field(Self.FModel.promocao).Next;
     SQL.Field(Self.FModel.preco_promocao).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.vl_outras).Next;
     SQL.Field(Self.FModel.vl_substituicao).Next;
     SQL.Field(Self.FModel.vl_margem_lucro).Next;
     SQL.Field(Self.FModel.vl_enc_estadual).Next;
     SQL.Field(Self.FModel.vl_enc_federal).Next;
     SQL.Field(Self.FModel.ult_preco_venda).Next;
     SQL.Field(Self.FModel.ult_preco_compra).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.produto_variado).Next;
     SQL.Field(Self.FModel.id_planocelular).Next;
     SQL.Field(Self.FModel.frete).Next;
     SQL.Field(Self.FModel.simples).Next;
     SQL.Field(Self.FModel.vl_pmz).Next;
     SQL.Field(Self.FModel.ippt).Next;
     SQL.Field(Self.FModel.iat).Next;
     SQL.Field(Self.FModel.atacado).Next;
     SQL.Field(Self.FModel.quantidade_atacado).Next;
     SQL.Field(Self.FModel.preco_atacado).Next;
     SQL.Field(Self.FModel.estoque_deposito).Next;
     SQL.Field(Self.FModel.pauta).Next;
     SQL.Field(Self.FModel.ncm).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.cfop_interno).Next;
     SQL.Field(Self.FModel.cfop_externo).Next;
     SQL.Field(Self.FModel.tamanho).Next;
     SQL.Field(Self.FModel.sexo).Next;
     SQL.Field(Self.FModel.especial).Next;
     SQL.Field(Self.FModel.qtd_padrao).Next;
     SQL.Field(Self.FModel.estoque_bonificacao).Next;
     SQL.Field(Self.FModel.piscofins).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.reg_ms).Next;
     SQL.Field(Self.FModel.csts_ipi).Next;
     SQL.Field(Self.FModel.validade).Next;
     SQL.Field(Self.FModel.dosagem).Next;
     SQL.Field(Self.FModel.vl_pis).Next;
     SQL.Field(Self.FModel.vl_cofins).Next;
     SQL.Field(Self.FModel.ean).Next;
     SQL.Field(Self.FModel.comissao_servico).Next;
     SQL.Field(Self.FModel.ean_caixa).Next;
     SQL.Field(Self.FModel.id_fabricante).Next;
     SQL.Field(Self.FModel.kit).Next;
     SQL.Field(Self.FModel.icms_atacado).Next;
     SQL.Field(Self.FModel.margem_lucro_atacado).Next;
     SQL.Field(Self.FModel.preco_custo_atacado).Next;
     SQL.Field(Self.FModel.preco_atacado_ant).Next;
     SQL.Field(Self.FModel.controle_proprio).Next;
     SQL.Field(Self.FModel.validade_proprio).Next;
     SQL.Field(Self.FModel.tabela_pdv).Next;
     SQL.Field(Self.FModel.venda_fracionada).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf).Next;
     SQL.Field(Self.FModel.id_insumo).Next;
     SQL.Field(Self.FModel.id_almoxarifado).Next;
     SQL.Field(Self.FModel.cst_natureza_receita).Next;
     SQL.Field(Self.FModel.prod_kit).Next;
     SQL.Field(Self.FModel.pauta_dentro).Next;
     SQL.Field(Self.FModel.pauta_fora).Next;
     SQL.Field(Self.FModel.balanca_soft).Next;
     SQL.Field(Self.FModel.balanca_dias).Next;
     SQL.Field(Self.FModel.balanca_tecla).Next;
     SQL.Field(Self.FModel.codigo_anp).Next;
     SQL.Field(Self.FModel.id_setor).Next;
     SQL.Field(Self.FModel.id_secao).Next;
     SQL.Field(Self.FModel.id_grupos).Next;
     SQL.Field(Self.FModel.id_subgrupo).Next;
     SQL.Field(Self.FModel.formacao_preco).Next;
     SQL.Field(Self.FModel.trabalha_metro_cubico).Next;
     SQL.Field(Self.FModel.ean_caixa2).Next;
     SQL.Field(Self.FModel.ean_caixa3).Next;
     SQL.Field(Self.FModel.embalagem_itens2).Next;
     SQL.Field(Self.FModel.embalagem_itens3).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf2).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf3).Next;
     SQL.Field(Self.FModel.custo_financeiro).Next;
     SQL.Field(Self.FModel.contribuicao_social).Next;
     SQL.Field(Self.FModel.custo_operacional).Next;
     SQL.Field(Self.FModel.vl_irpj).Next;
     SQL.Field(Self.FModel.complemento_aliq).Next;
     SQL.Field(Self.FModel.preco_custo_nf).Next;
     SQL.Field(Self.FModel.preco_custo_nf2).Next;
     SQL.Field(Self.FModel.preco_custo_nf3).Next;
     SQL.Field(Self.FModel.generico).Next;
     SQL.Field(Self.FModel.desconto_formacao).Next;
     SQL.Field(Self.FModel.cst_piscofins_saida).Next;
     SQL.Field(Self.FModel.cst_piscofins_entrada).Next;
     SQL.Field(Self.FModel.id_familia).Next;
     SQL.Field(Self.FModel.quantidade_empresa_terceiro).Next;
     SQL.Field(Self.FModel.quantidade_terceiro_empresa).Next;
     SQL.Field(Self.FModel.preco_compra_alterado).Next;
     SQL.Field(Self.FModel.medida).Next;
     SQL.Field(Self.FModel.lona).Next;
     SQL.Field(Self.FModel.lote).Next;
     SQL.Field(Self.FModel.controlar_lote_tipo).Next;
     SQL.Field(Self.FModel.controlar_lote).Next;
     SQL.Field(Self.FModel.sem_gtin).Next;
     SQL.Field(Self.FModel.percentual_desconto).Next;
     SQL.Field(Self.FModel.margem_lucro_b).Next;
     SQL.Field(Self.FModel.vl_margem_lucro_b).Next;
     SQL.Field(Self.FModel.quantidade_kit).Next;
     SQL.Field(Self.FModel.complemento).Next;
     SQL.Field(Self.FModel.desconto_zero).Next;
     SQL.Field(Self.FModel.margem_lucro_sugestao).Next;
     SQL.Field(Self.FModel.gera_comissao).Next;
     SQL.Field(Self.FModel.venda_metade).Next;
     SQL.Field(Self.FModel.metade_porcentagem).Next;
     SQL.Field(Self.FModel.inadimplencia).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPprintfile.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPprintfile) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPprintfile );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(produtos);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPprintfile>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPprintfile.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].nome_grupo      := SQL.getInteger(nome_grupo);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].nome_fornecedor      := SQL.getInteger(nome_fornecedor);
      Self.FModelList[I].codigo_fabricante      := SQL.getInteger(codigo_fabricante);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].peso_bruto      := SQL.getInteger(peso_bruto);
      Self.FModelList[I].peso_liquido      := SQL.getInteger(peso_liquido);
      Self.FModelList[I].garantia      := SQL.getInteger(garantia);
      Self.FModelList[I].modelo      := SQL.getInteger(modelo);
      Self.FModelList[I].cor      := SQL.getInteger(cor);
      Self.FModelList[I].margem_lucro      := SQL.getInteger(margem_lucro);
      Self.FModelList[I].preco_custo      := SQL.getInteger(preco_custo);
      Self.FModelList[I].preco_compra      := SQL.getInteger(preco_compra);
      Self.FModelList[I].preco_venda      := SQL.getInteger(preco_venda);
      Self.FModelList[I].preco_venda_ant      := SQL.getInteger(preco_venda_ant);
      Self.FModelList[I].localizacao      := SQL.getInteger(localizacao);
      Self.FModelList[I].referencia      := SQL.getInteger(referencia);
      Self.FModelList[I].comissao      := SQL.getInteger(comissao);
      Self.FModelList[I].embalagem      := SQL.getInteger(embalagem);
      Self.FModelList[I].embalagem_itens      := SQL.getInteger(embalagem_itens);
      Self.FModelList[I].fracionado      := SQL.getInteger(fracionado);
      Self.FModelList[I].estoque_minimo      := SQL.getInteger(estoque_minimo);
      Self.FModelList[I].estoque_atual      := SQL.getInteger(estoque_atual);
      Self.FModelList[I].etiqueta_pdv      := SQL.getInteger(etiqueta_pdv);
      Self.FModelList[I].balanca_pdv      := SQL.getInteger(balanca_pdv);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms_entrada      := SQL.getInteger(icms_entrada);
      Self.FModelList[I].icms_saida      := SQL.getInteger(icms_saida);
      Self.FModelList[I].reducao      := SQL.getInteger(reducao);
      Self.FModelList[I].ipi_entrada      := SQL.getInteger(ipi_entrada);
      Self.FModelList[I].ipi_saida      := SQL.getInteger(ipi_saida);
      Self.FModelList[I].data_ultimacompra      := SQL.getInteger(data_ultimacompra);
      Self.FModelList[I].data_ultimavenda      := SQL.getInteger(data_ultimavenda);
      Self.FModelList[I].diferido      := SQL.getInteger(diferido);
      Self.FModelList[I].referencia_tecnica      := SQL.getInteger(referencia_tecnica);
      Self.FModelList[I].promocao      := SQL.getInteger(promocao);
      Self.FModelList[I].preco_promocao      := SQL.getInteger(preco_promocao);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].vl_outras      := SQL.getInteger(vl_outras);
      Self.FModelList[I].vl_substituicao      := SQL.getInteger(vl_substituicao);
      Self.FModelList[I].vl_margem_lucro      := SQL.getInteger(vl_margem_lucro);
      Self.FModelList[I].vl_enc_estadual      := SQL.getInteger(vl_enc_estadual);
      Self.FModelList[I].vl_enc_federal      := SQL.getInteger(vl_enc_federal);
      Self.FModelList[I].ult_preco_venda      := SQL.getInteger(ult_preco_venda);
      Self.FModelList[I].ult_preco_compra      := SQL.getInteger(ult_preco_compra);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].produto_variado      := SQL.getInteger(produto_variado);
      Self.FModelList[I].id_planocelular      := SQL.getInteger(id_planocelular);
      Self.FModelList[I].frete      := SQL.getInteger(frete);
      Self.FModelList[I].simples      := SQL.getInteger(simples);
      Self.FModelList[I].vl_pmz      := SQL.getInteger(vl_pmz);
      Self.FModelList[I].ippt      := SQL.getInteger(ippt);
      Self.FModelList[I].iat      := SQL.getInteger(iat);
      Self.FModelList[I].atacado      := SQL.getInteger(atacado);
      Self.FModelList[I].quantidade_atacado      := SQL.getInteger(quantidade_atacado);
      Self.FModelList[I].preco_atacado      := SQL.getInteger(preco_atacado);
      Self.FModelList[I].estoque_deposito      := SQL.getInteger(estoque_deposito);
      Self.FModelList[I].pauta      := SQL.getInteger(pauta);
      Self.FModelList[I].ncm      := SQL.getInteger(ncm);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].cfop_interno      := SQL.getInteger(cfop_interno);
      Self.FModelList[I].cfop_externo      := SQL.getInteger(cfop_externo);
      Self.FModelList[I].tamanho      := SQL.getInteger(tamanho);
      Self.FModelList[I].sexo      := SQL.getInteger(sexo);
      Self.FModelList[I].especial      := SQL.getInteger(especial);
      Self.FModelList[I].qtd_padrao      := SQL.getInteger(qtd_padrao);
      Self.FModelList[I].estoque_bonificacao      := SQL.getInteger(estoque_bonificacao);
      Self.FModelList[I].piscofins      := SQL.getInteger(piscofins);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].reg_ms      := SQL.getInteger(reg_ms);
      Self.FModelList[I].csts_ipi      := SQL.getInteger(csts_ipi);
      Self.FModelList[I].validade      := SQL.getInteger(validade);
      Self.FModelList[I].dosagem      := SQL.getInteger(dosagem);
      Self.FModelList[I].vl_pis      := SQL.getInteger(vl_pis);
      Self.FModelList[I].vl_cofins      := SQL.getInteger(vl_cofins);
      Self.FModelList[I].ean      := SQL.getInteger(ean);
      Self.FModelList[I].comissao_servico      := SQL.getInteger(comissao_servico);
      Self.FModelList[I].ean_caixa      := SQL.getInteger(ean_caixa);
      Self.FModelList[I].id_fabricante      := SQL.getInteger(id_fabricante);
      Self.FModelList[I].kit      := SQL.getInteger(kit);
      Self.FModelList[I].icms_atacado      := SQL.getInteger(icms_atacado);
      Self.FModelList[I].margem_lucro_atacado      := SQL.getInteger(margem_lucro_atacado);
      Self.FModelList[I].preco_custo_atacado      := SQL.getInteger(preco_custo_atacado);
      Self.FModelList[I].preco_atacado_ant      := SQL.getInteger(preco_atacado_ant);
      Self.FModelList[I].controle_proprio      := SQL.getInteger(controle_proprio);
      Self.FModelList[I].validade_proprio      := SQL.getInteger(validade_proprio);
      Self.FModelList[I].tabela_pdv      := SQL.getInteger(tabela_pdv);
      Self.FModelList[I].venda_fracionada      := SQL.getInteger(venda_fracionada);
      Self.FModelList[I].valor_unitario_item_nf      := SQL.getInteger(valor_unitario_item_nf);
      Self.FModelList[I].id_insumo      := SQL.getInteger(id_insumo);
      Self.FModelList[I].id_almoxarifado      := SQL.getInteger(id_almoxarifado);
      Self.FModelList[I].cst_natureza_receita      := SQL.getInteger(cst_natureza_receita);
      Self.FModelList[I].prod_kit      := SQL.getInteger(prod_kit);
      Self.FModelList[I].pauta_dentro      := SQL.getInteger(pauta_dentro);
      Self.FModelList[I].pauta_fora      := SQL.getInteger(pauta_fora);
      Self.FModelList[I].balanca_soft      := SQL.getInteger(balanca_soft);
      Self.FModelList[I].balanca_dias      := SQL.getInteger(balanca_dias);
      Self.FModelList[I].balanca_tecla      := SQL.getInteger(balanca_tecla);
      Self.FModelList[I].codigo_anp      := SQL.getInteger(codigo_anp);
      Self.FModelList[I].id_setor      := SQL.getInteger(id_setor);
      Self.FModelList[I].id_secao      := SQL.getInteger(id_secao);
      Self.FModelList[I].id_grupos      := SQL.getInteger(id_grupos);
      Self.FModelList[I].id_subgrupo      := SQL.getInteger(id_subgrupo);
      Self.FModelList[I].formacao_preco      := SQL.getInteger(formacao_preco);
      Self.FModelList[I].trabalha_metro_cubico      := SQL.getInteger(trabalha_metro_cubico);
      Self.FModelList[I].ean_caixa2      := SQL.getInteger(ean_caixa2);
      Self.FModelList[I].ean_caixa3      := SQL.getInteger(ean_caixa3);
      Self.FModelList[I].embalagem_itens2      := SQL.getInteger(embalagem_itens2);
      Self.FModelList[I].embalagem_itens3      := SQL.getInteger(embalagem_itens3);
      Self.FModelList[I].valor_unitario_item_nf2      := SQL.getInteger(valor_unitario_item_nf2);
      Self.FModelList[I].valor_unitario_item_nf3      := SQL.getInteger(valor_unitario_item_nf3);
      Self.FModelList[I].custo_financeiro      := SQL.getInteger(custo_financeiro);
      Self.FModelList[I].contribuicao_social      := SQL.getInteger(contribuicao_social);
      Self.FModelList[I].custo_operacional      := SQL.getInteger(custo_operacional);
      Self.FModelList[I].vl_irpj      := SQL.getInteger(vl_irpj);
      Self.FModelList[I].complemento_aliq      := SQL.getInteger(complemento_aliq);
      Self.FModelList[I].preco_custo_nf      := SQL.getInteger(preco_custo_nf);
      Self.FModelList[I].preco_custo_nf2      := SQL.getInteger(preco_custo_nf2);
      Self.FModelList[I].preco_custo_nf3      := SQL.getInteger(preco_custo_nf3);
      Self.FModelList[I].generico      := SQL.getInteger(generico);
      Self.FModelList[I].desconto_formacao      := SQL.getInteger(desconto_formacao);
      Self.FModelList[I].cst_piscofins_saida      := SQL.getInteger(cst_piscofins_saida);
      Self.FModelList[I].cst_piscofins_entrada      := SQL.getInteger(cst_piscofins_entrada);
      Self.FModelList[I].id_familia      := SQL.getInteger(id_familia);
      Self.FModelList[I].quantidade_empresa_terceiro      := SQL.getInteger(quantidade_empresa_terceiro);
      Self.FModelList[I].quantidade_terceiro_empresa      := SQL.getInteger(quantidade_terceiro_empresa);
      Self.FModelList[I].preco_compra_alterado      := SQL.getInteger(preco_compra_alterado);
      Self.FModelList[I].medida      := SQL.getInteger(medida);
      Self.FModelList[I].lona      := SQL.getInteger(lona);
      Self.FModelList[I].lote      := SQL.getInteger(lote);
      Self.FModelList[I].controlar_lote_tipo      := SQL.getInteger(controlar_lote_tipo);
      Self.FModelList[I].controlar_lote      := SQL.getInteger(controlar_lote);
      Self.FModelList[I].sem_gtin      := SQL.getInteger(sem_gtin);
      Self.FModelList[I].percentual_desconto      := SQL.getInteger(percentual_desconto);
      Self.FModelList[I].margem_lucro_b      := SQL.getInteger(margem_lucro_b);
      Self.FModelList[I].vl_margem_lucro_b      := SQL.getInteger(vl_margem_lucro_b);
      Self.FModelList[I].quantidade_kit      := SQL.getInteger(quantidade_kit);
      Self.FModelList[I].complemento      := SQL.getInteger(complemento);
      Self.FModelList[I].desconto_zero      := SQL.getInteger(desconto_zero);
      Self.FModelList[I].margem_lucro_sugestao      := SQL.getInteger(margem_lucro_sugestao);
      Self.FModelList[I].gera_comissao      := SQL.getInteger(gera_comissao);
      Self.FModelList[I].venda_metade      := SQL.getInteger(venda_metade);
      Self.FModelList[I].metade_porcentagem      := SQL.getInteger(metade_porcentagem);
      Self.FModelList[I].inadimplencia      := SQL.getInteger(inadimplencia);
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

  Self.FModel := ( Model as TModelERPprintfile );             

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
  SQL.Update(produtos);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
