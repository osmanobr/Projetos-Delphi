
unit Dal.ERP.ncm_update;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.ncm_update, DalBaseCRUD,
  SQLQuery;

type
  TDalERPncmupdate = class(TDalBaseCRUD)
  private 
    FModel : TModelERPncmupdate;  
    FModelList : TModelBaseList<TModelERPncmupdate>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPncmupdate.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPncmupdate) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPncmupdate );              

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

function TDalERPncmupdate.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPncmupdate) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPncmupdate ); 

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
  SQL.Insert(nfe_manifesto).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.chave).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.numero_nf).Next;
     SQL.Field(Self.FModel.cnpj_cpf).Next;
     SQL.Field(Self.FModel.razao_social).Next;
     SQL.Field(Self.FModel.ie).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.tipo_operacao).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.situacao_nfe).Next;
     SQL.Field(Self.FModel.situacao_manifesto).Next;
     SQL.Field(Self.FModel.evento).Next;
     SQL.Field(Self.FModel.inclusao).Next;
     SQL.Field(Self.FModel.protocolo).Next;
     SQL.Field(Self.FModel.registrado).Next;
     SQL.Field(Self.FModel.fornecedor).Next;
     SQL.Field(Self.FModel.situacao_nfe_desc).Next;
     SQL.Field(Self.FModel.situacao_manifesto_desc).Next;
     SQL.Field(Self.FModel.id_usuario_estoquista).Next;
     SQL.Field(Self.FModel.obs_estoquista).Next;
     SQL.Field(Self.FModel.data_conferencia).Next;
     SQL.Field(Self.FModel.xml).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPncmupdate.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPncmupdate) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPncmupdate );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(nfe_manifesto);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPncmupdate>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPncmupdate.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].chave      := SQL.getInteger(chave);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].numero_nf      := SQL.getInteger(numero_nf);
      Self.FModelList[I].cnpj_cpf      := SQL.getInteger(cnpj_cpf);
      Self.FModelList[I].razao_social      := SQL.getInteger(razao_social);
      Self.FModelList[I].ie      := SQL.getInteger(ie);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].tipo_operacao      := SQL.getInteger(tipo_operacao);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].situacao_nfe      := SQL.getInteger(situacao_nfe);
      Self.FModelList[I].situacao_manifesto      := SQL.getInteger(situacao_manifesto);
      Self.FModelList[I].evento      := SQL.getInteger(evento);
      Self.FModelList[I].inclusao      := SQL.getInteger(inclusao);
      Self.FModelList[I].protocolo      := SQL.getInteger(protocolo);
      Self.FModelList[I].registrado      := SQL.getInteger(registrado);
      Self.FModelList[I].fornecedor      := SQL.getInteger(fornecedor);
      Self.FModelList[I].situacao_nfe_desc      := SQL.getInteger(situacao_nfe_desc);
      Self.FModelList[I].situacao_manifesto_desc      := SQL.getInteger(situacao_manifesto_desc);
      Self.FModelList[I].id_usuario_estoquista      := SQL.getInteger(id_usuario_estoquista);
      Self.FModelList[I].obs_estoquista      := SQL.getInteger(obs_estoquista);
      Self.FModelList[I].data_conferencia      := SQL.getInteger(data_conferencia);
      Self.FModelList[I].xml      := SQL.getInteger(xml);
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

  Self.FModel := ( Model as TModelERPncmupdate );             

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
  SQL.Update(nfe_manifesto);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
