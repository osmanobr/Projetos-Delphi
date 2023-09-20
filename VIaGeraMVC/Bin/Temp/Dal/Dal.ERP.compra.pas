
unit Dal.ERP.composicao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.composicao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcomposicao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcomposicao;  
    FModelList : TModelBaseList<TModelERPcomposicao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcomposicao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcomposicao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcomposicao );              

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

function TDalERPcomposicao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcomposicao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcomposicao ); 

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
  SQL.Insert(compra).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.nf).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.nome_fornecedor).Next;
     SQL.Field(Self.FModel.vl_produtos).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_ipi).Next;
     SQL.Field(Self.FModel.vl_acrescimo).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.juros).Next;
     SQL.Field(Self.FModel.comentrada).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.duplicatacheque).Next;
     SQL.Field(Self.FModel.parcelas).Next;
     SQL.Field(Self.FModel.vl_juros).Next;
     SQL.Field(Self.FModel.intervalo).Next;
     SQL.Field(Self.FModel.data_entrada).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.vl_substituicao).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.produto_insumo).Next;
     SQL.Field(Self.FModel.estoque).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.base_st).Next;
     SQL.Field(Self.FModel.nfe_chave).Next;
     SQL.Field(Self.FModel.obs_fiscal).Next;
     SQL.Field(Self.FModel.obs_nota).Next;
     SQL.Field(Self.FModel.fatura).Next;
     SQL.Field(Self.FModel.vl_pis).Next;
     SQL.Field(Self.FModel.vl_cofins).Next;
     SQL.Field(Self.FModel.gnre_porcentagem).Next;
     SQL.Field(Self.FModel.frete_porcentagem).Next;
     SQL.Field(Self.FModel.peso_desossa).Next;
     SQL.Field(Self.FModel.busca).Next;
     SQL.Field(Self.FModel.cod_di).Next;
     SQL.Field(Self.FModel.numero_di).Next;
     SQL.Field(Self.FModel.num_acdraw).Next;
     SQL.Field(Self.FModel.xml).Next;
     SQL.Field(Self.FModel.cliente_estoque_terceiro).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcomposicao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcomposicao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcomposicao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(compra);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcomposicao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcomposicao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].nf      := SQL.getInteger(nf);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].nome_fornecedor      := SQL.getInteger(nome_fornecedor);
      Self.FModelList[I].vl_produtos      := SQL.getInteger(vl_produtos);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_ipi      := SQL.getInteger(vl_ipi);
      Self.FModelList[I].vl_acrescimo      := SQL.getInteger(vl_acrescimo);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].juros      := SQL.getInteger(juros);
      Self.FModelList[I].comentrada      := SQL.getInteger(comentrada);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].duplicatacheque      := SQL.getInteger(duplicatacheque);
      Self.FModelList[I].parcelas      := SQL.getInteger(parcelas);
      Self.FModelList[I].vl_juros      := SQL.getInteger(vl_juros);
      Self.FModelList[I].intervalo      := SQL.getInteger(intervalo);
      Self.FModelList[I].data_entrada      := SQL.getInteger(data_entrada);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].vl_substituicao      := SQL.getInteger(vl_substituicao);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].produto_insumo      := SQL.getInteger(produto_insumo);
      Self.FModelList[I].estoque      := SQL.getInteger(estoque);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].base_st      := SQL.getInteger(base_st);
      Self.FModelList[I].nfe_chave      := SQL.getInteger(nfe_chave);
      Self.FModelList[I].obs_fiscal      := SQL.getInteger(obs_fiscal);
      Self.FModelList[I].obs_nota      := SQL.getInteger(obs_nota);
      Self.FModelList[I].fatura      := SQL.getInteger(fatura);
      Self.FModelList[I].vl_pis      := SQL.getInteger(vl_pis);
      Self.FModelList[I].vl_cofins      := SQL.getInteger(vl_cofins);
      Self.FModelList[I].gnre_porcentagem      := SQL.getInteger(gnre_porcentagem);
      Self.FModelList[I].frete_porcentagem      := SQL.getInteger(frete_porcentagem);
      Self.FModelList[I].peso_desossa      := SQL.getInteger(peso_desossa);
      Self.FModelList[I].busca      := SQL.getInteger(busca);
      Self.FModelList[I].cod_di      := SQL.getInteger(cod_di);
      Self.FModelList[I].numero_di      := SQL.getInteger(numero_di);
      Self.FModelList[I].num_acdraw      := SQL.getInteger(num_acdraw);
      Self.FModelList[I].xml      := SQL.getInteger(xml);
      Self.FModelList[I].cliente_estoque_terceiro      := SQL.getInteger(cliente_estoque_terceiro);
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

  Self.FModel := ( Model as TModelERPcomposicao );             

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
  SQL.Update(compra);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
