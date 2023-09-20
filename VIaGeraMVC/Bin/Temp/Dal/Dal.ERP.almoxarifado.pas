
unit Dal.ERP.agro_diagnostico;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.agro_diagnostico, DalBaseCRUD,
  SQLQuery;

type
  TDalERPagrodiagnostico = class(TDalBaseCRUD)
  private 
    FModel : TModelERPagrodiagnostico;  
    FModelList : TModelBaseList<TModelERPagrodiagnostico>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPagrodiagnostico.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPagrodiagnostico) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPagrodiagnostico );              

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

function TDalERPagrodiagnostico.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPagrodiagnostico) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPagrodiagnostico ); 

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
  SQL.Insert(almoxarifado).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresas).Next;
     SQL.Field(Self.FModel.nome_equipamento).Next;
     SQL.Field(Self.FModel.codigo_fabricante).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.validade).Next;
     SQL.Field(Self.FModel.tp_peso).Next;
     SQL.Field(Self.FModel.peso).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.estoque_minimo).Next;
     SQL.Field(Self.FModel.estoque_atual).Next;
     SQL.Field(Self.FModel.preco_custo).Next;
     SQL.Field(Self.FModel.preco_custosemfrete).Next;
     SQL.Field(Self.FModel.preco_compra).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.perc_frete).Next;
     SQL.Field(Self.FModel.ipi_entrada).Next;
     SQL.Field(Self.FModel.icms_entrada).Next;
     SQL.Field(Self.FModel.vl_substituicao).Next;
     SQL.Field(Self.FModel.outras_despesas).Next;
     SQL.Field(Self.FModel.fracionado).Next;
     SQL.Field(Self.FModel.embalagem).Next;
     SQL.Field(Self.FModel.npatrimonio).Next;
     SQL.Field(Self.FModel.patrimonio).Next;
     SQL.Field(Self.FModel.itens_embalagem).Next;
     SQL.Field(Self.FModel.aplicacao).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.id_insumo).Next;
     SQL.Field(Self.FModel.preco_venda).Next;
     SQL.Field(Self.FModel.setor).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPagrodiagnostico.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPagrodiagnostico) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPagrodiagnostico );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(almoxarifado);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPagrodiagnostico>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPagrodiagnostico.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresas      := SQL.getInteger(id_empresas);
      Self.FModelList[I].nome_equipamento      := SQL.getInteger(nome_equipamento);
      Self.FModelList[I].codigo_fabricante      := SQL.getInteger(codigo_fabricante);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].validade      := SQL.getInteger(validade);
      Self.FModelList[I].tp_peso      := SQL.getInteger(tp_peso);
      Self.FModelList[I].peso      := SQL.getInteger(peso);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].estoque_minimo      := SQL.getInteger(estoque_minimo);
      Self.FModelList[I].estoque_atual      := SQL.getInteger(estoque_atual);
      Self.FModelList[I].preco_custo      := SQL.getInteger(preco_custo);
      Self.FModelList[I].preco_custosemfrete      := SQL.getInteger(preco_custosemfrete);
      Self.FModelList[I].preco_compra      := SQL.getInteger(preco_compra);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].perc_frete      := SQL.getInteger(perc_frete);
      Self.FModelList[I].ipi_entrada      := SQL.getInteger(ipi_entrada);
      Self.FModelList[I].icms_entrada      := SQL.getInteger(icms_entrada);
      Self.FModelList[I].vl_substituicao      := SQL.getInteger(vl_substituicao);
      Self.FModelList[I].outras_despesas      := SQL.getInteger(outras_despesas);
      Self.FModelList[I].fracionado      := SQL.getInteger(fracionado);
      Self.FModelList[I].embalagem      := SQL.getInteger(embalagem);
      Self.FModelList[I].npatrimonio      := SQL.getInteger(npatrimonio);
      Self.FModelList[I].patrimonio      := SQL.getInteger(patrimonio);
      Self.FModelList[I].itens_embalagem      := SQL.getInteger(itens_embalagem);
      Self.FModelList[I].aplicacao      := SQL.getInteger(aplicacao);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].id_insumo      := SQL.getInteger(id_insumo);
      Self.FModelList[I].preco_venda      := SQL.getInteger(preco_venda);
      Self.FModelList[I].setor      := SQL.getInteger(setor);
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

  Self.FModel := ( Model as TModelERPagrodiagnostico );             

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
  SQL.Update(almoxarifado);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
