
unit Dal.ERP.empresas_configuracoes_cte;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_configuracoes_cte, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresasconfiguracoescte = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresasconfiguracoescte;  
    FModelList : TModelBaseList<TModelERPempresasconfiguracoescte>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresasconfiguracoescte.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresasconfiguracoescte) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoescte );              

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

function TDalERPempresasconfiguracoescte.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresasconfiguracoescte) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoescte ); 

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
  SQL.Insert(empresas_configuracoes_mdfe).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.cert_caminho).Next;
     SQL.Field(Self.FModel.cert_senha).Next;
     SQL.Field(Self.FModel.cert_numserie).Next;
     SQL.Field(Self.FModel.ge_dacte).Next;
     SQL.Field(Self.FModel.ge_ambiente).Next;
     SQL.Field(Self.FModel.ge_formaemissao).Next;
     SQL.Field(Self.FModel.ge_logomarca).Next;
     SQL.Field(Self.FModel.ge_salvar).Next;
     SQL.Field(Self.FModel.ge_pathsalvar).Next;
     SQL.Field(Self.FModel.ge_versao_df).Next;
     SQL.Field(Self.FModel.webs_uf).Next;
     SQL.Field(Self.FModel.webs_ambiente).Next;
     SQL.Field(Self.FModel.webs_visualizar).Next;
     SQL.Field(Self.FModel.webs_ssltype).Next;
     SQL.Field(Self.FModel.pro_host).Next;
     SQL.Field(Self.FModel.pro_porta).Next;
     SQL.Field(Self.FModel.pro_user).Next;
     SQL.Field(Self.FModel.pro_pass).Next;
     SQL.Field(Self.FModel.tipoemi).Next;
     SQL.Field(Self.FModel.serie).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresasconfiguracoescte.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresasconfiguracoescte) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresasconfiguracoescte );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_configuracoes_mdfe);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresasconfiguracoescte>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresasconfiguracoescte.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].cert_caminho      := SQL.getInteger(cert_caminho);
      Self.FModelList[I].cert_senha      := SQL.getInteger(cert_senha);
      Self.FModelList[I].cert_numserie      := SQL.getInteger(cert_numserie);
      Self.FModelList[I].ge_dacte      := SQL.getInteger(ge_dacte);
      Self.FModelList[I].ge_ambiente      := SQL.getInteger(ge_ambiente);
      Self.FModelList[I].ge_formaemissao      := SQL.getInteger(ge_formaemissao);
      Self.FModelList[I].ge_logomarca      := SQL.getInteger(ge_logomarca);
      Self.FModelList[I].ge_salvar      := SQL.getInteger(ge_salvar);
      Self.FModelList[I].ge_pathsalvar      := SQL.getInteger(ge_pathsalvar);
      Self.FModelList[I].ge_versao_df      := SQL.getInteger(ge_versao_df);
      Self.FModelList[I].webs_uf      := SQL.getInteger(webs_uf);
      Self.FModelList[I].webs_ambiente      := SQL.getInteger(webs_ambiente);
      Self.FModelList[I].webs_visualizar      := SQL.getInteger(webs_visualizar);
      Self.FModelList[I].webs_ssltype      := SQL.getInteger(webs_ssltype);
      Self.FModelList[I].pro_host      := SQL.getInteger(pro_host);
      Self.FModelList[I].pro_porta      := SQL.getInteger(pro_porta);
      Self.FModelList[I].pro_user      := SQL.getInteger(pro_user);
      Self.FModelList[I].pro_pass      := SQL.getInteger(pro_pass);
      Self.FModelList[I].tipoemi      := SQL.getInteger(tipoemi);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
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

  Self.FModel := ( Model as TModelERPempresasconfiguracoescte );             

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
  SQL.Update(empresas_configuracoes_mdfe);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
