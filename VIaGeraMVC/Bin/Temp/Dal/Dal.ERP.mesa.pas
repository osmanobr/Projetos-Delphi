
unit Dal.ERP.mdfe_xml;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.mdfe_xml, DalBaseCRUD,
  SQLQuery;

type
  TDalERPmdfexml = class(TDalBaseCRUD)
  private 
    FModel : TModelERPmdfexml;  
    FModelList : TModelBaseList<TModelERPmdfexml>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPmdfexml.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPmdfexml) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmdfexml );              

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

function TDalERPmdfexml.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPmdfexml) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmdfexml ); 

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
  SQL.Insert(mesa).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.mesa).Next;
     SQL.Field(Self.FModel.situacao).Next;
     SQL.Field(Self.FModel.dataabre).Next;
     SQL.Field(Self.FModel.horaabre).Next;
     SQL.Field(Self.FModel.datafecha).Next;
     SQL.Field(Self.FModel.horafecha).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.vl_produto).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.vl_couvert).Next;
     SQL.Field(Self.FModel.vl_consumacao).Next;
     SQL.Field(Self.FModel.vl_taxa).Next;
     SQL.Field(Self.FModel.vl_rateio).Next;
     SQL.Field(Self.FModel.vl_haver).Next;
     SQL.Field(Self.FModel.vl_pago).Next;
     SQL.Field(Self.FModel.vl_troco).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_itens).Next;
     SQL.Field(Self.FModel.pessoas).Next;
     SQL.Field(Self.FModel.parcelas).Next;
     SQL.Field(Self.FModel.comentrada).Next;
     SQL.Field(Self.FModel.intervalo).Next;
     SQL.Field(Self.FModel.id_forma1).Next;
     SQL.Field(Self.FModel.vl_pago1).Next;
     SQL.Field(Self.FModel.id_forma2).Next;
     SQL.Field(Self.FModel.vl_pago2).Next;
     SQL.Field(Self.FModel.cancelada).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.transmitida).Next;
     SQL.Field(Self.FModel.cartao).Next;
     SQL.Field(Self.FModel.vl_comissao).Next;
     SQL.Field(Self.FModel.saida).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPmdfexml.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPmdfexml) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPmdfexml );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(mesa);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPmdfexml>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPmdfexml.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].mesa      := SQL.getInteger(mesa);
      Self.FModelList[I].situacao      := SQL.getInteger(situacao);
      Self.FModelList[I].dataabre      := SQL.getInteger(dataabre);
      Self.FModelList[I].horaabre      := SQL.getInteger(horaabre);
      Self.FModelList[I].datafecha      := SQL.getInteger(datafecha);
      Self.FModelList[I].horafecha      := SQL.getInteger(horafecha);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].vl_produto      := SQL.getInteger(vl_produto);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].vl_couvert      := SQL.getInteger(vl_couvert);
      Self.FModelList[I].vl_consumacao      := SQL.getInteger(vl_consumacao);
      Self.FModelList[I].vl_taxa      := SQL.getInteger(vl_taxa);
      Self.FModelList[I].vl_rateio      := SQL.getInteger(vl_rateio);
      Self.FModelList[I].vl_haver      := SQL.getInteger(vl_haver);
      Self.FModelList[I].vl_pago      := SQL.getInteger(vl_pago);
      Self.FModelList[I].vl_troco      := SQL.getInteger(vl_troco);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_itens      := SQL.getInteger(vl_itens);
      Self.FModelList[I].pessoas      := SQL.getInteger(pessoas);
      Self.FModelList[I].parcelas      := SQL.getInteger(parcelas);
      Self.FModelList[I].comentrada      := SQL.getInteger(comentrada);
      Self.FModelList[I].intervalo      := SQL.getInteger(intervalo);
      Self.FModelList[I].id_forma1      := SQL.getInteger(id_forma1);
      Self.FModelList[I].vl_pago1      := SQL.getInteger(vl_pago1);
      Self.FModelList[I].id_forma2      := SQL.getInteger(id_forma2);
      Self.FModelList[I].vl_pago2      := SQL.getInteger(vl_pago2);
      Self.FModelList[I].cancelada      := SQL.getInteger(cancelada);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].transmitida      := SQL.getInteger(transmitida);
      Self.FModelList[I].cartao      := SQL.getInteger(cartao);
      Self.FModelList[I].vl_comissao      := SQL.getInteger(vl_comissao);
      Self.FModelList[I].saida      := SQL.getInteger(saida);
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

  Self.FModel := ( Model as TModelERPmdfexml );             

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
  SQL.Update(mesa);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
