
unit View.ERP.empresas_configuracoes;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_configuracoes, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasconfiguracoes = class(TForm) 
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
    FController : TControllerERPempresasconfiguracoes; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcert_caminho(const Value : WideString);
    procedure Setcert_senha(const Value : WideString);
    procedure Setcert_numserie(const Value : WideString);
    procedure Setge_dacte(const Value : indefinido);
    procedure Setge_formaemissao(const Value : indefinido);
    procedure Setge_logomarca(const Value : indefinido);
    procedure Setge_salvar(const Value : Boolean);
    procedure Setge_pathsalvar(const Value : WideString);
    procedure Setwebs_uf(const Value : WideString);
    procedure Setwebs_ambiente(const Value : indefinido);
    procedure Setwebs_visualizar(const Value : Boolean);
    procedure Setwebs_ssltype(const Value : indefinido);
    procedure Setpro_host(const Value : WideString);
    procedure Setpro_porta(const Value : WideString);
    procedure Setpro_user(const Value : WideString);
    procedure Setpro_pass(const Value : WideString);
    procedure Setemi_cnpj(const Value : WideString);
    procedure Setemi_ie(const Value : WideString);
    procedure Setemi_razaosocial(const Value : WideString);
    procedure Setemi_fantasia(const Value : WideString);
    procedure Setemi_fone(const Value : WideString);
    procedure Setemi_cep(const Value : WideString);
    procedure Setemi_logradouro(const Value : WideString);
    procedure Setemi_numero(const Value : WideString);
    procedure Setemi_complemento(const Value : WideString);
    procedure Setemi_bairro(const Value : WideString);
    procedure Setemi_codcidade(const Value : WideString);
    procedure Setemi_cidade(const Value : WideString);
    procedure Setemi_uf(const Value : WideString);
    procedure Setema_host(const Value : WideString);
    procedure Setema_port(const Value : WideString);
    procedure Setema_user(const Value : WideString);
    procedure Setema_pass(const Value : WideString);
    procedure Setema_assunto(const Value : WideString);
    procedure Setema_ssl(const Value : Boolean);
    procedure Setema_mensagem(const Value : indefinido);
    procedure Setnumserie(const Value : Integer);
    procedure Settipocte(const Value : Integer);
    procedure Settiposervico(const Value : Integer);
    procedure Setregimesimples(const Value : Integer);
    procedure Setmodelocte(const Value : Integer);
    procedure Setinformar_resp_tecnico(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property cert_caminho : WideString         read Fcert_caminho    write Fcert_caminho;
    property cert_senha : WideString         read Fcert_senha    write Fcert_senha;
    property cert_numserie : WideString         read Fcert_numserie    write Fcert_numserie;
    property ge_dacte : indefinido         read Fge_dacte    write Fge_dacte;
    property ge_formaemissao : indefinido         read Fge_formaemissao    write Fge_formaemissao;
    property ge_logomarca : indefinido         read Fge_logomarca    write Fge_logomarca;
    property ge_salvar : Boolean         read Fge_salvar    write Fge_salvar;
    property ge_pathsalvar : WideString         read Fge_pathsalvar    write Fge_pathsalvar;
    property webs_uf : WideString         read Fwebs_uf    write Fwebs_uf;
    property webs_ambiente : indefinido         read Fwebs_ambiente    write Fwebs_ambiente;
    property webs_visualizar : Boolean         read Fwebs_visualizar    write Fwebs_visualizar;
    property webs_ssltype : indefinido         read Fwebs_ssltype    write Fwebs_ssltype;
    property pro_host : WideString         read Fpro_host    write Fpro_host;
    property pro_porta : WideString         read Fpro_porta    write Fpro_porta;
    property pro_user : WideString         read Fpro_user    write Fpro_user;
    property pro_pass : WideString         read Fpro_pass    write Fpro_pass;
    property emi_cnpj : WideString         read Femi_cnpj    write Femi_cnpj;
    property emi_ie : WideString         read Femi_ie    write Femi_ie;
    property emi_razaosocial : WideString         read Femi_razaosocial    write Femi_razaosocial;
    property emi_fantasia : WideString         read Femi_fantasia    write Femi_fantasia;
    property emi_fone : WideString         read Femi_fone    write Femi_fone;
    property emi_cep : WideString         read Femi_cep    write Femi_cep;
    property emi_logradouro : WideString         read Femi_logradouro    write Femi_logradouro;
    property emi_numero : WideString         read Femi_numero    write Femi_numero;
    property emi_complemento : WideString         read Femi_complemento    write Femi_complemento;
    property emi_bairro : WideString         read Femi_bairro    write Femi_bairro;
    property emi_codcidade : WideString         read Femi_codcidade    write Femi_codcidade;
    property emi_cidade : WideString         read Femi_cidade    write Femi_cidade;
    property emi_uf : WideString         read Femi_uf    write Femi_uf;
    property ema_host : WideString         read Fema_host    write Fema_host;
    property ema_port : WideString         read Fema_port    write Fema_port;
    property ema_user : WideString         read Fema_user    write Fema_user;
    property ema_pass : WideString         read Fema_pass    write Fema_pass;
    property ema_assunto : WideString         read Fema_assunto    write Fema_assunto;
    property ema_ssl : Boolean         read Fema_ssl    write Fema_ssl;
    property ema_mensagem : indefinido         read Fema_mensagem    write Fema_mensagem;
    property numserie : Integer         read Fnumserie    write Fnumserie;
    property tipocte : Integer         read Ftipocte    write Ftipocte;
    property tiposervico : Integer         read Ftiposervico    write Ftiposervico;
    property regimesimples : Integer         read Fregimesimples    write Fregimesimples;
    property modelocte : Integer         read Fmodelocte    write Fmodelocte;
    property informar_resp_tecnico : Boolean         read Finformar_resp_tecnico    write Finformar_resp_tecnico;

  end;

var
  Frm_ViewERPempresasconfiguracoes : TFrm_ViewERPempresasconfiguracoes; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 43; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_caminho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_numserie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_dacte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_formaemissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_logomarca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_salvar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_pathsalvar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_ambiente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_visualizar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_ssltype); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_host); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_user); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_pass); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_ie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_razaosocial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_fantasia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_fone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_logradouro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_complemento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_codcidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emi_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_host); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_port); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_user); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_pass); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_assunto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_ssl); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ema_mensagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numserie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipocte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tiposervico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].regimesimples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelocte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].informar_resp_tecnico); 
    end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoes.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.cert_caminho := Edit_cert_caminho.text;
      FController.Model.cert_senha := Edit_cert_senha.text;
      FController.Model.cert_numserie := Edit_cert_numserie.text;
      FController.Model.ge_dacte := Edit_ge_dacte.text;
      FController.Model.ge_formaemissao := Edit_ge_formaemissao.text;
      FController.Model.ge_logomarca := Edit_ge_logomarca.text;
      FController.Model.ge_salvar := Edit_ge_salvar.text;
      FController.Model.ge_pathsalvar := Edit_ge_pathsalvar.text;
      FController.Model.webs_uf := Edit_webs_uf.text;
      FController.Model.webs_ambiente := Edit_webs_ambiente.text;
      FController.Model.webs_visualizar := Edit_webs_visualizar.text;
      FController.Model.webs_ssltype := Edit_webs_ssltype.text;
      FController.Model.pro_host := Edit_pro_host.text;
      FController.Model.pro_porta := Edit_pro_porta.text;
      FController.Model.pro_user := Edit_pro_user.text;
      FController.Model.pro_pass := Edit_pro_pass.text;
      FController.Model.emi_cnpj := Edit_emi_cnpj.text;
      FController.Model.emi_ie := Edit_emi_ie.text;
      FController.Model.emi_razaosocial := Edit_emi_razaosocial.text;
      FController.Model.emi_fantasia := Edit_emi_fantasia.text;
      FController.Model.emi_fone := Edit_emi_fone.text;
      FController.Model.emi_cep := Edit_emi_cep.text;
      FController.Model.emi_logradouro := Edit_emi_logradouro.text;
      FController.Model.emi_numero := Edit_emi_numero.text;
      FController.Model.emi_complemento := Edit_emi_complemento.text;
      FController.Model.emi_bairro := Edit_emi_bairro.text;
      FController.Model.emi_codcidade := Edit_emi_codcidade.text;
      FController.Model.emi_cidade := Edit_emi_cidade.text;
      FController.Model.emi_uf := Edit_emi_uf.text;
      FController.Model.ema_host := Edit_ema_host.text;
      FController.Model.ema_port := Edit_ema_port.text;
      FController.Model.ema_user := Edit_ema_user.text;
      FController.Model.ema_pass := Edit_ema_pass.text;
      FController.Model.ema_assunto := Edit_ema_assunto.text;
      FController.Model.ema_ssl := Edit_ema_ssl.text;
      FController.Model.ema_mensagem := Edit_ema_mensagem.text;
      FController.Model.numserie := Edit_numserie.text;
      FController.Model.tipocte := Edit_tipocte.text;
      FController.Model.tiposervico := Edit_tiposervico.text;
      FController.Model.regimesimples := Edit_regimesimples.text;
      FController.Model.modelocte := Edit_modelocte.text;
      FController.Model.informar_resp_tecnico := Edit_informar_resp_tecnico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoes.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasconfiguracoes.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresasconfiguracoes.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresasconfiguracoes.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasconfiguracoes.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasconfiguracoes.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasconfiguracoes.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 43;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := cert_caminho;  
     Grid.Cells[inttostr(i),0] := cert_senha;  
     Grid.Cells[inttostr(i),0] := cert_numserie;  
     Grid.Cells[inttostr(i),0] := ge_dacte;  
     Grid.Cells[inttostr(i),0] := ge_formaemissao;  
     Grid.Cells[inttostr(i),0] := ge_logomarca;  
     Grid.Cells[inttostr(i),0] := ge_salvar;  
     Grid.Cells[inttostr(i),0] := ge_pathsalvar;  
     Grid.Cells[inttostr(i),0] := webs_uf;  
     Grid.Cells[inttostr(i),0] := webs_ambiente;  
     Grid.Cells[inttostr(i),0] := webs_visualizar;  
     Grid.Cells[inttostr(i),0] := webs_ssltype;  
     Grid.Cells[inttostr(i),0] := pro_host;  
     Grid.Cells[inttostr(i),0] := pro_porta;  
     Grid.Cells[inttostr(i),0] := pro_user;  
     Grid.Cells[inttostr(i),0] := pro_pass;  
     Grid.Cells[inttostr(i),0] := emi_cnpj;  
     Grid.Cells[inttostr(i),0] := emi_ie;  
     Grid.Cells[inttostr(i),0] := emi_razaosocial;  
     Grid.Cells[inttostr(i),0] := emi_fantasia;  
     Grid.Cells[inttostr(i),0] := emi_fone;  
     Grid.Cells[inttostr(i),0] := emi_cep;  
     Grid.Cells[inttostr(i),0] := emi_logradouro;  
     Grid.Cells[inttostr(i),0] := emi_numero;  
     Grid.Cells[inttostr(i),0] := emi_complemento;  
     Grid.Cells[inttostr(i),0] := emi_bairro;  
     Grid.Cells[inttostr(i),0] := emi_codcidade;  
     Grid.Cells[inttostr(i),0] := emi_cidade;  
     Grid.Cells[inttostr(i),0] := emi_uf;  
     Grid.Cells[inttostr(i),0] := ema_host;  
     Grid.Cells[inttostr(i),0] := ema_port;  
     Grid.Cells[inttostr(i),0] := ema_user;  
     Grid.Cells[inttostr(i),0] := ema_pass;  
     Grid.Cells[inttostr(i),0] := ema_assunto;  
     Grid.Cells[inttostr(i),0] := ema_ssl;  
     Grid.Cells[inttostr(i),0] := ema_mensagem;  
     Grid.Cells[inttostr(i),0] := numserie;  
     Grid.Cells[inttostr(i),0] := tipocte;  
     Grid.Cells[inttostr(i),0] := tiposervico;  
     Grid.Cells[inttostr(i),0] := regimesimples;  
     Grid.Cells[inttostr(i),0] := modelocte;  
     Grid.Cells[inttostr(i),0] := informar_resp_tecnico;  
