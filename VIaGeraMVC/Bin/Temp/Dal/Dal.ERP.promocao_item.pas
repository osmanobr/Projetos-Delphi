
unit Dal.ERP.promocao_historico;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.promocao_historico, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpromocaohistorico = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpromocaohistorico;  
    FModelList : TModelBaseList<TModelERPpromocaohistorico>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpromocaohistorico.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpromocaohistorico) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpromocaohistorico );              

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

function TDalERPpromocaohistorico.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpromocaohistorico) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpromocaohistorico ); 

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
  SQL.Insert(promocao_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_promocao).Next;
     SQL.Field(Self.FModel.id_produto).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpromocaohistorico.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpromocaohistorico) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpromocaohistorico );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(promocao_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpromocaohistorico>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpromocaohistorico.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_promocao      := SQL.getInteger(id_promocao);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
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

  Self.FModel := ( Model as TModelERPpromocaohistorico );             

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
  SQL.Update(promocao_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
