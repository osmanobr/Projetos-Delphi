
unit Dal.ERP.compra_grade;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.compra_grade, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcompragrade = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcompragrade;  
    FModelList : TModelBaseList<TModelERPcompragrade>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcompragrade.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcompragrade) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcompragrade );              

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

function TDalERPcompragrade.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcompragrade) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcompragrade ); 

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
  SQL.Insert(compra_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_compra).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.fracionado).Next;
     SQL.Field(Self.FModel.itens).Next;
     SQL.Field(Self.FModel.lote).Next;
     SQL.Field(Self.FModel.unitario).Next;
     SQL.Field(Self.FModel.desconto_percentual).Next;
     SQL.Field(Self.FModel.desconto_valor).Next;
     SQL.Field(Self.FModel.total).Next;
     SQL.Field(Self.FModel.icms_percentual).Next;
     SQL.Field(Self.FModel.icms_valor).Next;
     SQL.Field(Self.FModel.ipi_percentual).Next;
     SQL.Field(Self.FModel.ipi_valor).Next;
     SQL.Field(Self.FModel.id_grade).Next;
     SQL.Field(Self.FModel.vl_substituicao).Next;
     SQL.Field(Self.FModel.preco_venda).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.reducao).Next;
     SQL.Field(Self.FModel.cfop).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.base_st).Next;
     SQL.Field(Self.FModel.nt_codigo_produto).Next;
     SQL.Field(Self.FModel.nt_codigo_fabricante).Next;
     SQL.Field(Self.FModel.nt_unidade).Next;
     SQL.Field(Self.FModel.nt_ncm).Next;
     SQL.Field(Self.FModel.nt_vl_frete).Next;
     SQL.Field(Self.FModel.nt_id_fornecedor).Next;
     SQL.Field(Self.FModel.nt_st).Next;
     SQL.Field(Self.FModel.nt_cst_cofins).Next;
     SQL.Field(Self.FModel.nt_vl_cofins).Next;
     SQL.Field(Self.FModel.nt_cst_pis).Next;
     SQL.Field(Self.FModel.nt_vl_pis).Next;
     SQL.Field(Self.FModel.nt_encontrou).Next;
     SQL.Field(Self.FModel.item).Next;
     SQL.Field(Self.FModel.produto_insumo).Next;
     SQL.Field(Self.FModel.nt_cst).Next;
     SQL.Field(Self.FModel.nt_cfop).Next;
     SQL.Field(Self.FModel.grupo).Next;
     SQL.Field(Self.FModel.saida_st).Next;
     SQL.Field(Self.FModel.saida_icms).Next;
     SQL.Field(Self.FModel.unitario_anterior).Next;
     SQL.Field(Self.FModel.cst_pis).Next;
     SQL.Field(Self.FModel.cst_cofins).Next;
     SQL.Field(Self.FModel.picmsst).Next;
     SQL.Field(Self.FModel.cod_associacao).Next;
     SQL.Field(Self.FModel.cod_fabricante_associacao).Next;
     SQL.Field(Self.FModel.outras_despesas).Next;
     SQL.Field(Self.FModel.devolucao).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.formacao_preco).Next;
     SQL.Field(Self.FModel.qtd_devol).Next;
     SQL.Field(Self.FModel.qtd_embalagem_itens).Next;
     SQL.Field(Self.FModel.qtd_metro_cubico).Next;
     SQL.Field(Self.FModel.nome_produto_nota).Next;
     SQL.Field(Self.FModel.cst_sped).Next;
     SQL.Field(Self.FModel.margem_lucro_percent).Next;
     SQL.Field(Self.FModel.margem_lucro).Next;
     SQL.Field(Self.FModel.vl_unitario_fracionado).Next;
     SQL.Field(Self.FModel.ean_produto).Next;
     SQL.Field(Self.FModel.margem_bruta_percentual).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcompragrade.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcompragrade) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcompragrade );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(compra_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcompragrade>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcompragrade.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_compra      := SQL.getInteger(id_compra);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].fracionado      := SQL.getInteger(fracionado);
      Self.FModelList[I].itens      := SQL.getInteger(itens);
      Self.FModelList[I].lote      := SQL.getInteger(lote);
      Self.FModelList[I].unitario      := SQL.getInteger(unitario);
      Self.FModelList[I].desconto_percentual      := SQL.getInteger(desconto_percentual);
      Self.FModelList[I].desconto_valor      := SQL.getInteger(desconto_valor);
      Self.FModelList[I].total      := SQL.getInteger(total);
      Self.FModelList[I].icms_percentual      := SQL.getInteger(icms_percentual);
      Self.FModelList[I].icms_valor      := SQL.getInteger(icms_valor);
      Self.FModelList[I].ipi_percentual      := SQL.getInteger(ipi_percentual);
      Self.FModelList[I].ipi_valor      := SQL.getInteger(ipi_valor);
      Self.FModelList[I].id_grade      := SQL.getInteger(id_grade);
      Self.FModelList[I].vl_substituicao      := SQL.getInteger(vl_substituicao);
      Self.FModelList[I].preco_venda      := SQL.getInteger(preco_venda);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].reducao      := SQL.getInteger(reducao);
      Self.FModelList[I].cfop      := SQL.getInteger(cfop);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].base_st      := SQL.getInteger(base_st);
      Self.FModelList[I].nt_codigo_produto      := SQL.getInteger(nt_codigo_produto);
      Self.FModelList[I].nt_codigo_fabricante      := SQL.getInteger(nt_codigo_fabricante);
      Self.FModelList[I].nt_unidade      := SQL.getInteger(nt_unidade);
      Self.FModelList[I].nt_ncm      := SQL.getInteger(nt_ncm);
      Self.FModelList[I].nt_vl_frete      := SQL.getInteger(nt_vl_frete);
      Self.FModelList[I].nt_id_fornecedor      := SQL.getInteger(nt_id_fornecedor);
      Self.FModelList[I].nt_st      := SQL.getInteger(nt_st);
      Self.FModelList[I].nt_cst_cofins      := SQL.getInteger(nt_cst_cofins);
      Self.FModelList[I].nt_vl_cofins      := SQL.getInteger(nt_vl_cofins);
      Self.FModelList[I].nt_cst_pis      := SQL.getInteger(nt_cst_pis);
      Self.FModelList[I].nt_vl_pis      := SQL.getInteger(nt_vl_pis);
      Self.FModelList[I].nt_encontrou      := SQL.getInteger(nt_encontrou);
      Self.FModelList[I].item      := SQL.getInteger(item);
      Self.FModelList[I].produto_insumo      := SQL.getInteger(produto_insumo);
      Self.FModelList[I].nt_cst      := SQL.getInteger(nt_cst);
      Self.FModelList[I].nt_cfop      := SQL.getInteger(nt_cfop);
      Self.FModelList[I].grupo      := SQL.getInteger(grupo);
      Self.FModelList[I].saida_st      := SQL.getInteger(saida_st);
      Self.FModelList[I].saida_icms      := SQL.getInteger(saida_icms);
      Self.FModelList[I].unitario_anterior      := SQL.getInteger(unitario_anterior);
      Self.FModelList[I].cst_pis      := SQL.getInteger(cst_pis);
      Self.FModelList[I].cst_cofins      := SQL.getInteger(cst_cofins);
      Self.FModelList[I].picmsst      := SQL.getInteger(picmsst);
      Self.FModelList[I].cod_associacao      := SQL.getInteger(cod_associacao);
      Self.FModelList[I].cod_fabricante_associacao      := SQL.getInteger(cod_fabricante_associacao);
      Self.FModelList[I].outras_despesas      := SQL.getInteger(outras_despesas);
      Self.FModelList[I].devolucao      := SQL.getInteger(devolucao);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].formacao_preco      := SQL.getInteger(formacao_preco);
      Self.FModelList[I].qtd_devol      := SQL.getInteger(qtd_devol);
      Self.FModelList[I].qtd_embalagem_itens      := SQL.getInteger(qtd_embalagem_itens);
      Self.FModelList[I].qtd_metro_cubico      := SQL.getInteger(qtd_metro_cubico);
      Self.FModelList[I].nome_produto_nota      := SQL.getInteger(nome_produto_nota);
      Self.FModelList[I].cst_sped      := SQL.getInteger(cst_sped);
      Self.FModelList[I].margem_lucro_percent      := SQL.getInteger(margem_lucro_percent);
      Self.FModelList[I].margem_lucro      := SQL.getInteger(margem_lucro);
      Self.FModelList[I].vl_unitario_fracionado      := SQL.getInteger(vl_unitario_fracionado);
      Self.FModelList[I].ean_produto      := SQL.getInteger(ean_produto);
      Self.FModelList[I].margem_bruta_percentual      := SQL.getInteger(margem_bruta_percentual);
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

  Self.FModel := ( Model as TModelERPcompragrade );             

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
  SQL.Update(compra_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
