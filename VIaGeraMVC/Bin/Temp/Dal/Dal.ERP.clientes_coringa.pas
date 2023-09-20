
unit Dal.ERP.clientes_controle_proprio_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.clientes_controle_proprio_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPclientescontroleproprioitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPclientescontroleproprioitem;  
    FModelList : TModelBaseList<TModelERPclientescontroleproprioitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPclientescontroleproprioitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPclientescontroleproprioitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclientescontroleproprioitem );              

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

function TDalERPclientescontroleproprioitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPclientescontroleproprioitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPclientescontroleproprioitem ); 

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
  SQL.Insert(clientes_coringa).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.pessoa).Next;
     SQL.Field(Self.FModel.data_ficha).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.rg_ssp).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.cidade).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.telefone).Next;
     SQL.Field(Self.FModel.celular).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPclientescontroleproprioitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPclientescontroleproprioitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPclientescontroleproprioitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(clientes_coringa);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPclientescontroleproprioitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPclientescontroleproprioitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].pessoa      := SQL.getInteger(pessoa);
      Self.FModelList[I].data_ficha      := SQL.getInteger(data_ficha);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].rg_ssp      := SQL.getInteger(rg_ssp);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].cidade      := SQL.getInteger(cidade);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].telefone      := SQL.getInteger(telefone);
      Self.FModelList[I].celular      := SQL.getInteger(celular);
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

  Self.FModel := ( Model as TModelERPclientescontroleproprioitem );             

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
  SQL.Update(clientes_coringa);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
