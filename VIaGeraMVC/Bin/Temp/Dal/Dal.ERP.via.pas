
unit Dal.ERP.vendedor;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.vendedor, DalBaseCRUD,
  SQLQuery;

type
  TDalERPvendedor = class(TDalBaseCRUD)
  private 
    FModel : TModelERPvendedor;  
    FModelList : TModelBaseList<TModelERPvendedor>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPvendedor.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPvendedor) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendedor );              

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

function TDalERPvendedor.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPvendedor) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendedor ); 

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
  SQL.Insert(via).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.fantasia).Next;
     SQL.Field(Self.FModel.inicio_atividade).Next;
     SQL.Field(Self.FModel.natureza_juridica).Next;
     SQL.Field(Self.FModel.qualificacao_responsavel).Next;
     SQL.Field(Self.FModel.porte).Next;
     SQL.Field(Self.FModel.opcao_simples).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.telefones).Next;
     SQL.Field(Self.FModel.site).Next;
     SQL.Field(Self.FModel.email).Next;
     SQL.Field(Self.FModel.contato).Next;
     SQL.Field(Self.FModel.socio1).Next;
     SQL.Field(Self.FModel.qualificacao_socio1).Next;
     SQL.Field(Self.FModel.socio2).Next;
     SQL.Field(Self.FModel.qualificacao_socio2).Next;
     SQL.Field(Self.FModel.atividade).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPvendedor.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPvendedor) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPvendedor );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(via);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPvendedor>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPvendedor.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].fantasia      := SQL.getInteger(fantasia);
      Self.FModelList[I].inicio_atividade      := SQL.getInteger(inicio_atividade);
      Self.FModelList[I].natureza_juridica      := SQL.getInteger(natureza_juridica);
      Self.FModelList[I].qualificacao_responsavel      := SQL.getInteger(qualificacao_responsavel);
      Self.FModelList[I].porte      := SQL.getInteger(porte);
      Self.FModelList[I].opcao_simples      := SQL.getInteger(opcao_simples);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].telefones      := SQL.getInteger(telefones);
      Self.FModelList[I].site      := SQL.getInteger(site);
      Self.FModelList[I].email      := SQL.getInteger(email);
      Self.FModelList[I].contato      := SQL.getInteger(contato);
      Self.FModelList[I].socio1      := SQL.getInteger(socio1);
      Self.FModelList[I].qualificacao_socio1      := SQL.getInteger(qualificacao_socio1);
      Self.FModelList[I].socio2      := SQL.getInteger(socio2);
      Self.FModelList[I].qualificacao_socio2      := SQL.getInteger(qualificacao_socio2);
      Self.FModelList[I].atividade      := SQL.getInteger(atividade);
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

  Self.FModel := ( Model as TModelERPvendedor );             

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
  SQL.Update(via);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
