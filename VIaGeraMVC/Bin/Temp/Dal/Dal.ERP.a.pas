
unit Dal.ERP.a;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.a, DalBaseCRUD,
  SQLQuery;

type
  TDalERPa = class(TDalBaseCRUD)
  private 
    FModel : TModelERPa;  
    FModelList : TModelBaseList<TModelERPa>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPa.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPa) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPa );              

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

function TDalERPa.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPa) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPa ); 

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
  SQL.Insert(a170).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_a100).Next;
     SQL.Field(Self.FModel.item).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.descricao).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.cod_nt_bc_cred).Next;
     SQL.Field(Self.FModel.cst_pis).Next;
     SQL.Field(Self.FModel.vl_bc_pis).Next;
     SQL.Field(Self.FModel.aliq_pis).Next;
     SQL.Field(Self.FModel.vl_pis).Next;
     SQL.Field(Self.FModel.cst_cofins).Next;
     SQL.Field(Self.FModel.vl_bc_cofins).Next;
     SQL.Field(Self.FModel.aliq_cofins).Next;
     SQL.Field(Self.FModel.vl_cofins).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.unitario).Next;
     SQL.Field(Self.FModel.vl_issqn_p).Next;
     SQL.Field(Self.FModel.vl_issqn).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPa.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPa) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPa );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(a170);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPa>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPa.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_a100      := SQL.getInteger(id_a100);
      Self.FModelList[I].item      := SQL.getInteger(item);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].descricao      := SQL.getInteger(descricao);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].cod_nt_bc_cred      := SQL.getInteger(cod_nt_bc_cred);
      Self.FModelList[I].cst_pis      := SQL.getInteger(cst_pis);
      Self.FModelList[I].vl_bc_pis      := SQL.getInteger(vl_bc_pis);
      Self.FModelList[I].aliq_pis      := SQL.getInteger(aliq_pis);
      Self.FModelList[I].vl_pis      := SQL.getInteger(vl_pis);
      Self.FModelList[I].cst_cofins      := SQL.getInteger(cst_cofins);
      Self.FModelList[I].vl_bc_cofins      := SQL.getInteger(vl_bc_cofins);
      Self.FModelList[I].aliq_cofins      := SQL.getInteger(aliq_cofins);
      Self.FModelList[I].vl_cofins      := SQL.getInteger(vl_cofins);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].unitario      := SQL.getInteger(unitario);
      Self.FModelList[I].vl_issqn_p      := SQL.getInteger(vl_issqn_p);
      Self.FModelList[I].vl_issqn      := SQL.getInteger(vl_issqn);
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

  Self.FModel := ( Model as TModelERPa );             

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
  SQL.Update(a170);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
