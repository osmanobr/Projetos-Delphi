
unit Dal.ERP.pedido_compra_duplicata;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.pedido_compra_duplicata, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpedidocompraduplicata = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpedidocompraduplicata;  
    FModelList : TModelBaseList<TModelERPpedidocompraduplicata>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpedidocompraduplicata.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpedidocompraduplicata) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpedidocompraduplicata );              

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

function TDalERPpedidocompraduplicata.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpedidocompraduplicata) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpedidocompraduplicata ); 

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
  SQL.Insert(pedido_compra_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_pedido_compra).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.unitario).Next;
     SQL.Field(Self.FModel.total).Next;
     SQL.Field(Self.FModel.chegou).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.bc_icms).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.reducao).Next;
     SQL.Field(Self.FModel.bc_st).Next;
     SQL.Field(Self.FModel.vl_st).Next;
     SQL.Field(Self.FModel.ipi).Next;
     SQL.Field(Self.FModel.vl_ipi).Next;
     SQL.Field(Self.FModel.estoque_data_pedido).Next;
     SQL.Field(Self.FModel.referencia).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.data_solicitacao).Next;
     SQL.Field(Self.FModel.solicitante).Next;
     SQL.Field(Self.FModel.solicitacao).Next;
     SQL.Field(Self.FModel.bc_ipi).Next;
     SQL.Field(Self.FModel.entregue).Next;
     SQL.Field(Self.FModel.em_espera).Next;
     SQL.Field(Self.FModel.nome_fornecedor).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.itens).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpedidocompraduplicata.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpedidocompraduplicata) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpedidocompraduplicata );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(pedido_compra_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpedidocompraduplicata>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpedidocompraduplicata.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_pedido_compra      := SQL.getInteger(id_pedido_compra);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].unitario      := SQL.getInteger(unitario);
      Self.FModelList[I].total      := SQL.getInteger(total);
      Self.FModelList[I].chegou      := SQL.getInteger(chegou);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].bc_icms      := SQL.getInteger(bc_icms);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].reducao      := SQL.getInteger(reducao);
      Self.FModelList[I].bc_st      := SQL.getInteger(bc_st);
      Self.FModelList[I].vl_st      := SQL.getInteger(vl_st);
      Self.FModelList[I].ipi      := SQL.getInteger(ipi);
      Self.FModelList[I].vl_ipi      := SQL.getInteger(vl_ipi);
      Self.FModelList[I].estoque_data_pedido      := SQL.getInteger(estoque_data_pedido);
      Self.FModelList[I].referencia      := SQL.getInteger(referencia);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].data_solicitacao      := SQL.getInteger(data_solicitacao);
      Self.FModelList[I].solicitante      := SQL.getInteger(solicitante);
      Self.FModelList[I].solicitacao      := SQL.getInteger(solicitacao);
      Self.FModelList[I].bc_ipi      := SQL.getInteger(bc_ipi);
      Self.FModelList[I].entregue      := SQL.getInteger(entregue);
      Self.FModelList[I].em_espera      := SQL.getInteger(em_espera);
      Self.FModelList[I].nome_fornecedor      := SQL.getInteger(nome_fornecedor);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].itens      := SQL.getInteger(itens);
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

  Self.FModel := ( Model as TModelERPpedidocompraduplicata );             

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
  SQL.Update(pedido_compra_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
