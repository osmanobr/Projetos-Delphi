
unit Dal.ERP.venda_duplicata;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.venda_duplicata, DalBaseCRUD,
  SQLQuery;

type
  TDalERPvendaduplicata = class(TDalBaseCRUD)
  private 
    FModel : TModelERPvendaduplicata;  
    FModelList : TModelBaseList<TModelERPvendaduplicata>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPvendaduplicata.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPvendaduplicata) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaduplicata );              

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then  
  begin                       
    ListError.Insert('Exclus�o de registros','Nenhum valor foi passado para o NCM!');  
    Result := (ListError.Count = 0);  
    Exit;                     
  end;                        
  SQL.DeleteFrom('ncm_regra_substituicao').Where('id').Equal( Self.FModel.id );  
  dbDelete;                                
  Result := (ListError.Count = 0);         
end;                                       

function TDalERPvendaduplicata.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPvendaduplicata) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaduplicata ); 

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if not Self.FModel.Validate then 
  begin                            
    ListError.Assign( Self.FModel.ListError );  
    Result := (ListError.Count = 0);  
    Exit;                             
  end;                                
  SQL.Insert(venda_entrega).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_pedido).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.hora).Next;
     SQL.Field(Self.FModel.nota).Next;
     SQL.Field(Self.FModel.cupom).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_vendedor).Next;
     SQL.Field(Self.FModel.motorista).Next;
     SQL.Field(Self.FModel.qtd_itens).Next;
     SQL.Field(Self.FModel.vl_produto).Next;
     SQL.Field(Self.FModel.vl_total).Next;
     SQL.Field(Self.FModel.vl_servico).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.id_transportadora).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_desconto).Next;
     SQL.Field(Self.FModel.base_icms).Next;
     SQL.Field(Self.FModel.base_substituicao).Next;
     SQL.Field(Self.FModel.vl_frete).Next;
     SQL.Field(Self.FModel.vl_seguro).Next;
     SQL.Field(Self.FModel.vl_outras).Next;
     SQL.Field(Self.FModel.base_ipi).Next;
     SQL.Field(Self.FModel.peso_bruto).Next;
     SQL.Field(Self.FModel.peso_liquido).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.nfe_chave).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.nfe_protocolo).Next;
     SQL.Field(Self.FModel.tipo_frete).Next;
     SQL.Field(Self.FModel.especie).Next;
     SQL.Field(Self.FModel.qtd_volume).Next;
     SQL.Field(Self.FModel.nro_volume).Next;
     SQL.Field(Self.FModel.pis).Next;
     SQL.Field(Self.FModel.cofins).Next;
     SQL.Field(Self.FModel.nfe_placa).Next;
     SQL.Field(Self.FModel.gerado).Next;
     SQL.Field(Self.FModel.nfe_protocolo_cancelada).Next;
     SQL.Field(Self.FModel.fechada).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPvendaduplicata.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPvendaduplicata) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPvendaduplicata );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(venda_entrega);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPvendaduplicata>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPvendaduplicata.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_pedido      := SQL.getInteger(id_pedido);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].hora      := SQL.getInteger(hora);
      Self.FModelList[I].nota      := SQL.getInteger(nota);
      Self.FModelList[I].cupom      := SQL.getInteger(cupom);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_vendedor      := SQL.getInteger(id_vendedor);
      Self.FModelList[I].motorista      := SQL.getInteger(motorista);
      Self.FModelList[I].qtd_itens      := SQL.getInteger(qtd_itens);
      Self.FModelList[I].vl_produto      := SQL.getInteger(vl_produto);
      Self.FModelList[I].vl_total      := SQL.getInteger(vl_total);
      Self.FModelList[I].vl_servico      := SQL.getInteger(vl_servico);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].id_transportadora      := SQL.getInteger(id_transportadora);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_desconto      := SQL.getInteger(vl_desconto);
      Self.FModelList[I].base_icms      := SQL.getInteger(base_icms);
      Self.FModelList[I].base_substituicao      := SQL.getInteger(base_substituicao);
      Self.FModelList[I].vl_frete      := SQL.getInteger(vl_frete);
      Self.FModelList[I].vl_seguro      := SQL.getInteger(vl_seguro);
      Self.FModelList[I].vl_outras      := SQL.getInteger(vl_outras);
      Self.FModelList[I].base_ipi      := SQL.getInteger(base_ipi);
      Self.FModelList[I].peso_bruto      := SQL.getInteger(peso_bruto);
      Self.FModelList[I].peso_liquido      := SQL.getInteger(peso_liquido);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].nfe_chave      := SQL.getInteger(nfe_chave);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].nfe_protocolo      := SQL.getInteger(nfe_protocolo);
      Self.FModelList[I].tipo_frete      := SQL.getInteger(tipo_frete);
      Self.FModelList[I].especie      := SQL.getInteger(especie);
      Self.FModelList[I].qtd_volume      := SQL.getInteger(qtd_volume);
      Self.FModelList[I].nro_volume      := SQL.getInteger(nro_volume);
      Self.FModelList[I].pis      := SQL.getInteger(pis);
      Self.FModelList[I].cofins      := SQL.getInteger(cofins);
      Self.FModelList[I].nfe_placa      := SQL.getInteger(nfe_placa);
      Self.FModelList[I].gerado      := SQL.getInteger(gerado);
      Self.FModelList[I].nfe_protocolo_cancelada      := SQL.getInteger(nfe_protocolo_cancelada);
      Self.FModelList[I].fechada      := SQL.getInteger(fechada);
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
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPvendaduplicata );             

  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) N�o Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  if Self.FModel.id = 0 then           
  begin                                
    ListError.Insert('Atualiza��o de registros','Parece que o modelo esta em Branco!');  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  if not Self.FModel.Validate then     
  begin                                
    ListError.Assign( Self.FModel.ListError ); 
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 
  SQL.Update(venda_entrega);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 