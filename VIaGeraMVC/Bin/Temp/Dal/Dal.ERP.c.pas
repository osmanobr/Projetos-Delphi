
unit Dal.ERP.c;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.c, DalBaseCRUD,
  SQLQuery;

type
  TDalERPc = class(TDalBaseCRUD)
  private 
    FModel : TModelERPc;  
    FModelList : TModelBaseList<TModelERPc>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPc.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPc) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPc );              

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

function TDalERPc.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPc) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPc ); 

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
  SQL.Insert(c500).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_cfop).Next;
     SQL.Field(Self.FModel.ind_oper).Next;
     SQL.Field(Self.FModel.ind_emit).Next;
     SQL.Field(Self.FModel.id_fornecedor).Next;
     SQL.Field(Self.FModel.fornecedor).Next;
     SQL.Field(Self.FModel.cod_mod).Next;
     SQL.Field(Self.FModel.cod_sit).Next;
     SQL.Field(Self.FModel.ser).Next;
     SQL.Field(Self.FModel.sub).Next;
     SQL.Field(Self.FModel.cod_cons).Next;
     SQL.Field(Self.FModel.num_doc).Next;
     SQL.Field(Self.FModel.dt_doc).Next;
     SQL.Field(Self.FModel.dt_e_s).Next;
     SQL.Field(Self.FModel.vl_doc).Next;
     SQL.Field(Self.FModel.vl_desc).Next;
     SQL.Field(Self.FModel.vl_forn).Next;
     SQL.Field(Self.FModel.vl_serv_nt).Next;
     SQL.Field(Self.FModel.vl_terc).Next;
     SQL.Field(Self.FModel.vl_da).Next;
     SQL.Field(Self.FModel.vl_bc_icms).Next;
     SQL.Field(Self.FModel.vl_icms).Next;
     SQL.Field(Self.FModel.vl_bc_icms_st).Next;
     SQL.Field(Self.FModel.vl_icms_st).Next;
     SQL.Field(Self.FModel.cod_inf).Next;
     SQL.Field(Self.FModel.vl_pis).Next;
     SQL.Field(Self.FModel.vl_cofins).Next;
     SQL.Field(Self.FModel.tp_ligacao).Next;
     SQL.Field(Self.FModel.cod_grupo_tensao).Next;
     SQL.Field(Self.FModel.i_cod_item).Next;
     SQL.Field(Self.FModel.i_cod_class).Next;
     SQL.Field(Self.FModel.i_qtd).Next;
     SQL.Field(Self.FModel.i_vl_item).Next;
     SQL.Field(Self.FModel.i_aliq_icms).Next;
     SQL.Field(Self.FModel.i_cst_icms).Next;
     SQL.Field(Self.FModel.cst_pis).Next;
     SQL.Field(Self.FModel.cst_cofins).Next;
     SQL.Field(Self.FModel.aliq_pis).Next;
     SQL.Field(Self.FModel.aliq_cofins).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPc.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPc) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPc );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(c500);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPc>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPc.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_cfop      := SQL.getInteger(id_cfop);
      Self.FModelList[I].ind_oper      := SQL.getInteger(ind_oper);
      Self.FModelList[I].ind_emit      := SQL.getInteger(ind_emit);
      Self.FModelList[I].id_fornecedor      := SQL.getInteger(id_fornecedor);
      Self.FModelList[I].fornecedor      := SQL.getInteger(fornecedor);
      Self.FModelList[I].cod_mod      := SQL.getInteger(cod_mod);
      Self.FModelList[I].cod_sit      := SQL.getInteger(cod_sit);
      Self.FModelList[I].ser      := SQL.getInteger(ser);
      Self.FModelList[I].sub      := SQL.getInteger(sub);
      Self.FModelList[I].cod_cons      := SQL.getInteger(cod_cons);
      Self.FModelList[I].num_doc      := SQL.getInteger(num_doc);
      Self.FModelList[I].dt_doc      := SQL.getInteger(dt_doc);
      Self.FModelList[I].dt_e_s      := SQL.getInteger(dt_e_s);
      Self.FModelList[I].vl_doc      := SQL.getInteger(vl_doc);
      Self.FModelList[I].vl_desc      := SQL.getInteger(vl_desc);
      Self.FModelList[I].vl_forn      := SQL.getInteger(vl_forn);
      Self.FModelList[I].vl_serv_nt      := SQL.getInteger(vl_serv_nt);
      Self.FModelList[I].vl_terc      := SQL.getInteger(vl_terc);
      Self.FModelList[I].vl_da      := SQL.getInteger(vl_da);
      Self.FModelList[I].vl_bc_icms      := SQL.getInteger(vl_bc_icms);
      Self.FModelList[I].vl_icms      := SQL.getInteger(vl_icms);
      Self.FModelList[I].vl_bc_icms_st      := SQL.getInteger(vl_bc_icms_st);
      Self.FModelList[I].vl_icms_st      := SQL.getInteger(vl_icms_st);
      Self.FModelList[I].cod_inf      := SQL.getInteger(cod_inf);
      Self.FModelList[I].vl_pis      := SQL.getInteger(vl_pis);
      Self.FModelList[I].vl_cofins      := SQL.getInteger(vl_cofins);
      Self.FModelList[I].tp_ligacao      := SQL.getInteger(tp_ligacao);
      Self.FModelList[I].cod_grupo_tensao      := SQL.getInteger(cod_grupo_tensao);
      Self.FModelList[I].i_cod_item      := SQL.getInteger(i_cod_item);
      Self.FModelList[I].i_cod_class      := SQL.getInteger(i_cod_class);
      Self.FModelList[I].i_qtd      := SQL.getInteger(i_qtd);
      Self.FModelList[I].i_vl_item      := SQL.getInteger(i_vl_item);
      Self.FModelList[I].i_aliq_icms      := SQL.getInteger(i_aliq_icms);
      Self.FModelList[I].i_cst_icms      := SQL.getInteger(i_cst_icms);
      Self.FModelList[I].cst_pis      := SQL.getInteger(cst_pis);
      Self.FModelList[I].cst_cofins      := SQL.getInteger(cst_cofins);
      Self.FModelList[I].aliq_pis      := SQL.getInteger(aliq_pis);
      Self.FModelList[I].aliq_cofins      := SQL.getInteger(aliq_cofins);
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

  Self.FModel := ( Model as TModelERPc );             

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
  SQL.Update(c500);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
