
unit View.ERP.empresas_contador;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_contador, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresascontador = class(TForm) 
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
    FController : TControllerERPempresascontador; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setemail(const Value : WideString);
    procedure Setsmtp(const Value : WideString);
    procedure Setporta(const Value : Integer);
    procedure Setusuario(const Value : WideString);
    procedure Setsenha(const Value : WideString);
    procedure Setsmtp_segure(const Value : Boolean);
    procedure Setassunto(const Value : WideString);
    procedure Setobs(const Value : WideString);
    procedure Setnfe(const Value : Boolean);
    procedure Setnfce(const Value : Boolean);
    procedure Setsped(const Value : Boolean);
    procedure Setprevenda(const Value : Boolean);
    procedure Setcontas_receber(const Value : Boolean);
    procedure Setnotas(const Value : Boolean);
    procedure Setemail_retorno(const Value : WideString);
    procedure Settelefone_retorno(const Value : WideString);
    procedure Setobs_contas_fixas(const Value : WideString);
    procedure Setssl(const Value : Boolean);
    procedure Settsl(const Value : Boolean);
    procedure Setorigen(const Value : WideString);
    procedure Setdestinatario(const Value : WideString);
    procedure Setrelatorio(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property email : WideString         read Femail    write Femail;
    property smtp : WideString         read Fsmtp    write Fsmtp;
    property porta : Integer         read Fporta    write Fporta;
    property usuario : WideString         read Fusuario    write Fusuario;
    property senha : WideString         read Fsenha    write Fsenha;
    property smtp_segure : Boolean         read Fsmtp_segure    write Fsmtp_segure;
    property assunto : WideString         read Fassunto    write Fassunto;
    property obs : WideString         read Fobs    write Fobs;
    property nfe : Boolean         read Fnfe    write Fnfe;
    property nfce : Boolean         read Fnfce    write Fnfce;
    property sped : Boolean         read Fsped    write Fsped;
    property prevenda : Boolean         read Fprevenda    write Fprevenda;
    property contas_receber : Boolean         read Fcontas_receber    write Fcontas_receber;
    property notas : Boolean         read Fnotas    write Fnotas;
    property email_retorno : WideString         read Femail_retorno    write Femail_retorno;
    property telefone_retorno : WideString         read Ftelefone_retorno    write Ftelefone_retorno;
    property obs_contas_fixas : WideString         read Fobs_contas_fixas    write Fobs_contas_fixas;
    property ssl : Boolean         read Fssl    write Fssl;
    property tsl : Boolean         read Ftsl    write Ftsl;
    property origen : WideString         read Forigen    write Forigen;
    property destinatario : WideString         read Fdestinatario    write Fdestinatario;
    property relatorio : Boolean         read Frelatorio    write Frelatorio;

  end;

var
  Frm_ViewERPempresascontador : TFrm_ViewERPempresascontador; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 24; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].smtp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].smtp_segure); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].assunto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sped); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prevenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contas_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].notas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_contas_fixas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ssl); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tsl); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].origen); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].destinatario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].relatorio); 
    end; 
end; 

procedure TFrm_ViewERPempresascontador.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.email := Edit_email.text;
      FController.Model.smtp := Edit_smtp.text;
      FController.Model.porta := Edit_porta.text;
      FController.Model.usuario := Edit_usuario.text;
      FController.Model.senha := Edit_senha.text;
      FController.Model.smtp_segure := Edit_smtp_segure.text;
      FController.Model.assunto := Edit_assunto.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.sped := Edit_sped.text;
      FController.Model.prevenda := Edit_prevenda.text;
      FController.Model.contas_receber := Edit_contas_receber.text;
      FController.Model.notas := Edit_notas.text;
      FController.Model.email_retorno := Edit_email_retorno.text;
      FController.Model.telefone_retorno := Edit_telefone_retorno.text;
      FController.Model.obs_contas_fixas := Edit_obs_contas_fixas.text;
      FController.Model.ssl := Edit_ssl.text;
      FController.Model.tsl := Edit_tsl.text;
      FController.Model.origen := Edit_origen.text;
      FController.Model.destinatario := Edit_destinatario.text;
      FController.Model.relatorio := Edit_relatorio.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresascontador.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresascontador.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresascontador.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresascontador.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresascontador.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresascontador.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresascontador.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 24;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := smtp;  
     Grid.Cells[inttostr(i),0] := porta;  
     Grid.Cells[inttostr(i),0] := usuario;  
     Grid.Cells[inttostr(i),0] := senha;  
     Grid.Cells[inttostr(i),0] := smtp_segure;  
     Grid.Cells[inttostr(i),0] := assunto;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := sped;  
     Grid.Cells[inttostr(i),0] := prevenda;  
     Grid.Cells[inttostr(i),0] := contas_receber;  
     Grid.Cells[inttostr(i),0] := notas;  
     Grid.Cells[inttostr(i),0] := email_retorno;  
     Grid.Cells[inttostr(i),0] := telefone_retorno;  
     Grid.Cells[inttostr(i),0] := obs_contas_fixas;  
     Grid.Cells[inttostr(i),0] := ssl;  
     Grid.Cells[inttostr(i),0] := tsl;  
     Grid.Cells[inttostr(i),0] := origen;  
     Grid.Cells[inttostr(i),0] := destinatario;  
     Grid.Cells[inttostr(i),0] := relatorio;  
end;

procedure TFrm_ViewERPempresascontador.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresascontador.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresascontador.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.email := Grid.Cells[2,Grid.row];
    FController.Model.smtp := Grid.Cells[3,Grid.row];
    FController.Model.porta := Grid.Cells[4,Grid.row];
    FController.Model.usuario := Grid.Cells[5,Grid.row];
    FController.Model.senha := Grid.Cells[6,Grid.row];
    FController.Model.smtp_segure := Grid.Cells[7,Grid.row];
    FController.Model.assunto := Grid.Cells[8,Grid.row];
    FController.Model.obs := Grid.Cells[9,Grid.row];
    FController.Model.nfe := Grid.Cells[10,Grid.row];
    FController.Model.nfce := Grid.Cells[11,Grid.row];
    FController.Model.sped := Grid.Cells[12,Grid.row];
    FController.Model.prevenda := Grid.Cells[13,Grid.row];
    FController.Model.contas_receber := Grid.Cells[14,Grid.row];
    FController.Model.notas := Grid.Cells[15,Grid.row];
    FController.Model.email_retorno := Grid.Cells[16,Grid.row];
    FController.Model.telefone_retorno := Grid.Cells[17,Grid.row];
    FController.Model.obs_contas_fixas := Grid.Cells[18,Grid.row];
    FController.Model.ssl := Grid.Cells[19,Grid.row];
    FController.Model.tsl := Grid.Cells[20,Grid.row];
    FController.Model.origen := Grid.Cells[21,Grid.row];
    FController.Model.destinatario := Grid.Cells[22,Grid.row];
    FController.Model.relatorio := Grid.Cells[23,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresascontador.LimparTela;  
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

procedure TFrm_ViewERPempresascontador.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setsmtp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setporta(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setusuario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setsenha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setsmtp_segure(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setassunto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setnfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setnfce(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setsped(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setprevenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setcontas_receber(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setnotas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setemail_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Settelefone_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setobs_contas_fixas(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setssl(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Settsl(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setorigen(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setdestinatario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascontador.Setrelatorio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
