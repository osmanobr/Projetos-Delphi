
unit Dal.ERP.venda_servico;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.venda_servico, DalBaseCRUD,
  SQLQuery;

type
  TDalERPvendaservico = class(TDalBaseCRUD)
  private 
    FModel : TModelERPvendaservico;  
    FModelList : TModelBaseList<TModelERPvendaservico>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPvendaservico.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPvendaservico) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaservico );              

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

function TDalERPvendaservico.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPvendaservico) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaservico ); 

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
  SQL.Insert(venda_uniao).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.vl_produto).Next;
     SQL.Field(Self.FModel.vl_servico).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.observacao).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.modalidade).Next;
     SQL.Field(Self.FModel.status).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPvendaservico.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPvendaservico) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPvendaservico );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(venda_uniao);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPvendaservico>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPvendaservico.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].vl_produto      := SQL.getInteger(vl_produto);
      Self.FModelList[I].vl_servico      := SQL.getInteger(vl_servico);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].observacao      := SQL.getInteger(observacao);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].modalidade      := SQL.getInteger(modalidade);
      Self.FModelList[I].status      := SQL.getInteger(status);
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

  Self.FModel := ( Model as TModelERPvendaservico );             

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
  SQL.Update(venda_uniao);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
