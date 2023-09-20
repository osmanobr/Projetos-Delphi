unit Model.ERP.empresas_contador;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresascontador = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Femail : WideString;
    Fsmtp : WideString;
    Fporta : Integer;
    Fusuario : WideString;
    Fsenha : WideString;
    Fsmtp_segure : Boolean;
    Fassunto : WideString;
    Fobs : WideString;
    Fnfe : Boolean;
    Fnfce : Boolean;
    Fsped : Boolean;
    Fprevenda : Boolean;
    Fcontas_receber : Boolean;
    Fnotas : Boolean;
    Femail_retorno : WideString;
    Ftelefone_retorno : WideString;
    Fobs_contas_fixas : WideString;
    Fssl : Boolean;
    Ftsl : Boolean;
    Forigen : WideString;
    Fdestinatario : WideString;
    Frelatorio : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setemail(const Value: WideString);
    procedure Setsmtp(const Value: WideString);
    procedure Setporta(const Value: Integer);
    procedure Setusuario(const Value: WideString);
    procedure Setsenha(const Value: WideString);
    procedure Setsmtp_segure(const Value: Boolean);
    procedure Setassunto(const Value: WideString);
    procedure Setobs(const Value: WideString);
    procedure Setnfe(const Value: Boolean);
    procedure Setnfce(const Value: Boolean);
    procedure Setsped(const Value: Boolean);
    procedure Setprevenda(const Value: Boolean);
    procedure Setcontas_receber(const Value: Boolean);
    procedure Setnotas(const Value: Boolean);
    procedure Setemail_retorno(const Value: WideString);
    procedure Settelefone_retorno(const Value: WideString);
    procedure Setobs_contas_fixas(const Value: WideString);
    procedure Setssl(const Value: Boolean);
    procedure Settsl(const Value: Boolean);
    procedure Setorigen(const Value: WideString);
    procedure Setdestinatario(const Value: WideString);
    procedure Setrelatorio(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property email     : WideString read Femail write Setemail;
    property smtp     : WideString read Fsmtp write Setsmtp;
    property porta     : Integer read Fporta write Setporta;
    property usuario     : WideString read Fusuario write Setusuario;
    property senha     : WideString read Fsenha write Setsenha;
    property smtp_segure     : Boolean read Fsmtp_segure write Setsmtp_segure;
    property assunto     : WideString read Fassunto write Setassunto;
    property obs     : WideString read Fobs write Setobs;
    property nfe     : Boolean read Fnfe write Setnfe;
    property nfce     : Boolean read Fnfce write Setnfce;
    property sped     : Boolean read Fsped write Setsped;
    property prevenda     : Boolean read Fprevenda write Setprevenda;
    property contas_receber     : Boolean read Fcontas_receber write Setcontas_receber;
    property notas     : Boolean read Fnotas write Setnotas;
    property email_retorno     : WideString read Femail_retorno write Setemail_retorno;
    property telefone_retorno     : WideString read Ftelefone_retorno write Settelefone_retorno;
    property obs_contas_fixas     : WideString read Fobs_contas_fixas write Setobs_contas_fixas;
    property ssl     : Boolean read Fssl write Setssl;
    property tsl     : Boolean read Ftsl write Settsl;
    property origen     : WideString read Forigen write Setorigen;
    property destinatario     : WideString read Fdestinatario write Setdestinatario;
    property relatorio     : Boolean read Frelatorio write Setrelatorio;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresascontador.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresascontador) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresascontador(Model).id;
