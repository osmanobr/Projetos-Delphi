
unit Dal.ERP.parceiros;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.parceiros, DalBaseCRUD,
  SQLQuery;

type
  TDalERPparceiros = class(TDalBaseCRUD)
  private 
    FModel : TModelERPparceiros;  
    FModelList : TModelBaseList<TModelERPparceiros>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPparceiros.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPparceiros) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparceiros );              

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then  
  begin                       
    ListError.Insert('Exclus�o de registros','Nenhum valor foi passado para o NCM!');  
    Result := (ListError.Count = 0);  
    Exit;                     
  end;                        
  SQL.DeleteFrom('ncm_regra_substituicao').Where('id').Equal( Self.FModel.id );  
  dbDelete;                                
  Result := (ListError.Count = 0);         
end;                                       

function TDalERPparceiros.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPparceiros) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparceiros ); 

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if not Self.FModel.Validate then 
  begin                            
    ListError.Assign( Self.FModel.ListError );  
    Result := (ListError.Count = 0);  
    Exit;                             
  end;                                
  SQL.Insert(parcela_chequerecebido).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_cheque).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_contacorrente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.data_pgto).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.vl_juros).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_jurospago).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPparceiros.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPparceiros) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPparceiros );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(parcela_chequerecebido);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPparceiros>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPparceiros.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_cheque      := SQL.getInteger(id_cheque);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_contacorrente      := SQL.getInteger(id_contacorrente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].data_pgto      := SQL.getInteger(data_pgto);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].vl_juros      := SQL.getInteger(vl_juros);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_jurospago      := SQL.getInteger(vl_jurospago);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
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
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparceiros );             

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then           
  begin                                
    ListError.Insert('Atualiza��o de registros','Parece que o modelo esta em Branco!');  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  if not Self.FModel.Validate then     
  begin                                
    ListError.Assign( Self.FModel.ListError ); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  SQL.Update(parcela_chequerecebido);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 