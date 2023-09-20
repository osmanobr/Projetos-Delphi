
unit Dal.ERP.palmitem;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.palmitem, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpalmitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpalmitem;  
    FModelList : TModelBaseList<TModelERPpalmitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpalmitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpalmitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpalmitem );              

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

function TDalERPpalmitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpalmitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpalmitem ); 

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
  SQL.Insert(palmpedido).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.idpedido).Next;
     SQL.Field(Self.FModel.numero).Next;
     SQL.Field(Self.FModel.cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.vendedor).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.dtentrega).Next;
     SQL.Field(Self.FModel.condpagto).Next;
     SQL.Field(Self.FModel.vlsubtotal).Next;
     SQL.Field(Self.FModel.vldesconto).Next;
     SQL.Field(Self.FModel.vltotal).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.venda).Next;
     SQL.Field(Self.FModel.obs).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpalmitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpalmitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpalmitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(palmpedido);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpalmitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpalmitem.Create ); 
      Self.FModelList[I].idpedido      := SQL.getInteger(idpedido);
      Self.FModelList[I].numero      := SQL.getInteger(numero);
      Self.FModelList[I].cliente      := SQL.getInteger(cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].vendedor      := SQL.getInteger(vendedor);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].dtentrega      := SQL.getInteger(dtentrega);
      Self.FModelList[I].condpagto      := SQL.getInteger(condpagto);
      Self.FModelList[I].vlsubtotal      := SQL.getInteger(vlsubtotal);
      Self.FModelList[I].vldesconto      := SQL.getInteger(vldesconto);
      Self.FModelList[I].vltotal      := SQL.getInteger(vltotal);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].venda      := SQL.getInteger(venda);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
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

  Self.FModel := ( Model as TModelERPpalmitem );             

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
  SQL.Update(palmpedido);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
