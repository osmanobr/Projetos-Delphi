unit Model.ERP.acerto_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacertoitem = class(TModelBase)

private
    Fid : Integer;
    Fqtd_acessos : Integer;
    Fdata_instalacao : TDateTime;
    Fdata_acesso : TDateTime;
    Fbloqueio : WideString;
    Fdata_senha : TDateTime;
    Fversao : WideString;
    Fdata_backup : TDateTime;
    Fchave : WideString;
    Freset : WideString;
    Fhash : WideString;
    Fvia1 : WideString;
    Fvia2 : WideString;
    Fvia3 : WideString;
    Fversao_ibpt : WideString;
    Fversao_ncm : WideString;

    procedure Setid(const Value: Integer);
    procedure Setqtd_acessos(const Value: Integer);
    procedure Setdata_instalacao(const Value: TDateTime);
    procedure Setdata_acesso(const Value: TDateTime);
    procedure Setbloqueio(const Value: WideString);
    procedure Setdata_senha(const Value: TDateTime);
    procedure Setversao(const Value: WideString);
    procedure Setdata_backup(const Value: TDateTime);
    procedure Setchave(const Value: WideString);
    procedure Setreset(const Value: WideString);
    procedure Sethash(const Value: WideString);
    procedure Setvia1(const Value: WideString);
    procedure Setvia2(const Value: WideString);
    procedure Setvia3(const Value: WideString);
    procedure Setversao_ibpt(const Value: WideString);
    procedure Setversao_ncm(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property qtd_acessos     : Integer read Fqtd_acessos write Setqtd_acessos;
    property data_instalacao     : TDateTime read Fdata_instalacao write Setdata_instalacao;
    property data_acesso     : TDateTime read Fdata_acesso write Setdata_acesso;
    property bloqueio     : WideString read Fbloqueio write Setbloqueio;
    property data_senha     : TDateTime read Fdata_senha write Setdata_senha;
    property versao     : WideString read Fversao write Setversao;
    property data_backup     : TDateTime read Fdata_backup write Setdata_backup;
    property chave     : WideString read Fchave write Setchave;
    property reset     : WideString read Freset write Setreset;
    property hash     : WideString read Fhash write Sethash;
    property via1     : WideString read Fvia1 write Setvia1;
    property via2     : WideString read Fvia2 write Setvia2;
    property via3     : WideString read Fvia3 write Setvia3;
    property versao_ibpt     : WideString read Fversao_ibpt write Setversao_ibpt;
    property versao_ncm     : WideString read Fversao_ncm write Setversao_ncm;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPacertoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacertoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacertoitem(Model).id;
Self.Fqtd_acessos         := TModelERPacertoitem(Model).qtd_acessos;
Self.Fdata_instalacao         := TModelERPacertoitem(Model).data_instalacao;
Self.Fdata_acesso         := TModelERPacertoitem(Model).data_acesso;
Self.Fbloqueio         := TModelERPacertoitem(Model).bloqueio;
Self.Fdata_senha         := TModelERPacertoitem(Model).data_senha;
Self.Fversao         := TModelERPacertoitem(Model).versao;
Self.Fdata_backup         := TModelERPacertoitem(Model).data_backup;
Self.Fchave         := TModelERPacertoitem(Model).chave;
Self.Freset         := TModelERPacertoitem(Model).reset;
Self.Fhash         := TModelERPacertoitem(Model).hash;
Self.Fvia1         := TModelERPacertoitem(Model).via1;
Self.Fvia2         := TModelERPacertoitem(Model).via2;
Self.Fvia3         := TModelERPacertoitem(Model).via3;
Self.Fversao_ibpt         := TModelERPacertoitem(Model).versao_ibpt;
Self.Fversao_ncm         := TModelERPacertoitem(Model).versao_ncm;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacertoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacertoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacertoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacertoitem.Setqtd_acessos(const Value: Boolean);   
begin                
  Fqtd_acessos := Value;   
end;                 

procedure TModelERPacertoitem.Setdata_instalacao(const Value: Boolean);   
begin                
  Fdata_instalacao := Value;   
end;                 

procedure TModelERPacertoitem.Setdata_acesso(const Value: Boolean);   
begin                
  Fdata_acesso := Value;   
end;                 

procedure TModelERPacertoitem.Setbloqueio(const Value: Boolean);   
begin                
  Fbloqueio := Value;   
end;                 

procedure TModelERPacertoitem.Setdata_senha(const Value: Boolean);   
begin                
  Fdata_senha := Value;   
end;                 

procedure TModelERPacertoitem.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPacertoitem.Setdata_backup(const Value: Boolean);   
begin                
  Fdata_backup := Value;   
end;                 

procedure TModelERPacertoitem.Setchave(const Value: Boolean);   
begin                
  Fchave := Value;   
end;                 

procedure TModelERPacertoitem.Setreset(const Value: Boolean);   
begin                
  Freset := Value;   
end;                 

procedure TModelERPacertoitem.Sethash(const Value: Boolean);   
begin                
  Fhash := Value;   
end;                 

procedure TModelERPacertoitem.Setvia1(const Value: Boolean);   
begin                
  Fvia1 := Value;   
end;                 

procedure TModelERPacertoitem.Setvia2(const Value: Boolean);   
begin                
  Fvia2 := Value;   
end;                 

procedure TModelERPacertoitem.Setvia3(const Value: Boolean);   
begin                
  Fvia3 := Value;   
end;                 

procedure TModelERPacertoitem.Setversao_ibpt(const Value: Boolean);   
begin                
  Fversao_ibpt := Value;   
end;                 

procedure TModelERPacertoitem.Setversao_ncm(const Value: Boolean);   
begin                
  Fversao_ncm := Value;   
end;                 


end.
