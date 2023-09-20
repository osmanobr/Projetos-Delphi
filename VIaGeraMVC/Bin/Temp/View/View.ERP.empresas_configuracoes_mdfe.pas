
unit View.ERP.empresas_configuracoes_cte;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_configuracoes_cte, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasconfiguracoescte = class(TForm) 
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
    FController : TControllerERPempresasconfiguracoescte; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcert_caminho(const Value : WideString);
    procedure Setcert_senha(const Value : WideString);
    procedure Setcert_numserie(const Value : WideString);
    procedure Setge_dacte(const Value : indefinido);
    procedure Setge_ambiente(const Value : indefinido);
    procedure Setge_formaemissao(const Value : indefinido);
    procedure Setge_logomarca(const Value : indefinido);
    procedure Setge_salvar(const Value : Boolean);
    procedure Setge_pathsalvar(const Value : WideString);
    procedure Setge_versao_df(const Value : indefinido);
    procedure Setwebs_uf(const Value : WideString);
    procedure Setwebs_ambiente(const Value : indefinido);
    procedure Setwebs_visualizar(const Value : Boolean);
    procedure Setwebs_ssltype(const Value : indefinido);
    procedure Setpro_host(const Value : WideString);
    procedure Setpro_porta(const Value : WideString);
    procedure Setpro_user(const Value : WideString);
    procedure Setpro_pass(const Value : WideString);
    procedure Settipoemi(const Value : Integer);
    procedure Setserie(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property cert_caminho : WideString         read Fcert_caminho    write Fcert_caminho;
    property cert_senha : WideString         read Fcert_senha    write Fcert_senha;
    property cert_numserie : WideString         read Fcert_numserie    write Fcert_numserie;
    property ge_dacte : indefinido         read Fge_dacte    write Fge_dacte;
    property ge_ambiente : indefinido         read Fge_ambiente    write Fge_ambiente;
    property ge_formaemissao : indefinido         read Fge_formaemissao    write Fge_formaemissao;
    property ge_logomarca : indefinido         read Fge_logomarca    write Fge_logomarca;
    property ge_salvar : Boolean         read Fge_salvar    write Fge_salvar;
    property ge_pathsalvar : WideString         read Fge_pathsalvar    write Fge_pathsalvar;
    property ge_versao_df : indefinido         read Fge_versao_df    write Fge_versao_df;
    property webs_uf : WideString         read Fwebs_uf    write Fwebs_uf;
    property webs_ambiente : indefinido         read Fwebs_ambiente    write Fwebs_ambiente;
    property webs_visualizar : Boolean         read Fwebs_visualizar    write Fwebs_visualizar;
    property webs_ssltype : indefinido         read Fwebs_ssltype    write Fwebs_ssltype;
    property pro_host : WideString         read Fpro_host    write Fpro_host;
    property pro_porta : WideString         read Fpro_porta    write Fpro_porta;
    property pro_user : WideString         read Fpro_user    write Fpro_user;
    property pro_pass : WideString         read Fpro_pass    write Fpro_pass;
    property tipoemi : Integer         read Ftipoemi    write Ftipoemi;
    property serie : Integer         read Fserie    write Fserie;

  end;

var
  Frm_ViewERPempresasconfiguracoescte : TFrm_ViewERPempresasconfiguracoescte; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 21; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_caminho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cert_numserie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_dacte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_ambiente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_formaemissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_logomarca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_salvar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_pathsalvar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ge_versao_df); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_ambiente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_visualizar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].webs_ssltype); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_host); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_user); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pro_pass); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipoemi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
    end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoescte.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.cert_caminho := Edit_cert_caminho.text;
      FController.Model.cert_senha := Edit_cert_senha.text;
      FController.Model.cert_numserie := Edit_cert_numserie.text;
      FController.Model.ge_dacte := Edit_ge_dacte.text;
      FController.Model.ge_ambiente := Edit_ge_ambiente.text;
      FController.Model.ge_formaemissao := Edit_ge_formaemissao.text;
      FController.Model.ge_logomarca := Edit_ge_logomarca.text;
      FController.Model.ge_salvar := Edit_ge_salvar.text;
      FController.Model.ge_pathsalvar := Edit_ge_pathsalvar.text;
      FController.Model.ge_versao_df := Edit_ge_versao_df.text;
      FController.Model.webs_uf := Edit_webs_uf.text;
      FController.Model.webs_ambiente := Edit_webs_ambiente.text;
      FController.Model.webs_visualizar := Edit_webs_visualizar.text;
      FController.Model.webs_ssltype := Edit_webs_ssltype.text;
      FController.Model.pro_host := Edit_pro_host.text;
      FController.Model.pro_porta := Edit_pro_porta.text;
      FController.Model.pro_user := Edit_pro_user.text;
      FController.Model.pro_pass := Edit_pro_pass.text;
      FController.Model.tipoemi := Edit_tipoemi.text;
      FController.Model.serie := Edit_serie.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoescte.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasconfiguracoescte.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresasconfiguracoescte.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresasconfiguracoescte.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasconfiguracoescte.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasconfiguracoescte.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasconfiguracoescte.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 21;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := cert_caminho;  
     Grid.Cells[inttostr(i),0] := cert_senha;  
     Grid.Cells[inttostr(i),0] := cert_numserie;  
     Grid.Cells[inttostr(i),0] := ge_dacte;  
     Grid.Cells[inttostr(i),0] := ge_ambiente;  
     Grid.Cells[inttostr(i),0] := ge_formaemissao;  
     Grid.Cells[inttostr(i),0] := ge_logomarca;  
     Grid.Cells[inttostr(i),0] := ge_salvar;  
     Grid.Cells[inttostr(i),0] := ge_pathsalvar;  
     Grid.Cells[inttostr(i),0] := ge_versao_df;  
     Grid.Cells[inttostr(i),0] := webs_uf;  
     Grid.Cells[inttostr(i),0] := webs_ambiente;  
     Grid.Cells[inttostr(i),0] := webs_visualizar;  
     Grid.Cells[inttostr(i),0] := webs_ssltype;  
     Grid.Cells[inttostr(i),0] := pro_host;  
     Grid.Cells[inttostr(i),0] := pro_porta;  
     Grid.Cells[inttostr(i),0] := pro_user;  
     Grid.Cells[inttostr(i),0] := pro_pass;  
     Grid.Cells[inttostr(i),0] := tipoemi;  
     Grid.Cells[inttostr(i),0] := serie;  
