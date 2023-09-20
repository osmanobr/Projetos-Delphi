
unit Dal.ERP.mdfe_documentos;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.mdfe_documentos, DalBaseCRUD,
  SQLQuery;

type
  TDalERPmdfedocumentos = class(TDalBaseCRUD)
  private 
    FModel : TModelERPmdfedocumentos;  
    FModelList : TModelBaseList<TModelERPmdfedocumentos>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPmdfedocumentos.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPmdfedocumentos) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmdfedocumentos );              

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

function TDalERPmdfedocumentos.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPmdfedocumentos) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPmdfedocumentos ); 

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
  SQL.Insert(mdfe_xml).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.id_venda).Next;
     SQL.Field(Self.FModel.num_mdfe).Next;
     SQL.Field(Self.FModel.data_emissao).Next;
     SQL.Field(Self.FModel.uf_ini).Next;
     SQL.Field(Self.FModel.uf_per).Next;
     SQL.Field(Self.FModel.uf_fim).Next;
     SQL.Field(Self.FModel.mdfe_chave).Next;
     SQL.Field(Self.FModel.mdfe_protocolo).Next;
     SQL.Field(Self.FModel.situacao).Next;
     SQL.Field(Self.FModel.xml).Next;
     SQL.Field(Self.FModel.contingencia).Next;
     SQL.Field(Self.FModel.mdfe_protocolo_canc).Next;
     SQL.Field(Self.FModel.mdfe_protocolo_ence).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.placa).Next;
     SQL.Field(Self.FModel.ativo).Next;
     SQL.Field(Self.FModel.xml_encerramento).Next;
     SQL.Field(Self.FModel.tipo_carga).Next;
     SQL.Field(Self.FModel.prod_predominante).Next;
     SQL.Field(Self.FModel.ean).Next;
     SQL.Field(Self.FModel.ncm).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPmdfedocumentos.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPmdfedocumentos) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPmdfedocumentos );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(mdfe_xml);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPmdfedocumentos>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPmdfedocumentos.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].id_venda      := SQL.getInteger(id_venda);
      Self.FModelList[I].num_mdfe      := SQL.getInteger(num_mdfe);
      Self.FModelList[I].data_emissao      := SQL.getInteger(data_emissao);
      Self.FModelList[I].uf_ini      := SQL.getInteger(uf_ini);
      Self.FModelList[I].uf_per      := SQL.getInteger(uf_per);
      Self.FModelList[I].uf_fim      := SQL.getInteger(uf_fim);
      Self.FModelList[I].mdfe_chave      := SQL.getInteger(mdfe_chave);
      Self.FModelList[I].mdfe_protocolo      := SQL.getInteger(mdfe_protocolo);
      Self.FModelList[I].situacao      := SQL.getInteger(situacao);
      Self.FModelList[I].xml      := SQL.getInteger(xml);
      Self.FModelList[I].contingencia      := SQL.getInteger(contingencia);
      Self.FModelList[I].mdfe_protocolo_canc      := SQL.getInteger(mdfe_protocolo_canc);
      Self.FModelList[I].mdfe_protocolo_ence      := SQL.getInteger(mdfe_protocolo_ence);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].placa      := SQL.getInteger(placa);
      Self.FModelList[I].ativo      := SQL.getInteger(ativo);
      Self.FModelList[I].xml_encerramento      := SQL.getInteger(xml_encerramento);
      Self.FModelList[I].tipo_carga      := SQL.getInteger(tipo_carga);
      Self.FModelList[I].prod_predominante      := SQL.getInteger(prod_predominante);
      Self.FModelList[I].ean      := SQL.getInteger(ean);
      Self.FModelList[I].ncm      := SQL.getInteger(ncm);
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

  Self.FModel := ( Model as TModelERPmdfedocumentos );             

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
  SQL.Update(mdfe_xml);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
