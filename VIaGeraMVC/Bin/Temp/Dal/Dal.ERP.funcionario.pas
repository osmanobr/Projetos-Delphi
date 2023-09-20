
unit Dal.ERP.fornecedor_produtos;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.fornecedor_produtos, DalBaseCRUD,
  SQLQuery;

type
  TDalERPfornecedorprodutos = class(TDalBaseCRUD)
  private 
    FModel : TModelERPfornecedorprodutos;  
    FModelList : TModelBaseList<TModelERPfornecedorprodutos>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPfornecedorprodutos.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPfornecedorprodutos) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfornecedorprodutos );              

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

function TDalERPfornecedorprodutos.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPfornecedorprodutos) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPfornecedorprodutos ); 

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
  SQL.Insert(funcionario).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
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
     SQL.Field(Self.FModel.data_ferias).Next;
     SQL.Field(Self.FModel.inss).Next;
     SQL.Field(Self.FModel.vale_transporte).Next;
     SQL.Field(Self.FModel.cargo).Next;
     SQL.Field(Self.FModel.id_grupo).Next;
     SQL.Field(Self.FModel.conta).Next;
     SQL.Field(Self.FModel.agencia).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.op).Next;
     SQL.Field(Self.FModel.sindicato).Next;
     SQL.Field(Self.FModel.valor_sindicato).Next;
     SQL.Field(Self.FModel.valor_inss).Next;
     SQL.Field(Self.FModel.digital).Next;
     SQL.Field(Self.FModel.senha).Next;
     SQL.Field(Self.FModel.especializacao).Next;
     SQL.Field(Self.FModel.registro).Next;
     SQL.Field(Self.FModel.responsavel_tecnico).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPfornecedorprodutos.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPfornecedorprodutos) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPfornecedorprodutos );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(funcionario);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPfornecedorprodutos>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPfornecedorprodutos.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
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
      Self.FModelList[I].data_ferias      := SQL.getInteger(data_ferias);
      Self.FModelList[I].inss      := SQL.getInteger(inss);
      Self.FModelList[I].vale_transporte      := SQL.getInteger(vale_transporte);
      Self.FModelList[I].cargo      := SQL.getInteger(cargo);
      Self.FModelList[I].id_grupo      := SQL.getInteger(id_grupo);
      Self.FModelList[I].conta      := SQL.getInteger(conta);
      Self.FModelList[I].agencia      := SQL.getInteger(agencia);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].op      := SQL.getInteger(op);
      Self.FModelList[I].sindicato      := SQL.getInteger(sindicato);
      Self.FModelList[I].valor_sindicato      := SQL.getInteger(valor_sindicato);
      Self.FModelList[I].valor_inss      := SQL.getInteger(valor_inss);
      Self.FModelList[I].digital      := SQL.getInteger(digital);
      Self.FModelList[I].senha      := SQL.getInteger(senha);
      Self.FModelList[I].especializacao      := SQL.getInteger(especializacao);
      Self.FModelList[I].registro      := SQL.getInteger(registro);
      Self.FModelList[I].responsavel_tecnico      := SQL.getInteger(responsavel_tecnico);
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

  Self.FModel := ( Model as TModelERPfornecedorprodutos );             

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
  SQL.Update(funcionario);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
