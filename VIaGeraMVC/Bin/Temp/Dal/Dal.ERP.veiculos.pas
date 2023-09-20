
unit Dal.ERP.veiculo_plano_acessorio;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.veiculo_plano_acessorio, DalBaseCRUD,
  SQLQuery;

type
  TDalERPveiculoplanoacessorio = class(TDalBaseCRUD)
  private 
    FModel : TModelERPveiculoplanoacessorio;  
    FModelList : TModelBaseList<TModelERPveiculoplanoacessorio>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPveiculoplanoacessorio.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPveiculoplanoacessorio) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculoplanoacessorio );              

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

function TDalERPveiculoplanoacessorio.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPveiculoplanoacessorio) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPveiculoplanoacessorio ); 

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
  SQL.Insert(veiculos).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.descricao_modelo).Next;
     SQL.Field(Self.FModel.km).Next;
     SQL.Field(Self.FModel.cor).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.renavam).Next;
     SQL.Field(Self.FModel.tprod).Next;
     SQL.Field(Self.FModel.tpcar).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.tara).Next;
     SQL.Field(Self.FModel.capkg).Next;
     SQL.Field(Self.FModel.capm3).Next;
     SQL.Field(Self.FModel.prop_cnpjcpf).Next;
     SQL.Field(Self.FModel.prop_rntc).Next;
     SQL.Field(Self.FModel.prop_nome).Next;
     SQL.Field(Self.FModel.prop_ie).Next;
     SQL.Field(Self.FModel.prop_uf).Next;
     SQL.Field(Self.FModel.prop_tpprop).Next;
     SQL.Field(Self.FModel.fabricante).Next;
     SQL.Field(Self.FModel.ano_fabricacao).Next;
     SQL.Field(Self.FModel.ano_modelo).Next;
     SQL.Field(Self.FModel.combustivel).Next;
     SQL.Field(Self.FModel.alienado).Next;
     SQL.Field(Self.FModel.rastreador).Next;
     SQL.Field(Self.FModel.empresa_rastreamento).Next;
     SQL.Field(Self.FModel.codigo_fipe).Next;
     SQL.Field(Self.FModel.valor_fipe).Next;
     SQL.Field(Self.FModel.tipo_veiculo).Next;
     SQL.Field(Self.FModel.chassis).Next;
     SQL.Field(Self.FModel.obs).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPveiculoplanoacessorio.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPveiculoplanoacessorio) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPveiculoplanoacessorio );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(veiculos);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPveiculoplanoacessorio>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPveiculoplanoacessorio.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].descricao_modelo      := SQL.getInteger(descricao_modelo);
      Self.FModelList[I].km      := SQL.getInteger(km);
      Self.FModelList[I].cor      := SQL.getInteger(cor);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].renavam      := SQL.getInteger(renavam);
      Self.FModelList[I].tprod      := SQL.getInteger(tprod);
      Self.FModelList[I].tpcar      := SQL.getInteger(tpcar);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].tara      := SQL.getInteger(tara);
      Self.FModelList[I].capkg      := SQL.getInteger(capkg);
      Self.FModelList[I].capm3      := SQL.getInteger(capm3);
      Self.FModelList[I].prop_cnpjcpf      := SQL.getInteger(prop_cnpjcpf);
      Self.FModelList[I].prop_rntc      := SQL.getInteger(prop_rntc);
      Self.FModelList[I].prop_nome      := SQL.getInteger(prop_nome);
      Self.FModelList[I].prop_ie      := SQL.getInteger(prop_ie);
      Self.FModelList[I].prop_uf      := SQL.getInteger(prop_uf);
      Self.FModelList[I].prop_tpprop      := SQL.getInteger(prop_tpprop);
      Self.FModelList[I].fabricante      := SQL.getInteger(fabricante);
      Self.FModelList[I].ano_fabricacao      := SQL.getInteger(ano_fabricacao);
      Self.FModelList[I].ano_modelo      := SQL.getInteger(ano_modelo);
      Self.FModelList[I].combustivel      := SQL.getInteger(combustivel);
      Self.FModelList[I].alienado      := SQL.getInteger(alienado);
      Self.FModelList[I].rastreador      := SQL.getInteger(rastreador);
      Self.FModelList[I].empresa_rastreamento      := SQL.getInteger(empresa_rastreamento);
      Self.FModelList[I].codigo_fipe      := SQL.getInteger(codigo_fipe);
      Self.FModelList[I].valor_fipe      := SQL.getInteger(valor_fipe);
      Self.FModelList[I].tipo_veiculo      := SQL.getInteger(tipo_veiculo);
      Self.FModelList[I].chassis      := SQL.getInteger(chassis);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
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

  Self.FModel := ( Model as TModelERPveiculoplanoacessorio );             

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
  SQL.Update(veiculos);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