end;

procedure TFrm_ViewERPempresasconfiguracoes.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasconfiguracoes.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasconfiguracoes.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.cert_caminho := Grid.Cells[1,Grid.row];
    FController.Model.cert_senha := Grid.Cells[2,Grid.row];
    FController.Model.cert_numserie := Grid.Cells[3,Grid.row];
    FController.Model.ge_dacte := Grid.Cells[4,Grid.row];
    FController.Model.ge_formaemissao := Grid.Cells[5,Grid.row];
    FController.Model.ge_logomarca := Grid.Cells[6,Grid.row];
    FController.Model.ge_salvar := Grid.Cells[7,Grid.row];
    FController.Model.ge_pathsalvar := Grid.Cells[8,Grid.row];
    FController.Model.webs_uf := Grid.Cells[9,Grid.row];
    FController.Model.webs_ambiente := Grid.Cells[10,Grid.row];
    FController.Model.webs_visualizar := Grid.Cells[11,Grid.row];
    FController.Model.webs_ssltype := Grid.Cells[12,Grid.row];
    FController.Model.pro_host := Grid.Cells[13,Grid.row];
    FController.Model.pro_porta := Grid.Cells[14,Grid.row];
    FController.Model.pro_user := Grid.Cells[15,Grid.row];
    FController.Model.pro_pass := Grid.Cells[16,Grid.row];
    FController.Model.emi_cnpj := Grid.Cells[17,Grid.row];
    FController.Model.emi_ie := Grid.Cells[18,Grid.row];
    FController.Model.emi_razaosocial := Grid.Cells[19,Grid.row];
    FController.Model.emi_fantasia := Grid.Cells[20,Grid.row];
    FController.Model.emi_fone := Grid.Cells[21,Grid.row];
    FController.Model.emi_cep := Grid.Cells[22,Grid.row];
    FController.Model.emi_logradouro := Grid.Cells[23,Grid.row];
    FController.Model.emi_numero := Grid.Cells[24,Grid.row];
    FController.Model.emi_complemento := Grid.Cells[25,Grid.row];
    FController.Model.emi_bairro := Grid.Cells[26,Grid.row];
    FController.Model.emi_codcidade := Grid.Cells[27,Grid.row];
    FController.Model.emi_cidade := Grid.Cells[28,Grid.row];
    FController.Model.emi_uf := Grid.Cells[29,Grid.row];
    FController.Model.ema_host := Grid.Cells[30,Grid.row];
    FController.Model.ema_port := Grid.Cells[31,Grid.row];
    FController.Model.ema_user := Grid.Cells[32,Grid.row];
    FController.Model.ema_pass := Grid.Cells[33,Grid.row];
    FController.Model.ema_assunto := Grid.Cells[34,Grid.row];
    FController.Model.ema_ssl := Grid.Cells[35,Grid.row];
    FController.Model.ema_mensagem := Grid.Cells[36,Grid.row];
    FController.Model.numserie := Grid.Cells[37,Grid.row];
    FController.Model.tipocte := Grid.Cells[38,Grid.row];
    FController.Model.tiposervico := Grid.Cells[39,Grid.row];
    FController.Model.regimesimples := Grid.Cells[40,Grid.row];
    FController.Model.modelocte := Grid.Cells[41,Grid.row];
    FController.Model.informar_resp_tecnico := Grid.Cells[42,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasconfiguracoes.LimparTela;  
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

procedure TFrm_ViewERPempresasconfiguracoes.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setcert_caminho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setcert_senha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setcert_numserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setge_dacte(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setge_formaemissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setge_logomarca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setge_salvar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setge_pathsalvar(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setwebs_uf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setwebs_ambiente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setwebs_visualizar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setwebs_ssltype(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setpro_host(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setpro_porta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setpro_user(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setpro_pass(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_cnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_ie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_razaosocial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_fantasia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_fone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_cep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_logradouro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_numero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_complemento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_bairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_codcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_cidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setemi_uf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_host(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_port(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_user(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_pass(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_assunto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_ssl(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setema_mensagem(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setnumserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Settipocte(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Settiposervico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setregimesimples(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setmodelocte(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoes.Setinformar_resp_tecnico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
