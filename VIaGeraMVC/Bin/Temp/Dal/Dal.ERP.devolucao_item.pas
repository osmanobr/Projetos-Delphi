
unit Dal.ERP.devolucao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.devolucao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPdevolucao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPdevolucao;  
    FModelList : TModelBaseList<TModelERPdevolucao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPdevolucao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPdevolucao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdevolucao );              

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

function TDalERPdevolucao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPdevolucao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdevolucao ); 

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
  SQL.Insert(devolucao_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_devolucao).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.tipo).Next;
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
     SQL.Field(Self.FModel.taxa_ibpt).Next;
     SQL.Field(Self.FModel.taxa_valor).Next;
     SQL.Field(Self.FModel.vl_outras).Next;
     SQL.Field(Self.FModel.id_referencia).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.devolucao).Next;
     SQL.Field(Self.FModel.desconto_porcetagem).Next;
     SQL.Field(Self.FModel.taxa_federal).Next;
     SQL.Field(Self.FModel.taxa_estadual).Next;
     SQL.Field(Self.FModel.taxa_municipal).Next;
     SQL.Field(Self.FModel.valor_federal).Next;
     SQL.Field(Self.FModel.valor_estadual).Next;
     SQL.Field(Self.FModel.valor_municipal).Next;
     SQL.Field(Self.FModel.id_insumo).Next;
     SQL.Field(Self.FModel.qtd_caixa).Next;
     SQL.Field(Self.FModel.unitario_caixa).Next;
     SQL.Field(Self.FModel.unidade_tributavel).Next;
     SQL.Field(Self.FModel.ean).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPdevolucao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPdevolucao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPdevolucao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(devolucao_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPdevolucao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPdevolucao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_devolucao      := SQL.getInteger(id_devolucao);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
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
      Self.FModelList[I].taxa_ibpt      := SQL.getInteger(taxa_ibpt);
      Self.FModelList[I].taxa_valor      := SQL.getInteger(taxa_valor);
      Self.FModelList[I].vl_outras      := SQL.getInteger(vl_outras);
      Self.FModelList[I].id_referencia      := SQL.getInteger(id_referencia);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].devolucao      := SQL.getInteger(devolucao);
      Self.FModelList[I].desconto_porcetagem      := SQL.getInteger(desconto_porcetagem);
      Self.FModelList[I].taxa_federal      := SQL.getInteger(taxa_federal);
      Self.FModelList[I].taxa_estadual      := SQL.getInteger(taxa_estadual);
      Self.FModelList[I].taxa_municipal      := SQL.getInteger(taxa_municipal);
      Self.FModelList[I].valor_federal      := SQL.getInteger(valor_federal);
      Self.FModelList[I].valor_estadual      := SQL.getInteger(valor_estadual);
      Self.FModelList[I].valor_municipal      := SQL.getInteger(valor_municipal);
      Self.FModelList[I].id_insumo      := SQL.getInteger(id_insumo);
      Self.FModelList[I].qtd_caixa      := SQL.getInteger(qtd_caixa);
      Self.FModelList[I].unitario_caixa      := SQL.getInteger(unitario_caixa);
      Self.FModelList[I].unidade_tributavel      := SQL.getInteger(unidade_tributavel);
      Self.FModelList[I].ean      := SQL.getInteger(ean);
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

  Self.FModel := ( Model as TModelERPdevolucao );             

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
  SQL.Update(devolucao_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
