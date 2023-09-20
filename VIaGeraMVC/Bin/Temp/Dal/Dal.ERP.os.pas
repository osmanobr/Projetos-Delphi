
unit Dal.ERP.orcamento_uniao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.orcamento_uniao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPorcamentouniao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPorcamentouniao;  
    FModelList : TModelBaseList<TModelERPorcamentouniao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPorcamentouniao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPorcamentouniao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPorcamentouniao );              

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

function TDalERPorcamentouniao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPorcamentouniao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPorcamentouniao ); 

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
  SQL.Insert(os).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.nota).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.hora).Next;
     SQL.Field(Self.FModel.data_saida).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.hora_fechamento).Next;
     SQL.Field(Self.FModel.numero_serie).Next;
     SQL.Field(Self.FModel.marca).Next;
     SQL.Field(Self.FModel.modelo).Next;
     SQL.Field(Self.FModel.nota_produto).Next;
     SQL.Field(Self.FModel.loja).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_transportadora).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.id_credito).Next;
     SQL.Field(Self.FModel.id_contrato).Next;
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
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.usa_tabela).Next;
     SQL.Field(Self.FModel.defeito_reclamado).Next;
     SQL.Field(Self.FModel.defeito_constatado).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_coringa).Next;
     SQL.Field(Self.FModel.uso).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.expedicao).Next;
     SQL.Field(Self.FModel.indicacao).Next;
     SQL.Field(Self.FModel.fabricacao).Next;
     SQL.Field(Self.FModel.ecf).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.status).Next;
     SQL.Field(Self.FModel.status_os).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPorcamentouniao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPorcamentouniao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPorcamentouniao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(os);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPorcamentouniao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPorcamentouniao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].nota      := SQL.getInteger(nota);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].hora      := SQL.getInteger(hora);
      Self.FModelList[I].data_saida      := SQL.getInteger(data_saida);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].hora_fechamento      := SQL.getInteger(hora_fechamento);
      Self.FModelList[I].numero_serie      := SQL.getInteger(numero_serie);
      Self.FModelList[I].marca      := SQL.getInteger(marca);
      Self.FModelList[I].modelo      := SQL.getInteger(modelo);
      Self.FModelList[I].nota_produto      := SQL.getInteger(nota_produto);
      Self.FModelList[I].loja      := SQL.getInteger(loja);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_transportadora      := SQL.getInteger(id_transportadora);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].id_credito      := SQL.getInteger(id_credito);
      Self.FModelList[I].id_contrato      := SQL.getInteger(id_contrato);
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
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].usa_tabela      := SQL.getInteger(usa_tabela);
      Self.FModelList[I].defeito_reclamado      := SQL.getInteger(defeito_reclamado);
      Self.FModelList[I].defeito_constatado      := SQL.getInteger(defeito_constatado);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_coringa      := SQL.getInteger(id_coringa);
      Self.FModelList[I].uso      := SQL.getInteger(uso);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].expedicao      := SQL.getInteger(expedicao);
      Self.FModelList[I].indicacao      := SQL.getInteger(indicacao);
      Self.FModelList[I].fabricacao      := SQL.getInteger(fabricacao);
      Self.FModelList[I].ecf      := SQL.getInteger(ecf);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].status      := SQL.getInteger(status);
      Self.FModelList[I].status_os      := SQL.getInteger(status_os);
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

  Self.FModel := ( Model as TModelERPorcamentouniao );             

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
  SQL.Update(os);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
