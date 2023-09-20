
unit View.ERP.empresas_configuracoes_nfce;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_configuracoes_nfce, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasconfiguracoesnfce = class(TForm) 
    Panel1: TPanel; 
    bbIncluir: TSpeedButton; 
    bbAlterar: TSpeedButton; 
    bbExcluir: TSpeedButton; 
    BBCancelar: TSpeedButton;
    BBConfirmar: TSpeedButton;

        procedure bbIncluirClick(Sender: TObject);    
        procedure bbAlterarClick(Sender: TObject);    
        procedure bbExcluirClick(Sender: TObject);    
        procedure BBCancelarClick(Sender: TObject);   
        procedure BBConfirmarClick(Sender: TObject);  

    procedure FormCreate(Sender: TObject);    
    procedure FormDestroy(Sender: TObject);    
    procedure FormShow(Sender: TObject);       

  private 
    FController : TControllerERPempresasconfiguracoesnfce; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcert_numserie(const Value : WideString);
    procedure Setdanfe(const Value : Integer);
    procedure Setforma_emissao(const Value : Integer);
    procedure Setnfe_scan(const Value : Integer);
    procedure Setnfe_serie(const Value : Integer);
    procedure Setgerar_serviso(const Value : Boolean);
    procedure Setsal_envio_resp(const Value : Boolean);
    procedure Setcaminho_envio_resp(const Value : WideString);
    procedure Setuf_destino(const Value : WideString);
    procedure Setambiente(const Value : Integer);
    procedure Setvisul_msg(const Value : Boolean);
    procedure Settipo_certificado(const Value : Integer);
    procedure Setproxy_host(const Value : WideString);
    procedure Setproxy_porta(const Value : Integer);
    procedure Setproxy_usuario(const Value : WideString);
    procedure Setproxy_senha(const Value : Integer);
    procedure Setuti_ap_icms(const Value : Boolean);
    procedure Setmsg_apu_icms(const Value : WideString);
    procedure Setporcetagen(const Value : Double);
    procedure Setid_token(const Value : WideString);
    procedure Setcodigo_token(const Value : WideString);
    procedure Setsenha(const Value : WideString);
    procedure Setlogomarca(const Value : WideString);
    procedure Setversao(const Value : WideString);
    procedure Setacrescimo_financeiro(const Value : Boolean);
    procedure Setresptecnico(const Value : Boolean);
    procedure Setcertificado(const Value : indefinido);
    procedure Setcertificado_senha(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property cert_numserie : WideString         read Fcert_numserie    write Fcert_numserie;
    property danfe : Integer         read Fdanfe    write Fdanfe;
    property forma_emissao : Integer         read Fforma_emissao    write Fforma_emissao;
    property nfe_scan : Integer         read Fnfe_scan    write Fnfe_scan;
    property nfe_serie : Integer         read Fnfe_serie    write Fnfe_serie;
    property gerar_serviso : Boolean         read Fgerar_serviso    write Fgerar_serviso;
    property sal_envio_resp : Boolean         read Fsal_envio_resp    write Fsal_envio_resp;
    property caminho_envio_resp : WideString         read Fcaminho_envio_resp    write Fcaminho_envio_resp;
    property uf_destino : WideString         read Fuf_destino    write Fuf_destino;
    property ambiente : Integer         read Fambiente    write Fambiente;
    property visul_msg : Boolean         read Fvisul_msg    write Fvisul_msg;
    property tipo_certificado : Integer         read Ftipo_certificado    write Ftipo_certificado;
    property proxy_host : WideString         read Fproxy_host    write Fproxy_host;
    property proxy_porta : Integer         read Fproxy_porta    write Fproxy_porta;
    property proxy_usuario : WideString         read Fproxy_usuario    write Fproxy_usuario;
    property proxy_senha : Integer         read Fproxy_senha    write Fproxy_senha;
    property uti_ap_icms : Boolean         read Futi_ap_icms    write Futi_ap_icms;
    property msg_apu_icms : WideString         read Fmsg_apu_icms    write Fmsg_apu_icms;
    property porcetagen : Double         read Fporcetagen    write Fporcetagen;
    property id_token : WideString         read Fid_token    write Fid_token;
    property codigo_token : WideString         read Fcodigo_token    write Fcodigo_token;
    property senha : WideString         read Fsenha    write Fsenha;
    property logomarca : WideString         read Flogomarca    write Flogomarca;
    property versao : WideString         read Fversao    write Fversao;
    property acrescimo_financeiro : Boolean         read Facrescimo_financeiro    write Facrescimo_financeiro;
    property resptecnico : Boolean         read Fresptecnico    write Fresptecnico;
    property certificado : indefinido         read Fcertificado    write Fcertificado;
    property certificado_senha : WideString         read Fcertificado_senha    write Fcertificado_senha;

  end;

var
  Frm_ViewERPempresasconfiguracoesnfce : TFrm_ViewERPempresasconfiguracoesnfce; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 29; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_numserie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].danfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].forma_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_scan); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerar_serviso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sal_envio_resp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caminho_envio_resp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ambiente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].visul_msg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_certificado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proxy_host); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proxy_porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proxy_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proxy_senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uti_ap_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].msg_apu_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porcetagen); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_token); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_token); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].logomarca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acrescimo_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].resptecnico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].certificado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].certificado_senha); 
    end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfce.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.cert_numserie := Edit_cert_numserie.text;
      FController.Model.danfe := Edit_danfe.text;
      FController.Model.forma_emissao := Edit_forma_emissao.text;
      FController.Model.nfe_scan := Edit_nfe_scan.text;
      FController.Model.nfe_serie := Edit_nfe_serie.text;
      FController.Model.gerar_serviso := Edit_gerar_serviso.text;
      FController.Model.sal_envio_resp := Edit_sal_envio_resp.text;
      FController.Model.caminho_envio_resp := Edit_caminho_envio_resp.text;
      FController.Model.uf_destino := Edit_uf_destino.text;
      FController.Model.ambiente := Edit_ambiente.text;
      FController.Model.visul_msg := Edit_visul_msg.text;
      FController.Model.tipo_certificado := Edit_tipo_certificado.text;
      FController.Model.proxy_host := Edit_proxy_host.text;
      FController.Model.proxy_porta := Edit_proxy_porta.text;
      FController.Model.proxy_usuario := Edit_proxy_usuario.text;
      FController.Model.proxy_senha := Edit_proxy_senha.text;
      FController.Model.uti_ap_icms := Edit_uti_ap_icms.text;
      FController.Model.msg_apu_icms := Edit_msg_apu_icms.text;
      FController.Model.porcetagen := Edit_porcetagen.text;
      FController.Model.id_token := Edit_id_token.text;
      FController.Model.codigo_token := Edit_codigo_token.text;
      FController.Model.senha := Edit_senha.text;
      FController.Model.logomarca := Edit_logomarca.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.acrescimo_financeiro := Edit_acrescimo_financeiro.text;
      FController.Model.resptecnico := Edit_resptecnico.text;
      FController.Model.certificado := Edit_certificado.text;
      FController.Model.certificado_senha := Edit_certificado_senha.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfce.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasconfiguracoesnfce.BBCancelarClick(Sender: TObject); 
