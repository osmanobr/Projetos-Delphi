unit Model.ERP.empresas_configuracoes_cte;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasconfiguracoescte = class(TModelBase)

private
    Fid : Integer;
    Fcert_caminho : WideString;
    Fcert_senha : WideString;
    Fcert_numserie : WideString;
    Fge_dacte : indefinido;
    Fge_ambiente : indefinido;
    Fge_formaemissao : indefinido;
    Fge_logomarca : indefinido;
    Fge_salvar : Boolean;
    Fge_pathsalvar : WideString;
    Fge_versao_df : indefinido;
    Fwebs_uf : WideString;
    Fwebs_ambiente : indefinido;
    Fwebs_visualizar : Boolean;
    Fwebs_ssltype : indefinido;
    Fpro_host : WideString;
    Fpro_porta : WideString;
    Fpro_user : WideString;
    Fpro_pass : WideString;
    Ftipoemi : Integer;
    Fserie : Integer;

    procedure Setid(const Value: Integer);
    procedure Setcert_caminho(const Value: WideString);
    procedure Setcert_senha(const Value: WideString);
    procedure Setcert_numserie(const Value: WideString);
    procedure Setge_dacte(const Value: indefinido);
    procedure Setge_ambiente(const Value: indefinido);
    procedure Setge_formaemissao(const Value: indefinido);
    procedure Setge_logomarca(const Value: indefinido);
    procedure Setge_salvar(const Value: Boolean);
    procedure Setge_pathsalvar(const Value: WideString);
    procedure Setge_versao_df(const Value: indefinido);
    procedure Setwebs_uf(const Value: WideString);
    procedure Setwebs_ambiente(const Value: indefinido);
    procedure Setwebs_visualizar(const Value: Boolean);
    procedure Setwebs_ssltype(const Value: indefinido);
    procedure Setpro_host(const Value: WideString);
    procedure Setpro_porta(const Value: WideString);
    procedure Setpro_user(const Value: WideString);
    procedure Setpro_pass(const Value: WideString);
    procedure Settipoemi(const Value: Integer);
    procedure Setserie(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property cert_caminho     : WideString read Fcert_caminho write Setcert_caminho;
    property cert_senha     : WideString read Fcert_senha write Setcert_senha;
    property cert_numserie     : WideString read Fcert_numserie write Setcert_numserie;
    property ge_dacte     : indefinido read Fge_dacte write Setge_dacte;
    property ge_ambiente     : indefinido read Fge_ambiente write Setge_ambiente;
    property ge_formaemissao     : indefinido read Fge_formaemissao write Setge_formaemissao;
    property ge_logomarca     : indefinido read Fge_logomarca write Setge_logomarca;
    property ge_salvar     : Boolean read Fge_salvar write Setge_salvar;
    property ge_pathsalvar     : WideString read Fge_pathsalvar write Setge_pathsalvar;
    property ge_versao_df     : indefinido read Fge_versao_df write Setge_versao_df;
    property webs_uf     : WideString read Fwebs_uf write Setwebs_uf;
    property webs_ambiente     : indefinido read Fwebs_ambiente write Setwebs_ambiente;
    property webs_visualizar     : Boolean read Fwebs_visualizar write Setwebs_visualizar;
    property webs_ssltype     : indefinido read Fwebs_ssltype write Setwebs_ssltype;
    property pro_host     : WideString read Fpro_host write Setpro_host;
    property pro_porta     : WideString read Fpro_porta write Setpro_porta;
    property pro_user     : WideString read Fpro_user write Setpro_user;
    property pro_pass     : WideString read Fpro_pass write Setpro_pass;
    property tipoemi     : Integer read Ftipoemi write Settipoemi;
    property serie     : Integer read Fserie write Setserie;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasconfiguracoescte.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasconfiguracoescte) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasconfiguracoescte(Model).id;
Self.Fcert_caminho         := TModelERPempresasconfiguracoescte(Model).cert_caminho;
Self.Fcert_senha         := TModelERPempresasconfiguracoescte(Model).cert_senha;
Self.Fcert_numserie         := TModelERPempresasconfiguracoescte(Model).cert_numserie;
Self.Fge_dacte         := TModelERPempresasconfiguracoescte(Model).ge_dacte;
Self.Fge_ambiente         := TModelERPempresasconfiguracoescte(Model).ge_ambiente;
Self.Fge_formaemissao         := TModelERPempresasconfiguracoescte(Model).ge_formaemissao;
Self.Fge_logomarca         := TModelERPempresasconfiguracoescte(Model).ge_logomarca;
Self.Fge_salvar         := TModelERPempresasconfiguracoescte(Model).ge_salvar;
Self.Fge_pathsalvar         := TModelERPempresasconfiguracoescte(Model).ge_pathsalvar;
Self.Fge_versao_df         := TModelERPempresasconfiguracoescte(Model).ge_versao_df;
Self.Fwebs_uf         := TModelERPempresasconfiguracoescte(Model).webs_uf;
Self.Fwebs_ambiente         := TModelERPempresasconfiguracoescte(Model).webs_ambiente;
Self.Fwebs_visualizar         := TModelERPempresasconfiguracoescte(Model).webs_visualizar;
Self.Fwebs_ssltype         := TModelERPempresasconfiguracoescte(Model).webs_ssltype;
Self.Fpro_host         := TModelERPempresasconfiguracoescte(Model).pro_host;
Self.Fpro_porta         := TModelERPempresasconfiguracoescte(Model).pro_porta;
Self.Fpro_user         := TModelERPempresasconfiguracoescte(Model).pro_user;
Self.Fpro_pass         := TModelERPempresasconfiguracoescte(Model).pro_pass;
Self.Ftipoemi         := TModelERPempresasconfiguracoescte(Model).tipoemi;
Self.Fserie         := TModelERPempresasconfiguracoescte(Model).serie;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasconfiguracoescte.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasconfiguracoescte.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasconfiguracoescte.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setcert_caminho(const Value: Boolean);   
begin                
  Fcert_caminho := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setcert_senha(const Value: Boolean);   
begin                
  Fcert_senha := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setcert_numserie(const Value: Boolean);   
begin                
  Fcert_numserie := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_dacte(const Value: Boolean);   
begin                
  Fge_dacte := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_ambiente(const Value: Boolean);   
begin                
  Fge_ambiente := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_formaemissao(const Value: Boolean);   
begin                
  Fge_formaemissao := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_logomarca(const Value: Boolean);   
begin                
  Fge_logomarca := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_salvar(const Value: Boolean);   
begin                
  Fge_salvar := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_pathsalvar(const Value: Boolean);   
begin                
  Fge_pathsalvar := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setge_versao_df(const Value: Boolean);   
begin                
  Fge_versao_df := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setwebs_uf(const Value: Boolean);   
begin                
  Fwebs_uf := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setwebs_ambiente(const Value: Boolean);   
begin                
  Fwebs_ambiente := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setwebs_visualizar(const Value: Boolean);   
begin                
  Fwebs_visualizar := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setwebs_ssltype(const Value: Boolean);   
begin                
  Fwebs_ssltype := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setpro_host(const Value: Boolean);   
begin                
  Fpro_host := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setpro_porta(const Value: Boolean);   
begin                
  Fpro_porta := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setpro_user(const Value: Boolean);   
begin                
  Fpro_user := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setpro_pass(const Value: Boolean);   
begin                
  Fpro_pass := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Settipoemi(const Value: Boolean);   
begin                
  Ftipoemi := Value;   
end;                 

procedure TModelERPempresasconfiguracoescte.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 


end.
