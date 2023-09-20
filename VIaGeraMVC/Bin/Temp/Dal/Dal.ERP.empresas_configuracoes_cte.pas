
unit Dal.ERP.empresas_configuracoes;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_configuracoes, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresasconfiguracoes = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresasconfiguracoes;  
    FModelList : TModelBaseList<TModelERPempresasconfiguracoes>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresasconfiguracoes.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresasconfiguracoes) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoes );              

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

function TDalERPempresasconfiguracoes.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresasconfiguracoes) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoes ); 

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
  SQL.Insert(empresas_configuracoes_cte).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.cert_caminho).Next;
     SQL.Field(Self.FModel.cert_senha).Next;
     SQL.Field(Self.FModel.cert_numserie).Next;
     SQL.Field(Self.FModel.ge_dacte).Next;
     SQL.Field(Self.FModel.ge_formaemissao).Next;
     SQL.Field(Self.FModel.ge_logomarca).Next;
     SQL.Field(Self.FModel.ge_salvar).Next;
     SQL.Field(Self.FModel.ge_pathsalvar).Next;
     SQL.Field(Self.FModel.webs_uf).Next;
     SQL.Field(Self.FModel.webs_ambiente).Next;
     SQL.Field(Self.FModel.webs_visualizar).Next;
     SQL.Field(Self.FModel.webs_ssltype).Next;
     SQL.Field(Self.FModel.pro_host).Next;
     SQL.Field(Self.FModel.pro_porta).Next;
     SQL.Field(Self.FModel.pro_user).Next;
     SQL.Field(Self.FModel.pro_pass).Next;
     SQL.Field(Self.FModel.emi_cnpj).Next;
     SQL.Field(Self.FModel.emi_ie).Next;
     SQL.Field(Self.FModel.emi_razaosocial).Next;
     SQL.Field(Self.FModel.emi_fantasia).Next;
     SQL.Field(Self.FModel.emi_fone).Next;
     SQL.Field(Self.FModel.emi_cep).Next;
     SQL.Field(Self.FModel.emi_logradouro).Next;
     SQL.Field(Self.FModel.emi_numero).Next;
     SQL.Field(Self.FModel.emi_complemento).Next;
     SQL.Field(Self.FModel.emi_bairro).Next;
     SQL.Field(Self.FModel.emi_codcidade).Next;
     SQL.Field(Self.FModel.emi_cidade).Next;
     SQL.Field(Self.FModel.emi_uf).Next;
     SQL.Field(Self.FModel.ema_host).Next;
     SQL.Field(Self.FModel.ema_port).Next;
     SQL.Field(Self.FModel.ema_user).Next;
     SQL.Field(Self.FModel.ema_pass).Next;
     SQL.Field(Self.FModel.ema_assunto).Next;
     SQL.Field(Self.FModel.ema_ssl).Next;
     SQL.Field(Self.FModel.ema_mensagem).Next;
     SQL.Field(Self.FModel.numserie).Next;
     SQL.Field(Self.FModel.tipocte).Next;
     SQL.Field(Self.FModel.tiposervico).Next;
     SQL.Field(Self.FModel.regimesimples).Next;
     SQL.Field(Self.FModel.modelocte).Next;
     SQL.Field(Self.FModel.informar_resp_tecnico).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresasconfiguracoes.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresasconfiguracoes) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresasconfiguracoes );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_configuracoes_cte);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresasconfiguracoes>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresasconfiguracoes.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].cert_caminho      := SQL.getInteger(cert_caminho);
      Self.FModelList[I].cert_senha      := SQL.getInteger(cert_senha);
      Self.FModelList[I].cert_numserie      := SQL.getInteger(cert_numserie);
      Self.FModelList[I].ge_dacte      := SQL.getInteger(ge_dacte);
      Self.FModelList[I].ge_formaemissao      := SQL.getInteger(ge_formaemissao);
      Self.FModelList[I].ge_logomarca      := SQL.getInteger(ge_logomarca);
      Self.FModelList[I].ge_salvar      := SQL.getInteger(ge_salvar);
      Self.FModelList[I].ge_pathsalvar      := SQL.getInteger(ge_pathsalvar);
      Self.FModelList[I].webs_uf      := SQL.getInteger(webs_uf);
      Self.FModelList[I].webs_ambiente      := SQL.getInteger(webs_ambiente);
      Self.FModelList[I].webs_visualizar      := SQL.getInteger(webs_visualizar);
      Self.FModelList[I].webs_ssltype      := SQL.getInteger(webs_ssltype);
      Self.FModelList[I].pro_host      := SQL.getInteger(pro_host);
      Self.FModelList[I].pro_porta      := SQL.getInteger(pro_porta);
      Self.FModelList[I].pro_user      := SQL.getInteger(pro_user);
      Self.FModelList[I].pro_pass      := SQL.getInteger(pro_pass);
      Self.FModelList[I].emi_cnpj      := SQL.getInteger(emi_cnpj);
      Self.FModelList[I].emi_ie      := SQL.getInteger(emi_ie);
      Self.FModelList[I].emi_razaosocial      := SQL.getInteger(emi_razaosocial);
      Self.FModelList[I].emi_fantasia      := SQL.getInteger(emi_fantasia);
      Self.FModelList[I].emi_fone      := SQL.getInteger(emi_fone);
      Self.FModelList[I].emi_cep      := SQL.getInteger(emi_cep);
      Self.FModelList[I].emi_logradouro      := SQL.getInteger(emi_logradouro);
      Self.FModelList[I].emi_numero      := SQL.getInteger(emi_numero);
      Self.FModelList[I].emi_complemento      := SQL.getInteger(emi_complemento);
      Self.FModelList[I].emi_bairro      := SQL.getInteger(emi_bairro);
      Self.FModelList[I].emi_codcidade      := SQL.getInteger(emi_codcidade);
      Self.FModelList[I].emi_cidade      := SQL.getInteger(emi_cidade);
      Self.FModelList[I].emi_uf      := SQL.getInteger(emi_uf);
      Self.FModelList[I].ema_host      := SQL.getInteger(ema_host);
      Self.FModelList[I].ema_port      := SQL.getInteger(ema_port);
      Self.FModelList[I].ema_user      := SQL.getInteger(ema_user);
      Self.FModelList[I].ema_pass      := SQL.getInteger(ema_pass);
      Self.FModelList[I].ema_assunto      := SQL.getInteger(ema_assunto);
      Self.FModelList[I].ema_ssl      := SQL.getInteger(ema_ssl);
      Self.FModelList[I].ema_mensagem      := SQL.getInteger(ema_mensagem);
      Self.FModelList[I].numserie      := SQL.getInteger(numserie);
      Self.FModelList[I].tipocte      := SQL.getInteger(tipocte);
      Self.FModelList[I].tiposervico      := SQL.getInteger(tiposervico);
      Self.FModelList[I].regimesimples      := SQL.getInteger(regimesimples);
      Self.FModelList[I].modelocte      := SQL.getInteger(modelocte);
      Self.FModelList[I].informar_resp_tecnico      := SQL.getInteger(informar_resp_tecnico);
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

  Self.FModel := ( Model as TModelERPempresasconfiguracoes );             

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
  SQL.Update(empresas_configuracoes_cte);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
