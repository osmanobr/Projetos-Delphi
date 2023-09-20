
unit Dal.ERP.empresas_configuracoes_nfce;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.empresas_configuracoes_nfce, DalBaseCRUD,
  SQLQuery;

type
  TDalERPempresasconfiguracoesnfce = class(TDalBaseCRUD)
  private 
    FModel : TModelERPempresasconfiguracoesnfce;  
    FModelList : TModelBaseList<TModelERPempresasconfiguracoesnfce>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPempresasconfiguracoesnfce.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPempresasconfiguracoesnfce) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoesnfce );              

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

function TDalERPempresasconfiguracoesnfce.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPempresasconfiguracoesnfce) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPempresasconfiguracoesnfce ); 

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
  SQL.Insert(empresas_configuracoes_nfe).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.cert_numserie).Next;
     SQL.Field(Self.FModel.danfe).Next;
     SQL.Field(Self.FModel.forma_emissao).Next;
     SQL.Field(Self.FModel.nfe_scan).Next;
     SQL.Field(Self.FModel.nfe_serie).Next;
     SQL.Field(Self.FModel.gerar_serviso).Next;
     SQL.Field(Self.FModel.sal_envio_resp).Next;
     SQL.Field(Self.FModel.caminho_envio_resp).Next;
     SQL.Field(Self.FModel.uf_destino).Next;
     SQL.Field(Self.FModel.ambiente).Next;
     SQL.Field(Self.FModel.visul_msg).Next;
     SQL.Field(Self.FModel.tipo_certificado).Next;
     SQL.Field(Self.FModel.proxy_host).Next;
     SQL.Field(Self.FModel.proxy_porta).Next;
     SQL.Field(Self.FModel.proxy_usuario).Next;
     SQL.Field(Self.FModel.proxy_senha).Next;
     SQL.Field(Self.FModel.uti_ap_icms).Next;
     SQL.Field(Self.FModel.msg_apu_icms).Next;
     SQL.Field(Self.FModel.porcetagen).Next;
     SQL.Field(Self.FModel.id_token).Next;
     SQL.Field(Self.FModel.codigo_token).Next;
     SQL.Field(Self.FModel.senha).Next;
     SQL.Field(Self.FModel.logomarca).Next;
     SQL.Field(Self.FModel.versao).Next;
     SQL.Field(Self.FModel.acrescimo_financeiro).Next;
     SQL.Field(Self.FModel.resptecnico).Next;
     SQL.Field(Self.FModel.certificado).Next;
     SQL.Field(Self.FModel.certificado_senha).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPempresasconfiguracoesnfce.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPempresasconfiguracoesnfce) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPempresasconfiguracoesnfce );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(empresas_configuracoes_nfe);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPempresasconfiguracoesnfce>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPempresasconfiguracoesnfce.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].cert_numserie      := SQL.getInteger(cert_numserie);
      Self.FModelList[I].danfe      := SQL.getInteger(danfe);
      Self.FModelList[I].forma_emissao      := SQL.getInteger(forma_emissao);
      Self.FModelList[I].nfe_scan      := SQL.getInteger(nfe_scan);
      Self.FModelList[I].nfe_serie      := SQL.getInteger(nfe_serie);
      Self.FModelList[I].gerar_serviso      := SQL.getInteger(gerar_serviso);
      Self.FModelList[I].sal_envio_resp      := SQL.getInteger(sal_envio_resp);
      Self.FModelList[I].caminho_envio_resp      := SQL.getInteger(caminho_envio_resp);
      Self.FModelList[I].uf_destino      := SQL.getInteger(uf_destino);
      Self.FModelList[I].ambiente      := SQL.getInteger(ambiente);
      Self.FModelList[I].visul_msg      := SQL.getInteger(visul_msg);
      Self.FModelList[I].tipo_certificado      := SQL.getInteger(tipo_certificado);
      Self.FModelList[I].proxy_host      := SQL.getInteger(proxy_host);
      Self.FModelList[I].proxy_porta      := SQL.getInteger(proxy_porta);
      Self.FModelList[I].proxy_usuario      := SQL.getInteger(proxy_usuario);
      Self.FModelList[I].proxy_senha      := SQL.getInteger(proxy_senha);
      Self.FModelList[I].uti_ap_icms      := SQL.getInteger(uti_ap_icms);
      Self.FModelList[I].msg_apu_icms      := SQL.getInteger(msg_apu_icms);
      Self.FModelList[I].porcetagen      := SQL.getInteger(porcetagen);
      Self.FModelList[I].id_token      := SQL.getInteger(id_token);
      Self.FModelList[I].codigo_token      := SQL.getInteger(codigo_token);
      Self.FModelList[I].senha      := SQL.getInteger(senha);
      Self.FModelList[I].logomarca      := SQL.getInteger(logomarca);
      Self.FModelList[I].versao      := SQL.getInteger(versao);
      Self.FModelList[I].acrescimo_financeiro      := SQL.getInteger(acrescimo_financeiro);
      Self.FModelList[I].resptecnico      := SQL.getInteger(resptecnico);
      Self.FModelList[I].certificado      := SQL.getInteger(certificado);
      Self.FModelList[I].certificado_senha      := SQL.getInteger(certificado_senha);
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

  Self.FModel := ( Model as TModelERPempresasconfiguracoesnfce );             

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
  SQL.Update(empresas_configuracoes_nfe);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
