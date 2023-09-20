unit Model.ERP.empresas_configuracoes_mdfe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasconfiguracoesmdfe = class(TModelBase)

private
    Fid : Integer;
    Fcert_numserie : WideString;
    Fdanfe : Integer;
    Fforma_emissao : Integer;
    Fnfe_scan : Integer;
    Fnfe_serie : Integer;
    Fgerar_serviso : Boolean;
    Fsal_envio_resp : Boolean;
    Fcaminho_envio_resp : WideString;
    Fuf_destino : WideString;
    Fambiente : Integer;
    Fvisul_msg : Boolean;
    Ftipo_certificado : Integer;
    Fproxy_host : WideString;
    Fproxy_porta : Integer;
    Fproxy_usuario : WideString;
    Fproxy_senha : Integer;
    Fid_token : WideString;
    Fcodigo_token : WideString;
    Fsenha : WideString;
    Flogomarca : WideString;
    Fvalor_limite : Double;
    Fimprimir_obs : Boolean;
    Flimite_cancelamento_nfce : Double;
    Fresptecnico : Boolean;
    Fwebs_ssltype : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setcert_numserie(const Value: WideString);
    procedure Setdanfe(const Value: Integer);
    procedure Setforma_emissao(const Value: Integer);
    procedure Setnfe_scan(const Value: Integer);
    procedure Setnfe_serie(const Value: Integer);
    procedure Setgerar_serviso(const Value: Boolean);
    procedure Setsal_envio_resp(const Value: Boolean);
    procedure Setcaminho_envio_resp(const Value: WideString);
    procedure Setuf_destino(const Value: WideString);
    procedure Setambiente(const Value: Integer);
    procedure Setvisul_msg(const Value: Boolean);
    procedure Settipo_certificado(const Value: Integer);
    procedure Setproxy_host(const Value: WideString);
    procedure Setproxy_porta(const Value: Integer);
    procedure Setproxy_usuario(const Value: WideString);
    procedure Setproxy_senha(const Value: Integer);
    procedure Setid_token(const Value: WideString);
    procedure Setcodigo_token(const Value: WideString);
    procedure Setsenha(const Value: WideString);
    procedure Setlogomarca(const Value: WideString);
    procedure Setvalor_limite(const Value: Double);
    procedure Setimprimir_obs(const Value: Boolean);
    procedure Setlimite_cancelamento_nfce(const Value: Double);
    procedure Setresptecnico(const Value: Boolean);
    procedure Setwebs_ssltype(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property cert_numserie     : WideString read Fcert_numserie write Setcert_numserie;
    property danfe     : Integer read Fdanfe write Setdanfe;
    property forma_emissao     : Integer read Fforma_emissao write Setforma_emissao;
    property nfe_scan     : Integer read Fnfe_scan write Setnfe_scan;
    property nfe_serie     : Integer read Fnfe_serie write Setnfe_serie;
    property gerar_serviso     : Boolean read Fgerar_serviso write Setgerar_serviso;
    property sal_envio_resp     : Boolean read Fsal_envio_resp write Setsal_envio_resp;
    property caminho_envio_resp     : WideString read Fcaminho_envio_resp write Setcaminho_envio_resp;
    property uf_destino     : WideString read Fuf_destino write Setuf_destino;
    property ambiente     : Integer read Fambiente write Setambiente;
    property visul_msg     : Boolean read Fvisul_msg write Setvisul_msg;
    property tipo_certificado     : Integer read Ftipo_certificado write Settipo_certificado;
    property proxy_host     : WideString read Fproxy_host write Setproxy_host;
    property proxy_porta     : Integer read Fproxy_porta write Setproxy_porta;
    property proxy_usuario     : WideString read Fproxy_usuario write Setproxy_usuario;
    property proxy_senha     : Integer read Fproxy_senha write Setproxy_senha;
    property id_token     : WideString read Fid_token write Setid_token;
    property codigo_token     : WideString read Fcodigo_token write Setcodigo_token;
    property senha     : WideString read Fsenha write Setsenha;
    property logomarca     : WideString read Flogomarca write Setlogomarca;
    property valor_limite     : Double read Fvalor_limite write Setvalor_limite;
    property imprimir_obs     : Boolean read Fimprimir_obs write Setimprimir_obs;
    property limite_cancelamento_nfce     : Double read Flimite_cancelamento_nfce write Setlimite_cancelamento_nfce;
    property resptecnico     : Boolean read Fresptecnico write Setresptecnico;
    property webs_ssltype     : indefinido read Fwebs_ssltype write Setwebs_ssltype;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasconfiguracoesmdfe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasconfiguracoesmdfe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasconfiguracoesmdfe(Model).id;
Self.Fcert_numserie         := TModelERPempresasconfiguracoesmdfe(Model).cert_numserie;
Self.Fdanfe         := TModelERPempresasconfiguracoesmdfe(Model).danfe;
Self.Fforma_emissao         := TModelERPempresasconfiguracoesmdfe(Model).forma_emissao;
Self.Fnfe_scan         := TModelERPempresasconfiguracoesmdfe(Model).nfe_scan;
Self.Fnfe_serie         := TModelERPempresasconfiguracoesmdfe(Model).nfe_serie;
Self.Fgerar_serviso         := TModelERPempresasconfiguracoesmdfe(Model).gerar_serviso;
Self.Fsal_envio_resp         := TModelERPempresasconfiguracoesmdfe(Model).sal_envio_resp;
Self.Fcaminho_envio_resp         := TModelERPempresasconfiguracoesmdfe(Model).caminho_envio_resp;
Self.Fuf_destino         := TModelERPempresasconfiguracoesmdfe(Model).uf_destino;
Self.Fambiente         := TModelERPempresasconfiguracoesmdfe(Model).ambiente;
Self.Fvisul_msg         := TModelERPempresasconfiguracoesmdfe(Model).visul_msg;
Self.Ftipo_certificado         := TModelERPempresasconfiguracoesmdfe(Model).tipo_certificado;
Self.Fproxy_host         := TModelERPempresasconfiguracoesmdfe(Model).proxy_host;
Self.Fproxy_porta         := TModelERPempresasconfiguracoesmdfe(Model).proxy_porta;
Self.Fproxy_usuario         := TModelERPempresasconfiguracoesmdfe(Model).proxy_usuario;
Self.Fproxy_senha         := TModelERPempresasconfiguracoesmdfe(Model).proxy_senha;
Self.Fid_token         := TModelERPempresasconfiguracoesmdfe(Model).id_token;
Self.Fcodigo_token         := TModelERPempresasconfiguracoesmdfe(Model).codigo_token;
Self.Fsenha         := TModelERPempresasconfiguracoesmdfe(Model).senha;
Self.Flogomarca         := TModelERPempresasconfiguracoesmdfe(Model).logomarca;
Self.Fvalor_limite         := TModelERPempresasconfiguracoesmdfe(Model).valor_limite;
Self.Fimprimir_obs         := TModelERPempresasconfiguracoesmdfe(Model).imprimir_obs;
Self.Flimite_cancelamento_nfce         := TModelERPempresasconfiguracoesmdfe(Model).limite_cancelamento_nfce;
Self.Fresptecnico         := TModelERPempresasconfiguracoesmdfe(Model).resptecnico;
Self.Fwebs_ssltype         := TModelERPempresasconfiguracoesmdfe(Model).webs_ssltype;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasconfiguracoesmdfe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasconfiguracoesmdfe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasconfiguracoesmdfe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setcert_numserie(const Value: Boolean);   
begin                
  Fcert_numserie := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setdanfe(const Value: Boolean);   
begin                
  Fdanfe := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setforma_emissao(const Value: Boolean);   
begin                
  Fforma_emissao := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setnfe_scan(const Value: Boolean);   
begin                
  Fnfe_scan := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setnfe_serie(const Value: Boolean);   
begin                
  Fnfe_serie := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setgerar_serviso(const Value: Boolean);   
begin                
  Fgerar_serviso := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setsal_envio_resp(const Value: Boolean);   
begin                
  Fsal_envio_resp := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setcaminho_envio_resp(const Value: Boolean);   
begin                
  Fcaminho_envio_resp := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setuf_destino(const Value: Boolean);   
begin                
  Fuf_destino := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setambiente(const Value: Boolean);   
begin                
  Fambiente := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setvisul_msg(const Value: Boolean);   
begin                
  Fvisul_msg := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Settipo_certificado(const Value: Boolean);   
begin                
  Ftipo_certificado := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setproxy_host(const Value: Boolean);   
begin                
  Fproxy_host := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setproxy_porta(const Value: Boolean);   
begin                
  Fproxy_porta := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setproxy_usuario(const Value: Boolean);   
begin                
  Fproxy_usuario := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setproxy_senha(const Value: Boolean);   
begin                
  Fproxy_senha := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setid_token(const Value: Boolean);   
begin                
  Fid_token := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setcodigo_token(const Value: Boolean);   
begin                
  Fcodigo_token := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setlogomarca(const Value: Boolean);   
begin                
  Flogomarca := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setvalor_limite(const Value: Boolean);   
begin                
  Fvalor_limite := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setimprimir_obs(const Value: Boolean);   
begin                
  Fimprimir_obs := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setlimite_cancelamento_nfce(const Value: Boolean);   
begin                
  Flimite_cancelamento_nfce := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setresptecnico(const Value: Boolean);   
begin                
  Fresptecnico := Value;   
end;                 

procedure TModelERPempresasconfiguracoesmdfe.Setwebs_ssltype(const Value: Boolean);   
begin                
  Fwebs_ssltype := Value;   
end;                 


end.
