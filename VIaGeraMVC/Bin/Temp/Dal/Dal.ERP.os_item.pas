
unit Dal.ERP.os_equipamentos;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.os_equipamentos, DalBaseCRUD,
  SQLQuery;

type
  TDalERPosequipamentos = class(TDalBaseCRUD)
  private 
    FModel : TModelERPosequipamentos;  
    FModelList : TModelBaseList<TModelERPosequipamentos>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPosequipamentos.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPosequipamentos) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosequipamentos );              

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

function TDalERPosequipamentos.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPosequipamentos) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosequipamentos ); 

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
  SQL.Insert(os_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.vl_unitario).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.nro_garantia).Next;
     SQL.Field(Self.FModel.data_garantia).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.id_funcionario).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.icms_cupom).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_ipi).Next;
     SQL.Field(Self.FModel.diferido).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.reservado).Next;
     SQL.Field(Self.FModel.expedicao).Next;
     SQL.Field(Self.FModel.taxa_ibpt).Next;
     SQL.Field(Self.FModel.taxa_valor).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.vlbc_icms).Next;
     SQL.Field(Self.FModel.base_substituicao).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.estoque).Next;
     SQL.Field(Self.FModel.estoque_saida).Next;
     SQL.Field(Self.FModel.taxa_federal).Next;
     SQL.Field(Self.FModel.taxa_estadual).Next;
     SQL.Field(Self.FModel.taxa_municipal).Next;
     SQL.Field(Self.FModel.valor_federal).Next;
     SQL.Field(Self.FModel.valor_estadual).Next;
     SQL.Field(Self.FModel.valor_municipal).Next;
     SQL.Field(Self.FModel.cfop).Next;
     SQL.Field(Self.FModel.cfop_externo).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPosequipamentos.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPosequipamentos) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPosequipamentos );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(os_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPosequipamentos>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPosequipamentos.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].vl_unitario      := SQL.getInteger(vl_unitario);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].nro_garantia      := SQL.getInteger(nro_garantia);
      Self.FModelList[I].data_garantia      := SQL.getInteger(data_garantia);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].id_funcionario      := SQL.getInteger(id_funcionario);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].icms_cupom      := SQL.getInteger(icms_cupom);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_ipi      := SQL.getInteger(vl_ipi);
      Self.FModelList[I].diferido      := SQL.getInteger(diferido);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].reservado      := SQL.getInteger(reservado);
      Self.FModelList[I].expedicao      := SQL.getInteger(expedicao);
      Self.FModelList[I].taxa_ibpt      := SQL.getInteger(taxa_ibpt);
      Self.FModelList[I].taxa_valor      := SQL.getInteger(taxa_valor);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].vlbc_icms      := SQL.getInteger(vlbc_icms);
      Self.FModelList[I].base_substituicao      := SQL.getInteger(base_substituicao);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].estoque      := SQL.getInteger(estoque);
      Self.FModelList[I].estoque_saida      := SQL.getInteger(estoque_saida);
      Self.FModelList[I].taxa_federal      := SQL.getInteger(taxa_federal);
      Self.FModelList[I].taxa_estadual      := SQL.getInteger(taxa_estadual);
      Self.FModelList[I].taxa_municipal      := SQL.getInteger(taxa_municipal);
      Self.FModelList[I].valor_federal      := SQL.getInteger(valor_federal);
      Self.FModelList[I].valor_estadual      := SQL.getInteger(valor_estadual);
      Self.FModelList[I].valor_municipal      := SQL.getInteger(valor_municipal);
      Self.FModelList[I].cfop      := SQL.getInteger(cfop);
      Self.FModelList[I].cfop_externo      := SQL.getInteger(cfop_externo);
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

  Self.FModel := ( Model as TModelERPosequipamentos );             

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
  SQL.Update(os_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
