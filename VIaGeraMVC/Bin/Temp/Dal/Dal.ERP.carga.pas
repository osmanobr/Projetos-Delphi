
unit Dal.ERP.calculo_financeiro;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.calculo_financeiro, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcalculofinanceiro = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcalculofinanceiro;  
    FModelList : TModelBaseList<TModelERPcalculofinanceiro>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcalculofinanceiro.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcalculofinanceiro) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcalculofinanceiro );              

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

function TDalERPcalculofinanceiro.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcalculofinanceiro) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcalculofinanceiro ); 

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
  SQL.Insert(carga).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.id_rota).Next;
     SQL.Field(Self.FModel.id_transportadora).Next;
     SQL.Field(Self.FModel.motorista).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.peso_bruto).Next;
     SQL.Field(Self.FModel.peso_liquido).Next;
     SQL.Field(Self.FModel.km_inicial).Next;
     SQL.Field(Self.FModel.km_final).Next;
     SQL.Field(Self.FModel.total_volumes).Next;
     SQL.Field(Self.FModel.total_unidades).Next;
     SQL.Field(Self.FModel.transporte).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.click).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcalculofinanceiro.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcalculofinanceiro) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcalculofinanceiro );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(carga);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcalculofinanceiro>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcalculofinanceiro.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].id_rota      := SQL.getInteger(id_rota);
      Self.FModelList[I].id_transportadora      := SQL.getInteger(id_transportadora);
      Self.FModelList[I].motorista      := SQL.getInteger(motorista);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].peso_bruto      := SQL.getInteger(peso_bruto);
      Self.FModelList[I].peso_liquido      := SQL.getInteger(peso_liquido);
      Self.FModelList[I].km_inicial      := SQL.getInteger(km_inicial);
      Self.FModelList[I].km_final      := SQL.getInteger(km_final);
      Self.FModelList[I].total_volumes      := SQL.getInteger(total_volumes);
      Self.FModelList[I].total_unidades      := SQL.getInteger(total_unidades);
      Self.FModelList[I].transporte      := SQL.getInteger(transporte);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].click      := SQL.getInteger(click);
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

  Self.FModel := ( Model as TModelERPcalculofinanceiro );             

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
  SQL.Update(carga);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
