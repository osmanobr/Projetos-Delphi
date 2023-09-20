
unit Dal.ERP.referencias_pessoais;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.referencias_pessoais, DalBaseCRUD,
  SQLQuery;

type
  TDalERPreferenciaspessoais = class(TDalBaseCRUD)
  private 
    FModel : TModelERPreferenciaspessoais;  
    FModelList : TModelBaseList<TModelERPreferenciaspessoais>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPreferenciaspessoais.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPreferenciaspessoais) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPreferenciaspessoais );              

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

function TDalERPreferenciaspessoais.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPreferenciaspessoais) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPreferenciaspessoais ); 

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
  SQL.Insert(registro).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.contato).Next;
     SQL.Field(Self.FModel.data_instalacao).Next;
     SQL.Field(Self.FModel.data_mensal).Next;
     SQL.Field(Self.FModel.mensagemid).Next;
     SQL.Field(Self.FModel.mensagempublic).Next;
     SQL.Field(Self.FModel.sendmid).Next;
     SQL.Field(Self.FModel.sendmpublic).Next;
     SQL.Field(Self.FModel.code).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.parceiro).Next;
     SQL.Field(Self.FModel.produto).Next;
     SQL.Field(Self.FModel.bloqueio).Next;
     SQL.Field(Self.FModel.hash).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPreferenciaspessoais.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPreferenciaspessoais) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPreferenciaspessoais );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(registro);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPreferenciaspessoais>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPreferenciaspessoais.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].contato      := SQL.getInteger(contato);
      Self.FModelList[I].data_instalacao      := SQL.getInteger(data_instalacao);
      Self.FModelList[I].data_mensal      := SQL.getInteger(data_mensal);
      Self.FModelList[I].mensagemid      := SQL.getInteger(mensagemid);
      Self.FModelList[I].mensagempublic      := SQL.getInteger(mensagempublic);
      Self.FModelList[I].sendmid      := SQL.getInteger(sendmid);
      Self.FModelList[I].sendmpublic      := SQL.getInteger(sendmpublic);
      Self.FModelList[I].code      := SQL.getInteger(code);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].parceiro      := SQL.getInteger(parceiro);
      Self.FModelList[I].produto      := SQL.getInteger(produto);
      Self.FModelList[I].bloqueio      := SQL.getInteger(bloqueio);
      Self.FModelList[I].hash      := SQL.getInteger(hash);
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

  Self.FModel := ( Model as TModelERPreferenciaspessoais );             

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
  SQL.Update(registro);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
