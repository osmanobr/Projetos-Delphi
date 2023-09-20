
unit Dal.ERP.subgrupo;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.subgrupo, DalBaseCRUD,
  SQLQuery;

type
  TDalERPsubgrupo = class(TDalBaseCRUD)
  private 
    FModel : TModelERPsubgrupo;  
    FModelList : TModelBaseList<TModelERPsubgrupo>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPsubgrupo.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPsubgrupo) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPsubgrupo );              

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

function TDalERPsubgrupo.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPsubgrupo) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPsubgrupo ); 

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
  SQL.Insert(supervisor).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.endereco).Next;
     SQL.Field(Self.FModel.bairro).Next;
     SQL.Field(Self.FModel.id_cidade).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.cep).Next;
     SQL.Field(Self.FModel.cpf).Next;
     SQL.Field(Self.FModel.fone).Next;
     SQL.Field(Self.FModel.celular).Next;
     SQL.Field(Self.FModel.fax).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.comissao_avista).Next;
     SQL.Field(Self.FModel.comissao_aprazo).Next;
     SQL.Field(Self.FModel.comissao_servico).Next;
     SQL.Field(Self.FModel.data_nasc).Next;
     SQL.Field(Self.FModel.data_admi).Next;
     SQL.Field(Self.FModel.data_demi).Next;
     SQL.Field(Self.FModel.salario).Next;
     SQL.Field(Self.FModel.rg).Next;
     SQL.Field(Self.FModel.cart_trabalho).Next;
     SQL.Field(Self.FModel.titulo).Next;
     SQL.Field(Self.FModel.escolaridade).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.cnpj).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPsubgrupo.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPsubgrupo) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPsubgrupo );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(supervisor);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPsubgrupo>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPsubgrupo.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].endereco      := SQL.getInteger(endereco);
      Self.FModelList[I].bairro      := SQL.getInteger(bairro);
      Self.FModelList[I].id_cidade      := SQL.getInteger(id_cidade);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].cep      := SQL.getInteger(cep);
      Self.FModelList[I].cpf      := SQL.getInteger(cpf);
      Self.FModelList[I].fone      := SQL.getInteger(fone);
      Self.FModelList[I].celular      := SQL.getInteger(celular);
      Self.FModelList[I].fax      := SQL.getInteger(fax);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].comissao_avista      := SQL.getInteger(comissao_avista);
      Self.FModelList[I].comissao_aprazo      := SQL.getInteger(comissao_aprazo);
      Self.FModelList[I].comissao_servico      := SQL.getInteger(comissao_servico);
      Self.FModelList[I].data_nasc      := SQL.getInteger(data_nasc);
      Self.FModelList[I].data_admi      := SQL.getInteger(data_admi);
      Self.FModelList[I].data_demi      := SQL.getInteger(data_demi);
      Self.FModelList[I].salario      := SQL.getInteger(salario);
      Self.FModelList[I].rg      := SQL.getInteger(rg);
      Self.FModelList[I].cart_trabalho      := SQL.getInteger(cart_trabalho);
      Self.FModelList[I].titulo      := SQL.getInteger(titulo);
      Self.FModelList[I].escolaridade      := SQL.getInteger(escolaridade);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
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

  Self.FModel := ( Model as TModelERPsubgrupo );             

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
  SQL.Update(supervisor);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
