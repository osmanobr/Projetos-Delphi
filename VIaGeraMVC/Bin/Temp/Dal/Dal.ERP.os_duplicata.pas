
unit Dal.ERP.os_classificacao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.os_classificacao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPosclassificacao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPosclassificacao;  
    FModelList : TModelBaseList<TModelERPosclassificacao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPosclassificacao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPosclassificacao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosclassificacao );              

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

function TDalERPosclassificacao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPosclassificacao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosclassificacao ); 

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
  SQL.Insert(os_duplicata).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.data_vencto).Next;
     SQL.Field(Self.FModel.taxa_juros).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_divida).Next;
     SQL.Field(Self.FModel.juros_pago).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.avista).Next;
     SQL.Field(Self.FModel.aprazo).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.nomeforma).Next;
     SQL.Field(Self.FModel.idforma).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPosclassificacao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPosclassificacao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPosclassificacao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(os_duplicata);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPosclassificacao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPosclassificacao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].data_vencto      := SQL.getInteger(data_vencto);
      Self.FModelList[I].taxa_juros      := SQL.getInteger(taxa_juros);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_divida      := SQL.getInteger(vl_divida);
      Self.FModelList[I].juros_pago      := SQL.getInteger(juros_pago);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].avista      := SQL.getInteger(avista);
      Self.FModelList[I].aprazo      := SQL.getInteger(aprazo);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].nomeforma      := SQL.getInteger(nomeforma);
      Self.FModelList[I].idforma      := SQL.getInteger(idforma);
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

  Self.FModel := ( Model as TModelERPosclassificacao );             

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
  SQL.Update(os_duplicata);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
