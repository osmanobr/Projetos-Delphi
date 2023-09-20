
unit Dal.ERP.updatescript;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.updatescript, DalBaseCRUD,
  SQLQuery;

type
  TDalERPupdatescript = class(TDalBaseCRUD)
  private 
    FModel : TModelERPupdatescript;  
    FModelList : TModelBaseList<TModelERPupdatescript>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPupdatescript.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPupdatescript) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPupdatescript );              

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

function TDalERPupdatescript.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPupdatescript) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPupdatescript ); 

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
  SQL.Insert(usuarios).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.dt_cadastro).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.senha).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.fone_residencia).Next;
     SQL.Field(Self.FModel.fone_celular).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.desconto_venda).Next;
     SQL.Field(Self.FModel.desconto_receber).Next;
     SQL.Field(Self.FModel.altera_prc_unit_orc).Next;
     SQL.Field(Self.FModel.altera_prc_produto).Next;
     SQL.Field(Self.FModel.altera_data_venda).Next;
     SQL.Field(Self.FModel.altera_data_pgto).Next;
     SQL.Field(Self.FModel.fecha_venda).Next;
     SQL.Field(Self.FModel.quitar_receber).Next;
     SQL.Field(Self.FModel.quitar_pagar).Next;
     SQL.Field(Self.FModel.exibe_resumodia).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_impressora).Next;
     SQL.Field(Self.FModel.data_caixa).Next;
     SQL.Field(Self.FModel.juro_receber).Next;
     SQL.Field(Self.FModel.juro_pagar).Next;
     SQL.Field(Self.FModel.altera_valor_receber).Next;
     SQL.Field(Self.FModel.altera_valor_pagar).Next;
     SQL.Field(Self.FModel.uniao_conta).Next;
     SQL.Field(Self.FModel.gera_conta).Next;
     SQL.Field(Self.FModel.transferencia_conta).Next;
     SQL.Field(Self.FModel.desdobramento).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.expedicao).Next;
     SQL.Field(Self.FModel.uniao_orcamento).Next;
     SQL.Field(Self.FModel.codigo_autorizacao).Next;
     SQL.Field(Self.FModel.mixvenda).Next;
     SQL.Field(Self.FModel.vendedor_venda).Next;
     SQL.Field(Self.FModel.altera_cxvenda).Next;
     SQL.Field(Self.FModel.bloqueio_cliente).Next;
     SQL.Field(Self.FModel.altera_obs).Next;
     SQL.Field(Self.FModel.liberacao_venda).Next;
     SQL.Field(Self.FModel.acerto_estoque_equipamento).Next;
     SQL.Field(Self.FModel.permite_exclusao_fabricacao).Next;
     SQL.Field(Self.FModel.transferencia_estoque).Next;
     SQL.Field(Self.FModel.altera_ponto).Next;
     SQL.Field(Self.FModel.alterar_serial).Next;
     SQL.Field(Self.FModel.alterar_cadastro_romaneio).Next;
     SQL.Field(Self.FModel.acerto_estoque).Next;
     SQL.Field(Self.FModel.altera_preco_consulta_rapida).Next;
     SQL.Field(Self.FModel.fechar_troca).Next;
     SQL.Field(Self.FModel.classificacao_os).Next;
     SQL.Field(Self.FModel.abrir_venda_uso).Next;
     SQL.Field(Self.FModel.editar_inventario).Next;
     SQL.Field(Self.FModel.alterar_entrada_prevenda).Next;
     SQL.Field(Self.FModel.percentual_minimo_entrada).Next;
     SQL.Field(Self.FModel.habilitar_lancamento_balanco).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.multa).Next;
     SQL.Field(Self.FModel.altera_prc_unit_orc_mais).Next;
     SQL.Field(Self.FModel.entrada_nota).Next;
     SQL.Field(Self.FModel.multa_receber).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.alterar_insumo_fabricacao).Next;
     SQL.Field(Self.FModel.delitem).Next;
     SQL.Field(Self.FModel.id_sti).Next;
     SQL.Field(Self.FModel.desconto_especial).Next;
     SQL.Field(Self.FModel.valor_limite_nfe).Next;
     SQL.Field(Self.FModel.valor_limite_nfce).Next;
     SQL.Field(Self.FModel.login).Next;
     SQL.Field(Self.FModel.password).Next;
     SQL.Field(Self.FModel.permissao_exclusao_arquivo).Next;
     SQL.Field(Self.FModel.estorno_credito_usado).Next;
     SQL.Field(Self.FModel.tranferencia_portador_origem_debito).Next;
     SQL.Field(Self.FModel.transferencia_portador_destino_credito).Next;
     SQL.Field(Self.FModel.tranferencia_portador_origem).Next;
     SQL.Field(Self.FModel.transferencia_portador_destino).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPupdatescript.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPupdatescript) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPupdatescript );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(usuarios);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPupdatescript>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPupdatescript.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].dt_cadastro      := SQL.getInteger(dt_cadastro);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].senha      := SQL.getInteger(senha);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].fone_residencia      := SQL.getInteger(fone_residencia);
      Self.FModelList[I].fone_celular      := SQL.getInteger(fone_celular);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].desconto_venda      := SQL.getInteger(desconto_venda);
      Self.FModelList[I].desconto_receber      := SQL.getInteger(desconto_receber);
      Self.FModelList[I].altera_prc_unit_orc      := SQL.getInteger(altera_prc_unit_orc);
      Self.FModelList[I].altera_prc_produto      := SQL.getInteger(altera_prc_produto);
      Self.FModelList[I].altera_data_venda      := SQL.getInteger(altera_data_venda);
      Self.FModelList[I].altera_data_pgto      := SQL.getInteger(altera_data_pgto);
      Self.FModelList[I].fecha_venda      := SQL.getInteger(fecha_venda);
      Self.FModelList[I].quitar_receber      := SQL.getInteger(quitar_receber);
      Self.FModelList[I].quitar_pagar      := SQL.getInteger(quitar_pagar);
      Self.FModelList[I].exibe_resumodia      := SQL.getInteger(exibe_resumodia);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_impressora      := SQL.getInteger(id_impressora);
      Self.FModelList[I].data_caixa      := SQL.getInteger(data_caixa);
      Self.FModelList[I].juro_receber      := SQL.getInteger(juro_receber);
      Self.FModelList[I].juro_pagar      := SQL.getInteger(juro_pagar);
      Self.FModelList[I].altera_valor_receber      := SQL.getInteger(altera_valor_receber);
      Self.FModelList[I].altera_valor_pagar      := SQL.getInteger(altera_valor_pagar);
      Self.FModelList[I].uniao_conta      := SQL.getInteger(uniao_conta);
      Self.FModelList[I].gera_conta      := SQL.getInteger(gera_conta);
      Self.FModelList[I].transferencia_conta      := SQL.getInteger(transferencia_conta);
      Self.FModelList[I].desdobramento      := SQL.getInteger(desdobramento);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].expedicao      := SQL.getInteger(expedicao);
      Self.FModelList[I].uniao_orcamento      := SQL.getInteger(uniao_orcamento);
      Self.FModelList[I].codigo_autorizacao      := SQL.getInteger(codigo_autorizacao);
      Self.FModelList[I].mixvenda      := SQL.getInteger(mixvenda);
      Self.FModelList[I].vendedor_venda      := SQL.getInteger(vendedor_venda);
      Self.FModelList[I].altera_cxvenda      := SQL.getInteger(altera_cxvenda);
      Self.FModelList[I].bloqueio_cliente      := SQL.getInteger(bloqueio_cliente);
      Self.FModelList[I].altera_obs      := SQL.getInteger(altera_obs);
      Self.FModelList[I].liberacao_venda      := SQL.getInteger(liberacao_venda);
      Self.FModelList[I].acerto_estoque_equipamento      := SQL.getInteger(acerto_estoque_equipamento);
      Self.FModelList[I].permite_exclusao_fabricacao      := SQL.getInteger(permite_exclusao_fabricacao);
      Self.FModelList[I].transferencia_estoque      := SQL.getInteger(transferencia_estoque);
      Self.FModelList[I].altera_ponto      := SQL.getInteger(altera_ponto);
      Self.FModelList[I].alterar_serial      := SQL.getInteger(alterar_serial);
      Self.FModelList[I].alterar_cadastro_romaneio      := SQL.getInteger(alterar_cadastro_romaneio);
      Self.FModelList[I].acerto_estoque      := SQL.getInteger(acerto_estoque);
      Self.FModelList[I].altera_preco_consulta_rapida      := SQL.getInteger(altera_preco_consulta_rapida);
      Self.FModelList[I].fechar_troca      := SQL.getInteger(fechar_troca);
      Self.FModelList[I].classificacao_os      := SQL.getInteger(classificacao_os);
      Self.FModelList[I].abrir_venda_uso      := SQL.getInteger(abrir_venda_uso);
      Self.FModelList[I].editar_inventario      := SQL.getInteger(editar_inventario);
      Self.FModelList[I].alterar_entrada_prevenda      := SQL.getInteger(alterar_entrada_prevenda);
      Self.FModelList[I].percentual_minimo_entrada      := SQL.getInteger(percentual_minimo_entrada);
      Self.FModelList[I].habilitar_lancamento_balanco      := SQL.getInteger(habilitar_lancamento_balanco);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].multa      := SQL.getInteger(multa);
      Self.FModelList[I].altera_prc_unit_orc_mais      := SQL.getInteger(altera_prc_unit_orc_mais);
      Self.FModelList[I].entrada_nota      := SQL.getInteger(entrada_nota);
      Self.FModelList[I].multa_receber      := SQL.getInteger(multa_receber);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].alterar_insumo_fabricacao      := SQL.getInteger(alterar_insumo_fabricacao);
      Self.FModelList[I].delitem      := SQL.getInteger(delitem);
      Self.FModelList[I].id_sti      := SQL.getInteger(id_sti);
      Self.FModelList[I].desconto_especial      := SQL.getInteger(desconto_especial);
      Self.FModelList[I].valor_limite_nfe      := SQL.getInteger(valor_limite_nfe);
      Self.FModelList[I].valor_limite_nfce      := SQL.getInteger(valor_limite_nfce);
      Self.FModelList[I].login      := SQL.getInteger(login);
      Self.FModelList[I].password      := SQL.getInteger(password);
      Self.FModelList[I].permissao_exclusao_arquivo      := SQL.getInteger(permissao_exclusao_arquivo);
      Self.FModelList[I].estorno_credito_usado      := SQL.getInteger(estorno_credito_usado);
      Self.FModelList[I].tranferencia_portador_origem_debito      := SQL.getInteger(tranferencia_portador_origem_debito);
      Self.FModelList[I].transferencia_portador_destino_credito      := SQL.getInteger(transferencia_portador_destino_credito);
      Self.FModelList[I].tranferencia_portador_origem      := SQL.getInteger(tranferencia_portador_origem);
      Self.FModelList[I].transferencia_portador_destino      := SQL.getInteger(transferencia_portador_destino);
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

  Self.FModel := ( Model as TModelERPupdatescript );             

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
  SQL.Update(usuarios);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
