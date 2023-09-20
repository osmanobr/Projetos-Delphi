
unit Dal.ERP.os_servico;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.os_servico, DalBaseCRUD,
  SQLQuery;

type
  TDalERPosservico = class(TDalBaseCRUD)
  private 
    FModel : TModelERPosservico;  
    FModelList : TModelBaseList<TModelERPosservico>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPosservico.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPosservico) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosservico );              

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

function TDalERPosservico.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPosservico) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPosservico ); 

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
  SQL.Insert(paf_control).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.a2).Next;
     SQL.Field(Self.FModel.p2).Next;
     SQL.Field(Self.FModel.e2).Next;
     SQL.Field(Self.FModel.e3).Next;
     SQL.Field(Self.FModel.d2).Next;
     SQL.Field(Self.FModel.d3).Next;
     SQL.Field(Self.FModel.d4).Next;
     SQL.Field(Self.FModel.b2).Next;
     SQL.Field(Self.FModel.c2).Next;
     SQL.Field(Self.FModel.f2).Next;
     SQL.Field(Self.FModel.f3).Next;
     SQL.Field(Self.FModel.f4).Next;
     SQL.Field(Self.FModel.t2).Next;
     SQL.Field(Self.FModel.m2).Next;
     SQL.Field(Self.FModel.l2).Next;
     SQL.Field(Self.FModel.g2).Next;
     SQL.Field(Self.FModel.h2).Next;
     SQL.Field(Self.FModel.s2).Next;
     SQL.Field(Self.FModel.s3).Next;
     SQL.Field(Self.FModel.r1).Next;
     SQL.Field(Self.FModel.r2).Next;
     SQL.Field(Self.FModel.r3).Next;
     SQL.Field(Self.FModel.r4).Next;
     SQL.Field(Self.FModel.r5).Next;
     SQL.Field(Self.FModel.r6).Next;
     SQL.Field(Self.FModel.r7).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPosservico.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPosservico) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPosservico );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(paf_control);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPosservico>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPosservico.Create ); 
      Self.FModelList[I].a2      := SQL.getInteger(a2);
      Self.FModelList[I].p2      := SQL.getInteger(p2);
      Self.FModelList[I].e2      := SQL.getInteger(e2);
      Self.FModelList[I].e3      := SQL.getInteger(e3);
      Self.FModelList[I].d2      := SQL.getInteger(d2);
      Self.FModelList[I].d3      := SQL.getInteger(d3);
      Self.FModelList[I].d4      := SQL.getInteger(d4);
      Self.FModelList[I].b2      := SQL.getInteger(b2);
      Self.FModelList[I].c2      := SQL.getInteger(c2);
      Self.FModelList[I].f2      := SQL.getInteger(f2);
      Self.FModelList[I].f3      := SQL.getInteger(f3);
      Self.FModelList[I].f4      := SQL.getInteger(f4);
      Self.FModelList[I].t2      := SQL.getInteger(t2);
      Self.FModelList[I].m2      := SQL.getInteger(m2);
      Self.FModelList[I].l2      := SQL.getInteger(l2);
      Self.FModelList[I].g2      := SQL.getInteger(g2);
      Self.FModelList[I].h2      := SQL.getInteger(h2);
      Self.FModelList[I].s2      := SQL.getInteger(s2);
      Self.FModelList[I].s3      := SQL.getInteger(s3);
      Self.FModelList[I].r1      := SQL.getInteger(r1);
      Self.FModelList[I].r2      := SQL.getInteger(r2);
      Self.FModelList[I].r3      := SQL.getInteger(r3);
      Self.FModelList[I].r4      := SQL.getInteger(r4);
      Self.FModelList[I].r5      := SQL.getInteger(r5);
      Self.FModelList[I].r6      := SQL.getInteger(r6);
      Self.FModelList[I].r7      := SQL.getInteger(r7);
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

  Self.FModel := ( Model as TModelERPosservico );             

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
  SQL.Update(paf_control);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
