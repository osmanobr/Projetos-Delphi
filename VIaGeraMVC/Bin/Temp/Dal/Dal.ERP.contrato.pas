
unit Dal.ERP.contas_fixas_geradas_controle;

interface
uses
  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,
  System.Generics.Defaults, System.Generics.Collections, Utilitarios,
  ModelBase, ModelBaseList, Model.ERP.contas_fixas_geradas_controle, DalBaseCRUD,
  SQLQuery;

type
  TDalERPcontasfixasgeradascontrole = class(TDalBaseCRUD)
  private 
    FModel : TModelERPcontasfixasgeradascontrole;  
    FModelList : TModelBaseList<TModelERPcontasfixasgeradascontrole>; 
  public 

    function Delete(Model: TModelBase): Boolean; override; 
    function Insert(Model: TModelBase): Boolean; override; 
    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  
    function Update(Model: TModelBase): Boolean; override; 
  end; 

implementation

function TDalERPcontasfixasgeradascontrole.Delete(Model: TModelBase): Boolean; 
begin                                                                   
  if not (Model is TModelERPcontasfixasgeradascontrole) then                   
  begin                                                                 
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontasfixasgeradascontrole );              

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

function TDalERPcontasfixasgeradascontrole.Insert(Model: TModelBase): Boolean; 
 var teste:widestring;                                                   
begin                                                                    
  if not (Model is TModelERPcontasfixasgeradascontrole) then                   
  begin                                                                  
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                                     
    Exit;                                                                
  end;                                                                   

  Self.FModel := ( Model as TModelERPcontasfixasgeradascontrole ); 

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
  SQL.Insert(contrato).Fields( Self.FModel.ToString ).Values; 
     SQL.Field(Self.FModel.id).Next;
     SQL.Field(Self.FModel.id_empresa).Next;
     SQL.Field(Self.FModel.data_contrato).Next;
     SQL.Field(Self.FModel.valor).Next;
     SQL.Field(Self.FModel.dia_vencimento).Next;
     SQL.Field(Self.FModel.data_rescisao).Next;
     SQL.Field(Self.FModel.id_cliente).Next;
     SQL.Field(Self.FModel.nome_cliente).Next;
     SQL.Field(Self.FModel.cobra_maodeobra).Next;
     SQL.Field(Self.FModel.cobra_peca).Next;
     SQL.Field(Self.FModel.gera_comissao).Next;
     SQL.Field(Self.FModel.bloqueado).Next;
     SQL.Field(Self.FModel.data_bloqueio).Next;
     SQL.Field(Self.FModel.motivo_bloqueio).Next;
     SQL.Field(Self.FModel.servico).Next;
     SQL.Field(Self.FModel.click).Next;
  dbInsert;
  Result := (ListError.Count = 0); 
end; 

function TDalERPcontasfixasgeradascontrole.Select(Model: TModelBase; 
  out ModelList: TModelBaseList<TModelBase>): Boolean;         
var                                                            
  I : Integer;                                                 
begin                                                          
  if not (Model is TModelERPcontasfixasgeradascontrole) then         
  begin                                                        
    ListError.Insert('Data Acess Layer','Tipo de dado incorreto ou Modelo (%s) Não Inicializado!', Self.ClassName); 
    Result := (ListError.Count = 0);                           
    Exit;                                                      
  end;                                                         

  Self.FModel := ( Model as TModelERPcontasfixasgeradascontrole );   
  if Length( Trim( Ordem ) ) = 0 then  
    Ordem := 'id';                   
  if not Assigned( Self.FModel ) then  
  begin                                
    ListError.Insert('Data Acess Layer','Modelo (%s) Não Inicializado!', Self.ClassName);  
    Result := (ListError.Count = 0);   
    Exit;                              
  end;                                 

  SQL.SelectFrom(contrato);

  if Self.FModel.id > 0 then                   
    SQL.Where('id').Equal( Self.FModel.id ); 
  SQL.Order_By(Ordem);                         
  dbSelect;                                    

  if ListError.Count = 0 then                  
  begin                                        
    if Assigned( ModelList ) then              
      FreeAndNil( ModelList );                 

    Self.FModelList := TModelBaseList<TModelERPcontasfixasgeradascontrole>.Create;  
    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               

    while ( not SQL.DataSet.Eof ) do 
    begin                            
      I := Self.FModelList.Add( TModelERPcontasfixasgeradascontrole.Create ); 
      Self.FModelList[I].id      := SQL.getInteger(id);
      Self.FModelList[I].id_empresa      := SQL.getInteger(id_empresa);
      Self.FModelList[I].data_contrato      := SQL.getInteger(data_contrato);
      Self.FModelList[I].valor      := SQL.getInteger(valor);
      Self.FModelList[I].dia_vencimento      := SQL.getInteger(dia_vencimento);
      Self.FModelList[I].data_rescisao      := SQL.getInteger(data_rescisao);
      Self.FModelList[I].id_cliente      := SQL.getInteger(id_cliente);
      Self.FModelList[I].nome_cliente      := SQL.getInteger(nome_cliente);
      Self.FModelList[I].cobra_maodeobra      := SQL.getInteger(cobra_maodeobra);
      Self.FModelList[I].cobra_peca      := SQL.getInteger(cobra_peca);
      Self.FModelList[I].gera_comissao      := SQL.getInteger(gera_comissao);
      Self.FModelList[I].bloqueado      := SQL.getInteger(bloqueado);
      Self.FModelList[I].data_bloqueio      := SQL.getInteger(data_bloqueio);
      Self.FModelList[I].motivo_bloqueio      := SQL.getInteger(motivo_bloqueio);
      Self.FModelList[I].servico      := SQL.getInteger(servico);
      Self.FModelList[I].click      := SQL.getInteger(click);
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

  Self.FModel := ( Model as TModelERPcontasfixasgeradascontrole );             

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
  SQL.Update(contrato);

  dbUpdate; 

  Result := (ListError.Count = 0); 

end;

end. 
