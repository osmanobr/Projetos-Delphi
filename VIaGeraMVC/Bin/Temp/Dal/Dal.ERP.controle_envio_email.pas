
unit Dal.ERP.controle_entrega_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.controle_entrega_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcontroleentregaitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcontroleentregaitem;  
    FModelList : TModelBaseList<TModelERPcontroleentregaitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcontroleentregaitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcontroleentregaitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontroleentregaitem );              

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

function TDalERPcontroleentregaitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcontroleentregaitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontroleentregaitem ); 

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
  SQL.Insert(controle_envio_email).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_lote).Next;
     SQL.Field(Self.FModel.id_fixa).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.id_conta_receber).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.enviado).Next;
     SQL.Field(Self.FModel.data_geracao).Next;
     SQL.Field(Self.FModel.mensagem).Next;
     SQL.Field(Self.FModel.data_envio).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.email).Next;
     SQL.Field(Self.FModel.endereco_cli).Next;
     SQL.Field(Self.FModel.cpf_cnpj_cli).Next;
     SQL.Field(Self.FModel.origen).Next;
     SQL.Field(Self.FModel.nfe_chave).Next;
     SQL.Field(Self.FModel.cupon_fiscal).Next;
     SQL.Field(Self.FModel.data_saida_venda).Next;
     SQL.Field(Self.FModel.valor_total).Next;
     SQL.Field(Self.FModel.parcela).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.descricao_email).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcontroleentregaitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcontroleentregaitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcontroleentregaitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(controle_envio_email);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcontroleentregaitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcontroleentregaitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_lote      := SQL.getInteger(id_lote);
      Self.FModelList[I].id_fixa      := SQL.getInteger(id_fixa);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].id_conta_receber      := SQL.getInteger(id_conta_receber);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].enviado      := SQL.getInteger(enviado);
      Self.FModelList[I].data_geracao      := SQL.getInteger(data_geracao);
      Self.FModelList[I].mensagem      := SQL.getInteger(mensagem);
      Self.FModelList[I].data_envio      := SQL.getInteger(data_envio);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].email      := SQL.getInteger(email);
      Self.FModelList[I].endereco_cli      := SQL.getInteger(endereco_cli);
      Self.FModelList[I].cpf_cnpj_cli      := SQL.getInteger(cpf_cnpj_cli);
      Self.FModelList[I].origen      := SQL.getInteger(origen);
      Self.FModelList[I].nfe_chave      := SQL.getInteger(nfe_chave);
      Self.FModelList[I].cupon_fiscal      := SQL.getInteger(cupon_fiscal);
      Self.FModelList[I].data_saida_venda      := SQL.getInteger(data_saida_venda);
      Self.FModelList[I].valor_total      := SQL.getInteger(valor_total);
      Self.FModelList[I].parcela      := SQL.getInteger(parcela);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].descricao_email      := SQL.getInteger(descricao_email);
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

  Self.FModel := ( Model as TModelERPcontroleentregaitem );             

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
  SQL.Update(controle_envio_email);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
