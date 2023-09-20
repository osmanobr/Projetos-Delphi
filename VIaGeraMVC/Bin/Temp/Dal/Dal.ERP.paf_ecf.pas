
unit Dal.ERP.paf_d;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.paf_d, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpafd = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpafd;  
    FModelList : TModelBaseList<TModelERPpafd>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpafd.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpafd) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafd );              

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

function TDalERPpafd.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpafd) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafd ); 

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
  SQL.Insert(paf_ecf).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.inscricao_estadual).Next;
     SQL.Field(Self.FModel.inscricao_municipal).Next;
     SQL.Field(Self.FModel.denominacao).Next;
     SQL.Field(Self.FModel.aplicativo).Next;
     SQL.Field(Self.FModel.versao).Next;
     SQL.Field(Self.FModel.md5).Next;
     SQL.Field(Self.FModel.data_homologacao).Next;
     SQL.Field(Self.FModel.data_aplicativo).Next;
     SQL.Field(Self.FModel.versao_er).Next;
     SQL.Field(Self.FModel.telefone).Next;
     SQL.Field(Self.FModel.responsavel).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.laudo).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpafd.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpafd) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpafd );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(paf_ecf);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpafd>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpafd.Create ); 
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].inscricao_estadual      := SQL.getInteger(inscricao_estadual);
      Self.FModelList[I].inscricao_municipal      := SQL.getInteger(inscricao_municipal);
      Self.FModelList[I].denominacao      := SQL.getInteger(denominacao);
      Self.FModelList[I].aplicativo      := SQL.getInteger(aplicativo);
      Self.FModelList[I].versao      := SQL.getInteger(versao);
      Self.FModelList[I].md5      := SQL.getInteger(md5);
      Self.FModelList[I].data_homologacao      := SQL.getInteger(data_homologacao);
      Self.FModelList[I].data_aplicativo      := SQL.getInteger(data_aplicativo);
      Self.FModelList[I].versao_er      := SQL.getInteger(versao_er);
      Self.FModelList[I].telefone      := SQL.getInteger(telefone);
      Self.FModelList[I].responsavel      := SQL.getInteger(responsavel);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].laudo      := SQL.getInteger(laudo);
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

  Self.FModel := ( Model as TModelERPpafd );             

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
  SQL.Update(paf_ecf);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
