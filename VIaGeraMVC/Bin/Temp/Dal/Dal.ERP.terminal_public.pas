
unit Dal.ERP.terminal_message;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.terminal_message, DalBaseCRUD,
  SQLQuery;

type
  TDalERPterminalmessage = class(TDalBaseCRUD)
  private 
    FModel : TModelERPterminalmessage;  
    FModelList : TModelBaseList<TModelERPterminalmessage>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPterminalmessage.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPterminalmessage) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPterminalmessage );              

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then  
  begin                       
    ListError.Insert('Exclus�o de registros','Nenhum valor foi passado para o NCM!');  
    Result := (ListError.Count = 0);  
    Exit;                     
  end;                        
  SQL.DeleteFrom('ncm_regra_substituicao').Where('id').Equal( Self.FModel.id );  
  dbDelete;                                
  Result := (ListError.Count = 0);         
end;                                       

function TDalERPterminalmessage.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPterminalmessage) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPterminalmessage ); 

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if not Self.FModel.Validate then 
  begin                            
    ListError.Assign( Self.FModel.ListError );  
    Result := (ListError.Count = 0);  
    Exit;                             
  end;                                
  SQL.Insert(terminal_public).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_alert).Next;
     SQL.Field(Self.FModel.id_terminal).Next;
     SQL.Field(Self.FModel.datahora).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPterminalmessage.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPterminalmessage) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPterminalmessage );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(terminal_public);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPterminalmessage>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPterminalmessage.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_alert      := SQL.getInteger(id_alert);
      Self.FModelList[I].id_terminal      := SQL.getInteger(id_terminal);
      Self.FModelList[I].datahora      := SQL.getInteger(datahora);
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
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPterminalmessage );             

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then           
  begin                                
    ListError.Insert('Atualiza��o de registros','Parece que o modelo esta em Branco!');  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  if not Self.FModel.Validate then     
  begin                                
    ListError.Assign( Self.FModel.ListError ); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  SQL.Update(terminal_public);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
