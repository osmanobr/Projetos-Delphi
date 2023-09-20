
unit Dal.ERP.empresas_compra;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_compra, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresascompra = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresascompra;  
    FModelList : TModelBaseList<TModelERPempresascompra>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresascompra.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresascompra) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresascompra );              

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

function TDalERPempresascompra.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresascompra) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresascompra ); 

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
  SQL.Insert(empresas_configuracoes).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.consulta_estoque).Next;
     SQL.Field(Self.FModel.informar_mes_contas_fixas).Next;
     SQL.Field(Self.FModel.verificar_ociosidade_maquina).Next;
     SQL.Field(Self.FModel.tempo_ociosidade).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_tributado).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_isento).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_tributado_simples).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_isento_simples).Next;
     SQL.Field(Self.FModel.visualizar_historico_os).Next;
     SQL.Field(Self.FModel.converter_cst090_cfop5102).Next;
     SQL.Field(Self.FModel.cst_conversao).Next;
     SQL.Field(Self.FModel.cst_conversao_com_cfop6102).Next;
     SQL.Field(Self.FModel.converter_cst090_cfop6102).Next;
     SQL.Field(Self.FModel.cliente_limite).Next;
     SQL.Field(Self.FModel.cliente_tipo).Next;
     SQL.Field(Self.FModel.menu_estilo).Next;
     SQL.Field(Self.FModel.menu_esquema).Next;
     SQL.Field(Self.FModel.menu_acentuado).Next;
     SQL.Field(Self.FModel.ultnsubusc).Next;
     SQL.Field(Self.FModel.cod_uf).Next;
     SQL.Field(Self.FModel.ordemcte).Next;
     SQL.Field(Self.FModel.percentual_minimo_entrada).Next;
     SQL.Field(Self.FModel.img_relatorio).Next;
     SQL.Field(Self.FModel.img_fundo_relatorio).Next;
     SQL.Field(Self.FModel.img_cliente).Next;
     SQL.Field(Self.FModel.backup_bancos).Next;
     SQL.Field(Self.FModel.data_manutencao).Next;
     SQL.Field(Self.FModel.manutencao_automatica).Next;
     SQL.Field(Self.FModel.manutencao_pendente).Next;
     SQL.Field(Self.FModel.manutencao_intervalo).Next;
     SQL.Field(Self.FModel.abrir_plano_contas).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_tributado101e102).Next;
     SQL.Field(Self.FModel.cst_conversao_sped_isento203e400).Next;
     SQL.Field(Self.FModel.validacao_prevenda).Next;
     SQL.Field(Self.FModel.complemento_icms).Next;
     SQL.Field(Self.FModel.val_rel_venda).Next;
     SQL.Field(Self.FModel.pnl_pesquisa).Next;
     SQL.Field(Self.FModel.pnl_fonte).Next;
     SQL.Field(Self.FModel.pnl_negrito).Next;
     SQL.Field(Self.FModel.cbmarca).Next;
     SQL.Field(Self.FModel.chbmarca).Next;
     SQL.Field(Self.FModel.cblocalizacao).Next;
     SQL.Field(Self.FModel.chblocalizacao).Next;
     SQL.Field(Self.FModel.cbean).Next;
     SQL.Field(Self.FModel.chbean).Next;
     SQL.Field(Self.FModel.cbreferencia).Next;
     SQL.Field(Self.FModel.chbreferencia).Next;
     SQL.Field(Self.FModel.cbfabricante).Next;
     SQL.Field(Self.FModel.chbfabricante).Next;
     SQL.Field(Self.FModel.cbmarca_modelo).Next;
     SQL.Field(Self.FModel.chbmarca_modelo).Next;
     SQL.Field(Self.FModel.pre_venda_inc_qtd).Next;
     SQL.Field(Self.FModel.desconto_formacao).Next;
     SQL.Field(Self.FModel.sel_prod).Next;
     SQL.Field(Self.FModel.id_caixa_sangria).Next;
     SQL.Field(Self.FModel.mdfe).Next;
     SQL.Field(Self.FModel.impr_cotr).Next;
     SQL.Field(Self.FModel.intervalo).Next;
     SQL.Field(Self.FModel.alt_uni).Next;
     SQL.Field(Self.FModel.finaliza).Next;
     SQL.Field(Self.FModel.balanco).Next;
     SQL.Field(Self.FModel.size_relatorio).Next;
     SQL.Field(Self.FModel.size_fundo_relatorio).Next;
     SQL.Field(Self.FModel.size_cliente).Next;
     SQL.Field(Self.FModel.com_vista).Next;
     SQL.Field(Self.FModel.com_prazo).Next;
     SQL.Field(Self.FModel.controle_validade).Next;
     SQL.Field(Self.FModel.controle_lote).Next;
     SQL.Field(Self.FModel.alerta_validade).Next;
     SQL.Field(Self.FModel.cad_rural).Next;
     SQL.Field(Self.FModel.data_contabil).Next;
     SQL.Field(Self.FModel.orcamento).Next;
     SQL.Field(Self.FModel.imprimir_cobraca).Next;
     SQL.Field(Self.FModel.detalhe_produto_entrada_nota).Next;
     SQL.Field(Self.FModel.cbdata_compra).Next;
     SQL.Field(Self.FModel.chbdata_compra).Next;
     SQL.Field(Self.FModel.recebe_forma).Next;
     SQL.Field(Self.FModel.omitir_dup).Next;
     SQL.Field(Self.FModel.aliquota_sem_calculo).Next;
     SQL.Field(Self.FModel.qtd_alerta_estque_minimo).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.novo_metodo_desconto).Next;
     SQL.Field(Self.FModel.utilizar_limite_valor_nfenfce_para_usuario).Next;
     SQL.Field(Self.FModel.validade_orcamento).Next;
     SQL.Field(Self.FModel.contas_fixas_multiplos_clientes_mesmo_lote).Next;
     SQL.Field(Self.FModel.ultimo_nsu_incluido).Next;
     SQL.Field(Self.FModel.codigo_ean).Next;
     SQL.Field(Self.FModel.referencia).Next;
     SQL.Field(Self.FModel.codigo_fabricante).Next;
     SQL.Field(Self.FModel.imei).Next;
     SQL.Field(Self.FModel.chbestoque_bonificacao).Next;
     SQL.Field(Self.FModel.cbestoque_bonificacao).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresascompra.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresascompra) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresascompra );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_configuracoes);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresascompra>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresascompra.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].consulta_estoque      := SQL.getInteger(consulta_estoque);
      Self.FModelList[I].informar_mes_contas_fixas      := SQL.getInteger(informar_mes_contas_fixas);
      Self.FModelList[I].verificar_ociosidade_maquina      := SQL.getInteger(verificar_ociosidade_maquina);
      Self.FModelList[I].tempo_ociosidade      := SQL.getInteger(tempo_ociosidade);
      Self.FModelList[I].cst_conversao_sped_tributado      := SQL.getInteger(cst_conversao_sped_tributado);
      Self.FModelList[I].cst_conversao_sped_isento      := SQL.getInteger(cst_conversao_sped_isento);
      Self.FModelList[I].cst_conversao_sped_tributado_simples      := SQL.getInteger(cst_conversao_sped_tributado_simples);
      Self.FModelList[I].cst_conversao_sped_isento_simples      := SQL.getInteger(cst_conversao_sped_isento_simples);
      Self.FModelList[I].visualizar_historico_os      := SQL.getInteger(visualizar_historico_os);
      Self.FModelList[I].converter_cst090_cfop5102      := SQL.getInteger(converter_cst090_cfop5102);
      Self.FModelList[I].cst_conversao      := SQL.getInteger(cst_conversao);
      Self.FModelList[I].cst_conversao_com_cfop6102      := SQL.getInteger(cst_conversao_com_cfop6102);
      Self.FModelList[I].converter_cst090_cfop6102      := SQL.getInteger(converter_cst090_cfop6102);
      Self.FModelList[I].cliente_limite      := SQL.getInteger(cliente_limite);
      Self.FModelList[I].cliente_tipo      := SQL.getInteger(cliente_tipo);
      Self.FModelList[I].menu_estilo      := SQL.getInteger(menu_estilo);
      Self.FModelList[I].menu_esquema      := SQL.getInteger(menu_esquema);
      Self.FModelList[I].menu_acentuado      := SQL.getInteger(menu_acentuado);
      Self.FModelList[I].ultnsubusc      := SQL.getInteger(ultnsubusc);
      Self.FModelList[I].cod_uf      := SQL.getInteger(cod_uf);
      Self.FModelList[I].ordemcte      := SQL.getInteger(ordemcte);
      Self.FModelList[I].percentual_minimo_entrada      := SQL.getInteger(percentual_minimo_entrada);
      Self.FModelList[I].img_relatorio      := SQL.getInteger(img_relatorio);
      Self.FModelList[I].img_fundo_relatorio      := SQL.getInteger(img_fundo_relatorio);
      Self.FModelList[I].img_cliente      := SQL.getInteger(img_cliente);
      Self.FModelList[I].backup_bancos      := SQL.getInteger(backup_bancos);
      Self.FModelList[I].data_manutencao      := SQL.getInteger(data_manutencao);
      Self.FModelList[I].manutencao_automatica      := SQL.getInteger(manutencao_automatica);
      Self.FModelList[I].manutencao_pendente      := SQL.getInteger(manutencao_pendente);
      Self.FModelList[I].manutencao_intervalo      := SQL.getInteger(manutencao_intervalo);
      Self.FModelList[I].abrir_plano_contas      := SQL.getInteger(abrir_plano_contas);
      Self.FModelList[I].cst_conversao_sped_tributado101e102      := SQL.getInteger(cst_conversao_sped_tributado101e102);
      Self.FModelList[I].cst_conversao_sped_isento203e400      := SQL.getInteger(cst_conversao_sped_isento203e400);
      Self.FModelList[I].validacao_prevenda      := SQL.getInteger(validacao_prevenda);
      Self.FModelList[I].complemento_icms      := SQL.getInteger(complemento_icms);
      Self.FModelList[I].val_rel_venda      := SQL.getInteger(val_rel_venda);
      Self.FModelList[I].pnl_pesquisa      := SQL.getInteger(pnl_pesquisa);
      Self.FModelList[I].pnl_fonte      := SQL.getInteger(pnl_fonte);
      Self.FModelList[I].pnl_negrito      := SQL.getInteger(pnl_negrito);
      Self.FModelList[I].cbmarca      := SQL.getInteger(cbmarca);
      Self.FModelList[I].chbmarca      := SQL.getInteger(chbmarca);
      Self.FModelList[I].cblocalizacao      := SQL.getInteger(cblocalizacao);
      Self.FModelList[I].chblocalizacao      := SQL.getInteger(chblocalizacao);
      Self.FModelList[I].cbean      := SQL.getInteger(cbean);
      Self.FModelList[I].chbean      := SQL.getInteger(chbean);
      Self.FModelList[I].cbreferencia      := SQL.getInteger(cbreferencia);
      Self.FModelList[I].chbreferencia      := SQL.getInteger(chbreferencia);
      Self.FModelList[I].cbfabricante      := SQL.getInteger(cbfabricante);
      Self.FModelList[I].chbfabricante      := SQL.getInteger(chbfabricante);
      Self.FModelList[I].cbmarca_modelo      := SQL.getInteger(cbmarca_modelo);
      Self.FModelList[I].chbmarca_modelo      := SQL.getInteger(chbmarca_modelo);
      Self.FModelList[I].pre_venda_inc_qtd      := SQL.getInteger(pre_venda_inc_qtd);
      Self.FModelList[I].desconto_formacao      := SQL.getInteger(desconto_formacao);
      Self.FModelList[I].sel_prod      := SQL.getInteger(sel_prod);
      Self.FModelList[I].id_caixa_sangria      := SQL.getInteger(id_caixa_sangria);
      Self.FModelList[I].mdfe      := SQL.getInteger(mdfe);
      Self.FModelList[I].impr_cotr      := SQL.getInteger(impr_cotr);
      Self.FModelList[I].intervalo      := SQL.getInteger(intervalo);
      Self.FModelList[I].alt_uni      := SQL.getInteger(alt_uni);
      Self.FModelList[I].finaliza      := SQL.getInteger(finaliza);
      Self.FModelList[I].balanco      := SQL.getInteger(balanco);
      Self.FModelList[I].size_relatorio      := SQL.getInteger(size_relatorio);
      Self.FModelList[I].size_fundo_relatorio      := SQL.getInteger(size_fundo_relatorio);
      Self.FModelList[I].size_cliente      := SQL.getInteger(size_cliente);
      Self.FModelList[I].com_vista      := SQL.getInteger(com_vista);
      Self.FModelList[I].com_prazo      := SQL.getInteger(com_prazo);
      Self.FModelList[I].controle_validade      := SQL.getInteger(controle_validade);
      Self.FModelList[I].controle_lote      := SQL.getInteger(controle_lote);
      Self.FModelList[I].alerta_validade      := SQL.getInteger(alerta_validade);
      Self.FModelList[I].cad_rural      := SQL.getInteger(cad_rural);
      Self.FModelList[I].data_contabil      := SQL.getInteger(data_contabil);
      Self.FModelList[I].orcamento      := SQL.getInteger(orcamento);
      Self.FModelList[I].imprimir_cobraca      := SQL.getInteger(imprimir_cobraca);
      Self.FModelList[I].detalhe_produto_entrada_nota      := SQL.getInteger(detalhe_produto_entrada_nota);
      Self.FModelList[I].cbdata_compra      := SQL.getInteger(cbdata_compra);
      Self.FModelList[I].chbdata_compra      := SQL.getInteger(chbdata_compra);
      Self.FModelList[I].recebe_forma      := SQL.getInteger(recebe_forma);
      Self.FModelList[I].omitir_dup      := SQL.getInteger(omitir_dup);
      Self.FModelList[I].aliquota_sem_calculo      := SQL.getInteger(aliquota_sem_calculo);
      Self.FModelList[I].qtd_alerta_estque_minimo      := SQL.getInteger(qtd_alerta_estque_minimo);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].novo_metodo_desconto      := SQL.getInteger(novo_metodo_desconto);
      Self.FModelList[I].utilizar_limite_valor_nfenfce_para_usuario      := SQL.getInteger(utilizar_limite_valor_nfenfce_para_usuario);
      Self.FModelList[I].validade_orcamento      := SQL.getInteger(validade_orcamento);
      Self.FModelList[I].contas_fixas_multiplos_clientes_mesmo_lote      := SQL.getInteger(contas_fixas_multiplos_clientes_mesmo_lote);
      Self.FModelList[I].ultimo_nsu_incluido      := SQL.getInteger(ultimo_nsu_incluido);
      Self.FModelList[I].codigo_ean      := SQL.getInteger(codigo_ean);
      Self.FModelList[I].referencia      := SQL.getInteger(referencia);
      Self.FModelList[I].codigo_fabricante      := SQL.getInteger(codigo_fabricante);
      Self.FModelList[I].imei      := SQL.getInteger(imei);
      Self.FModelList[I].chbestoque_bonificacao      := SQL.getInteger(chbestoque_bonificacao);
      Self.FModelList[I].cbestoque_bonificacao      := SQL.getInteger(cbestoque_bonificacao);
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

  Self.FModel := ( Model as TModelERPempresascompra );             

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
  SQL.Update(empresas_configuracoes);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
