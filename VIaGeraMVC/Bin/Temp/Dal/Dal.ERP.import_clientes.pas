
unit Dal.ERP.import_cidades;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.import_cidades, DalBaseCRUD,
  SQLQuery;

type
  TDalERPimportcidades = class(TDalBaseCRUD)
  private 
    FModel : TModelERPimportcidades;  
    FModelList : TModelBaseList<TModelERPimportcidades>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPimportcidades.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPimportcidades) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimportcidades );              

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

function TDalERPimportcidades.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPimportcidades) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimportcidades ); 

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
  SQL.Insert(import_clientes).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.data_ficha).Next;
     SQL.Field(Self.FModel.razao_social).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.telefone).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.inscricao_estadual).Next;
     SQL.Field(Self.FModel.rg_ssp).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.data_nascimento).Next;
     SQL.Field(Self.FModel.sexo).Next;
     SQL.Field(Self.FModel.pai).Next;
     SQL.Field(Self.FModel.mae).Next;
     SQL.Field(Self.FModel.dependentes).Next;
     SQL.Field(Self.FModel.conjugue).Next;
     SQL.Field(Self.FModel.funcao).Next;
     SQL.Field(Self.FModel.spc).Next;
     SQL.Field(Self.FModel.limite).Next;
     SQL.Field(Self.FModel.compras).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.atacado).Next;
     SQL.Field(Self.FModel.estado_civil).Next;
     SQL.Field(Self.FModel.observacao).Next;
     SQL.Field(Self.FModel.email).Next;
     SQL.Field(Self.FModel.bloqueio).Next;
     SQL.Field(Self.FModel.contribuinte_icms).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPimportcidades.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPimportcidades) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPimportcidades );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(import_clientes);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPimportcidades>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPimportcidades.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].data_ficha      := SQL.getInteger(data_ficha);
      Self.FModelList[I].razao_social      := SQL.getInteger(razao_social);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].telefone      := SQL.getInteger(telefone);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].inscricao_estadual      := SQL.getInteger(inscricao_estadual);
      Self.FModelList[I].rg_ssp      := SQL.getInteger(rg_ssp);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].data_nascimento      := SQL.getInteger(data_nascimento);
      Self.FModelList[I].sexo      := SQL.getInteger(sexo);
      Self.FModelList[I].pai      := SQL.getInteger(pai);
      Self.FModelList[I].mae      := SQL.getInteger(mae);
      Self.FModelList[I].dependentes      := SQL.getInteger(dependentes);
      Self.FModelList[I].conjugue      := SQL.getInteger(conjugue);
      Self.FModelList[I].funcao      := SQL.getInteger(funcao);
      Self.FModelList[I].spc      := SQL.getInteger(spc);
      Self.FModelList[I].limite      := SQL.getInteger(limite);
      Self.FModelList[I].compras      := SQL.getInteger(compras);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].atacado      := SQL.getInteger(atacado);
      Self.FModelList[I].estado_civil      := SQL.getInteger(estado_civil);
      Self.FModelList[I].observacao      := SQL.getInteger(observacao);
      Self.FModelList[I].email      := SQL.getInteger(email);
      Self.FModelList[I].bloqueio      := SQL.getInteger(bloqueio);
      Self.FModelList[I].contribuinte_icms      := SQL.getInteger(contribuinte_icms);
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

  Self.FModel := ( Model as TModelERPimportcidades );             

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
  SQL.Update(import_clientes);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