Self.Fid_empresa         := TModelERPempresascontador(Model).id_empresa;
Self.Femail         := TModelERPempresascontador(Model).email;
Self.Fsmtp         := TModelERPempresascontador(Model).smtp;
Self.Fporta         := TModelERPempresascontador(Model).porta;
Self.Fusuario         := TModelERPempresascontador(Model).usuario;
Self.Fsenha         := TModelERPempresascontador(Model).senha;
Self.Fsmtp_segure         := TModelERPempresascontador(Model).smtp_segure;
Self.Fassunto         := TModelERPempresascontador(Model).assunto;
Self.Fobs         := TModelERPempresascontador(Model).obs;
Self.Fnfe         := TModelERPempresascontador(Model).nfe;
Self.Fnfce         := TModelERPempresascontador(Model).nfce;
Self.Fsped         := TModelERPempresascontador(Model).sped;
Self.Fprevenda         := TModelERPempresascontador(Model).prevenda;
Self.Fcontas_receber         := TModelERPempresascontador(Model).contas_receber;
Self.Fnotas         := TModelERPempresascontador(Model).notas;
Self.Femail_retorno         := TModelERPempresascontador(Model).email_retorno;
Self.Ftelefone_retorno         := TModelERPempresascontador(Model).telefone_retorno;
Self.Fobs_contas_fixas         := TModelERPempresascontador(Model).obs_contas_fixas;
Self.Fssl         := TModelERPempresascontador(Model).ssl;
Self.Ftsl         := TModelERPempresascontador(Model).tsl;
Self.Forigen         := TModelERPempresascontador(Model).origen;
Self.Fdestinatario         := TModelERPempresascontador(Model).destinatario;
Self.Frelatorio         := TModelERPempresascontador(Model).relatorio;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresascontador.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresascontador.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresascontador.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresascontador.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresascontador.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPempresascontador.Setsmtp(const Value: Boolean);   
begin                
  Fsmtp := Value;   
end;                 

procedure TModelERPempresascontador.Setporta(const Value: Boolean);   
begin                
  Fporta := Value;   
end;                 

procedure TModelERPempresascontador.Setusuario(const Value: Boolean);   
begin                
  Fusuario := Value;   
end;                 

procedure TModelERPempresascontador.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 

procedure TModelERPempresascontador.Setsmtp_segure(const Value: Boolean);   
begin                
  Fsmtp_segure := Value;   
end;                 

procedure TModelERPempresascontador.Setassunto(const Value: Boolean);   
begin                
  Fassunto := Value;   
end;                 

procedure TModelERPempresascontador.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPempresascontador.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPempresascontador.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPempresascontador.Setsped(const Value: Boolean);   
begin                
  Fsped := Value;   
end;                 

procedure TModelERPempresascontador.Setprevenda(const Value: Boolean);   
begin                
  Fprevenda := Value;   
end;                 

procedure TModelERPempresascontador.Setcontas_receber(const Value: Boolean);   
begin                
  Fcontas_receber := Value;   
end;                 

procedure TModelERPempresascontador.Setnotas(const Value: Boolean);   
begin                
  Fnotas := Value;   
end;                 

procedure TModelERPempresascontador.Setemail_retorno(const Value: Boolean);   
begin                
  Femail_retorno := Value;   
end;                 

procedure TModelERPempresascontador.Settelefone_retorno(const Value: Boolean);   
begin                
  Ftelefone_retorno := Value;   
end;                 

procedure TModelERPempresascontador.Setobs_contas_fixas(const Value: Boolean);   
begin                
  Fobs_contas_fixas := Value;   
end;                 

procedure TModelERPempresascontador.Setssl(const Value: Boolean);   
begin                
  Fssl := Value;   
end;                 

procedure TModelERPempresascontador.Settsl(const Value: Boolean);   
begin                
  Ftsl := Value;   
end;                 

procedure TModelERPempresascontador.Setorigen(const Value: Boolean);   
begin                
  Forigen := Value;   
end;                 

procedure TModelERPempresascontador.Setdestinatario(const Value: Boolean);   
begin                
  Fdestinatario := Value;   
end;                 

procedure TModelERPempresascontador.Setrelatorio(const Value: Boolean);   
begin                
  Frelatorio := Value;   
end;                 


end.
