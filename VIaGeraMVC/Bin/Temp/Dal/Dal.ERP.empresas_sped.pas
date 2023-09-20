
unit Dal.ERP.empresas_relatorios;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_relatorios, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresasrelatorios = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresasrelatorios;  
    FModelList : TModelBaseList<TModelERPempresasrelatorios>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresasrelatorios.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresasrelatorios) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasrelatorios );              

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

function TDalERPempresasrelatorios.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresasrelatorios) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasrelatorios ); 

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
  SQL.Insert(empresas_sped).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.ibge).Next;
     SQL.Field(Self.FModel.porta).Next;
     SQL.Field(Self.FModel.suframa).Next;
     SQL.Field(Self.FModel.erro).Next;
     SQL.Field(Self.FModel.atividade).Next;
     SQL.Field(Self.FModel.perfil).Next;
     SQL.Field(Self.FModel.cartao1).Next;
     SQL.Field(Self.FModel.cartao2).Next;
     SQL.Field(Self.FModel.cartao3).Next;
     SQL.Field(Self.FModel.cartao4).Next;
     SQL.Field(Self.FModel.cartao5).Next;
     SQL.Field(Self.FModel.cartao6).Next;
     SQL.Field(Self.FModel.cod_cartao1).Next;
     SQL.Field(Self.FModel.cod_cartao2).Next;
     SQL.Field(Self.FModel.cod_cartao3).Next;
     SQL.Field(Self.FModel.cod_cartao4).Next;
     SQL.Field(Self.FModel.cod_cartao5).Next;
     SQL.Field(Self.FModel.cod_cartao6).Next;
     SQL.Field(Self.FModel.cod_forn1).Next;
     SQL.Field(Self.FModel.cod_forn2).Next;
     SQL.Field(Self.FModel.cod_forn3).Next;
     SQL.Field(Self.FModel.cod_forn4).Next;
     SQL.Field(Self.FModel.cod_forn5).Next;
     SQL.Field(Self.FModel.cod_forn6).Next;
     SQL.Field(Self.FModel.registro_1010_3).Next;
     SQL.Field(Self.FModel.registro_1010_4).Next;
     SQL.Field(Self.FModel.registro_1010_5).Next;
     SQL.Field(Self.FModel.registro_1010_7).Next;
     SQL.Field(Self.FModel.registro_1010_9).Next;
     SQL.Field(Self.FModel.regime).Next;
     SQL.Field(Self.FModel.saida).Next;
     SQL.Field(Self.FModel.gera_cartao).Next;
     SQL.Field(Self.FModel.unificar_cartao).Next;
     SQL.Field(Self.FModel.icms_dia).Next;
     SQL.Field(Self.FModel.icms_codigo_receita).Next;
     SQL.Field(Self.FModel.icms_numero_processo).Next;
     SQL.Field(Self.FModel.icms_descricao_processo).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_1).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_2).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_3).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_4).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_5).Next;
     SQL.Field(Self.FModel.icms_aliquota_ecf_6).Next;
     SQL.Field(Self.FModel.icms_usuario_ecf).Next;
     SQL.Field(Self.FModel.icms_cfoptrib).Next;
     SQL.Field(Self.FModel.icms_cfopsub).Next;
     SQL.Field(Self.FModel.icms_cfopins).Next;
     SQL.Field(Self.FModel.icms_blocok).Next;
     SQL.Field(Self.FModel.icms_inventario).Next;
     SQL.Field(Self.FModel.icms_zera).Next;
     SQL.Field(Self.FModel.icms_dominio).Next;
     SQL.Field(Self.FModel.icms_gera_ipi).Next;
     SQL.Field(Self.FModel.energia_codigo).Next;
     SQL.Field(Self.FModel.energia_descricao).Next;
     SQL.Field(Self.FModel.energia_ncm).Next;
     SQL.Field(Self.FModel.energia_aliquota).Next;
     SQL.Field(Self.FModel.planocontas_tributado).Next;
     SQL.Field(Self.FModel.planocontas_substituicao_tributaria).Next;
     SQL.Field(Self.FModel.planocontas_isento).Next;
     SQL.Field(Self.FModel.planocontas_nao_incidencia).Next;
     SQL.Field(Self.FModel.planocontas_tributado_e_pauta_fiscal).Next;
     SQL.Field(Self.FModel.planocontas_planocontaspadrao).Next;
     SQL.Field(Self.FModel.planocontas_planocontaspadraoentrada).Next;
     SQL.Field(Self.FModel.tipogeracaopiscofins).Next;
     SQL.Field(Self.FModel.lucroreal).Next;
     SQL.Field(Self.FModel.tipoatividade).Next;
     SQL.Field(Self.FModel.cfop_nao_gera_credito_c170).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresasrelatorios.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresasrelatorios) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresasrelatorios );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_sped);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresasrelatorios>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresasrelatorios.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].ibge      := SQL.getInteger(ibge);
      Self.FModelList[I].porta      := SQL.getInteger(porta);
      Self.FModelList[I].suframa      := SQL.getInteger(suframa);
      Self.FModelList[I].erro      := SQL.getInteger(erro);
      Self.FModelList[I].atividade      := SQL.getInteger(atividade);
      Self.FModelList[I].perfil      := SQL.getInteger(perfil);
      Self.FModelList[I].cartao1      := SQL.getInteger(cartao1);
      Self.FModelList[I].cartao2      := SQL.getInteger(cartao2);
      Self.FModelList[I].cartao3      := SQL.getInteger(cartao3);
      Self.FModelList[I].cartao4      := SQL.getInteger(cartao4);
      Self.FModelList[I].cartao5      := SQL.getInteger(cartao5);
      Self.FModelList[I].cartao6      := SQL.getInteger(cartao6);
      Self.FModelList[I].cod_cartao1      := SQL.getInteger(cod_cartao1);
      Self.FModelList[I].cod_cartao2      := SQL.getInteger(cod_cartao2);
      Self.FModelList[I].cod_cartao3      := SQL.getInteger(cod_cartao3);
      Self.FModelList[I].cod_cartao4      := SQL.getInteger(cod_cartao4);
      Self.FModelList[I].cod_cartao5      := SQL.getInteger(cod_cartao5);
      Self.FModelList[I].cod_cartao6      := SQL.getInteger(cod_cartao6);
      Self.FModelList[I].cod_forn1      := SQL.getInteger(cod_forn1);
      Self.FModelList[I].cod_forn2      := SQL.getInteger(cod_forn2);
      Self.FModelList[I].cod_forn3      := SQL.getInteger(cod_forn3);
      Self.FModelList[I].cod_forn4      := SQL.getInteger(cod_forn4);
      Self.FModelList[I].cod_forn5      := SQL.getInteger(cod_forn5);
      Self.FModelList[I].cod_forn6      := SQL.getInteger(cod_forn6);
      Self.FModelList[I].registro_1010_3      := SQL.getInteger(registro_1010_3);
      Self.FModelList[I].registro_1010_4      := SQL.getInteger(registro_1010_4);
      Self.FModelList[I].registro_1010_5      := SQL.getInteger(registro_1010_5);
      Self.FModelList[I].registro_1010_7      := SQL.getInteger(registro_1010_7);
      Self.FModelList[I].registro_1010_9      := SQL.getInteger(registro_1010_9);
      Self.FModelList[I].regime      := SQL.getInteger(regime);
      Self.FModelList[I].saida      := SQL.getInteger(saida);
      Self.FModelList[I].gera_cartao      := SQL.getInteger(gera_cartao);
      Self.FModelList[I].unificar_cartao      := SQL.getInteger(unificar_cartao);
      Self.FModelList[I].icms_dia      := SQL.getInteger(icms_dia);
      Self.FModelList[I].icms_codigo_receita      := SQL.getInteger(icms_codigo_receita);
      Self.FModelList[I].icms_numero_processo      := SQL.getInteger(icms_numero_processo);
      Self.FModelList[I].icms_descricao_processo      := SQL.getInteger(icms_descricao_processo);
      Self.FModelList[I].icms_aliquota_ecf_1      := SQL.getInteger(icms_aliquota_ecf_1);
      Self.FModelList[I].icms_aliquota_ecf_2      := SQL.getInteger(icms_aliquota_ecf_2);
      Self.FModelList[I].icms_aliquota_ecf_3      := SQL.getInteger(icms_aliquota_ecf_3);
      Self.FModelList[I].icms_aliquota_ecf_4      := SQL.getInteger(icms_aliquota_ecf_4);
      Self.FModelList[I].icms_aliquota_ecf_5      := SQL.getInteger(icms_aliquota_ecf_5);
      Self.FModelList[I].icms_aliquota_ecf_6      := SQL.getInteger(icms_aliquota_ecf_6);
      Self.FModelList[I].icms_usuario_ecf      := SQL.getInteger(icms_usuario_ecf);
      Self.FModelList[I].icms_cfoptrib      := SQL.getInteger(icms_cfoptrib);
      Self.FModelList[I].icms_cfopsub      := SQL.getInteger(icms_cfopsub);
      Self.FModelList[I].icms_cfopins      := SQL.getInteger(icms_cfopins);
      Self.FModelList[I].icms_blocok      := SQL.getInteger(icms_blocok);
      Self.FModelList[I].icms_inventario      := SQL.getInteger(icms_inventario);
      Self.FModelList[I].icms_zera      := SQL.getInteger(icms_zera);
      Self.FModelList[I].icms_dominio      := SQL.getInteger(icms_dominio);
      Self.FModelList[I].icms_gera_ipi      := SQL.getInteger(icms_gera_ipi);
      Self.FModelList[I].energia_codigo      := SQL.getInteger(energia_codigo);
      Self.FModelList[I].energia_descricao      := SQL.getInteger(energia_descricao);
      Self.FModelList[I].energia_ncm      := SQL.getInteger(energia_ncm);
      Self.FModelList[I].energia_aliquota      := SQL.getInteger(energia_aliquota);
      Self.FModelList[I].planocontas_tributado      := SQL.getInteger(planocontas_tributado);
      Self.FModelList[I].planocontas_substituicao_tributaria      := SQL.getInteger(planocontas_substituicao_tributaria);
      Self.FModelList[I].planocontas_isento      := SQL.getInteger(planocontas_isento);
      Self.FModelList[I].planocontas_nao_incidencia      := SQL.getInteger(planocontas_nao_incidencia);
      Self.FModelList[I].planocontas_tributado_e_pauta_fiscal      := SQL.getInteger(planocontas_tributado_e_pauta_fiscal);
      Self.FModelList[I].planocontas_planocontaspadrao      := SQL.getInteger(planocontas_planocontaspadrao);
      Self.FModelList[I].planocontas_planocontaspadraoentrada      := SQL.getInteger(planocontas_planocontaspadraoentrada);
      Self.FModelList[I].tipogeracaopiscofins      := SQL.getInteger(tipogeracaopiscofins);
      Self.FModelList[I].lucroreal      := SQL.getInteger(lucroreal);
      Self.FModelList[I].tipoatividade      := SQL.getInteger(tipoatividade);
      Self.FModelList[I].cfop_nao_gera_credito_c170      := SQL.getInteger(cfop_nao_gera_credito_c170);
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

  Self.FModel := ( Model as TModelERPempresasrelatorios );             

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
  SQL.Update(empresas_sped);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
