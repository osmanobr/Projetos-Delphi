
unit Dal.ERP.dependentes;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.dependentes, DalBaseCRUD,
  SQLQuery;

type
  TDalERPdependentes = class(TDalBaseCRUD)
  private 
    FModel : TModelERPdependentes;  
    FModelList : TModelBaseList<TModelERPdependentes>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPdependentes.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPdependentes) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdependentes );              

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

function TDalERPdependentes.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPdependentes) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdependentes ); 

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
  SQL.Insert(deptemp).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.id_setor).Next;
     SQL.Field(Self.FModel.setor).Next;
     SQL.Field(Self.FModel.id_secao).Next;
     SQL.Field(Self.FModel.secao).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.grupo).Next;
     SQL.Field(Self.FModel.id_subgrupo).Next;
     SQL.Field(Self.FModel.subgrupo).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.total).Next;
     SQL.Field(Self.FModel.custo).Next;
     SQL.Field(Self.FModel.lucro).Next;
     SQL.Field(Self.FModel.perc).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPdependentes.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPdependentes) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPdependentes );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(deptemp);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPdependentes>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPdependentes.Create ); 
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].id_setor      := SQL.getInteger(id_setor);
      Self.FModelList[I].setor      := SQL.getInteger(setor);
      Self.FModelList[I].id_secao      := SQL.getInteger(id_secao);
      Self.FModelList[I].secao      := SQL.getInteger(secao);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].grupo      := SQL.getInteger(grupo);
      Self.FModelList[I].id_subgrupo      := SQL.getInteger(id_subgrupo);
      Self.FModelList[I].subgrupo      := SQL.getInteger(subgrupo);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].total      := SQL.getInteger(total);
      Self.FModelList[I].custo      := SQL.getInteger(custo);
      Self.FModelList[I].lucro      := SQL.getInteger(lucro);
      Self.FModelList[I].perc      := SQL.getInteger(perc);
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

  Self.FModel := ( Model as TModelERPdependentes );             

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
  SQL.Update(deptemp);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
