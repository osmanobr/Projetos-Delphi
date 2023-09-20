
unit Dal.ERP.paf_r;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.paf_r, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpafr = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpafr;  
    FModelList : TModelBaseList<TModelERPpafr>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpafr.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpafr) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafr );              

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

function TDalERPpafr.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpafr) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpafr ); 

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
  SQL.Insert(paf_r07).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_r01).Next;
     SQL.Field(Self.FModel.id_r04).Next;
     SQL.Field(Self.FModel.id_r06).Next;
     SQL.Field(Self.FModel.fabricacao_ecf).Next;
     SQL.Field(Self.FModel.mf_adicional).Next;
     SQL.Field(Self.FModel.modelo_ecf).Next;
     SQL.Field(Self.FModel.numero_usuario_ecf).Next;
     SQL.Field(Self.FModel.coo).Next;
     SQL.Field(Self.FModel.ccf).Next;
     SQL.Field(Self.FModel.gnf).Next;
     SQL.Field(Self.FModel.meio_pagamento).Next;
     SQL.Field(Self.FModel.valor_pagamento).Next;
     SQL.Field(Self.FModel.indicador_estorno).Next;
     SQL.Field(Self.FModel.valor_estorno).Next;
     SQL.Field(Self.FModel.fiscal_nao_fiscal).Next;
     SQL.Field(Self.FModel.indicador_cancelamento_cupom).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.code).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpafr.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpafr) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpafr );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(paf_r07);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpafr>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpafr.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_r01      := SQL.getInteger(id_r01);
      Self.FModelList[I].id_r04      := SQL.getInteger(id_r04);
      Self.FModelList[I].id_r06      := SQL.getInteger(id_r06);
      Self.FModelList[I].fabricacao_ecf      := SQL.getInteger(fabricacao_ecf);
      Self.FModelList[I].mf_adicional      := SQL.getInteger(mf_adicional);
      Self.FModelList[I].modelo_ecf      := SQL.getInteger(modelo_ecf);
      Self.FModelList[I].numero_usuario_ecf      := SQL.getInteger(numero_usuario_ecf);
      Self.FModelList[I].coo      := SQL.getInteger(coo);
      Self.FModelList[I].ccf      := SQL.getInteger(ccf);
      Self.FModelList[I].gnf      := SQL.getInteger(gnf);
      Self.FModelList[I].meio_pagamento      := SQL.getInteger(meio_pagamento);
      Self.FModelList[I].valor_pagamento      := SQL.getInteger(valor_pagamento);
      Self.FModelList[I].indicador_estorno      := SQL.getInteger(indicador_estorno);
      Self.FModelList[I].valor_estorno      := SQL.getInteger(valor_estorno);
      Self.FModelList[I].fiscal_nao_fiscal      := SQL.getInteger(fiscal_nao_fiscal);
      Self.FModelList[I].indicador_cancelamento_cupom      := SQL.getInteger(indicador_cancelamento_cupom);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].code      := SQL.getInteger(code);
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

  Self.FModel := ( Model as TModelERPpafr );             

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
  SQL.Update(paf_r07);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
