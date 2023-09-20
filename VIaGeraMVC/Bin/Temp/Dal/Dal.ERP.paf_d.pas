
unit Dal.ERP.paf_d;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.paf_d, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpafd = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpafd;  
    FModelList : TModelBaseList<TModelERPpafd>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpafd.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpafd) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafd );              

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

function TDalERPpafd.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpafd) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafd ); 

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
  SQL.Insert(paf_d4).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.numero_dav).Next;
     SQL.Field(Self.FModel.data_alteracao).Next;
     SQL.Field(Self.FModel.hora_alteracao).Next;
     SQL.Field(Self.FModel.codigo_produto).Next;
     SQL.Field(Self.FModel.descricao).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.unitario).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.acrescimo).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.trib).Next;
     SQL.Field(Self.FModel.aliquota).Next;
     SQL.Field(Self.FModel.cancelamento).Next;
     SQL.Field(Self.FModel.decimais_quantidade).Next;
     SQL.Field(Self.FModel.decimais_unitario).Next;
     SQL.Field(Self.FModel.tipo_alteracao).Next;
     SQL.Field(Self.FModel.hash).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpafd.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpafd) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpafd );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(paf_d4);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpafd>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpafd.Create ); 
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].numero_dav      := SQL.getInteger(numero_dav);
      Self.FModelList[I].data_alteracao      := SQL.getInteger(data_alteracao);
      Self.FModelList[I].hora_alteracao      := SQL.getInteger(hora_alteracao);
      Self.FModelList[I].codigo_produto      := SQL.getInteger(codigo_produto);
      Self.FModelList[I].descricao      := SQL.getInteger(descricao);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].unitario      := SQL.getInteger(unitario);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].acrescimo      := SQL.getInteger(acrescimo);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].trib      := SQL.getInteger(trib);
      Self.FModelList[I].aliquota      := SQL.getInteger(aliquota);
      Self.FModelList[I].cancelamento      := SQL.getInteger(cancelamento);
      Self.FModelList[I].decimais_quantidade      := SQL.getInteger(decimais_quantidade);
      Self.FModelList[I].decimais_unitario      := SQL.getInteger(decimais_unitario);
      Self.FModelList[I].tipo_alteracao      := SQL.getInteger(tipo_alteracao);
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

  Self.FModel := ( Model as TModelERPpafd );             

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
  SQL.Update(paf_d4);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
