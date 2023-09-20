unit Model.ERP.empresas_configuracoes_nfe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasconfiguracoesnfe = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcpf : WideString;
    Fcnpj : WideString;
    Fcrc : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fcidade : WideString;
    Fnumero : WideString;
    Fcep : WideString;
    Fcomplemento : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Femail : WideString;
    Fcod_ibge : Integer;
    Fid_cidade : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setcrc(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setnumero(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcomplemento(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setemail(const Value: WideString);
    procedure Setcod_ibge(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property cpf     : WideString read Fcpf write Setcpf;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property crc     : WideString read Fcrc write Setcrc;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property uf     : WideString read Fuf write Setuf;
    property cidade     : WideString read Fcidade write Setcidade;
    property numero     : WideString read Fnumero write Setnumero;
    property cep     : WideString read Fcep write Setcep;
    property complemento     : WideString read Fcomplemento write Setcomplemento;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property email     : WideString read Femail write Setemail;
    property cod_ibge     : Integer read Fcod_ibge write Setcod_ibge;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasconfiguracoesnfe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasconfiguracoesnfe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasconfiguracoesnfe(Model).id;
Self.Fid_empresa         := TModelERPempresasconfiguracoesnfe(Model).id_empresa;
Self.Fnome         := TModelERPempresasconfiguracoesnfe(Model).nome;
Self.Fcpf         := TModelERPempresasconfiguracoesnfe(Model).cpf;
Self.Fcnpj         := TModelERPempresasconfiguracoesnfe(Model).cnpj;
Self.Fcrc         := TModelERPempresasconfiguracoesnfe(Model).crc;
Self.Fendereco         := TModelERPempresasconfiguracoesnfe(Model).endereco;
Self.Fbairro         := TModelERPempresasconfiguracoesnfe(Model).bairro;
Self.Fuf         := TModelERPempresasconfiguracoesnfe(Model).uf;
Self.Fcidade         := TModelERPempresasconfiguracoesnfe(Model).cidade;
Self.Fnumero         := TModelERPempresasconfiguracoesnfe(Model).numero;
Self.Fcep         := TModelERPempresasconfiguracoesnfe(Model).cep;
Self.Fcomplemento         := TModelERPempresasconfiguracoesnfe(Model).complemento;
Self.Ftelefone         := TModelERPempresasconfiguracoesnfe(Model).telefone;
Self.Fcelular         := TModelERPempresasconfiguracoesnfe(Model).celular;
Self.Femail         := TModelERPempresasconfiguracoesnfe(Model).email;
Self.Fcod_ibge         := TModelERPempresasconfiguracoesnfe(Model).cod_ibge;
Self.Fid_cidade         := TModelERPempresasconfiguracoesnfe(Model).id_cidade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasconfiguracoesnfe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasconfiguracoesnfe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasconfiguracoesnfe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcrc(const Value: Boolean);   
begin                
  Fcrc := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcomplemento(const Value: Boolean);   
begin                
  Fcomplemento := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setcod_ibge(const Value: Boolean);   
begin                
  Fcod_ibge := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfe.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 


end.
