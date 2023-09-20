
unit Dal.ERP.telefone_parceiro;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.telefone_parceiro, DalBaseCRUD,
  SQLQuery;

type
  TDalERPtelefoneparceiro = class(TDalBaseCRUD)
  private 
    FModel : TModelERPtelefoneparceiro;  
    FModelList : TModelBaseList<TModelERPtelefoneparceiro>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPtelefoneparceiro.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPtelefoneparceiro) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPtelefoneparceiro );              

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

function TDalERPtelefoneparceiro.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPtelefoneparceiro) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPtelefoneparceiro ); 

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
  SQL.Insert(temp_etiquetas).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.codigo_fabricante).Next;
     SQL.Field(Self.FModel.unidade).Next;
     SQL.Field(Self.FModel.preco_venda).Next;
     SQL.Field(Self.FModel.preco_venda2).Next;
     SQL.Field(Self.FModel.tam).Next;
     SQL.Field(Self.FModel.cor).Next;
     SQL.Field(Self.FModel.id_grade).Next;
     SQL.Field(Self.FModel.referencia).Next;
     SQL.Field(Self.FModel.preco_atacado).Next;
     SQL.Field(Self.FModel.nf).Next;
     SQL.Field(Self.FModel.datanf).Next;
     SQL.Field(Self.FModel.valor_parcelas).Next;
     SQL.Field(Self.FModel.quantidade_parcela).Next;
     SQL.Field(Self.FModel.valor_embalagem).Next;
     SQL.Field(Self.FModel.quantidade_itens_embalagem).Next;
     SQL.Field(Self.FModel.preco_promocao).Next;
     SQL.Field(Self.FModel.data_compra).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPtelefoneparceiro.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPtelefoneparceiro) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPtelefoneparceiro );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(temp_etiquetas);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPtelefoneparceiro>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPtelefoneparceiro.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].codigo_fabricante      := SQL.getInteger(codigo_fabricante);
      Self.FModelList[I].unidade      := SQL.getInteger(unidade);
      Self.FModelList[I].preco_venda      := SQL.getInteger(preco_venda);
      Self.FModelList[I].preco_venda2      := SQL.getInteger(preco_venda2);
      Self.FModelList[I].tam      := SQL.getInteger(tam);
      Self.FModelList[I].cor      := SQL.getInteger(cor);
      Self.FModelList[I].id_grade      := SQL.getInteger(id_grade);
      Self.FModelList[I].referencia      := SQL.getInteger(referencia);
      Self.FModelList[I].preco_atacado      := SQL.getInteger(preco_atacado);
      Self.FModelList[I].nf      := SQL.getInteger(nf);
      Self.FModelList[I].datanf      := SQL.getInteger(datanf);
      Self.FModelList[I].valor_parcelas      := SQL.getInteger(valor_parcelas);
      Self.FModelList[I].quantidade_parcela      := SQL.getInteger(quantidade_parcela);
      Self.FModelList[I].valor_embalagem      := SQL.getInteger(valor_embalagem);
      Self.FModelList[I].quantidade_itens_embalagem      := SQL.getInteger(quantidade_itens_embalagem);
      Self.FModelList[I].preco_promocao      := SQL.getInteger(preco_promocao);
      Self.FModelList[I].data_compra      := SQL.getInteger(data_compra);
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

  Self.FModel := ( Model as TModelERPtelefoneparceiro );             

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
  SQL.Update(temp_etiquetas);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