begin                         
  LimparTela;                 
end;                          

Function  SoNumeros(Texto: String):Boolean;   
var Resultado:Boolean;                        
    nContador:Integer;                        
begin                                         
  Resultado := false;                         
  For nContador:=1 to Length(Texto) do        
    begin                                     
      {Verifica sé é uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPempresasconfiguracoesnfce.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a gravação dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
  begin                                              
    ScreenToModel;                                   
    if Self.FController.Status = vsInsert then       
    begin                                            
      Self.FController.Post;                         
    end                                              
    else                                             
      begin                                          
        Self.FController.Update;                     
      end;                                           
    MessageInfo('Dados gravados com sucesso.');    
    Self.FController.Model.id := 0;                  
    Self.FController.Get;                            
    ModelToScreen;                                   
  end;                                               
end;                                                 

procedure TFrm_ViewERPempresasconfiguracoesnfce.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfce.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasconfiguracoesnfce.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasconfiguracoesnfce.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 29;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := cert_numserie;  
     Grid.Cells[inttostr(i),0] := danfe;  
     Grid.Cells[inttostr(i),0] := forma_emissao;  
     Grid.Cells[inttostr(i),0] := nfe_scan;  
     Grid.Cells[inttostr(i),0] := nfe_serie;  
     Grid.Cells[inttostr(i),0] := gerar_serviso;  
     Grid.Cells[inttostr(i),0] := sal_envio_resp;  
     Grid.Cells[inttostr(i),0] := caminho_envio_resp;  
     Grid.Cells[inttostr(i),0] := uf_destino;  
     Grid.Cells[inttostr(i),0] := ambiente;  
     Grid.Cells[inttostr(i),0] := visul_msg;  
     Grid.Cells[inttostr(i),0] := tipo_certificado;  
     Grid.Cells[inttostr(i),0] := proxy_host;  
     Grid.Cells[inttostr(i),0] := proxy_porta;  
     Grid.Cells[inttostr(i),0] := proxy_usuario;  
     Grid.Cells[inttostr(i),0] := proxy_senha;  
     Grid.Cells[inttostr(i),0] := uti_ap_icms;  
     Grid.Cells[inttostr(i),0] := msg_apu_icms;  
     Grid.Cells[inttostr(i),0] := porcetagen;  
     Grid.Cells[inttostr(i),0] := id_token;  
     Grid.Cells[inttostr(i),0] := codigo_token;  
     Grid.Cells[inttostr(i),0] := senha;  
     Grid.Cells[inttostr(i),0] := logomarca;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := acrescimo_financeiro;  
     Grid.Cells[inttostr(i),0] := resptecnico;  
     Grid.Cells[inttostr(i),0] := certificado;  
     Grid.Cells[inttostr(i),0] := certificado_senha;  
end;

procedure TFrm_ViewERPempresasconfiguracoesnfce.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasconfiguracoesnfce.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasconfiguracoesnfce.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.cert_numserie := Grid.Cells[1,Grid.row];
    FController.Model.danfe := Grid.Cells[2,Grid.row];
    FController.Model.forma_emissao := Grid.Cells[3,Grid.row];
    FController.Model.nfe_scan := Grid.Cells[4,Grid.row];
    FController.Model.nfe_serie := Grid.Cells[5,Grid.row];
    FController.Model.gerar_serviso := Grid.Cells[6,Grid.row];
    FController.Model.sal_envio_resp := Grid.Cells[7,Grid.row];
    FController.Model.caminho_envio_resp := Grid.Cells[8,Grid.row];
    FController.Model.uf_destino := Grid.Cells[9,Grid.row];
    FController.Model.ambiente := Grid.Cells[10,Grid.row];
    FController.Model.visul_msg := Grid.Cells[11,Grid.row];
    FController.Model.tipo_certificado := Grid.Cells[12,Grid.row];
    FController.Model.proxy_host := Grid.Cells[13,Grid.row];
    FController.Model.proxy_porta := Grid.Cells[14,Grid.row];
    FController.Model.proxy_usuario := Grid.Cells[15,Grid.row];
    FController.Model.proxy_senha := Grid.Cells[16,Grid.row];
    FController.Model.uti_ap_icms := Grid.Cells[17,Grid.row];
    FController.Model.msg_apu_icms := Grid.Cells[18,Grid.row];
    FController.Model.porcetagen := Grid.Cells[19,Grid.row];
    FController.Model.id_token := Grid.Cells[20,Grid.row];
    FController.Model.codigo_token := Grid.Cells[21,Grid.row];
    FController.Model.senha := Grid.Cells[22,Grid.row];
    FController.Model.logomarca := Grid.Cells[23,Grid.row];
    FController.Model.versao := Grid.Cells[24,Grid.row];
    FController.Model.acrescimo_financeiro := Grid.Cells[25,Grid.row];
    FController.Model.resptecnico := Grid.Cells[26,Grid.row];
    FController.Model.certificado := Grid.Cells[27,Grid.row];
    FController.Model.certificado_senha := Grid.Cells[28,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasconfiguracoesnfce.LimparTela;  
var   
  I: Integer;  
begin       
  for i := 0 to ComponentCount -1 do   
    BEGIN                              
      if Components[i] is TEdit then   
      begin                            
        TEdit(Components[i]).Text := ''; 
      end; 
    END;   
end;       

procedure TFrm_ViewERPempresasconfiguracoesnfce.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setcert_numserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setdanfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setforma_emissao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setnfe_scan(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setnfe_serie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setgerar_serviso(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setsal_envio_resp(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setcaminho_envio_resp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setuf_destino(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setambiente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setvisul_msg(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Settipo_certificado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setproxy_host(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setproxy_porta(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setproxy_usuario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setproxy_senha(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setuti_ap_icms(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setmsg_apu_icms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setporcetagen(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setid_token(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setcodigo_token(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setsenha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setlogomarca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setversao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setacrescimo_financeiro(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setresptecnico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setcertificado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfce.Setcertificado_senha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
