unit Model.ERP.empresas_configuracoes_nfce;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasconfiguracoesnfce = class(TModelBase)

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
    Futi_ap_icms : Boolean;
    Fmsg_apu_icms : WideString;
    Fporcetagen : Double;
    Fid_token : WideString;
    Fcodigo_token : WideString;
    Fsenha : WideString;
    Flogomarca : WideString;
    Fversao : WideString;
    Facrescimo_financeiro : Boolean;
    Fresptecnico : Boolean;
    Fcertificado : indefinido;
    Fcertificado_senha : WideString;

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
    procedure Setuti_ap_icms(const Value: Boolean);
    procedure Setmsg_apu_icms(const Value: WideString);
    procedure Setporcetagen(const Value: Double);
    procedure Setid_token(const Value: WideString);
    procedure Setcodigo_token(const Value: WideString);
    procedure Setsenha(const Value: WideString);
    procedure Setlogomarca(const Value: WideString);
    procedure Setversao(const Value: WideString);
    procedure Setacrescimo_financeiro(const Value: Boolean);
    procedure Setresptecnico(const Value: Boolean);
    procedure Setcertificado(const Value: indefinido);
    procedure Setcertificado_senha(const Value: WideString);

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
    property uti_ap_icms     : Boolean read Futi_ap_icms write Setuti_ap_icms;
    property msg_apu_icms     : WideString read Fmsg_apu_icms write Setmsg_apu_icms;
    property porcetagen     : Double read Fporcetagen write Setporcetagen;
    property id_token     : WideString read Fid_token write Setid_token;
    property codigo_token     : WideString read Fcodigo_token write Setcodigo_token;
    property senha     : WideString read Fsenha write Setsenha;
    property logomarca     : WideString read Flogomarca write Setlogomarca;
    property versao     : WideString read Fversao write Setversao;
    property acrescimo_financeiro     : Boolean read Facrescimo_financeiro write Setacrescimo_financeiro;
    property resptecnico     : Boolean read Fresptecnico write Setresptecnico;
    property certificado     : indefinido read Fcertificado write Setcertificado;
    property certificado_senha     : WideString read Fcertificado_senha write Setcertificado_senha;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasconfiguracoesnfce.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasconfiguracoesnfce) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasconfiguracoesnfce(Model).id;
Self.Fcert_numserie         := TModelERPempresasconfiguracoesnfce(Model).cert_numserie;
Self.Fdanfe         := TModelERPempresasconfiguracoesnfce(Model).danfe;
Self.Fforma_emissao         := TModelERPempresasconfiguracoesnfce(Model).forma_emissao;
Self.Fnfe_scan         := TModelERPempresasconfiguracoesnfce(Model).nfe_scan;
Self.Fnfe_serie         := TModelERPempresasconfiguracoesnfce(Model).nfe_serie;
Self.Fgerar_serviso         := TModelERPempresasconfiguracoesnfce(Model).gerar_serviso;
Self.Fsal_envio_resp         := TModelERPempresasconfiguracoesnfce(Model).sal_envio_resp;
Self.Fcaminho_envio_resp         := TModelERPempresasconfiguracoesnfce(Model).caminho_envio_resp;
Self.Fuf_destino         := TModelERPempresasconfiguracoesnfce(Model).uf_destino;
Self.Fambiente         := TModelERPempresasconfiguracoesnfce(Model).ambiente;
Self.Fvisul_msg         := TModelERPempresasconfiguracoesnfce(Model).visul_msg;
Self.Ftipo_certificado         := TModelERPempresasconfiguracoesnfce(Model).tipo_certificado;
Self.Fproxy_host         := TModelERPempresasconfiguracoesnfce(Model).proxy_host;
Self.Fproxy_porta         := TModelERPempresasconfiguracoesnfce(Model).proxy_porta;
Self.Fproxy_usuario         := TModelERPempresasconfiguracoesnfce(Model).proxy_usuario;
Self.Fproxy_senha         := TModelERPempresasconfiguracoesnfce(Model).proxy_senha;
Self.Futi_ap_icms         := TModelERPempresasconfiguracoesnfce(Model).uti_ap_icms;
Self.Fmsg_apu_icms         := TModelERPempresasconfiguracoesnfce(Model).msg_apu_icms;
Self.Fporcetagen         := TModelERPempresasconfiguracoesnfce(Model).porcetagen;
Self.Fid_token         := TModelERPempresasconfiguracoesnfce(Model).id_token;
Self.Fcodigo_token         := TModelERPempresasconfiguracoesnfce(Model).codigo_token;
Self.Fsenha         := TModelERPempresasconfiguracoesnfce(Model).senha;
Self.Flogomarca         := TModelERPempresasconfiguracoesnfce(Model).logomarca;
Self.Fversao         := TModelERPempresasconfiguracoesnfce(Model).versao;
Self.Facrescimo_financeiro         := TModelERPempresasconfiguracoesnfce(Model).acrescimo_financeiro;
Self.Fresptecnico         := TModelERPempresasconfiguracoesnfce(Model).resptecnico;
Self.Fcertificado         := TModelERPempresasconfiguracoesnfce(Model).certificado;
Self.Fcertificado_senha         := TModelERPempresasconfiguracoesnfce(Model).certificado_senha;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasconfiguracoesnfce.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasconfiguracoesnfce.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasconfiguracoesnfce.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setcert_numserie(const Value: Boolean);   
begin                
  Fcert_numserie := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setdanfe(const Value: Boolean);   
begin                
  Fdanfe := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setforma_emissao(const Value: Boolean);   
begin                
  Fforma_emissao := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setnfe_scan(const Value: Boolean);   
begin                
  Fnfe_scan := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setnfe_serie(const Value: Boolean);   
begin                
  Fnfe_serie := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setgerar_serviso(const Value: Boolean);   
begin                
  Fgerar_serviso := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setsal_envio_resp(const Value: Boolean);   
begin                
  Fsal_envio_resp := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setcaminho_envio_resp(const Value: Boolean);   
begin                
  Fcaminho_envio_resp := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setuf_destino(const Value: Boolean);   
begin                
  Fuf_destino := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setambiente(const Value: Boolean);   
begin                
  Fambiente := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setvisul_msg(const Value: Boolean);   
begin                
  Fvisul_msg := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Settipo_certificado(const Value: Boolean);   
begin                
  Ftipo_certificado := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setproxy_host(const Value: Boolean);   
begin                
  Fproxy_host := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setproxy_porta(const Value: Boolean);   
begin                
  Fproxy_porta := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setproxy_usuario(const Value: Boolean);   
begin                
  Fproxy_usuario := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setproxy_senha(const Value: Boolean);   
begin                
  Fproxy_senha := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setuti_ap_icms(const Value: Boolean);   
begin                
  Futi_ap_icms := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setmsg_apu_icms(const Value: Boolean);   
begin                
  Fmsg_apu_icms := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setporcetagen(const Value: Boolean);   
begin                
  Fporcetagen := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setid_token(const Value: Boolean);   
begin                
  Fid_token := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setcodigo_token(const Value: Boolean);   
begin                
  Fcodigo_token := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setlogomarca(const Value: Boolean);   
begin                
  Flogomarca := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setacrescimo_financeiro(const Value: Boolean);   
begin                
  Facrescimo_financeiro := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setresptecnico(const Value: Boolean);   
begin                
  Fresptecnico := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setcertificado(const Value: Boolean);   
begin                
  Fcertificado := Value;   
end;                 

procedure TModelERPempresasconfiguracoesnfce.Setcertificado_senha(const Value: Boolean);   
begin                
  Fcertificado_senha := Value;   
end;                 


end.
