
unit Dal.ERP.lmc_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.lmc_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPlmcitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPlmcitem;  
    FModelList : TModelBaseList<TModelERPlmcitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPlmcitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPlmcitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlmcitem );              

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

function TDalERPlmcitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPlmcitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlmcitem ); 

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
  SQL.Insert(locacao).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.status).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.inicio).Next;
     SQL.Field(Self.FModel.devolucao).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.localizacao).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.vl_equipamento).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_acrescimo).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.parcelas).Next;
     SQL.Field(Self.FModel.data_vencto).Next;
     SQL.Field(Self.FModel.evento).Next;
     SQL.Field(Self.FModel.financeiro).Next;
     SQL.Field(Self.FModel.devolvido).Next;
     SQL.Field(Self.FModel.dias).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.aditivo).Next;
     SQL.Field(Self.FModel.inicio_aditivo).Next;
     SQL.Field(Self.FModel.devolucao_aditivo).Next;
     SQL.Field(Self.FModel.tipo_aditivo).Next;
     SQL.Field(Self.FModel.dias_aditivo).Next;
     SQL.Field(Self.FModel.responsavel).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.telefone).Next;
     SQL.Field(Self.FModel.frete).Next;
     SQL.Field(Self.FModel.busca).Next;
     SQL.Field(Self.FModel.valor_aluguel).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPlmcitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPlmcitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPlmcitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(locacao);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPlmcitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPlmcitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].status      := SQL.getInteger(status);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].inicio      := SQL.getInteger(inicio);
      Self.FModelList[I].devolucao      := SQL.getInteger(devolucao);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].localizacao      := SQL.getInteger(localizacao);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].vl_equipamento      := SQL.getInteger(vl_equipamento);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_acrescimo      := SQL.getInteger(vl_acrescimo);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].parcelas      := SQL.getInteger(parcelas);
      Self.FModelList[I].data_vencto      := SQL.getInteger(data_vencto);
      Self.FModelList[I].evento      := SQL.getInteger(evento);
      Self.FModelList[I].financeiro      := SQL.getInteger(financeiro);
      Self.FModelList[I].devolvido      := SQL.getInteger(devolvido);
      Self.FModelList[I].dias      := SQL.getInteger(dias);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].aditivo      := SQL.getInteger(aditivo);
      Self.FModelList[I].inicio_aditivo      := SQL.getInteger(inicio_aditivo);
      Self.FModelList[I].devolucao_aditivo      := SQL.getInteger(devolucao_aditivo);
      Self.FModelList[I].tipo_aditivo      := SQL.getInteger(tipo_aditivo);
      Self.FModelList[I].dias_aditivo      := SQL.getInteger(dias_aditivo);
      Self.FModelList[I].responsavel      := SQL.getInteger(responsavel);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].telefone      := SQL.getInteger(telefone);
      Self.FModelList[I].frete      := SQL.getInteger(frete);
      Self.FModelList[I].busca      := SQL.getInteger(busca);
      Self.FModelList[I].valor_aluguel      := SQL.getInteger(valor_aluguel);
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

  Self.FModel := ( Model as TModelERPlmcitem );             

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
  SQL.Update(locacao);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
