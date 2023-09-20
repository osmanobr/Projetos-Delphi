
unit Dal.ERP.receita_agro;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.receita_agro, DalBaseCRUD,
  SQLQuery;

type
  TDalERPreceitaagro = class(TDalBaseCRUD)
  private 
    FModel : TModelERPreceitaagro;  
    FModelList : TModelBaseList<TModelERPreceitaagro>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPreceitaagro.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPreceitaagro) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPreceitaagro );              

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

function TDalERPreceitaagro.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPreceitaagro) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPreceitaagro ); 

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
  SQL.Insert(receita_agroprodutos).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_receita_agro).Next;
     SQL.Field(Self.FModel.id_produto).Next;
     SQL.Field(Self.FModel.nome_produto).Next;
     SQL.Field(Self.FModel.id_cultura).Next;
     SQL.Field(Self.FModel.cultura).Next;
     SQL.Field(Self.FModel.tipo_produto).Next;
     SQL.Field(Self.FModel.tipo_aplicacao).Next;
     SQL.Field(Self.FModel.dosagem_sugerida).Next;
     SQL.Field(Self.FModel.dose).Next;
     SQL.Field(Self.FModel.taxa_aplicacao).Next;
     SQL.Field(Self.FModel.quantidade).Next;
     SQL.Field(Self.FModel.numero_aplicacoes).Next;
     SQL.Field(Self.FModel.area_aplicacao).Next;
     SQL.Field(Self.FModel.id_diagnostico).Next;
     SQL.Field(Self.FModel.diagnostico).Next;
     SQL.Field(Self.FModel.pre_diagnostico).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPreceitaagro.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPreceitaagro) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPreceitaagro );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(receita_agroprodutos);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPreceitaagro>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPreceitaagro.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_receita_agro      := SQL.getInteger(id_receita_agro);
      Self.FModelList[I].id_produto      := SQL.getInteger(id_produto);
      Self.FModelList[I].nome_produto      := SQL.getInteger(nome_produto);
      Self.FModelList[I].id_cultura      := SQL.getInteger(id_cultura);
      Self.FModelList[I].cultura      := SQL.getInteger(cultura);
      Self.FModelList[I].tipo_produto      := SQL.getInteger(tipo_produto);
      Self.FModelList[I].tipo_aplicacao      := SQL.getInteger(tipo_aplicacao);
      Self.FModelList[I].dosagem_sugerida      := SQL.getInteger(dosagem_sugerida);
      Self.FModelList[I].dose      := SQL.getInteger(dose);
      Self.FModelList[I].taxa_aplicacao      := SQL.getInteger(taxa_aplicacao);
      Self.FModelList[I].quantidade      := SQL.getInteger(quantidade);
      Self.FModelList[I].numero_aplicacoes      := SQL.getInteger(numero_aplicacoes);
      Self.FModelList[I].area_aplicacao      := SQL.getInteger(area_aplicacao);
      Self.FModelList[I].id_diagnostico      := SQL.getInteger(id_diagnostico);
      Self.FModelList[I].diagnostico      := SQL.getInteger(diagnostico);
      Self.FModelList[I].pre_diagnostico      := SQL.getInteger(pre_diagnostico);
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

  Self.FModel := ( Model as TModelERPreceitaagro );             

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
  SQL.Update(receita_agroprodutos);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
