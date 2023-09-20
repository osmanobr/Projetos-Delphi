
unit Dal.ERP.carga;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.carga, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcarga = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcarga;  
    FModelList : TModelBaseList<TModelERPcarga>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcarga.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcarga) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcarga );              

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

function TDalERPcarga.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcarga) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcarga ); 

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
  SQL.Insert(carga_pdv).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.preco_venda).Next;
     SQL.Field(Self.FModel.preco_atacado).Next;
     SQL.Field(Self.FModel.fracionado).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.icms).Next;
     SQL.Field(Self.FModel.reducao).Next;
     SQL.Field(Self.FModel.promocao).Next;
     SQL.Field(Self.FModel.preco_promocao).Next;
     SQL.Field(Self.FModel.ippt).Next;
     SQL.Field(Self.FModel.iat).Next;
     SQL.Field(Self.FModel.atacado).Next;
     SQL.Field(Self.FModel.quantidade_atacado).Next;
     SQL.Field(Self.FModel.ncm).Next;
     SQL.Field(Self.FModel.cst).Next;
     SQL.Field(Self.FModel.piscofins).Next;
     SQL.Field(Self.FModel.ean).Next;
     SQL.Field(Self.FModel.kit).Next;
     SQL.Field(Self.FModel.balanca_pdv).Next;
     SQL.Field(Self.FModel.tabela_pdv).Next;
     SQL.Field(Self.FModel.preco_custo).Next;
     SQL.Field(Self.FModel.codigo_fabricante).Next;
     SQL.Field(Self.FModel.especial).Next;
     SQL.Field(Self.FModel.cfop_interno).Next;
     SQL.Field(Self.FModel.cfop_externo).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.ean_caixa).Next;
     SQL.Field(Self.FModel.ean_caixa2).Next;
     SQL.Field(Self.FModel.ean_caixa3).Next;
     SQL.Field(Self.FModel.embalagem_itens).Next;
     SQL.Field(Self.FModel.embalagem_itens2).Next;
     SQL.Field(Self.FModel.embalagem_itens3).Next;
     SQL.Field(Self.FModel.preco_custo_nf).Next;
     SQL.Field(Self.FModel.preco_custo_nf2).Next;
     SQL.Field(Self.FModel.preco_custo_nf3).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf2).Next;
     SQL.Field(Self.FModel.valor_unitario_item_nf3).Next;
     SQL.Field(Self.FModel.generico).Next;
     SQL.Field(Self.FModel.cst_piscofins).Next;
     SQL.Field(Self.FModel.md5_total).Next;
     SQL.Field(Self.FModel.md5_alterado).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcarga.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcarga) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcarga );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(carga_pdv);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcarga>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcarga.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].preco_venda      := SQL.getInteger(preco_venda);
      Self.FModelList[I].preco_atacado      := SQL.getInteger(preco_atacado);
      Self.FModelList[I].fracionado      := SQL.getInteger(fracionado);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].icms      := SQL.getInteger(icms);
      Self.FModelList[I].reducao      := SQL.getInteger(reducao);
      Self.FModelList[I].promocao      := SQL.getInteger(promocao);
      Self.FModelList[I].preco_promocao      := SQL.getInteger(preco_promocao);
      Self.FModelList[I].ippt      := SQL.getInteger(ippt);
      Self.FModelList[I].iat      := SQL.getInteger(iat);
      Self.FModelList[I].atacado      := SQL.getInteger(atacado);
      Self.FModelList[I].quantidade_atacado      := SQL.getInteger(quantidade_atacado);
      Self.FModelList[I].ncm      := SQL.getInteger(ncm);
      Self.FModelList[I].cst      := SQL.getInteger(cst);
      Self.FModelList[I].piscofins      := SQL.getInteger(piscofins);
      Self.FModelList[I].ean      := SQL.getInteger(ean);
      Self.FModelList[I].kit      := SQL.getInteger(kit);
      Self.FModelList[I].balanca_pdv      := SQL.getInteger(balanca_pdv);
      Self.FModelList[I].tabela_pdv      := SQL.getInteger(tabela_pdv);
      Self.FModelList[I].preco_custo      := SQL.getInteger(preco_custo);
      Self.FModelList[I].codigo_fabricante      := SQL.getInteger(codigo_fabricante);
      Self.FModelList[I].especial      := SQL.getInteger(especial);
      Self.FModelList[I].cfop_interno      := SQL.getInteger(cfop_interno);
      Self.FModelList[I].cfop_externo      := SQL.getInteger(cfop_externo);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].ean_caixa      := SQL.getInteger(ean_caixa);
      Self.FModelList[I].ean_caixa2      := SQL.getInteger(ean_caixa2);
      Self.FModelList[I].ean_caixa3      := SQL.getInteger(ean_caixa3);
      Self.FModelList[I].embalagem_itens      := SQL.getInteger(embalagem_itens);
      Self.FModelList[I].embalagem_itens2      := SQL.getInteger(embalagem_itens2);
      Self.FModelList[I].embalagem_itens3      := SQL.getInteger(embalagem_itens3);
      Self.FModelList[I].preco_custo_nf      := SQL.getInteger(preco_custo_nf);
      Self.FModelList[I].preco_custo_nf2      := SQL.getInteger(preco_custo_nf2);
      Self.FModelList[I].preco_custo_nf3      := SQL.getInteger(preco_custo_nf3);
      Self.FModelList[I].valor_unitario_item_nf      := SQL.getInteger(valor_unitario_item_nf);
      Self.FModelList[I].valor_unitario_item_nf2      := SQL.getInteger(valor_unitario_item_nf2);
      Self.FModelList[I].valor_unitario_item_nf3      := SQL.getInteger(valor_unitario_item_nf3);
      Self.FModelList[I].generico      := SQL.getInteger(generico);
      Self.FModelList[I].cst_piscofins      := SQL.getInteger(cst_piscofins);
      Self.FModelList[I].md5_total      := SQL.getInteger(md5_total);
      Self.FModelList[I].md5_alterado      := SQL.getInteger(md5_alterado);
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

  Self.FModel := ( Model as TModelERPcarga );             

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
  SQL.Update(carga_pdv);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
