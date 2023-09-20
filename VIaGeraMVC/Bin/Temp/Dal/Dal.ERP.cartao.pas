
unit Dal.ERP.carta_correcao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.carta_correcao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcartacorrecao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcartacorrecao;  
    FModelList : TModelBaseList<TModelERPcartacorrecao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcartacorrecao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcartacorrecao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcartacorrecao );              

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

function TDalERPcartacorrecao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcartacorrecao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcartacorrecao ); 

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
  SQL.Insert(cartao).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.data_vencto).Next;
     SQL.Field(Self.FModel.documento).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_conta).Next;
     SQL.Field(Self.FModel.id_caixa).Next;
     SQL.Field(Self.FModel.id_banco).Next;
     SQL.Field(Self.FModel.id_contacorrente).Next;
     SQL.Field(Self.FModel.agencia).Next;
     SQL.Field(Self.FModel.cartao).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.status).Next;
     SQL.Field(Self.FModel.data_pgto).Next;
     SQL.Field(Self.FModel.id_forma).Next;
     SQL.Field(Self.FModel.id_pedido).Next;
     SQL.Field(Self.FModel.id_os).Next;
     SQL.Field(Self.FModel.id_conta_baixa).Next;
     SQL.Field(Self.FModel.id_forma_baixa).Next;
     SQL.Field(Self.FModel.taxa_adm).Next;
     SQL.Field(Self.FModel.nome_venda).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.cartao_condicao).Next;
     SQL.Field(Self.FModel.id_parcela_receber).Next;
     SQL.Field(Self.FModel.id_conta_receber).Next;
     SQL.Field(Self.FModel.valor_recebido).Next;
     SQL.Field(Self.FModel.taxa_bancaria).Next;
     SQL.Field(Self.FModel.vl_taxa_bancaria).Next;
     SQL.Field(Self.FModel.id_movimento).Next;
     SQL.Field(Self.FModel.id_cupons).Next;
     SQL.Field(Self.FModel.id_pagamentos).Next;
     SQL.Field(Self.FModel.id_sub_forma).Next;
     SQL.Field(Self.FModel.nome_forma).Next;
     SQL.Field(Self.FModel.nome_sub_forma).Next;
     SQL.Field(Self.FModel.id_uniao).Next;
     SQL.Field(Self.FModel.id_usuario).Next;
     SQL.Field(Self.FModel.id_cliser).Next;
     SQL.Field(Self.FModel.filial).Next;
     SQL.Field(Self.FModel.matriz).Next;
     SQL.Field(Self.FModel.id_credito).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcartacorrecao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcartacorrecao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcartacorrecao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(cartao);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcartacorrecao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcartacorrecao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].data_vencto      := SQL.getInteger(data_vencto);
      Self.FModelList[I].documento      := SQL.getInteger(documento);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_conta      := SQL.getInteger(id_conta);
      Self.FModelList[I].id_caixa      := SQL.getInteger(id_caixa);
      Self.FModelList[I].id_banco      := SQL.getInteger(id_banco);
      Self.FModelList[I].id_contacorrente      := SQL.getInteger(id_contacorrente);
      Self.FModelList[I].agencia      := SQL.getInteger(agencia);
      Self.FModelList[I].cartao      := SQL.getInteger(cartao);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].status      := SQL.getInteger(status);
      Self.FModelList[I].data_pgto      := SQL.getInteger(data_pgto);
      Self.FModelList[I].id_forma      := SQL.getInteger(id_forma);
      Self.FModelList[I].id_pedido      := SQL.getInteger(id_pedido);
      Self.FModelList[I].id_os      := SQL.getInteger(id_os);
      Self.FModelList[I].id_conta_baixa      := SQL.getInteger(id_conta_baixa);
      Self.FModelList[I].id_forma_baixa      := SQL.getInteger(id_forma_baixa);
      Self.FModelList[I].taxa_adm      := SQL.getInteger(taxa_adm);
      Self.FModelList[I].nome_venda      := SQL.getInteger(nome_venda);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].cartao_condicao      := SQL.getInteger(cartao_condicao);
      Self.FModelList[I].id_parcela_receber      := SQL.getInteger(id_parcela_receber);
      Self.FModelList[I].id_conta_receber      := SQL.getInteger(id_conta_receber);
      Self.FModelList[I].valor_recebido      := SQL.getInteger(valor_recebido);
      Self.FModelList[I].taxa_bancaria      := SQL.getInteger(taxa_bancaria);
      Self.FModelList[I].vl_taxa_bancaria      := SQL.getInteger(vl_taxa_bancaria);
      Self.FModelList[I].id_movimento      := SQL.getInteger(id_movimento);
      Self.FModelList[I].id_cupons      := SQL.getInteger(id_cupons);
      Self.FModelList[I].id_pagamentos      := SQL.getInteger(id_pagamentos);
      Self.FModelList[I].id_sub_forma      := SQL.getInteger(id_sub_forma);
      Self.FModelList[I].nome_forma      := SQL.getInteger(nome_forma);
      Self.FModelList[I].nome_sub_forma      := SQL.getInteger(nome_sub_forma);
      Self.FModelList[I].id_uniao      := SQL.getInteger(id_uniao);
      Self.FModelList[I].id_usuario      := SQL.getInteger(id_usuario);
      Self.FModelList[I].id_cliser      := SQL.getInteger(id_cliser);
      Self.FModelList[I].filial      := SQL.getInteger(filial);
      Self.FModelList[I].matriz      := SQL.getInteger(matriz);
      Self.FModelList[I].id_credito      := SQL.getInteger(id_credito);
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

  Self.FModel := ( Model as TModelERPcartacorrecao );             

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
  SQL.Update(cartao);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
