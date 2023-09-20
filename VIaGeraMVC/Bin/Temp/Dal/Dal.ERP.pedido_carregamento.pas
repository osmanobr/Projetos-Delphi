
unit Dal.ERP.pedido_alm_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.pedido_alm_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPpedidoalmitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPpedidoalmitem;  
    FModelList : TModelBaseList<TModelERPpedidoalmitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPpedidoalmitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPpedidoalmitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpedidoalmitem );              

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

function TDalERPpedidoalmitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPpedidoalmitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPpedidoalmitem ); 

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
  SQL.Insert(pedido_carregamento).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_motorista).Next;
     SQL.Field(Self.FModel.id_veiculo).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.d_inicio).Next;
     SQL.Field(Self.FModel.d_final).Next;
     SQL.Field(Self.FModel.d_rotulo).Next;
     SQL.Field(Self.FModel.d_lacre).Next;
     SQL.Field(Self.FModel.d_tampa).Next;
     SQL.Field(Self.FModel.d_total).Next;
     SQL.Field(Self.FModel.d_qtd_rotulo).Next;
     SQL.Field(Self.FModel.d_qtd_lacre).Next;
     SQL.Field(Self.FModel.d_qtd_tampa).Next;
     SQL.Field(Self.FModel.c_inicio).Next;
     SQL.Field(Self.FModel.c_final).Next;
     SQL.Field(Self.FModel.c_total).Next;
     SQL.Field(Self.FModel.c_escovadeira).Next;
     SQL.Field(Self.FModel.c_envazamento).Next;
     SQL.Field(Self.FModel.c_carregamento).Next;
     SQL.Field(Self.FModel.c_qtd_escovadeira).Next;
     SQL.Field(Self.FModel.c_qtd_envazamento).Next;
     SQL.Field(Self.FModel.c_qtd_carregamento).Next;
     SQL.Field(Self.FModel.r_cheiro).Next;
     SQL.Field(Self.FModel.r_defeito).Next;
     SQL.Field(Self.FModel.r_furado).Next;
     SQL.Field(Self.FModel.r_manchado).Next;
     SQL.Field(Self.FModel.r_vencido).Next;
     SQL.Field(Self.FModel.r_total).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.id_funcionario_faturista).Next;
     SQL.Field(Self.FModel.id_funcionario_producao).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPpedidoalmitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPpedidoalmitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPpedidoalmitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(pedido_carregamento);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPpedidoalmitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPpedidoalmitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_motorista      := SQL.getInteger(id_motorista);
      Self.FModelList[I].id_veiculo      := SQL.getInteger(id_veiculo);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].d_inicio      := SQL.getInteger(d_inicio);
      Self.FModelList[I].d_final      := SQL.getInteger(d_final);
      Self.FModelList[I].d_rotulo      := SQL.getInteger(d_rotulo);
      Self.FModelList[I].d_lacre      := SQL.getInteger(d_lacre);
      Self.FModelList[I].d_tampa      := SQL.getInteger(d_tampa);
      Self.FModelList[I].d_total      := SQL.getInteger(d_total);
      Self.FModelList[I].d_qtd_rotulo      := SQL.getInteger(d_qtd_rotulo);
      Self.FModelList[I].d_qtd_lacre      := SQL.getInteger(d_qtd_lacre);
      Self.FModelList[I].d_qtd_tampa      := SQL.getInteger(d_qtd_tampa);
      Self.FModelList[I].c_inicio      := SQL.getInteger(c_inicio);
      Self.FModelList[I].c_final      := SQL.getInteger(c_final);
      Self.FModelList[I].c_total      := SQL.getInteger(c_total);
      Self.FModelList[I].c_escovadeira      := SQL.getInteger(c_escovadeira);
      Self.FModelList[I].c_envazamento      := SQL.getInteger(c_envazamento);
      Self.FModelList[I].c_carregamento      := SQL.getInteger(c_carregamento);
      Self.FModelList[I].c_qtd_escovadeira      := SQL.getInteger(c_qtd_escovadeira);
      Self.FModelList[I].c_qtd_envazamento      := SQL.getInteger(c_qtd_envazamento);
      Self.FModelList[I].c_qtd_carregamento      := SQL.getInteger(c_qtd_carregamento);
      Self.FModelList[I].r_cheiro      := SQL.getInteger(r_cheiro);
      Self.FModelList[I].r_defeito      := SQL.getInteger(r_defeito);
      Self.FModelList[I].r_furado      := SQL.getInteger(r_furado);
      Self.FModelList[I].r_manchado      := SQL.getInteger(r_manchado);
      Self.FModelList[I].r_vencido      := SQL.getInteger(r_vencido);
      Self.FModelList[I].r_total      := SQL.getInteger(r_total);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].id_funcionario_faturista      := SQL.getInteger(id_funcionario_faturista);
      Self.FModelList[I].id_funcionario_producao      := SQL.getInteger(id_funcionario_producao);
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

  Self.FModel := ( Model as TModelERPpedidoalmitem );             

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
  SQL.Update(pedido_carregamento);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
