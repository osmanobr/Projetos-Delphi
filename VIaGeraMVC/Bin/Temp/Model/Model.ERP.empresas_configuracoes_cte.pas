unit Model.ERP.empresas_configuracoes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasconfiguracoes = class(TModelBase)

private
    Fid : Integer;
    Fcert_caminho : WideString;
    Fcert_senha : WideString;
    Fcert_numserie : WideString;
    Fge_dacte : indefinido;
    Fge_formaemissao : indefinido;
    Fge_logomarca : indefinido;
    Fge_salvar : Boolean;
    Fge_pathsalvar : WideString;
    Fwebs_uf : WideString;
    Fwebs_ambiente : indefinido;
    Fwebs_visualizar : Boolean;
    Fwebs_ssltype : indefinido;
    Fpro_host : WideString;
    Fpro_porta : WideString;
    Fpro_user : WideString;
    Fpro_pass : WideString;
    Femi_cnpj : WideString;
    Femi_ie : WideString;
    Femi_razaosocial : WideString;
    Femi_fantasia : WideString;
    Femi_fone : WideString;
    Femi_cep : WideString;
    Femi_logradouro : WideString;
    Femi_numero : WideString;
    Femi_complemento : WideString;
    Femi_bairro : WideString;
    Femi_codcidade : WideString;
    Femi_cidade : WideString;
    Femi_uf : WideString;
    Fema_host : WideString;
    Fema_port : WideString;
    Fema_user : WideString;
    Fema_pass : WideString;
    Fema_assunto : WideString;
    Fema_ssl : Boolean;
    Fema_mensagem : indefinido;
    Fnumserie : Integer;
    Ftipocte : Integer;
    Ftiposervico : Integer;
    Fregimesimples : Integer;
    Fmodelocte : Integer;
    Finformar_resp_tecnico : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setcert_caminho(const Value: WideString);
    procedure Setcert_senha(const Value: WideString);
    procedure Setcert_numserie(const Value: WideString);
    procedure Setge_dacte(const Value: indefinido);
    procedure Setge_formaemissao(const Value: indefinido);
    procedure Setge_logomarca(const Value: indefinido);
    procedure Setge_salvar(const Value: Boolean);
    procedure Setge_pathsalvar(const Value: WideString);
    procedure Setwebs_uf(const Value: WideString);
    procedure Setwebs_ambiente(const Value: indefinido);
    procedure Setwebs_visualizar(const Value: Boolean);
    procedure Setwebs_ssltype(const Value: indefinido);
    procedure Setpro_host(const Value: WideString);
    procedure Setpro_porta(const Value: WideString);
    procedure Setpro_user(const Value: WideString);
    procedure Setpro_pass(const Value: WideString);
    procedure Setemi_cnpj(const Value: WideString);
    procedure Setemi_ie(const Value: WideString);
    procedure Setemi_razaosocial(const Value: WideString);
    procedure Setemi_fantasia(const Value: WideString);
    procedure Setemi_fone(const Value: WideString);
    procedure Setemi_cep(const Value: WideString);
    procedure Setemi_logradouro(const Value: WideString);
    procedure Setemi_numero(const Value: WideString);
    procedure Setemi_complemento(const Value: WideString);
    procedure Setemi_bairro(const Value: WideString);
    procedure Setemi_codcidade(const Value: WideString);
    procedure Setemi_cidade(const Value: WideString);
    procedure Setemi_uf(const Value: WideString);
    procedure Setema_host(const Value: WideString);
    procedure Setema_port(const Value: WideString);
    procedure Setema_user(const Value: WideString);
    procedure Setema_pass(const Value: WideString);
    procedure Setema_assunto(const Value: WideString);
    procedure Setema_ssl(const Value: Boolean);
    procedure Setema_mensagem(const Value: indefinido);
    procedure Setnumserie(const Value: Integer);
    procedure Settipocte(const Value: Integer);
    procedure Settiposervico(const Value: Integer);
    procedure Setregimesimples(const Value: Integer);
    procedure Setmodelocte(const Value: Integer);
    procedure Setinformar_resp_tecnico(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property cert_caminho     : WideString read Fcert_caminho write Setcert_caminho;
    property cert_senha     : WideString read Fcert_senha write Setcert_senha;
    property cert_numserie     : WideString read Fcert_numserie write Setcert_numserie;
    property ge_dacte     : indefinido read Fge_dacte write Setge_dacte;
    property ge_formaemissao     : indefinido read Fge_formaemissao write Setge_formaemissao;
    property ge_logomarca     : indefinido read Fge_logomarca write Setge_logomarca;
    property ge_salvar     : Boolean read Fge_salvar write Setge_salvar;
    property ge_pathsalvar     : WideString read Fge_pathsalvar write Setge_pathsalvar;
    property webs_uf     : WideString read Fwebs_uf write Setwebs_uf;
    property webs_ambiente     : indefinido read Fwebs_ambiente write Setwebs_ambiente;
    property webs_visualizar     : Boolean read Fwebs_visualizar write Setwebs_visualizar;
    property webs_ssltype     : indefinido read Fwebs_ssltype write Setwebs_ssltype;
    property pro_host     : WideString read Fpro_host write Setpro_host;
    property pro_porta     : WideString read Fpro_porta write Setpro_porta;
    property pro_user     : WideString read Fpro_user write Setpro_user;
    property pro_pass     : WideString read Fpro_pass write Setpro_pass;
    property emi_cnpj     : WideString read Femi_cnpj write Setemi_cnpj;
    property emi_ie     : WideString read Femi_ie write Setemi_ie;
    property emi_razaosocial     : WideString read Femi_razaosocial write Setemi_razaosocial;
    property emi_fantasia     : WideString read Femi_fantasia write Setemi_fantasia;
    property emi_fone     : WideString read Femi_fone write Setemi_fone;
    property emi_cep     : WideString read Femi_cep write Setemi_cep;
    property emi_logradouro     : WideString read Femi_logradouro write Setemi_logradouro;
    property emi_numero     : WideString read Femi_numero write Setemi_numero;
    property emi_complemento     : WideString read Femi_complemento write Setemi_complemento;
    property emi_bairro     : WideString read Femi_bairro write Setemi_bairro;
    property emi_codcidade     : WideString read Femi_codcidade write Setemi_codcidade;
    property emi_cidade     : WideString read Femi_cidade write Setemi_cidade;
    property emi_uf     : WideString read Femi_uf write Setemi_uf;
    property ema_host     : WideString read Fema_host write Setema_host;
    property ema_port     : WideString read Fema_port write Setema_port;
    property ema_user     : WideString read Fema_user write Setema_user;
    property ema_pass     : WideString read Fema_pass write Setema_pass;
    property ema_assunto     : WideString read Fema_assunto write Setema_assunto;
    property ema_ssl     : Boolean read Fema_ssl write Setema_ssl;
    property ema_mensagem     : indefinido read Fema_mensagem write Setema_mensagem;
    property numserie     : Integer read Fnumserie write Setnumserie;
    property tipocte     : Integer read Ftipocte write Settipocte;
    property tiposervico     : Integer read Ftiposervico write Settiposervico;
    property regimesimples     : Integer read Fregimesimples write Setregimesimples;
    property modelocte     : Integer read Fmodelocte write Setmodelocte;
    property informar_resp_tecnico     : Boolean read Finformar_resp_tecnico write Setinformar_resp_tecnico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasconfiguracoes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasconfiguracoes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasconfiguracoes(Model).id;
Self.Fcert_caminho         := TModelERPempresasconfiguracoes(Model).cert_caminho;
Self.Fcert_senha         := TModelERPempresasconfiguracoes(Model).cert_senha;
Self.Fcert_numserie         := TModelERPempresasconfiguracoes(Model).cert_numserie;
Self.Fge_dacte         := TModelERPempresasconfiguracoes(Model).ge_dacte;
Self.Fge_formaemissao         := TModelERPempresasconfiguracoes(Model).ge_formaemissao;
Self.Fge_logomarca         := TModelERPempresasconfiguracoes(Model).ge_logomarca;
Self.Fge_salvar         := TModelERPempresasconfiguracoes(Model).ge_salvar;
Self.Fge_pathsalvar         := TModelERPempresasconfiguracoes(Model).ge_pathsalvar;
Self.Fwebs_uf         := TModelERPempresasconfiguracoes(Model).webs_uf;
Self.Fwebs_ambiente         := TModelERPempresasconfiguracoes(Model).webs_ambiente;
Self.Fwebs_visualizar         := TModelERPempresasconfiguracoes(Model).webs_visualizar;
Self.Fwebs_ssltype         := TModelERPempresasconfiguracoes(Model).webs_ssltype;
Self.Fpro_host         := TModelERPempresasconfiguracoes(Model).pro_host;
Self.Fpro_porta         := TModelERPempresasconfiguracoes(Model).pro_porta;
Self.Fpro_user         := TModelERPempresasconfiguracoes(Model).pro_user;
Self.Fpro_pass         := TModelERPempresasconfiguracoes(Model).pro_pass;
Self.Femi_cnpj         := TModelERPempresasconfiguracoes(Model).emi_cnpj;
Self.Femi_ie         := TModelERPempresasconfiguracoes(Model).emi_ie;
Self.Femi_razaosocial         := TModelERPempresasconfiguracoes(Model).emi_razaosocial;
Self.Femi_fantasia         := TModelERPempresasconfiguracoes(Model).emi_fantasia;
Self.Femi_fone         := TModelERPempresasconfiguracoes(Model).emi_fone;
Self.Femi_cep         := TModelERPempresasconfiguracoes(Model).emi_cep;
Self.Femi_logradouro         := TModelERPempresasconfiguracoes(Model).emi_logradouro;
Self.Femi_numero         := TModelERPempresasconfiguracoes(Model).emi_numero;
Self.Femi_complemento         := TModelERPempresasconfiguracoes(Model).emi_complemento;
Self.Femi_bairro         := TModelERPempresasconfiguracoes(Model).emi_bairro;
Self.Femi_codcidade         := TModelERPempresasconfiguracoes(Model).emi_codcidade;
Self.Femi_cidade         := TModelERPempresasconfiguracoes(Model).emi_cidade;
Self.Femi_uf         := TModelERPempresasconfiguracoes(Model).emi_uf;
Self.Fema_host         := TModelERPempresasconfiguracoes(Model).ema_host;
Self.Fema_port         := TModelERPempresasconfiguracoes(Model).ema_port;
Self.Fema_user         := TModelERPempresasconfiguracoes(Model).ema_user;
Self.Fema_pass         := TModelERPempresasconfiguracoes(Model).ema_pass;
Self.Fema_assunto         := TModelERPempresasconfiguracoes(Model).ema_assunto;
Self.Fema_ssl         := TModelERPempresasconfiguracoes(Model).ema_ssl;
Self.Fema_mensagem         := TModelERPempresasconfiguracoes(Model).ema_mensagem;
Self.Fnumserie         := TModelERPempresasconfiguracoes(Model).numserie;
Self.Ftipocte         := TModelERPempresasconfiguracoes(Model).tipocte;
Self.Ftiposervico         := TModelERPempresasconfiguracoes(Model).tiposervico;
Self.Fregimesimples         := TModelERPempresasconfiguracoes(Model).regimesimples;
Self.Fmodelocte         := TModelERPempresasconfiguracoes(Model).modelocte;
Self.Finformar_resp_tecnico         := TModelERPempresasconfiguracoes(Model).informar_resp_tecnico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasconfiguracoes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasconfiguracoes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasconfiguracoes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setcert_caminho(const Value: Boolean);   
begin                
  Fcert_caminho := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setcert_senha(const Value: Boolean);   
begin                
  Fcert_senha := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setcert_numserie(const Value: Boolean);   
begin                
  Fcert_numserie := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setge_dacte(const Value: Boolean);   
begin                
  Fge_dacte := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setge_formaemissao(const Value: Boolean);   
begin                
  Fge_formaemissao := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setge_logomarca(const Value: Boolean);   
begin                
  Fge_logomarca := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setge_salvar(const Value: Boolean);   
begin                
  Fge_salvar := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setge_pathsalvar(const Value: Boolean);   
begin                
  Fge_pathsalvar := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setwebs_uf(const Value: Boolean);   
begin                
  Fwebs_uf := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setwebs_ambiente(const Value: Boolean);   
begin                
  Fwebs_ambiente := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setwebs_visualizar(const Value: Boolean);   
begin                
  Fwebs_visualizar := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setwebs_ssltype(const Value: Boolean);   
begin                
  Fwebs_ssltype := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setpro_host(const Value: Boolean);   
begin                
  Fpro_host := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setpro_porta(const Value: Boolean);   
begin                
  Fpro_porta := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setpro_user(const Value: Boolean);   
begin                
  Fpro_user := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setpro_pass(const Value: Boolean);   
begin                
  Fpro_pass := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_cnpj(const Value: Boolean);   
begin                
  Femi_cnpj := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_ie(const Value: Boolean);   
begin                
  Femi_ie := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_razaosocial(const Value: Boolean);   
begin                
  Femi_razaosocial := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_fantasia(const Value: Boolean);   
begin                
  Femi_fantasia := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_fone(const Value: Boolean);   
begin                
  Femi_fone := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_cep(const Value: Boolean);   
begin                
  Femi_cep := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_logradouro(const Value: Boolean);   
begin                
  Femi_logradouro := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_numero(const Value: Boolean);   
begin                
  Femi_numero := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_complemento(const Value: Boolean);   
begin                
  Femi_complemento := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_bairro(const Value: Boolean);   
begin                
  Femi_bairro := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_codcidade(const Value: Boolean);   
begin                
  Femi_codcidade := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_cidade(const Value: Boolean);   
begin                
  Femi_cidade := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setemi_uf(const Value: Boolean);   
begin                
  Femi_uf := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_host(const Value: Boolean);   
begin                
  Fema_host := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_port(const Value: Boolean);   
begin                
  Fema_port := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_user(const Value: Boolean);   
begin                
  Fema_user := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_pass(const Value: Boolean);   
begin                
  Fema_pass := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_assunto(const Value: Boolean);   
begin                
  Fema_assunto := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_ssl(const Value: Boolean);   
begin                
  Fema_ssl := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setema_mensagem(const Value: Boolean);   
begin                
  Fema_mensagem := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setnumserie(const Value: Boolean);   
begin                
  Fnumserie := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Settipocte(const Value: Boolean);   
begin                
  Ftipocte := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Settiposervico(const Value: Boolean);   
begin                
  Ftiposervico := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setregimesimples(const Value: Boolean);   
begin                
  Fregimesimples := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setmodelocte(const Value: Boolean);   
begin                
  Fmodelocte := Value;   
end;                 

procedure TModelERPempresasconfiguracoes.Setinformar_resp_tecnico(const Value: Boolean);   
begin                
  Finformar_resp_tecnico := Value;   
end;                 


end.
