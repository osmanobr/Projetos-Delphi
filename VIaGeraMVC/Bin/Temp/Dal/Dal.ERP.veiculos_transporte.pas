
unit Dal.ERP.veiculos_planos;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.veiculos_planos, DalBaseCRUD,
  SQLQuery;

type
  TDalERPveiculosplanos = class(TDalBaseCRUD)
  private 
    FModel : TModelERPveiculosplanos;  
    FModelList : TModelBaseList<TModelERPveiculosplanos>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPveiculosplanos.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPveiculosplanos) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculosplanos );              

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

function TDalERPveiculosplanos.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPveiculosplanos) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculosplanos ); 

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
  SQL.Insert(veiculos_transporte).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresas).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.cor).Next;
     SQL.Field(Self.FModel.carga_maxima).Next;
     SQL.Field(Self.FModel.tempo_carga).Next;
     SQL.Field(Self.FModel.carroceria).Next;
     SQL.Field(Self.FModel.renavam).Next;
     SQL.Field(Self.FModel.tprod).Next;
     SQL.Field(Self.FModel.tpcar).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.tara).Next;
     SQL.Field(Self.FModel.capkg).Next;
     SQL.Field(Self.FModel.capm3).Next;
     SQL.Field(Self.FModel.id_motorista).Next;
     SQL.Field(Self.FModel.proprietario).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPveiculosplanos.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPveiculosplanos) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPveiculosplanos );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(veiculos_transporte);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPveiculosplanos>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPveiculosplanos.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresas      := SQL.getInteger(id_empresas);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].cor      := SQL.getInteger(cor);
      Self.FModelList[I].carga_maxima      := SQL.getInteger(carga_maxima);
      Self.FModelList[I].tempo_carga      := SQL.getInteger(tempo_carga);
      Self.FModelList[I].carroceria      := SQL.getInteger(carroceria);
      Self.FModelList[I].renavam      := SQL.getInteger(renavam);
      Self.FModelList[I].tprod      := SQL.getInteger(tprod);
      Self.FModelList[I].tpcar      := SQL.getInteger(tpcar);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].tara      := SQL.getInteger(tara);
      Self.FModelList[I].capkg      := SQL.getInteger(capkg);
      Self.FModelList[I].capm3      := SQL.getInteger(capm3);
      Self.FModelList[I].id_motorista      := SQL.getInteger(id_motorista);
      Self.FModelList[I].proprietario      := SQL.getInteger(proprietario);
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

  Self.FModel := ( Model as TModelERPveiculosplanos );             

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
  SQL.Update(veiculos_transporte);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
