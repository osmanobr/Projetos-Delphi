
unit Dal.ERP.formas_pagamento;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.formas_pagamento, DalBaseCRUD,
  SQLQuery;

type
  TDalERPformaspagamento = class(TDalBaseCRUD)
  private 
    FModel : TModelERPformaspagamento;  
    FModelList : TModelBaseList<TModelERPformaspagamento>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPformaspagamento.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPformaspagamento) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPformaspagamento );              

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

function TDalERPformaspagamento.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPformaspagamento) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPformaspagamento ); 

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
  SQL.Insert(fornecedor).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data_ficha).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.razao_social).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.caixa_postal).Next;
     SQL.Field(Self.FModel.fone1).Next;
     SQL.Field(Self.FModel.fone2).Next;
     SQL.Field(Self.FModel.celular1).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.inscricao_estadual).Next;
     SQL.Field(Self.FModel.e_mail).Next;
     SQL.Field(Self.FModel.home_page).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.representante_nome).Next;
     SQL.Field(Self.FModel.representante_fone).Next;
     SQL.Field(Self.FModel.representante_celular).Next;
     SQL.Field(Self.FModel.representante_e_mail).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.representante_skype).Next;
     SQL.Field(Self.FModel.representante_msn).Next;
     SQL.Field(Self.FModel.condicoes_pagamento).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.produtor_rural).Next;
     SQL.Field(Self.FModel.fornecedor).Next;
     SQL.Field(Self.FModel.viacentral).Next;
     SQL.Field(Self.FModel.id_servidor).Next;
     SQL.Field(Self.FModel.hash_local).Next;
     SQL.Field(Self.FModel.hash_matriz).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPformaspagamento.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPformaspagamento) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPformaspagamento );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(fornecedor);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPformaspagamento>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPformaspagamento.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data_ficha      := SQL.getInteger(data_ficha);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].razao_social      := SQL.getInteger(razao_social);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].caixa_postal      := SQL.getInteger(caixa_postal);
      Self.FModelList[I].fone1      := SQL.getInteger(fone1);
      Self.FModelList[I].fone2      := SQL.getInteger(fone2);
      Self.FModelList[I].celular1      := SQL.getInteger(celular1);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].inscricao_estadual      := SQL.getInteger(inscricao_estadual);
      Self.FModelList[I].e_mail      := SQL.getInteger(e_mail);
      Self.FModelList[I].home_page      := SQL.getInteger(home_page);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].representante_nome      := SQL.getInteger(representante_nome);
      Self.FModelList[I].representante_fone      := SQL.getInteger(representante_fone);
      Self.FModelList[I].representante_celular      := SQL.getInteger(representante_celular);
      Self.FModelList[I].representante_e_mail      := SQL.getInteger(representante_e_mail);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].representante_skype      := SQL.getInteger(representante_skype);
      Self.FModelList[I].representante_msn      := SQL.getInteger(representante_msn);
      Self.FModelList[I].condicoes_pagamento      := SQL.getInteger(condicoes_pagamento);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].produtor_rural      := SQL.getInteger(produtor_rural);
      Self.FModelList[I].fornecedor      := SQL.getInteger(fornecedor);
      Self.FModelList[I].viacentral      := SQL.getInteger(viacentral);
      Self.FModelList[I].id_servidor      := SQL.getInteger(id_servidor);
      Self.FModelList[I].hash_local      := SQL.getInteger(hash_local);
      Self.FModelList[I].hash_matriz      := SQL.getInteger(hash_matriz);
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

  Self.FModel := ( Model as TModelERPformaspagamento );             

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
  SQL.Update(fornecedor);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
