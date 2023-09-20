
unit Dal.ERP.cte_documentos;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.cte_documentos, DalBaseCRUD,
  SQLQuery;

type
  TDalERPctedocumentos = class(TDalBaseCRUD)
  private 
    FModel : TModelERPctedocumentos;  
    FModelList : TModelBaseList<TModelERPctedocumentos>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPctedocumentos.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPctedocumentos) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPctedocumentos );              

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

function TDalERPctedocumentos.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPctedocumentos) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPctedocumentos ); 

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
  SQL.Insert(cte_xml).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.cte).Next;
     SQL.Field(Self.FModel.cte_chave).Next;
     SQL.Field(Self.FModel.cte_chave_cntg).Next;
     SQL.Field(Self.FModel.cte_protocolo).Next;
     SQL.Field(Self.FModel.xml_ret).Next;
     SQL.Field(Self.FModel.xml).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.xml_off).Next;
     SQL.Field(Self.FModel.contingencia).Next;
     SQL.Field(Self.FModel.associacao).Next;
     SQL.Field(Self.FModel.cte_protocolo_canc).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPctedocumentos.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPctedocumentos) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPctedocumentos );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(cte_xml);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPctedocumentos>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPctedocumentos.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].cte      := SQL.getInteger(cte);
      Self.FModelList[I].cte_chave      := SQL.getInteger(cte_chave);
      Self.FModelList[I].cte_chave_cntg      := SQL.getInteger(cte_chave_cntg);
      Self.FModelList[I].cte_protocolo      := SQL.getInteger(cte_protocolo);
      Self.FModelList[I].xml_ret      := SQL.getInteger(xml_ret);
      Self.FModelList[I].xml      := SQL.getInteger(xml);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].xml_off      := SQL.getInteger(xml_off);
      Self.FModelList[I].contingencia      := SQL.getInteger(contingencia);
      Self.FModelList[I].associacao      := SQL.getInteger(associacao);
      Self.FModelList[I].cte_protocolo_canc      := SQL.getInteger(cte_protocolo_canc);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
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

  Self.FModel := ( Model as TModelERPctedocumentos );             

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
  SQL.Update(cte_xml);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
