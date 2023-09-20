
unit Dal.ERP.venda_entrega_lote;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.venda_entrega_lote, DalBaseCRUD,
  SQLQuery;

type
  TDalERPvendaentregalote = class(TDalBaseCRUD)
  private 
    FModel : TModelERPvendaentregalote;  
    FModelList : TModelBaseList<TModelERPvendaentregalote>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPvendaentregalote.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPvendaentregalote) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaentregalote );              

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

function TDalERPvendaentregalote.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPvendaentregalote) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaentregalote ); 

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
  SQL.Insert(venda_entregaitem).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_venda_entrega).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.vl_unitario).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.icms_cupom).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.item).Next;
     SQL.Field(Self.FModel.id_grade).Next;
     SQL.Field(Self.FModel.cor_grade).Next;
     SQL.Field(Self.FModel.tam_grade).Next;
     SQL.Field(Self.FModel.vl_ipi).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.bc_icms).Next;
     SQL.Field(Self.FModel.reducao).Next;
     SQL.Field(Self.FModel.p_ipi).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.bc_st).Next;
     SQL.Field(Self.FModel.icmsst).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.data_hora_entrega).Next;
     SQL.Field(Self.FModel.quantidade_entregue).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPvendaentregalote.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPvendaentregalote) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPvendaentregalote );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(venda_entregaitem);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPvendaentregalote>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPvendaentregalote.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_venda_entrega      := SQL.getInteger(id_venda_entrega);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].vl_unitario      := SQL.getInteger(vl_unitario);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].icms_cupom      := SQL.getInteger(icms_cupom);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].item      := SQL.getInteger(item);
      Self.FModelList[I].id_grade      := SQL.getInteger(id_grade);
      Self.FModelList[I].cor_grade      := SQL.getInteger(cor_grade);
      Self.FModelList[I].tam_grade      := SQL.getInteger(tam_grade);
      Self.FModelList[I].vl_ipi      := SQL.getInteger(vl_ipi);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].bc_icms      := SQL.getInteger(bc_icms);
      Self.FModelList[I].reducao      := SQL.getInteger(reducao);
      Self.FModelList[I].p_ipi      := SQL.getInteger(p_ipi);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].bc_st      := SQL.getInteger(bc_st);
      Self.FModelList[I].icmsst      := SQL.getInteger(icmsst);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].data_hora_entrega      := SQL.getInteger(data_hora_entrega);
      Self.FModelList[I].quantidade_entregue      := SQL.getInteger(quantidade_entregue);
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

  Self.FModel := ( Model as TModelERPvendaentregalote );             

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
  SQL.Update(venda_entregaitem);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