end;

procedure TFrm_ViewERPempresasconfiguracoescte.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasconfiguracoescte.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasconfiguracoescte.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.cert_caminho := Grid.Cells[1,Grid.row];
    FController.Model.cert_senha := Grid.Cells[2,Grid.row];
    FController.Model.cert_numserie := Grid.Cells[3,Grid.row];
    FController.Model.ge_dacte := Grid.Cells[4,Grid.row];
    FController.Model.ge_ambiente := Grid.Cells[5,Grid.row];
    FController.Model.ge_formaemissao := Grid.Cells[6,Grid.row];
    FController.Model.ge_logomarca := Grid.Cells[7,Grid.row];
    FController.Model.ge_salvar := Grid.Cells[8,Grid.row];
    FController.Model.ge_pathsalvar := Grid.Cells[9,Grid.row];
    FController.Model.ge_versao_df := Grid.Cells[10,Grid.row];
    FController.Model.webs_uf := Grid.Cells[11,Grid.row];
    FController.Model.webs_ambiente := Grid.Cells[12,Grid.row];
    FController.Model.webs_visualizar := Grid.Cells[13,Grid.row];
    FController.Model.webs_ssltype := Grid.Cells[14,Grid.row];
    FController.Model.pro_host := Grid.Cells[15,Grid.row];
    FController.Model.pro_porta := Grid.Cells[16,Grid.row];
    FController.Model.pro_user := Grid.Cells[17,Grid.row];
    FController.Model.pro_pass := Grid.Cells[18,Grid.row];
    FController.Model.tipoemi := Grid.Cells[19,Grid.row];
    FController.Model.serie := Grid.Cells[20,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasconfiguracoescte.LimparTela;  
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

procedure TFrm_ViewERPempresasconfiguracoescte.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setcert_caminho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setcert_senha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setcert_numserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_dacte(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_ambiente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_formaemissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_logomarca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_salvar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_pathsalvar(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setge_versao_df(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setwebs_uf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setwebs_ambiente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setwebs_visualizar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setwebs_ssltype(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setpro_host(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setpro_porta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setpro_user(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setpro_pass(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Settipoemi(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoescte.Setserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
