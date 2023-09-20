
unit Dal.ERP.licenca;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.licenca, DalBaseCRUD,
  SQLQuery;

type
  TDalERPlicenca = class(TDalBaseCRUD)
  private 
    FModel : TModelERPlicenca;  
    FModelList : TModelBaseList<TModelERPlicenca>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPlicenca.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPlicenca) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlicenca );              

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

function TDalERPlicenca.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPlicenca) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlicenca ); 

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
  SQL.Insert(lmc).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.pagina).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.id_bico).Next;
     SQL.Field(Self.FModel.id_tanque).Next;
     SQL.Field(Self.FModel.descricao).Next;
     SQL.Field(Self.FModel.estoq_abert).Next;
     SQL.Field(Self.FModel.vol_entr).Next;
     SQL.Field(Self.FModel.vol_disp).Next;
     SQL.Field(Self.FModel.vol_saidas).Next;
     SQL.Field(Self.FModel.estoq_escr).Next;
     SQL.Field(Self.FModel.val_aj_perda).Next;
     SQL.Field(Self.FModel.val_aj_ganho).Next;
     SQL.Field(Self.FModel.fech_fisico).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPlicenca.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPlicenca) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPlicenca );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(lmc);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPlicenca>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPlicenca.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].pagina      := SQL.getInteger(pagina);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].id_bico      := SQL.getInteger(id_bico);
      Self.FModelList[I].id_tanque      := SQL.getInteger(id_tanque);
      Self.FModelList[I].descricao      := SQL.getInteger(descricao);
      Self.FModelList[I].estoq_abert      := SQL.getInteger(estoq_abert);
      Self.FModelList[I].vol_entr      := SQL.getInteger(vol_entr);
      Self.FModelList[I].vol_disp      := SQL.getInteger(vol_disp);
      Self.FModelList[I].vol_saidas      := SQL.getInteger(vol_saidas);
      Self.FModelList[I].estoq_escr      := SQL.getInteger(estoq_escr);
      Self.FModelList[I].val_aj_perda      := SQL.getInteger(val_aj_perda);
      Self.FModelList[I].val_aj_ganho      := SQL.getInteger(val_aj_ganho);
      Self.FModelList[I].fech_fisico      := SQL.getInteger(fech_fisico);
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

  Self.FModel := ( Model as TModelERPlicenca );             

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
  SQL.Update(lmc);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
