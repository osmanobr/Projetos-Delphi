
unit Dal.ERP.fechamento_caixa_manutencao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.fechamento_caixa_manutencao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPfechamentocaixamanutencao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPfechamentocaixamanutencao;  
    FModelList : TModelBaseList<TModelERPfechamentocaixamanutencao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPfechamentocaixamanutencao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPfechamentocaixamanutencao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfechamentocaixamanutencao );              

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

function TDalERPfechamentocaixamanutencao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPfechamentocaixamanutencao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfechamentocaixamanutencao ); 

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
  SQL.Insert(fechamento_caixa_transacoes).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_fechamento).Next;
     SQL.Field(Self.FModel.id_fechamento_detalhe).Next;
     SQL.Field(Self.FModel.id_portador_caixa).Next;
     SQL.Field(Self.FModel.id_portador_banco).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.historico).Next;
     SQL.Field(Self.FModel.datahora).Next;
     SQL.Field(Self.FModel.estorno).Next;
     SQL.Field(Self.FModel.finalizadora).Next;
     SQL.Field(Self.FModel.importacao).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPfechamentocaixamanutencao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPfechamentocaixamanutencao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPfechamentocaixamanutencao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(fechamento_caixa_transacoes);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPfechamentocaixamanutencao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPfechamentocaixamanutencao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_fechamento      := SQL.getInteger(id_fechamento);
      Self.FModelList[I].id_fechamento_detalhe      := SQL.getInteger(id_fechamento_detalhe);
      Self.FModelList[I].id_portador_caixa      := SQL.getInteger(id_portador_caixa);
      Self.FModelList[I].id_portador_banco      := SQL.getInteger(id_portador_banco);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].historico      := SQL.getInteger(historico);
      Self.FModelList[I].datahora      := SQL.getInteger(datahora);
      Self.FModelList[I].estorno      := SQL.getInteger(estorno);
      Self.FModelList[I].finalizadora      := SQL.getInteger(finalizadora);
      Self.FModelList[I].importacao      := SQL.getInteger(importacao);
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

  Self.FModel := ( Model as TModelERPfechamentocaixamanutencao );             

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
  SQL.Update(fechamento_caixa_transacoes);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
