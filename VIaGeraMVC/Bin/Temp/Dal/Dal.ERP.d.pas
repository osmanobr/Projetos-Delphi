
unit Dal.ERP.d;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.d, DalBaseCRUD,
  SQLQuery;

type
  TDalERPd = class(TDalBaseCRUD)
  private 
    FModel : TModelERPd;  
    FModelList : TModelBaseList<TModelERPd>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPd.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPd) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPd );              

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

function TDalERPd.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPd) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPd ); 

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
  SQL.Insert(d500).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.ind_oper).Next;
     SQL.Field(Self.FModel.ind_emit).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.nome_fornecedor).Next;
     SQL.Field(Self.FModel.cod_mod).Next;
     SQL.Field(Self.FModel.cod_sit).Next;
     SQL.Field(Self.FModel.ser).Next;
     SQL.Field(Self.FModel.sub).Next;
     SQL.Field(Self.FModel.num_doc).Next;
     SQL.Field(Self.FModel.dt_doc).Next;
     SQL.Field(Self.FModel.dt_a_p).Next;
     SQL.Field(Self.FModel.vl_doc).Next;
     SQL.Field(Self.FModel.vl_desc).Next;
     SQL.Field(Self.FModel.vl_serv).Next;
     SQL.Field(Self.FModel.vl_serv_nt).Next;
     SQL.Field(Self.FModel.vl_terc).Next;
     SQL.Field(Self.FModel.vl_da).Next;
     SQL.Field(Self.FModel.vl_bc_icms).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_bc_icmsst).Next;
     SQL.Field(Self.FModel.vl_icmsst).Next;
     SQL.Field(Self.FModel.cod_inf).Next;
     SQL.Field(Self.FModel.vl_pis).Next;
     SQL.Field(Self.FModel.vl_cofins).Next;
     SQL.Field(Self.FModel.cod_cta).Next;
     SQL.Field(Self.FModel.tp_assinante).Next;
     SQL.Field(Self.FModel.cst_icms).Next;
     SQL.Field(Self.FModel.aliq_icms).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPd.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPd) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPd );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(d500);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPd>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPd.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].ind_oper      := SQL.getInteger(ind_oper);
      Self.FModelList[I].ind_emit      := SQL.getInteger(ind_emit);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].nome_fornecedor      := SQL.getInteger(nome_fornecedor);
      Self.FModelList[I].cod_mod      := SQL.getInteger(cod_mod);
      Self.FModelList[I].cod_sit      := SQL.getInteger(cod_sit);
      Self.FModelList[I].ser      := SQL.getInteger(ser);
      Self.FModelList[I].sub      := SQL.getInteger(sub);
      Self.FModelList[I].num_doc      := SQL.getInteger(num_doc);
      Self.FModelList[I].dt_doc      := SQL.getInteger(dt_doc);
      Self.FModelList[I].dt_a_p      := SQL.getInteger(dt_a_p);
      Self.FModelList[I].vl_doc      := SQL.getInteger(vl_doc);
      Self.FModelList[I].vl_desc      := SQL.getInteger(vl_desc);
      Self.FModelList[I].vl_serv      := SQL.getInteger(vl_serv);
      Self.FModelList[I].vl_serv_nt      := SQL.getInteger(vl_serv_nt);
      Self.FModelList[I].vl_terc      := SQL.getInteger(vl_terc);
      Self.FModelList[I].vl_da      := SQL.getInteger(vl_da);
      Self.FModelList[I].vl_bc_icms      := SQL.getInteger(vl_bc_icms);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_bc_icmsst      := SQL.getInteger(vl_bc_icmsst);
      Self.FModelList[I].vl_icmsst      := SQL.getInteger(vl_icmsst);
      Self.FModelList[I].cod_inf      := SQL.getInteger(cod_inf);
      Self.FModelList[I].vl_pis      := SQL.getInteger(vl_pis);
      Self.FModelList[I].vl_cofins      := SQL.getInteger(vl_cofins);
      Self.FModelList[I].cod_cta      := SQL.getInteger(cod_cta);
      Self.FModelList[I].tp_assinante      := SQL.getInteger(tp_assinante);
      Self.FModelList[I].cst_icms      := SQL.getInteger(cst_icms);
      Self.FModelList[I].aliq_icms      := SQL.getInteger(aliq_icms);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
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

  Self.FModel := ( Model as TModelERPd );             

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
  SQL.Update(d500);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
