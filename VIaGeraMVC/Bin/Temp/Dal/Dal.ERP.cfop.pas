
unit Dal.ERP.cesta_fabricacao;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.cesta_fabricacao, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcestafabricacao = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcestafabricacao;  
    FModelList : TModelBaseList<TModelERPcestafabricacao>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcestafabricacao.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcestafabricacao) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcestafabricacao );              

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

function TDalERPcestafabricacao.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcestafabricacao) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcestafabricacao ); 

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
  SQL.Insert(cfop).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.nome).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.base).Next;
     SQL.Field(Self.FModel.e_am).Next;
     SQL.Field(Self.FModel.e_ac).Next;
     SQL.Field(Self.FModel.e_al).Next;
     SQL.Field(Self.FModel.e_ap).Next;
     SQL.Field(Self.FModel.e_ba).Next;
     SQL.Field(Self.FModel.e_ce).Next;
     SQL.Field(Self.FModel.e_df).Next;
     SQL.Field(Self.FModel.e_es).Next;
     SQL.Field(Self.FModel.e_go).Next;
     SQL.Field(Self.FModel.e_ma).Next;
     SQL.Field(Self.FModel.e_mg).Next;
     SQL.Field(Self.FModel.e_mt).Next;
     SQL.Field(Self.FModel.e_ms).Next;
     SQL.Field(Self.FModel.e_pa).Next;
     SQL.Field(Self.FModel.e_pb).Next;
     SQL.Field(Self.FModel.e_pe).Next;
     SQL.Field(Self.FModel.e_pi).Next;
     SQL.Field(Self.FModel.e_pr).Next;
     SQL.Field(Self.FModel.e_rj).Next;
     SQL.Field(Self.FModel.e_rn).Next;
     SQL.Field(Self.FModel.e_ro).Next;
     SQL.Field(Self.FModel.e_rr).Next;
     SQL.Field(Self.FModel.e_rs).Next;
     SQL.Field(Self.FModel.e_sc).Next;
     SQL.Field(Self.FModel.e_se).Next;
     SQL.Field(Self.FModel.e_sp).Next;
     SQL.Field(Self.FModel.e_to).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.cfop).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcestafabricacao.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcestafabricacao) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcestafabricacao );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(cfop);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcestafabricacao>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcestafabricacao.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].nome      := SQL.getInteger(nome);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].base      := SQL.getInteger(base);
      Self.FModelList[I].e_am      := SQL.getInteger(e_am);
      Self.FModelList[I].e_ac      := SQL.getInteger(e_ac);
      Self.FModelList[I].e_al      := SQL.getInteger(e_al);
      Self.FModelList[I].e_ap      := SQL.getInteger(e_ap);
      Self.FModelList[I].e_ba      := SQL.getInteger(e_ba);
      Self.FModelList[I].e_ce      := SQL.getInteger(e_ce);
      Self.FModelList[I].e_df      := SQL.getInteger(e_df);
      Self.FModelList[I].e_es      := SQL.getInteger(e_es);
      Self.FModelList[I].e_go      := SQL.getInteger(e_go);
      Self.FModelList[I].e_ma      := SQL.getInteger(e_ma);
      Self.FModelList[I].e_mg      := SQL.getInteger(e_mg);
      Self.FModelList[I].e_mt      := SQL.getInteger(e_mt);
      Self.FModelList[I].e_ms      := SQL.getInteger(e_ms);
      Self.FModelList[I].e_pa      := SQL.getInteger(e_pa);
      Self.FModelList[I].e_pb      := SQL.getInteger(e_pb);
      Self.FModelList[I].e_pe      := SQL.getInteger(e_pe);
      Self.FModelList[I].e_pi      := SQL.getInteger(e_pi);
      Self.FModelList[I].e_pr      := SQL.getInteger(e_pr);
      Self.FModelList[I].e_rj      := SQL.getInteger(e_rj);
      Self.FModelList[I].e_rn      := SQL.getInteger(e_rn);
      Self.FModelList[I].e_ro      := SQL.getInteger(e_ro);
      Self.FModelList[I].e_rr      := SQL.getInteger(e_rr);
      Self.FModelList[I].e_rs      := SQL.getInteger(e_rs);
      Self.FModelList[I].e_sc      := SQL.getInteger(e_sc);
      Self.FModelList[I].e_se      := SQL.getInteger(e_se);
      Self.FModelList[I].e_sp      := SQL.getInteger(e_sp);
      Self.FModelList[I].e_to      := SQL.getInteger(e_to);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].cfop      := SQL.getInteger(cfop);
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

  Self.FModel := ( Model as TModelERPcestafabricacao );             

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
  SQL.Update(cfop);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
