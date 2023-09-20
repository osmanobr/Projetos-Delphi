
unit Dal.ERP.posto_lancamento;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.posto_lancamento, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpostolancamento = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpostolancamento;  
    FModelList : TModelBaseList<TModelERPpostolancamento>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpostolancamento.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpostolancamento) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpostolancamento );              

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

function TDalERPpostolancamento.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpostolancamento) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpostolancamento ); 

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
  SQL.Insert(prazos).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.prazo1).Next;
     SQL.Field(Self.FModel.prazo2).Next;
     SQL.Field(Self.FModel.prazo3).Next;
     SQL.Field(Self.FModel.prazo4).Next;
     SQL.Field(Self.FModel.prazo5).Next;
     SQL.Field(Self.FModel.prazo6).Next;
     SQL.Field(Self.FModel.prazo7).Next;
     SQL.Field(Self.FModel.prazo8).Next;
     SQL.Field(Self.FModel.prazo9).Next;
     SQL.Field(Self.FModel.prazo10).Next;
     SQL.Field(Self.FModel.prazo11).Next;
     SQL.Field(Self.FModel.prazo12).Next;
     SQL.Field(Self.FModel.prazo13).Next;
     SQL.Field(Self.FModel.prazo14).Next;
     SQL.Field(Self.FModel.prazo15).Next;
     SQL.Field(Self.FModel.prazo16).Next;
     SQL.Field(Self.FModel.prazo17).Next;
     SQL.Field(Self.FModel.prazo18).Next;
     SQL.Field(Self.FModel.prazo19).Next;
     SQL.Field(Self.FModel.prazo20).Next;
     SQL.Field(Self.FModel.prazo21).Next;
     SQL.Field(Self.FModel.prazo22).Next;
     SQL.Field(Self.FModel.prazo23).Next;
     SQL.Field(Self.FModel.prazo24).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpostolancamento.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpostolancamento) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpostolancamento );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(prazos);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpostolancamento>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpostolancamento.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].prazo1      := SQL.getInteger(prazo1);
      Self.FModelList[I].prazo2      := SQL.getInteger(prazo2);
      Self.FModelList[I].prazo3      := SQL.getInteger(prazo3);
      Self.FModelList[I].prazo4      := SQL.getInteger(prazo4);
      Self.FModelList[I].prazo5      := SQL.getInteger(prazo5);
      Self.FModelList[I].prazo6      := SQL.getInteger(prazo6);
      Self.FModelList[I].prazo7      := SQL.getInteger(prazo7);
      Self.FModelList[I].prazo8      := SQL.getInteger(prazo8);
      Self.FModelList[I].prazo9      := SQL.getInteger(prazo9);
      Self.FModelList[I].prazo10      := SQL.getInteger(prazo10);
      Self.FModelList[I].prazo11      := SQL.getInteger(prazo11);
      Self.FModelList[I].prazo12      := SQL.getInteger(prazo12);
      Self.FModelList[I].prazo13      := SQL.getInteger(prazo13);
      Self.FModelList[I].prazo14      := SQL.getInteger(prazo14);
      Self.FModelList[I].prazo15      := SQL.getInteger(prazo15);
      Self.FModelList[I].prazo16      := SQL.getInteger(prazo16);
      Self.FModelList[I].prazo17      := SQL.getInteger(prazo17);
      Self.FModelList[I].prazo18      := SQL.getInteger(prazo18);
      Self.FModelList[I].prazo19      := SQL.getInteger(prazo19);
      Self.FModelList[I].prazo20      := SQL.getInteger(prazo20);
      Self.FModelList[I].prazo21      := SQL.getInteger(prazo21);
      Self.FModelList[I].prazo22      := SQL.getInteger(prazo22);
      Self.FModelList[I].prazo23      := SQL.getInteger(prazo23);
      Self.FModelList[I].prazo24      := SQL.getInteger(prazo24);
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

  Self.FModel := ( Model as TModelERPpostolancamento );             

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
  SQL.Update(prazos);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
