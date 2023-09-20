
unit Dal.ERP.acerto_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.acerto_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPacertoitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPacertoitem;  
    FModelList : TModelBaseList<TModelERPacertoitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPacertoitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPacertoitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPacertoitem );              

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

function TDalERPacertoitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPacertoitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPacertoitem ); 

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
  SQL.Insert(acesso).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.qtd_acessos).Next;
     SQL.Field(Self.FModel.data_instalacao).Next;
     SQL.Field(Self.FModel.data_acesso).Next;
     SQL.Field(Self.FModel.bloqueio).Next;
     SQL.Field(Self.FModel.data_senha).Next;
     SQL.Field(Self.FModel.versao).Next;
     SQL.Field(Self.FModel.data_backup).Next;
     SQL.Field(Self.FModel.chave).Next;
     SQL.Field(Self.FModel.reset).Next;
     SQL.Field(Self.FModel.hash).Next;
     SQL.Field(Self.FModel.via1).Next;
     SQL.Field(Self.FModel.via2).Next;
     SQL.Field(Self.FModel.via3).Next;
     SQL.Field(Self.FModel.versao_ibpt).Next;
     SQL.Field(Self.FModel.versao_ncm).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPacertoitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPacertoitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPacertoitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(acesso);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPacertoitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPacertoitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].qtd_acessos      := SQL.getInteger(qtd_acessos);
      Self.FModelList[I].data_instalacao      := SQL.getInteger(data_instalacao);
      Self.FModelList[I].data_acesso      := SQL.getInteger(data_acesso);
      Self.FModelList[I].bloqueio      := SQL.getInteger(bloqueio);
      Self.FModelList[I].data_senha      := SQL.getInteger(data_senha);
      Self.FModelList[I].versao      := SQL.getInteger(versao);
      Self.FModelList[I].data_backup      := SQL.getInteger(data_backup);
      Self.FModelList[I].chave      := SQL.getInteger(chave);
      Self.FModelList[I].reset      := SQL.getInteger(reset);
      Self.FModelList[I].hash      := SQL.getInteger(hash);
      Self.FModelList[I].via1      := SQL.getInteger(via1);
      Self.FModelList[I].via2      := SQL.getInteger(via2);
      Self.FModelList[I].via3      := SQL.getInteger(via3);
      Self.FModelList[I].versao_ibpt      := SQL.getInteger(versao_ibpt);
      Self.FModelList[I].versao_ncm      := SQL.getInteger(versao_ncm);
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

  Self.FModel := ( Model as TModelERPacertoitem );             

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
  SQL.Update(acesso);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
