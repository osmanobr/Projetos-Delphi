
unit Dal.ERP.devolucao_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.devolucao_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPdevolucaoitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPdevolucaoitem;  
    FModelList : TModelBaseList<TModelERPdevolucaoitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPdevolucaoitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPdevolucaoitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdevolucaoitem );              

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

function TDalERPdevolucaoitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPdevolucaoitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPdevolucaoitem ); 

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
  SQL.Insert(devolucao_referencia).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_devolucao).Next;
     SQL.Field(Self.FModel.tipo).Next;
     SQL.Field(Self.FModel.nfe).Next;
     SQL.Field(Self.FModel.uf).Next;
     SQL.Field(Self.FModel.aamm).Next;
     SQL.Field(Self.FModel.cnpj).Next;
     SQL.Field(Self.FModel.cnpjcpf).Next;
     SQL.Field(Self.FModel.ie).Next;
     SQL.Field(Self.FModel.modelo).Next;
     SQL.Field(Self.FModel.serie).Next;
     SQL.Field(Self.FModel.nf).Next;
     SQL.Field(Self.FModel.ecf).Next;
     SQL.Field(Self.FModel.coo).Next;
     SQL.Field(Self.FModel.id_devolvido).Next;
     SQL.Field(Self.FModel.nfce_chave).Next;
     SQL.Field(Self.FModel.nfce).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPdevolucaoitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPdevolucaoitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPdevolucaoitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(devolucao_referencia);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPdevolucaoitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPdevolucaoitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_devolucao      := SQL.getInteger(id_devolucao);
      Self.FModelList[I].tipo      := SQL.getInteger(tipo);
      Self.FModelList[I].nfe      := SQL.getInteger(nfe);
      Self.FModelList[I].uf      := SQL.getInteger(uf);
      Self.FModelList[I].aamm      := SQL.getInteger(aamm);
      Self.FModelList[I].cnpj      := SQL.getInteger(cnpj);
      Self.FModelList[I].cnpjcpf      := SQL.getInteger(cnpjcpf);
      Self.FModelList[I].ie      := SQL.getInteger(ie);
      Self.FModelList[I].modelo      := SQL.getInteger(modelo);
      Self.FModelList[I].serie      := SQL.getInteger(serie);
      Self.FModelList[I].nf      := SQL.getInteger(nf);
      Self.FModelList[I].ecf      := SQL.getInteger(ecf);
      Self.FModelList[I].coo      := SQL.getInteger(coo);
      Self.FModelList[I].id_devolvido      := SQL.getInteger(id_devolvido);
      Self.FModelList[I].nfce_chave      := SQL.getInteger(nfce_chave);
      Self.FModelList[I].nfce      := SQL.getInteger(nfce);
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

  Self.FModel := ( Model as TModelERPdevolucaoitem );             

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
  SQL.Update(devolucao_referencia);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
