
unit Dal.ERP.financeira;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.financeira, DalBaseCRUD,
  SQLQuery;

type
  TDalERPfinanceira = class(TDalBaseCRUD)
  private 
    FModel : TModelERPfinanceira;  
    FModelList : TModelBaseList<TModelERPfinanceira>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPfinanceira.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPfinanceira) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfinanceira );              

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

function TDalERPfinanceira.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPfinanceira) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfinanceira ); 

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
  SQL.Insert(formacao_preco).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.preco_compra).Next;
     SQL.Field(Self.FModel.valor_frete).Next;
     SQL.Field(Self.FModel.frete_percentual).Next;
     SQL.Field(Self.FModel.ipi_entrada_percentual).Next;
     SQL.Field(Self.FModel.valor_ipi).Next;
     SQL.Field(Self.FModel.credito_icms).Next;
     SQL.Field(Self.FModel.credito_percentual).Next;
     SQL.Field(Self.FModel.custo_financeiro).Next;
     SQL.Field(Self.FModel.custo_financeiro_percentual).Next;
     SQL.Field(Self.FModel.outras_despesas).Next;
     SQL.Field(Self.FModel.outras_despesas_percentual).Next;
     SQL.Field(Self.FModel.substituicao).Next;
     SQL.Field(Self.FModel.substituicao_percentual).Next;
     SQL.Field(Self.FModel.icms_saida).Next;
     SQL.Field(Self.FModel.icms_saida_percentual).Next;
     SQL.Field(Self.FModel.icms_saida_atacado).Next;
     SQL.Field(Self.FModel.icms_saida_atac_percentual).Next;
     SQL.Field(Self.FModel.ipi).Next;
     SQL.Field(Self.FModel.ipi_percentual).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.cofins_percentual).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.pis_percentual).Next;
     SQL.Field(Self.FModel.irpj).Next;
     SQL.Field(Self.FModel.irpj_percentual).Next;
     SQL.Field(Self.FModel.cont_social).Next;
     SQL.Field(Self.FModel.cont_social_percentual).Next;
     SQL.Field(Self.FModel.outros_encargos).Next;
     SQL.Field(Self.FModel.outros_encargos_percentual).Next;
     SQL.Field(Self.FModel.encargos_fedarais).Next;
     SQL.Field(Self.FModel.encargos_federais_percentual).Next;
     SQL.Field(Self.FModel.simples_nacional).Next;
     SQL.Field(Self.FModel.simples_nacional_percentual).Next;
     SQL.Field(Self.FModel.custo_operacional).Next;
     SQL.Field(Self.FModel.custo_operacional_percentual).Next;
     SQL.Field(Self.FModel.comissao_venda).Next;
     SQL.Field(Self.FModel.comissao_venda_percentual).Next;
     SQL.Field(Self.FModel.comissao_servico).Next;
     SQL.Field(Self.FModel.comissao_servico_percentual).Next;
     SQL.Field(Self.FModel.margem_lucro).Next;
     SQL.Field(Self.FModel.margem_lucro_percentual).Next;
     SQL.Field(Self.FModel.margem_lucro_atacado).Next;
     SQL.Field(Self.FModel.margem_lucro_atacado_percentual).Next;
     SQL.Field(Self.FModel.sugestao_venda).Next;
     SQL.Field(Self.FModel.sugestao_venda_atacado).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.id_compra).Next;
     SQL.Field(Self.FModel.margem_lucro_varejo).Next;
     SQL.Field(Self.FModel.preco_venda_atual_varejo).Next;
     SQL.Field(Self.FModel.preco_venda_atual_atacado).Next;
     SQL.Field(Self.FModel.margem_lucro_atacado2).Next;
     SQL.Field(Self.FModel.vl_pmz).Next;
     SQL.Field(Self.FModel.preco_custo).Next;
     SQL.Field(Self.FModel.preco_custo_atacado).Next;
     SQL.Field(Self.FModel.data_inicial).Next;
     SQL.Field(Self.FModel.data_final).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.media_venda).Next;
     SQL.Field(Self.FModel.total).Next;
     SQL.Field(Self.FModel.xpmz).Next;
     SQL.Field(Self.FModel.inadimplencia).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPfinanceira.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPfinanceira) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPfinanceira );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(formacao_preco);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPfinanceira>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPfinanceira.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].preco_compra      := SQL.getInteger(preco_compra);
      Self.FModelList[I].valor_frete      := SQL.getInteger(valor_frete);
      Self.FModelList[I].frete_percentual      := SQL.getInteger(frete_percentual);
      Self.FModelList[I].ipi_entrada_percentual      := SQL.getInteger(ipi_entrada_percentual);
      Self.FModelList[I].valor_ipi      := SQL.getInteger(valor_ipi);
      Self.FModelList[I].credito_icms      := SQL.getInteger(credito_icms);
      Self.FModelList[I].credito_percentual      := SQL.getInteger(credito_percentual);
      Self.FModelList[I].custo_financeiro      := SQL.getInteger(custo_financeiro);
      Self.FModelList[I].custo_financeiro_percentual      := SQL.getInteger(custo_financeiro_percentual);
      Self.FModelList[I].outras_despesas      := SQL.getInteger(outras_despesas);
      Self.FModelList[I].outras_despesas_percentual      := SQL.getInteger(outras_despesas_percentual);
      Self.FModelList[I].substituicao      := SQL.getInteger(substituicao);
      Self.FModelList[I].substituicao_percentual      := SQL.getInteger(substituicao_percentual);
      Self.FModelList[I].icms_saida      := SQL.getInteger(icms_saida);
      Self.FModelList[I].icms_saida_percentual      := SQL.getInteger(icms_saida_percentual);
      Self.FModelList[I].icms_saida_atacado      := SQL.getInteger(icms_saida_atacado);
      Self.FModelList[I].icms_saida_atac_percentual      := SQL.getInteger(icms_saida_atac_percentual);
      Self.FModelList[I].ipi      := SQL.getInteger(ipi);
      Self.FModelList[I].ipi_percentual      := SQL.getInteger(ipi_percentual);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].cofins_percentual      := SQL.getInteger(cofins_percentual);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].pis_percentual      := SQL.getInteger(pis_percentual);
      Self.FModelList[I].irpj      := SQL.getInteger(irpj);
      Self.FModelList[I].irpj_percentual      := SQL.getInteger(irpj_percentual);
      Self.FModelList[I].cont_social      := SQL.getInteger(cont_social);
      Self.FModelList[I].cont_social_percentual      := SQL.getInteger(cont_social_percentual);
      Self.FModelList[I].outros_encargos      := SQL.getInteger(outros_encargos);
      Self.FModelList[I].outros_encargos_percentual      := SQL.getInteger(outros_encargos_percentual);
      Self.FModelList[I].encargos_fedarais      := SQL.getInteger(encargos_fedarais);
      Self.FModelList[I].encargos_federais_percentual      := SQL.getInteger(encargos_federais_percentual);
      Self.FModelList[I].simples_nacional      := SQL.getInteger(simples_nacional);
      Self.FModelList[I].simples_nacional_percentual      := SQL.getInteger(simples_nacional_percentual);
      Self.FModelList[I].custo_operacional      := SQL.getInteger(custo_operacional);
      Self.FModelList[I].custo_operacional_percentual      := SQL.getInteger(custo_operacional_percentual);
      Self.FModelList[I].comissao_venda      := SQL.getInteger(comissao_venda);
      Self.FModelList[I].comissao_venda_percentual      := SQL.getInteger(comissao_venda_percentual);
      Self.FModelList[I].comissao_servico      := SQL.getInteger(comissao_servico);
      Self.FModelList[I].comissao_servico_percentual      := SQL.getInteger(comissao_servico_percentual);
      Self.FModelList[I].margem_lucro      := SQL.getInteger(margem_lucro);
      Self.FModelList[I].margem_lucro_percentual      := SQL.getInteger(margem_lucro_percentual);
      Self.FModelList[I].margem_lucro_atacado      := SQL.getInteger(margem_lucro_atacado);
      Self.FModelList[I].margem_lucro_atacado_percentual      := SQL.getInteger(margem_lucro_atacado_percentual);
      Self.FModelList[I].sugestao_venda      := SQL.getInteger(sugestao_venda);
      Self.FModelList[I].sugestao_venda_atacado      := SQL.getInteger(sugestao_venda_atacado);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].id_compra      := SQL.getInteger(id_compra);
      Self.FModelList[I].margem_lucro_varejo      := SQL.getInteger(margem_lucro_varejo);
      Self.FModelList[I].preco_venda_atual_varejo      := SQL.getInteger(preco_venda_atual_varejo);
      Self.FModelList[I].preco_venda_atual_atacado      := SQL.getInteger(preco_venda_atual_atacado);
      Self.FModelList[I].margem_lucro_atacado2      := SQL.getInteger(margem_lucro_atacado2);
      Self.FModelList[I].vl_pmz      := SQL.getInteger(vl_pmz);
      Self.FModelList[I].preco_custo      := SQL.getInteger(preco_custo);
      Self.FModelList[I].preco_custo_atacado      := SQL.getInteger(preco_custo_atacado);
      Self.FModelList[I].data_inicial      := SQL.getInteger(data_inicial);
      Self.FModelList[I].data_final      := SQL.getInteger(data_final);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].media_venda      := SQL.getInteger(media_venda);
      Self.FModelList[I].total      := SQL.getInteger(total);
      Self.FModelList[I].xpmz      := SQL.getInteger(xpmz);
      Self.FModelList[I].inadimplencia      := SQL.getInteger(inadimplencia);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
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

  Self.FModel := ( Model as TModelERPfinanceira );             

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
  SQL.Update(formacao_preco);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
