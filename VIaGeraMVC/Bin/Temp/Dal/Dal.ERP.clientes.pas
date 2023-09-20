
unit Dal.ERP.cliente_inscricao_estadual;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.cliente_inscricao_estadual, DalBaseCRUD,
  SQLQuery;

type
  TDalERPclienteinscricaoestadual = class(TDalBaseCRUD)
  private 
    FModel : TModelERPclienteinscricaoestadual;  
    FModelList : TModelBaseList<TModelERPclienteinscricaoestadual>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPclienteinscricaoestadual.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPclienteinscricaoestadual) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclienteinscricaoestadual );              

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

function TDalERPclienteinscricaoestadual.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPclienteinscricaoestadual) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclienteinscricaoestadual ); 

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
  SQL.Insert(clientes).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.pessoa).Next;
     SQL.Field(Self.FModel.data_ficha).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.razao_social).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.caixa_postal).Next;
     SQL.Field(Self.FModel.fone1).Next;
     SQL.Field(Self.FModel.fone2).Next;
     SQL.Field(Self.FModel.celular1).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.inscricao_estadual).Next;
     SQL.Field(Self.FModel.rg_ssp).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.titulo).Next;
     SQL.Field(Self.FModel.data_nasc).Next;
     SQL.Field(Self.FModel.sexo).Next;
     SQL.Field(Self.FModel.id_natural).Next;
     SQL.Field(Self.FModel.pai).Next;
     SQL.Field(Self.FModel.mae).Next;
     SQL.Field(Self.FModel.qtd_filhos).Next;
     SQL.Field(Self.FModel.conjugue).Next;
     SQL.Field(Self.FModel.data_nasc_conj).Next;
     SQL.Field(Self.FModel.aluguel).Next;
     SQL.Field(Self.FModel.valor_aluguel).Next;
     SQL.Field(Self.FModel.temp_resid).Next;
     SQL.Field(Self.FModel.salario).Next;
     SQL.Field(Self.FModel.empresa).Next;
     SQL.Field(Self.FModel.fone_empresa).Next;
     SQL.Field(Self.FModel.data_admissao).Next;
     SQL.Field(Self.FModel.cidade_empresa).Next;
     SQL.Field(Self.FModel.uf_empresa).Next;
     SQL.Field(Self.FModel.funcao).Next;
     SQL.Field(Self.FModel.referencia_comercial).Next;
     SQL.Field(Self.FModel.referencia_bancaria).Next;
     SQL.Field(Self.FModel.data_consulta_spc).Next;
     SQL.Field(Self.FModel.obs_spc).Next;
     SQL.Field(Self.FModel.valor_limite).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.e_mail).Next;
     SQL.Field(Self.FModel.home_page).Next;
     SQL.Field(Self.FModel.endereco_entrega).Next;
     SQL.Field(Self.FModel.bairro_entrega).Next;
     SQL.Field(Self.FModel.cidade_entrega).Next;
     SQL.Field(Self.FModel.uf_entrega).Next;
     SQL.Field(Self.FModel.referencia_entrega).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.icm_ipi).Next;
     SQL.Field(Self.FModel.cep_entrega).Next;
     SQL.Field(Self.FModel.obs_geral).Next;
     SQL.Field(Self.FModel.estado_civil).Next;
     SQL.Field(Self.FModel.ficha).Next;
     SQL.Field(Self.FModel.temp_empre).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.id_rota).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.cod_anterior).Next;
     SQL.Field(Self.FModel.id_atividade).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.capital_social).Next;
     SQL.Field(Self.FModel.socio1).Next;
     SQL.Field(Self.FModel.socio2).Next;
     SQL.Field(Self.FModel.socio3).Next;
     SQL.Field(Self.FModel.socio1valor).Next;
     SQL.Field(Self.FModel.socio2valor).Next;
     SQL.Field(Self.FModel.socio3valor).Next;
     SQL.Field(Self.FModel.foto).Next;
     SQL.Field(Self.FModel.dia_vencimento).Next;
     SQL.Field(Self.FModel.produtor_ativo).Next;
     SQL.Field(Self.FModel.apelido).Next;
     SQL.Field(Self.FModel.tam_meia).Next;
     SQL.Field(Self.FModel.tam_calcado).Next;
     SQL.Field(Self.FModel.tam_cinto).Next;
     SQL.Field(Self.FModel.tam_calca).Next;
     SQL.Field(Self.FModel.tam_camisa).Next;
     SQL.Field(Self.FModel.tam_sutia).Next;
     SQL.Field(Self.FModel.atacado).Next;
     SQL.Field(Self.FModel.uf_naturalidade).Next;
     SQL.Field(Self.FModel.sistema).Next;
     SQL.Field(Self.FModel.rota_ordem).Next;
     SQL.Field(Self.FModel.email1).Next;
     SQL.Field(Self.FModel.email2).Next;
     SQL.Field(Self.FModel.telefone1).Next;
     SQL.Field(Self.FModel.telefone2).Next;
     SQL.Field(Self.FModel.alergias_medicamentos).Next;
     SQL.Field(Self.FModel.dificuldades_disturbios).Next;
     SQL.Field(Self.FModel.observacoes_necessarias).Next;
     SQL.Field(Self.FModel.pagamento).Next;
     SQL.Field(Self.FModel.dia_mensalidade).Next;
     SQL.Field(Self.FModel.id_tabela_preco).Next;
     SQL.Field(Self.FModel.viacentral).Next;
     SQL.Field(Self.FModel.nao_revenda).Next;
     SQL.Field(Self.FModel.contribuinte_icms).Next;
     SQL.Field(Self.FModel.id_servidor).Next;
     SQL.Field(Self.FModel.hash_local).Next;
     SQL.Field(Self.FModel.hash_matriz).Next;
     SQL.Field(Self.FModel.estoque_terceiro).Next;
     SQL.Field(Self.FModel.rg_data_emissao).Next;
     SQL.Field(Self.FModel.cnh).Next;
     SQL.Field(Self.FModel.cnh_data_emissao).Next;
     SQL.Field(Self.FModel.percentual_desconto).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPclienteinscricaoestadual.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPclienteinscricaoestadual) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPclienteinscricaoestadual );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(clientes);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPclienteinscricaoestadual>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPclienteinscricaoestadual.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].pessoa      := SQL.getInteger(pessoa);
      Self.FModelList[I].data_ficha      := SQL.getInteger(data_ficha);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].razao_social      := SQL.getInteger(razao_social);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].caixa_postal      := SQL.getInteger(caixa_postal);
      Self.FModelList[I].fone1      := SQL.getInteger(fone1);
      Self.FModelList[I].fone2      := SQL.getInteger(fone2);
      Self.FModelList[I].celular1      := SQL.getInteger(celular1);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].inscricao_estadual      := SQL.getInteger(inscricao_estadual);
      Self.FModelList[I].rg_ssp      := SQL.getInteger(rg_ssp);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].titulo      := SQL.getInteger(titulo);
      Self.FModelList[I].data_nasc      := SQL.getInteger(data_nasc);
      Self.FModelList[I].sexo      := SQL.getInteger(sexo);
      Self.FModelList[I].id_natural      := SQL.getInteger(id_natural);
      Self.FModelList[I].pai      := SQL.getInteger(pai);
      Self.FModelList[I].mae      := SQL.getInteger(mae);
      Self.FModelList[I].qtd_filhos      := SQL.getInteger(qtd_filhos);
      Self.FModelList[I].conjugue      := SQL.getInteger(conjugue);
      Self.FModelList[I].data_nasc_conj      := SQL.getInteger(data_nasc_conj);
      Self.FModelList[I].aluguel      := SQL.getInteger(aluguel);
      Self.FModelList[I].valor_aluguel      := SQL.getInteger(valor_aluguel);
      Self.FModelList[I].temp_resid      := SQL.getInteger(temp_resid);
      Self.FModelList[I].salario      := SQL.getInteger(salario);
      Self.FModelList[I].empresa      := SQL.getInteger(empresa);
      Self.FModelList[I].fone_empresa      := SQL.getInteger(fone_empresa);
      Self.FModelList[I].data_admissao      := SQL.getInteger(data_admissao);
      Self.FModelList[I].cidade_empresa      := SQL.getInteger(cidade_empresa);
      Self.FModelList[I].uf_empresa      := SQL.getInteger(uf_empresa);
      Self.FModelList[I].funcao      := SQL.getInteger(funcao);
      Self.FModelList[I].referencia_comercial      := SQL.getInteger(referencia_comercial);
      Self.FModelList[I].referencia_bancaria      := SQL.getInteger(referencia_bancaria);
      Self.FModelList[I].data_consulta_spc      := SQL.getInteger(data_consulta_spc);
      Self.FModelList[I].obs_spc      := SQL.getInteger(obs_spc);
      Self.FModelList[I].valor_limite      := SQL.getInteger(valor_limite);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].e_mail      := SQL.getInteger(e_mail);
      Self.FModelList[I].home_page      := SQL.getInteger(home_page);
      Self.FModelList[I].endereco_entrega      := SQL.getInteger(endereco_entrega);
      Self.FModelList[I].bairro_entrega      := SQL.getInteger(bairro_entrega);
      Self.FModelList[I].cidade_entrega      := SQL.getInteger(cidade_entrega);
      Self.FModelList[I].uf_entrega      := SQL.getInteger(uf_entrega);
      Self.FModelList[I].referencia_entrega      := SQL.getInteger(referencia_entrega);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].icm_ipi      := SQL.getInteger(icm_ipi);
      Self.FModelList[I].cep_entrega      := SQL.getInteger(cep_entrega);
      Self.FModelList[I].obs_geral      := SQL.getInteger(obs_geral);
      Self.FModelList[I].estado_civil      := SQL.getInteger(estado_civil);
      Self.FModelList[I].ficha      := SQL.getInteger(ficha);
      Self.FModelList[I].temp_empre      := SQL.getInteger(temp_empre);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].id_rota      := SQL.getInteger(id_rota);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].cod_anterior      := SQL.getInteger(cod_anterior);
      Self.FModelList[I].id_atividade      := SQL.getInteger(id_atividade);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].capital_social      := SQL.getInteger(capital_social);
      Self.FModelList[I].socio1      := SQL.getInteger(socio1);
      Self.FModelList[I].socio2      := SQL.getInteger(socio2);
      Self.FModelList[I].socio3      := SQL.getInteger(socio3);
      Self.FModelList[I].socio1valor      := SQL.getInteger(socio1valor);
      Self.FModelList[I].socio2valor      := SQL.getInteger(socio2valor);
      Self.FModelList[I].socio3valor      := SQL.getInteger(socio3valor);
      Self.FModelList[I].foto      := SQL.getInteger(foto);
      Self.FModelList[I].dia_vencimento      := SQL.getInteger(dia_vencimento);
      Self.FModelList[I].produtor_ativo      := SQL.getInteger(produtor_ativo);
      Self.FModelList[I].apelido      := SQL.getInteger(apelido);
      Self.FModelList[I].tam_meia      := SQL.getInteger(tam_meia);
      Self.FModelList[I].tam_calcado      := SQL.getInteger(tam_calcado);
      Self.FModelList[I].tam_cinto      := SQL.getInteger(tam_cinto);
      Self.FModelList[I].tam_calca      := SQL.getInteger(tam_calca);
      Self.FModelList[I].tam_camisa      := SQL.getInteger(tam_camisa);
      Self.FModelList[I].tam_sutia      := SQL.getInteger(tam_sutia);
      Self.FModelList[I].atacado      := SQL.getInteger(atacado);
      Self.FModelList[I].uf_naturalidade      := SQL.getInteger(uf_naturalidade);
      Self.FModelList[I].sistema      := SQL.getInteger(sistema);
      Self.FModelList[I].rota_ordem      := SQL.getInteger(rota_ordem);
      Self.FModelList[I].email1      := SQL.getInteger(email1);
      Self.FModelList[I].email2      := SQL.getInteger(email2);
      Self.FModelList[I].telefone1      := SQL.getInteger(telefone1);
      Self.FModelList[I].telefone2      := SQL.getInteger(telefone2);
      Self.FModelList[I].alergias_medicamentos      := SQL.getInteger(alergias_medicamentos);
      Self.FModelList[I].dificuldades_disturbios      := SQL.getInteger(dificuldades_disturbios);
      Self.FModelList[I].observacoes_necessarias      := SQL.getInteger(observacoes_necessarias);
      Self.FModelList[I].pagamento      := SQL.getInteger(pagamento);
      Self.FModelList[I].dia_mensalidade      := SQL.getInteger(dia_mensalidade);
      Self.FModelList[I].id_tabela_preco      := SQL.getInteger(id_tabela_preco);
      Self.FModelList[I].viacentral      := SQL.getInteger(viacentral);
      Self.FModelList[I].nao_revenda      := SQL.getInteger(nao_revenda);
      Self.FModelList[I].contribuinte_icms      := SQL.getInteger(contribuinte_icms);
      Self.FModelList[I].id_servidor      := SQL.getInteger(id_servidor);
      Self.FModelList[I].hash_local      := SQL.getInteger(hash_local);
      Self.FModelList[I].hash_matriz      := SQL.getInteger(hash_matriz);
      Self.FModelList[I].estoque_terceiro      := SQL.getInteger(estoque_terceiro);
      Self.FModelList[I].rg_data_emissao      := SQL.getInteger(rg_data_emissao);
      Self.FModelList[I].cnh      := SQL.getInteger(cnh);
      Self.FModelList[I].cnh_data_emissao      := SQL.getInteger(cnh_data_emissao);
      Self.FModelList[I].percentual_desconto      := SQL.getInteger(percentual_desconto);
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

  Self.FModel := ( Model as TModelERPclienteinscricaoestadual );             

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
  SQL.Update(clientes);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
