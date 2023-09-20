
unit Dal.ERP.impressora_fiscal;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.impressora_fiscal, DalBaseCRUD,
  SQLQuery;

type
  TDalERPimpressorafiscal = class(TDalBaseCRUD)
  private 
    FModel : TModelERPimpressorafiscal;  
    FModelList : TModelBaseList<TModelERPimpressorafiscal>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPimpressorafiscal.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPimpressorafiscal) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimpressorafiscal );              

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

function TDalERPimpressorafiscal.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPimpressorafiscal) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPimpressorafiscal ); 

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
  SQL.Insert(indicacao_servico).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.fisica).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.data_servico).Next;
     SQL.Field(Self.FModel.data_comissao).Next;
     SQL.Field(Self.FModel.valor_servico).Next;
     SQL.Field(Self.FModel.comissao).Next;
     SQL.Field(Self.FModel.valor_comissao).Next;
     SQL.Field(Self.FModel.fechado).Next;
     SQL.Field(Self.FModel.pago).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.id).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPimpressorafiscal.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPimpressorafiscal) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPimpressorafiscal );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(indicacao_servico);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPimpressorafiscal>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPimpressorafiscal.Create ); 
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].fisica      := SQL.getInteger(fisica);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].data_servico      := SQL.getInteger(data_servico);
      Self.FModelList[I].data_comissao      := SQL.getInteger(data_comissao);
      Self.FModelList[I].valor_servico      := SQL.getInteger(valor_servico);
      Self.FModelList[I].comissao      := SQL.getInteger(comissao);
      Self.FModelList[I].valor_comissao      := SQL.getInteger(valor_comissao);
      Self.FModelList[I].fechado      := SQL.getInteger(fechado);
      Self.FModelList[I].pago      := SQL.getInteger(pago);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].id      := SQL.getInteger(id);
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

  Self.FModel := ( Model as TModelERPimpressorafiscal );             

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
  SQL.Update(indicacao_servico);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
