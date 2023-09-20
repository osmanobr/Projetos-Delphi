
unit Dal.ERP.pdv;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.pdv, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpdv = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpdv;  
    FModelList : TModelBaseList<TModelERPpdv>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpdv.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpdv) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpdv );              

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

function TDalERPpdv.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpdv) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpdv ); 

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
  SQL.Insert(pdv_caixa).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.nome_caixa).Next;
     SQL.Field(Self.FModel.status).Next;
     SQL.Field(Self.FModel.data_abre).Next;
     SQL.Field(Self.FModel.hora_abre).Next;
     SQL.Field(Self.FModel.data_fecha).Next;
     SQL.Field(Self.FModel.hora_fecha).Next;
     SQL.Field(Self.FModel.vl_fundo).Next;
     SQL.Field(Self.FModel.vl_sangria).Next;
     SQL.Field(Self.FModel.id_forma1).Next;
     SQL.Field(Self.FModel.vl_forma1).Next;
     SQL.Field(Self.FModel.dg_forma1).Next;
     SQL.Field(Self.FModel.id_forma2).Next;
     SQL.Field(Self.FModel.vl_forma2).Next;
     SQL.Field(Self.FModel.dg_forma2).Next;
     SQL.Field(Self.FModel.id_forma3).Next;
     SQL.Field(Self.FModel.vl_forma3).Next;
     SQL.Field(Self.FModel.dg_forma3).Next;
     SQL.Field(Self.FModel.id_forma4).Next;
     SQL.Field(Self.FModel.vl_forma4).Next;
     SQL.Field(Self.FModel.dg_forma4).Next;
     SQL.Field(Self.FModel.id_forma5).Next;
     SQL.Field(Self.FModel.vl_forma5).Next;
     SQL.Field(Self.FModel.dg_forma5).Next;
     SQL.Field(Self.FModel.id_forma6).Next;
     SQL.Field(Self.FModel.vl_forma6).Next;
     SQL.Field(Self.FModel.dg_forma6).Next;
     SQL.Field(Self.FModel.id_forma7).Next;
     SQL.Field(Self.FModel.vl_forma7).Next;
     SQL.Field(Self.FModel.dg_forma7).Next;
     SQL.Field(Self.FModel.id_forma8).Next;
     SQL.Field(Self.FModel.vl_forma8).Next;
     SQL.Field(Self.FModel.dg_forma8).Next;
     SQL.Field(Self.FModel.id_forma9).Next;
     SQL.Field(Self.FModel.vl_forma9).Next;
     SQL.Field(Self.FModel.dg_forma9).Next;
     SQL.Field(Self.FModel.id_forma10).Next;
     SQL.Field(Self.FModel.vl_forma10).Next;
     SQL.Field(Self.FModel.dg_forma10).Next;
     SQL.Field(Self.FModel.venda_bruta).Next;
     SQL.Field(Self.FModel.dg_outros).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.acrescimos).Next;
     SQL.Field(Self.FModel.venda_liquida).Next;
     SQL.Field(Self.FModel.dg_total).Next;
     SQL.Field(Self.FModel.dg_diferenca).Next;
     SQL.Field(Self.FModel.cupons).Next;
     SQL.Field(Self.FModel.itens).Next;
     SQL.Field(Self.FModel.vl_abre).Next;
     SQL.Field(Self.FModel.canceladas).Next;
     SQL.Field(Self.FModel.vl_cancelada).Next;
     SQL.Field(Self.FModel.vl_troco).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpdv.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpdv) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpdv );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(pdv_caixa);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpdv>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpdv.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].nome_caixa      := SQL.getInteger(nome_caixa);
      Self.FModelList[I].status      := SQL.getInteger(status);
      Self.FModelList[I].data_abre      := SQL.getInteger(data_abre);
      Self.FModelList[I].hora_abre      := SQL.getInteger(hora_abre);
      Self.FModelList[I].data_fecha      := SQL.getInteger(data_fecha);
      Self.FModelList[I].hora_fecha      := SQL.getInteger(hora_fecha);
      Self.FModelList[I].vl_fundo      := SQL.getInteger(vl_fundo);
      Self.FModelList[I].vl_sangria      := SQL.getInteger(vl_sangria);
      Self.FModelList[I].id_forma1      := SQL.getInteger(id_forma1);
      Self.FModelList[I].vl_forma1      := SQL.getInteger(vl_forma1);
      Self.FModelList[I].dg_forma1      := SQL.getInteger(dg_forma1);
      Self.FModelList[I].id_forma2      := SQL.getInteger(id_forma2);
      Self.FModelList[I].vl_forma2      := SQL.getInteger(vl_forma2);
      Self.FModelList[I].dg_forma2      := SQL.getInteger(dg_forma2);
      Self.FModelList[I].id_forma3      := SQL.getInteger(id_forma3);
      Self.FModelList[I].vl_forma3      := SQL.getInteger(vl_forma3);
      Self.FModelList[I].dg_forma3      := SQL.getInteger(dg_forma3);
      Self.FModelList[I].id_forma4      := SQL.getInteger(id_forma4);
      Self.FModelList[I].vl_forma4      := SQL.getInteger(vl_forma4);
      Self.FModelList[I].dg_forma4      := SQL.getInteger(dg_forma4);
      Self.FModelList[I].id_forma5      := SQL.getInteger(id_forma5);
      Self.FModelList[I].vl_forma5      := SQL.getInteger(vl_forma5);
      Self.FModelList[I].dg_forma5      := SQL.getInteger(dg_forma5);
      Self.FModelList[I].id_forma6      := SQL.getInteger(id_forma6);
      Self.FModelList[I].vl_forma6      := SQL.getInteger(vl_forma6);
      Self.FModelList[I].dg_forma6      := SQL.getInteger(dg_forma6);
      Self.FModelList[I].id_forma7      := SQL.getInteger(id_forma7);
      Self.FModelList[I].vl_forma7      := SQL.getInteger(vl_forma7);
      Self.FModelList[I].dg_forma7      := SQL.getInteger(dg_forma7);
      Self.FModelList[I].id_forma8      := SQL.getInteger(id_forma8);
      Self.FModelList[I].vl_forma8      := SQL.getInteger(vl_forma8);
      Self.FModelList[I].dg_forma8      := SQL.getInteger(dg_forma8);
      Self.FModelList[I].id_forma9      := SQL.getInteger(id_forma9);
      Self.FModelList[I].vl_forma9      := SQL.getInteger(vl_forma9);
      Self.FModelList[I].dg_forma9      := SQL.getInteger(dg_forma9);
      Self.FModelList[I].id_forma10      := SQL.getInteger(id_forma10);
      Self.FModelList[I].vl_forma10      := SQL.getInteger(vl_forma10);
      Self.FModelList[I].dg_forma10      := SQL.getInteger(dg_forma10);
      Self.FModelList[I].venda_bruta      := SQL.getInteger(venda_bruta);
      Self.FModelList[I].dg_outros      := SQL.getInteger(dg_outros);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].acrescimos      := SQL.getInteger(acrescimos);
      Self.FModelList[I].venda_liquida      := SQL.getInteger(venda_liquida);
      Self.FModelList[I].dg_total      := SQL.getInteger(dg_total);
      Self.FModelList[I].dg_diferenca      := SQL.getInteger(dg_diferenca);
      Self.FModelList[I].cupons      := SQL.getInteger(cupons);
      Self.FModelList[I].itens      := SQL.getInteger(itens);
      Self.FModelList[I].vl_abre      := SQL.getInteger(vl_abre);
      Self.FModelList[I].canceladas      := SQL.getInteger(canceladas);
      Self.FModelList[I].vl_cancelada      := SQL.getInteger(vl_cancelada);
      Self.FModelList[I].vl_troco      := SQL.getInteger(vl_troco);
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

  Self.FModel := ( Model as TModelERPpdv );             

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
  SQL.Update(pdv_caixa);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
