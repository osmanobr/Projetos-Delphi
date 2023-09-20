
unit Dal.ERP.locacao_duplicata;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.locacao_duplicata, DalBaseCRUD,
  SQLQuery;

type
  TDalERPlocacaoduplicata = class(TDalBaseCRUD)
  private 
    FModel : TModelERPlocacaoduplicata;  
    FModelList : TModelBaseList<TModelERPlocacaoduplicata>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPlocacaoduplicata.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPlocacaoduplicata) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlocacaoduplicata );              

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

function TDalERPlocacaoduplicata.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPlocacaoduplicata) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlocacaoduplicata ); 

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
  SQL.Insert(locacao_item).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_locacao).Next;
     SQL.Field(Self.FModel.id_equipamento).Next;
     SQL.Field(Self.FModel.patrimonio).Next;
     SQL.Field(Self.FModel.nome_equipamento).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.valor_unitario).Next;
     SQL.Field(Self.FModel.valor_garantia_total).Next;
     SQL.Field(Self.FModel.valor_total).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.quantidade_aditivo).Next;
     SQL.Field(Self.FModel.valor_aditivo).Next;
     SQL.Field(Self.FModel.valor_total_aditivo).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.data_troca).Next;
     SQL.Field(Self.FModel.devolvido).Next;
     SQL.Field(Self.FModel.aditivo).Next;
     SQL.Field(Self.FModel.data_devolucao).Next;
     SQL.Field(Self.FModel.devolucao_itens).Next;
     SQL.Field(Self.FModel.quantidade_devolucao).Next;
     SQL.Field(Self.FModel.devolucao_parcial).Next;
     SQL.Field(Self.FModel.valor_garantia_unitario).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPlocacaoduplicata.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPlocacaoduplicata) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPlocacaoduplicata );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(locacao_item);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPlocacaoduplicata>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPlocacaoduplicata.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_locacao      := SQL.getInteger(id_locacao);
      Self.FModelList[I].id_equipamento      := SQL.getInteger(id_equipamento);
      Self.FModelList[I].patrimonio      := SQL.getInteger(patrimonio);
      Self.FModelList[I].nome_equipamento      := SQL.getInteger(nome_equipamento);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].valor_unitario      := SQL.getInteger(valor_unitario);
      Self.FModelList[I].valor_garantia_total      := SQL.getInteger(valor_garantia_total);
      Self.FModelList[I].valor_total      := SQL.getInteger(valor_total);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].quantidade_aditivo      := SQL.getInteger(quantidade_aditivo);
      Self.FModelList[I].valor_aditivo      := SQL.getInteger(valor_aditivo);
      Self.FModelList[I].valor_total_aditivo      := SQL.getInteger(valor_total_aditivo);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].data_troca      := SQL.getInteger(data_troca);
      Self.FModelList[I].devolvido      := SQL.getInteger(devolvido);
      Self.FModelList[I].aditivo      := SQL.getInteger(aditivo);
      Self.FModelList[I].data_devolucao      := SQL.getInteger(data_devolucao);
      Self.FModelList[I].devolucao_itens      := SQL.getInteger(devolucao_itens);
      Self.FModelList[I].quantidade_devolucao      := SQL.getInteger(quantidade_devolucao);
      Self.FModelList[I].devolucao_parcial      := SQL.getInteger(devolucao_parcial);
      Self.FModelList[I].valor_garantia_unitario      := SQL.getInteger(valor_garantia_unitario);
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

  Self.FModel := ( Model as TModelERPlocacaoduplicata );             

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
  SQL.Update(locacao_item);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
