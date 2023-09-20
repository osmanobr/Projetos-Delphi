
unit Dal.ERP.parcela_receber;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.parcela_receber, DalBaseCRUD,
  SQLQuery;

type
  TDalERPparcelareceber = class(TDalBaseCRUD)
  private 
    FModel : TModelERPparcelareceber;  
    FModelList : TModelBaseList<TModelERPparcelareceber>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPparcelareceber.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPparcelareceber) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparcelareceber );              

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

function TDalERPparcelareceber.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPparcelareceber) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPparcelareceber ); 

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
  SQL.Insert(pdv).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.hora).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.vl_produto).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.vl_troco).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.parcelas).Next;
     SQL.Field(Self.FModel.comentrada).Next;
     SQL.Field(Self.FModel.intervalo).Next;
     SQL.Field(Self.FModel.id_forma1).Next;
     SQL.Field(Self.FModel.vl_pago1).Next;
     SQL.Field(Self.FModel.id_forma2).Next;
     SQL.Field(Self.FModel.vl_pago2).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.transmitida).Next;
     SQL.Field(Self.FModel.id_pdvcaixa).Next;
     SQL.Field(Self.FModel.servidor).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPparcelareceber.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPparcelareceber) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPparcelareceber );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(pdv);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPparcelareceber>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPparcelareceber.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].hora      := SQL.getInteger(hora);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].vl_produto      := SQL.getInteger(vl_produto);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].vl_troco      := SQL.getInteger(vl_troco);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].parcelas      := SQL.getInteger(parcelas);
      Self.FModelList[I].comentrada      := SQL.getInteger(comentrada);
      Self.FModelList[I].intervalo      := SQL.getInteger(intervalo);
      Self.FModelList[I].id_forma1      := SQL.getInteger(id_forma1);
      Self.FModelList[I].vl_pago1      := SQL.getInteger(vl_pago1);
      Self.FModelList[I].id_forma2      := SQL.getInteger(id_forma2);
      Self.FModelList[I].vl_pago2      := SQL.getInteger(vl_pago2);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].transmitida      := SQL.getInteger(transmitida);
      Self.FModelList[I].id_pdvcaixa      := SQL.getInteger(id_pdvcaixa);
      Self.FModelList[I].servidor      := SQL.getInteger(servidor);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
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

  Self.FModel := ( Model as TModelERPparcelareceber );             

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
  SQL.Update(pdv);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
