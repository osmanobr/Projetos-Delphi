
unit Dal.ERP.lote_controle_item;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.lote_controle_item, DalBaseCRUD,
  SQLQuery;

type
  TDalERPlotecontroleitem = class(TDalBaseCRUD)
  private 
    FModel : TModelERPlotecontroleitem;  
    FModelList : TModelBaseList<TModelERPlotecontroleitem>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPlotecontroleitem.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPlotecontroleitem) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlotecontroleitem );              

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

function TDalERPlotecontroleitem.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPlotecontroleitem) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPlotecontroleitem ); 

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
  SQL.Insert(mapa_resumo).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.numero).Next;
     SQL.Field(Self.FModel.data).Next;
     SQL.Field(Self.FModel.ecf).Next;
     SQL.Field(Self.FModel.coo_inicial).Next;
     SQL.Field(Self.FModel.coo_final).Next;
     SQL.Field(Self.FModel.gt_inicial).Next;
     SQL.Field(Self.FModel.gt_final).Next;
     SQL.Field(Self.FModel.cancelamento).Next;
     SQL.Field(Self.FModel.desconto).Next;
     SQL.Field(Self.FModel.isento).Next;
     SQL.Field(Self.FModel.naoincidencia).Next;
     SQL.Field(Self.FModel.st).Next;
     SQL.Field(Self.FModel.aliq_1).Next;
     SQL.Field(Self.FModel.aliq_2).Next;
     SQL.Field(Self.FModel.aliq_3).Next;
     SQL.Field(Self.FModel.aliq_4).Next;
     SQL.Field(Self.FModel.aliq_5).Next;
     SQL.Field(Self.FModel.aliq_6).Next;
     SQL.Field(Self.FModel.imposto).Next;
     SQL.Field(Self.FModel.contador_reducao).Next;
     SQL.Field(Self.FModel.click).Next;
     SQL.Field(Self.FModel.obs).Next;
     SQL.Field(Self.FModel.serie_ecf).Next;
     SQL.Field(Self.FModel.cro).Next;
     SQL.Field(Self.FModel.venda_bruta).Next;
     SQL.Field(Self.FModel.venda_liquida).Next;
     SQL.Field(Self.FModel.transmitida).Next;
     SQL.Field(Self.FModel.aliq_7).Next;
     SQL.Field(Self.FModel.aliq_8).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPlotecontroleitem.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPlotecontroleitem) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPlotecontroleitem );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(mapa_resumo);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPlotecontroleitem>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPlotecontroleitem.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].numero      := SQL.getInteger(numero);
      Self.FModelList[I].data      := SQL.getInteger(data);
      Self.FModelList[I].ecf      := SQL.getInteger(ecf);
      Self.FModelList[I].coo_inicial      := SQL.getInteger(coo_inicial);
      Self.FModelList[I].coo_final      := SQL.getInteger(coo_final);
      Self.FModelList[I].gt_inicial      := SQL.getInteger(gt_inicial);
      Self.FModelList[I].gt_final      := SQL.getInteger(gt_final);
      Self.FModelList[I].cancelamento      := SQL.getInteger(cancelamento);
      Self.FModelList[I].desconto      := SQL.getInteger(desconto);
      Self.FModelList[I].isento      := SQL.getInteger(isento);
      Self.FModelList[I].naoincidencia      := SQL.getInteger(naoincidencia);
      Self.FModelList[I].st      := SQL.getInteger(st);
      Self.FModelList[I].aliq_1      := SQL.getInteger(aliq_1);
      Self.FModelList[I].aliq_2      := SQL.getInteger(aliq_2);
      Self.FModelList[I].aliq_3      := SQL.getInteger(aliq_3);
      Self.FModelList[I].aliq_4      := SQL.getInteger(aliq_4);
      Self.FModelList[I].aliq_5      := SQL.getInteger(aliq_5);
      Self.FModelList[I].aliq_6      := SQL.getInteger(aliq_6);
      Self.FModelList[I].imposto      := SQL.getInteger(imposto);
      Self.FModelList[I].contador_reducao      := SQL.getInteger(contador_reducao);
      Self.FModelList[I].click      := SQL.getInteger(click);
      Self.FModelList[I].obs      := SQL.getInteger(obs);
      Self.FModelList[I].serie_ecf      := SQL.getInteger(serie_ecf);
      Self.FModelList[I].cro      := SQL.getInteger(cro);
      Self.FModelList[I].venda_bruta      := SQL.getInteger(venda_bruta);
      Self.FModelList[I].venda_liquida      := SQL.getInteger(venda_liquida);
      Self.FModelList[I].transmitida      := SQL.getInteger(transmitida);
      Self.FModelList[I].aliq_7      := SQL.getInteger(aliq_7);
      Self.FModelList[I].aliq_8      := SQL.getInteger(aliq_8);
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

  Self.FModel := ( Model as TModelERPlotecontroleitem );             

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
  SQL.Update(mapa_resumo);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
