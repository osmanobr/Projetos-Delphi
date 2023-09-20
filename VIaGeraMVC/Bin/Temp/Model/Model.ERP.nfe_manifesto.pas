unit Model.ERP.ncm_update;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPncmupdate = class(TModelBase)

private
    Fid : Integer;
    Fchave : indefinido;
    Fserie : indefinido;
    Fnumero_nf : indefinido;
    Fcnpj_cpf : indefinido;
    Frazao_social : indefinido;
    Fie : indefinido;
    Fdata_emissao : TDateTime;
    Ftipo_operacao : indefinido;
    Fvalor : Double;
    Fsituacao_nfe : Integer;
    Fsituacao_manifesto : Integer;
    Fevento : indefinido;
    Finclusao : indefinido;
    Fprotocolo : indefinido;
    Fregistrado : Boolean;
    Ffornecedor : Boolean;
    Fsituacao_nfe_desc : indefinido;
    Fsituacao_manifesto_desc : indefinido;
    Fid_usuario_estoquista : Integer;
    Fobs_estoquista : indefinido;
    Fdata_conferencia : TDateTime;
    Fxml : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setchave(const Value: indefinido);
    procedure Setserie(const Value: indefinido);
    procedure Setnumero_nf(const Value: indefinido);
    procedure Setcnpj_cpf(const Value: indefinido);
    procedure Setrazao_social(const Value: indefinido);
    procedure Setie(const Value: indefinido);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Settipo_operacao(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setsituacao_nfe(const Value: Integer);
    procedure Setsituacao_manifesto(const Value: Integer);
    procedure Setevento(const Value: indefinido);
    procedure Setinclusao(const Value: indefinido);
    procedure Setprotocolo(const Value: indefinido);
    procedure Setregistrado(const Value: Boolean);
    procedure Setfornecedor(const Value: Boolean);
    procedure Setsituacao_nfe_desc(const Value: indefinido);
    procedure Setsituacao_manifesto_desc(const Value: indefinido);
    procedure Setid_usuario_estoquista(const Value: Integer);
    procedure Setobs_estoquista(const Value: indefinido);
    procedure Setdata_conferencia(const Value: TDateTime);
    procedure Setxml(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property chave     : indefinido read Fchave write Setchave;
    property serie     : indefinido read Fserie write Setserie;
    property numero_nf     : indefinido read Fnumero_nf write Setnumero_nf;
    property cnpj_cpf     : indefinido read Fcnpj_cpf write Setcnpj_cpf;
    property razao_social     : indefinido read Frazao_social write Setrazao_social;
    property ie     : indefinido read Fie write Setie;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property tipo_operacao     : indefinido read Ftipo_operacao write Settipo_operacao;
    property valor     : Double read Fvalor write Setvalor;
    property situacao_nfe     : Integer read Fsituacao_nfe write Setsituacao_nfe;
    property situacao_manifesto     : Integer read Fsituacao_manifesto write Setsituacao_manifesto;
    property evento     : indefinido read Fevento write Setevento;
    property inclusao     : indefinido read Finclusao write Setinclusao;
    property protocolo     : indefinido read Fprotocolo write Setprotocolo;
    property registrado     : Boolean read Fregistrado write Setregistrado;
    property fornecedor     : Boolean read Ffornecedor write Setfornecedor;
    property situacao_nfe_desc     : indefinido read Fsituacao_nfe_desc write Setsituacao_nfe_desc;
    property situacao_manifesto_desc     : indefinido read Fsituacao_manifesto_desc write Setsituacao_manifesto_desc;
    property id_usuario_estoquista     : Integer read Fid_usuario_estoquista write Setid_usuario_estoquista;
    property obs_estoquista     : indefinido read Fobs_estoquista write Setobs_estoquista;
    property data_conferencia     : TDateTime read Fdata_conferencia write Setdata_conferencia;
    property xml     : indefinido read Fxml write Setxml;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPncmupdate.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPncmupdate) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPncmupdate(Model).id;
Self.Fchave         := TModelERPncmupdate(Model).chave;
Self.Fserie         := TModelERPncmupdate(Model).serie;
Self.Fnumero_nf         := TModelERPncmupdate(Model).numero_nf;
Self.Fcnpj_cpf         := TModelERPncmupdate(Model).cnpj_cpf;
Self.Frazao_social         := TModelERPncmupdate(Model).razao_social;
Self.Fie         := TModelERPncmupdate(Model).ie;
Self.Fdata_emissao         := TModelERPncmupdate(Model).data_emissao;
Self.Ftipo_operacao         := TModelERPncmupdate(Model).tipo_operacao;
Self.Fvalor         := TModelERPncmupdate(Model).valor;
Self.Fsituacao_nfe         := TModelERPncmupdate(Model).situacao_nfe;
Self.Fsituacao_manifesto         := TModelERPncmupdate(Model).situacao_manifesto;
Self.Fevento         := TModelERPncmupdate(Model).evento;
Self.Finclusao         := TModelERPncmupdate(Model).inclusao;
Self.Fprotocolo         := TModelERPncmupdate(Model).protocolo;
Self.Fregistrado         := TModelERPncmupdate(Model).registrado;
Self.Ffornecedor         := TModelERPncmupdate(Model).fornecedor;
Self.Fsituacao_nfe_desc         := TModelERPncmupdate(Model).situacao_nfe_desc;
Self.Fsituacao_manifesto_desc         := TModelERPncmupdate(Model).situacao_manifesto_desc;
Self.Fid_usuario_estoquista         := TModelERPncmupdate(Model).id_usuario_estoquista;
Self.Fobs_estoquista         := TModelERPncmupdate(Model).obs_estoquista;
Self.Fdata_conferencia         := TModelERPncmupdate(Model).data_conferencia;
Self.Fxml         := TModelERPncmupdate(Model).xml;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPncmupdate.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPncmupdate.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPncmupdate.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPncmupdate.Setchave(const Value: Boolean);   
begin                
  Fchave := Value;   
end;                 

procedure TModelERPncmupdate.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPncmupdate.Setnumero_nf(const Value: Boolean);   
begin                
  Fnumero_nf := Value;   
end;                 

procedure TModelERPncmupdate.Setcnpj_cpf(const Value: Boolean);   
begin                
  Fcnpj_cpf := Value;   
end;                 

procedure TModelERPncmupdate.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPncmupdate.Setie(const Value: Boolean);   
begin                
  Fie := Value;   
end;                 

procedure TModelERPncmupdate.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPncmupdate.Settipo_operacao(const Value: Boolean);   
begin                
  Ftipo_operacao := Value;   
end;                 

procedure TModelERPncmupdate.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPncmupdate.Setsituacao_nfe(const Value: Boolean);   
begin                
  Fsituacao_nfe := Value;   
end;                 

procedure TModelERPncmupdate.Setsituacao_manifesto(const Value: Boolean);   
begin                
  Fsituacao_manifesto := Value;   
end;                 

procedure TModelERPncmupdate.Setevento(const Value: Boolean);   
begin                
  Fevento := Value;   
end;                 

procedure TModelERPncmupdate.Setinclusao(const Value: Boolean);   
begin                
  Finclusao := Value;   
end;                 

procedure TModelERPncmupdate.Setprotocolo(const Value: Boolean);   
begin                
  Fprotocolo := Value;   
end;                 

procedure TModelERPncmupdate.Setregistrado(const Value: Boolean);   
begin                
  Fregistrado := Value;   
end;                 

procedure TModelERPncmupdate.Setfornecedor(const Value: Boolean);   
begin                
  Ffornecedor := Value;   
end;                 

procedure TModelERPncmupdate.Setsituacao_nfe_desc(const Value: Boolean);   
begin                
  Fsituacao_nfe_desc := Value;   
end;                 

procedure TModelERPncmupdate.Setsituacao_manifesto_desc(const Value: Boolean);   
begin                
  Fsituacao_manifesto_desc := Value;   
end;                 

procedure TModelERPncmupdate.Setid_usuario_estoquista(const Value: Boolean);   
begin                
  Fid_usuario_estoquista := Value;   
end;                 

procedure TModelERPncmupdate.Setobs_estoquista(const Value: Boolean);   
begin                
  Fobs_estoquista := Value;   
end;                 

procedure TModelERPncmupdate.Setdata_conferencia(const Value: Boolean);   
begin                
  Fdata_conferencia := Value;   
end;                 

procedure TModelERPncmupdate.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 


end.
