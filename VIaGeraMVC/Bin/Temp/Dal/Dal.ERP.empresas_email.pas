
unit Dal.ERP.empresas_contador;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_contador, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresascontador = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresascontador;  
    FModelList : TModelBaseList<TModelERPempresascontador>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresascontador.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresascontador) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresascontador );              

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

function TDalERPempresascontador.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresascontador) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresascontador ); 

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
  SQL.Insert(empresas_email).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.email).Next;
     SQL.Field(Self.FModel.smtp).Next;
     SQL.Field(Self.FModel.porta).Next;
     SQL.Field(Self.FModel.usuario).Next;
     SQL.Field(Self.FModel.senha).Next;
     SQL.Field(Self.FModel.smtp_segure).Next;
     SQL.Field(Self.FModel.assunto).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.nfce).Next;
     SQL.Field(Self.FModel.sped).Next;
     SQL.Field(Self.FModel.prevenda).Next;
     SQL.Field(Self.FModel.contas_receber).Next;
     SQL.Field(Self.FModel.notas).Next;
     SQL.Field(Self.FModel.email_retorno).Next;
     SQL.Field(Self.FModel.telefone_retorno).Next;
     SQL.Field(Self.FModel.obs_contas_fixas).Next;
     SQL.Field(Self.FModel.ssl).Next;
     SQL.Field(Self.FModel.tsl).Next;
     SQL.Field(Self.FModel.origen).Next;
     SQL.Field(Self.FModel.destinatario).Next;
     SQL.Field(Self.FModel.relatorio).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresascontador.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresascontador) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresascontador );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_email);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresascontador>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresascontador.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].email      := SQL.getInteger(email);
      Self.FModelList[I].smtp      := SQL.getInteger(smtp);
      Self.FModelList[I].porta      := SQL.getInteger(porta);
      Self.FModelList[I].usuario      := SQL.getInteger(usuario);
      Self.FModelList[I].senha      := SQL.getInteger(senha);
      Self.FModelList[I].smtp_segure      := SQL.getInteger(smtp_segure);
      Self.FModelList[I].assunto      := SQL.getInteger(assunto);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].nfce      := SQL.getInteger(nfce);
      Self.FModelList[I].sped      := SQL.getInteger(sped);
      Self.FModelList[I].prevenda      := SQL.getInteger(prevenda);
      Self.FModelList[I].contas_receber      := SQL.getInteger(contas_receber);
      Self.FModelList[I].notas      := SQL.getInteger(notas);
      Self.FModelList[I].email_retorno      := SQL.getInteger(email_retorno);
      Self.FModelList[I].telefone_retorno      := SQL.getInteger(telefone_retorno);
      Self.FModelList[I].obs_contas_fixas      := SQL.getInteger(obs_contas_fixas);
      Self.FModelList[I].ssl      := SQL.getInteger(ssl);
      Self.FModelList[I].tsl      := SQL.getInteger(tsl);
      Self.FModelList[I].origen      := SQL.getInteger(origen);
      Self.FModelList[I].destinatario      := SQL.getInteger(destinatario);
      Self.FModelList[I].relatorio      := SQL.getInteger(relatorio);
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

  Self.FModel := ( Model as TModelERPempresascontador );             

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
  SQL.Update(empresas_email);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
