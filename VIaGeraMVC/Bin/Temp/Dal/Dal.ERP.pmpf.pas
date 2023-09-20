
unit Dal.ERP.plano_contas_contabeis;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.plano_contas_contabeis, DalBaseCRUD,
  SQLQuery;

type
  TDalERPplanocontascontabeis = class(TDalBaseCRUD)
  private 
    FModel : TModelERPplanocontascontabeis;  
    FModelList : TModelBaseList<TModelERPplanocontascontabeis>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPplanocontascontabeis.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPplanocontascontabeis) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPplanocontascontabeis );              

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

function TDalERPplanocontascontabeis.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPplanocontascontabeis) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPplanocontascontabeis ); 

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
  SQL.Insert(pmpf).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.gac).Next;
     SQL.Field(Self.FModel.gap).Next;
     SQL.Field(Self.FModel.diesel_s10).Next;
     SQL.Field(Self.FModel.oleo_diesel).Next;
     SQL.Field(Self.FModel.gpl_p13).Next;
     SQL.Field(Self.FModel.gpl).Next;
     SQL.Field(Self.FModel.qav).Next;
     SQL.Field(Self.FModel.aehc).Next;
     SQL.Field(Self.FModel.gnv).Next;
     SQL.Field(Self.FModel.gni).Next;
     SQL.Field(Self.FModel.oleo_combustivel).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPplanocontascontabeis.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPplanocontascontabeis) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPplanocontascontabeis );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(pmpf);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPplanocontascontabeis>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPplanocontascontabeis.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].gac      := SQL.getInteger(gac);
      Self.FModelList[I].gap      := SQL.getInteger(gap);
      Self.FModelList[I].diesel_s10      := SQL.getInteger(diesel_s10);
      Self.FModelList[I].oleo_diesel      := SQL.getInteger(oleo_diesel);
      Self.FModelList[I].gpl_p13      := SQL.getInteger(gpl_p13);
      Self.FModelList[I].gpl      := SQL.getInteger(gpl);
      Self.FModelList[I].qav      := SQL.getInteger(qav);
      Self.FModelList[I].aehc      := SQL.getInteger(aehc);
      Self.FModelList[I].gnv      := SQL.getInteger(gnv);
      Self.FModelList[I].gni      := SQL.getInteger(gni);
      Self.FModelList[I].oleo_combustivel      := SQL.getInteger(oleo_combustivel);
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

  Self.FModel := ( Model as TModelERPplanocontascontabeis );             

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
  SQL.Update(pmpf);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
