
unit View.ERP.temp_etiquetas;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.temp_etiquetas, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtempetiquetas = class(TForm) 
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
    FController : TControllerERPtempetiquetas; 
    Fid : Integer;
    Fhd : indefinido;
    Fip : indefinido;
    Fnome : indefinido;
    Floja : Integer;
    Fdatahora : indefinido;
    Fviaerp : Boolean;
    Fviapdv : Boolean;
    Fviafood : Boolean;
    Fviaposto : Boolean;
    Fviapvd : Boolean;
    Fvianfe : Boolean;
    Fviasped : Boolean;
    Fnotify : Boolean;
    Fuse_vianfe : Boolean;
    Fuse_viasped : Boolean;
    Fuse_vianfce : Boolean;
    Fid_terminal : indefinido;
    Fvianfce : Boolean;
    Frel_zebrado : Boolean;
    Fversao_browser : Integer;
    Fport_impr : indefinido;
    Fmodelo : Integer;
    Fsalto_linha : Integer;
    Fbaud : Integer;
    Fdata : Integer;
    Fparity : Integer;
    Fstop : Integer;
    Fhandshake : Integer;
    Fhardflow : Boolean;
    Fsoftflow : Boolean;
    Fterm_matr : Boolean;
    Fserial : Boolean;
    Fespaco_entre_linhas : Integer;
    Fviamdfe : Boolean;
    Fuse_viamdfe : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Sethd(const Value : indefinido);
    procedure Setip(const Value : indefinido);
    procedure Setnome(const Value : indefinido);
    procedure Setloja(const Value : Integer);
    procedure Setdatahora(const Value : indefinido);
    procedure Setviaerp(const Value : Boolean);
    procedure Setviapdv(const Value : Boolean);
    procedure Setviafood(const Value : Boolean);
    procedure Setviaposto(const Value : Boolean);
    procedure Setviapvd(const Value : Boolean);
    procedure Setvianfe(const Value : Boolean);
    procedure Setviasped(const Value : Boolean);
    procedure Setnotify(const Value : Boolean);
    procedure Setuse_vianfe(const Value : Boolean);
    procedure Setuse_viasped(const Value : Boolean);
    procedure Setuse_vianfce(const Value : Boolean);
    procedure Setid_terminal(const Value : indefinido);
    procedure Setvianfce(const Value : Boolean);
    procedure Setrel_zebrado(const Value : Boolean);
    procedure Setversao_browser(const Value : Integer);
    procedure Setport_impr(const Value : indefinido);
    procedure Setmodelo(const Value : Integer);
    procedure Setsalto_linha(const Value : Integer);
    procedure Setbaud(const Value : Integer);
    procedure Setdata(const Value : Integer);
    procedure Setparity(const Value : Integer);
    procedure Setstop(const Value : Integer);
    procedure Sethandshake(const Value : Integer);
    procedure Sethardflow(const Value : Boolean);
    procedure Setsoftflow(const Value : Boolean);
    procedure Setterm_matr(const Value : Boolean);
    procedure Setserial(const Value : Boolean);
    procedure Setespaco_entre_linhas(const Value : Integer);
    procedure Setviamdfe(const Value : Boolean);
    procedure Setuse_viamdfe(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property hd : indefinido         read Fhd    write Fhd;
    property ip : indefinido         read Fip    write Fip;
    property nome : indefinido         read Fnome    write Fnome;
    property loja : Integer         read Floja    write Floja;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property viaerp : Boolean         read Fviaerp    write Fviaerp;
    property viapdv : Boolean         read Fviapdv    write Fviapdv;
    property viafood : Boolean         read Fviafood    write Fviafood;
    property viaposto : Boolean         read Fviaposto    write Fviaposto;
    property viapvd : Boolean         read Fviapvd    write Fviapvd;
    property vianfe : Boolean         read Fvianfe    write Fvianfe;
    property viasped : Boolean         read Fviasped    write Fviasped;
    property notify : Boolean         read Fnotify    write Fnotify;
    property use_vianfe : Boolean         read Fuse_vianfe    write Fuse_vianfe;
    property use_viasped : Boolean         read Fuse_viasped    write Fuse_viasped;
    property use_vianfce : Boolean         read Fuse_vianfce    write Fuse_vianfce;
    property id_terminal : indefinido         read Fid_terminal    write Fid_terminal;
    property vianfce : Boolean         read Fvianfce    write Fvianfce;
    property rel_zebrado : Boolean         read Frel_zebrado    write Frel_zebrado;
    property versao_browser : Integer         read Fversao_browser    write Fversao_browser;
    property port_impr : indefinido         read Fport_impr    write Fport_impr;
    property modelo : Integer         read Fmodelo    write Fmodelo;
    property salto_linha : Integer         read Fsalto_linha    write Fsalto_linha;
    property baud : Integer         read Fbaud    write Fbaud;
    property data : Integer         read Fdata    write Fdata;
    property parity : Integer         read Fparity    write Fparity;
    property stop : Integer         read Fstop    write Fstop;
    property handshake : Integer         read Fhandshake    write Fhandshake;
    property hardflow : Boolean         read Fhardflow    write Fhardflow;
    property softflow : Boolean         read Fsoftflow    write Fsoftflow;
    property term_matr : Boolean         read Fterm_matr    write Fterm_matr;
    property serial : Boolean         read Fserial    write Fserial;
    property espaco_entre_linhas : Integer         read Fespaco_entre_linhas    write Fespaco_entre_linhas;
    property viamdfe : Boolean         read Fviamdfe    write Fviamdfe;
    property use_viamdfe : Boolean         read Fuse_viamdfe    write Fuse_viamdfe;

  end;

var
  Frm_ViewERPtempetiquetas : TFrm_ViewERPtempetiquetas; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 36; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ip); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].loja); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viaerp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viapdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viafood); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viaposto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viapvd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vianfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viasped); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].notify); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].use_vianfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].use_viasped); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].use_vianfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_terminal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vianfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rel_zebrado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao_browser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].port_impr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_linha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baud); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parity); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].stop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].handshake); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hardflow); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].softflow); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].term_matr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].espaco_entre_linhas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viamdfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].use_viamdfe); 
    end; 
end; 

procedure TFrm_ViewERPtempetiquetas.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.hd := Edit_hd.text;
      FController.Model.ip := Edit_ip.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.loja := Edit_loja.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.viaerp := Edit_viaerp.text;
      FController.Model.viapdv := Edit_viapdv.text;
      FController.Model.viafood := Edit_viafood.text;
      FController.Model.viaposto := Edit_viaposto.text;
      FController.Model.viapvd := Edit_viapvd.text;
      FController.Model.vianfe := Edit_vianfe.text;
      FController.Model.viasped := Edit_viasped.text;
      FController.Model.notify := Edit_notify.text;
      FController.Model.use_vianfe := Edit_use_vianfe.text;
      FController.Model.use_viasped := Edit_use_viasped.text;
      FController.Model.use_vianfce := Edit_use_vianfce.text;
      FController.Model.id_terminal := Edit_id_terminal.text;
      FController.Model.vianfce := Edit_vianfce.text;
      FController.Model.rel_zebrado := Edit_rel_zebrado.text;
      FController.Model.versao_browser := Edit_versao_browser.text;
      FController.Model.port_impr := Edit_port_impr.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.salto_linha := Edit_salto_linha.text;
      FController.Model.baud := Edit_baud.text;
      FController.Model.data := Edit_data.text;
      FController.Model.parity := Edit_parity.text;
      FController.Model.stop := Edit_stop.text;
      FController.Model.handshake := Edit_handshake.text;
      FController.Model.hardflow := Edit_hardflow.text;
      FController.Model.softflow := Edit_softflow.text;
      FController.Model.term_matr := Edit_term_matr.text;
      FController.Model.serial := Edit_serial.text;
      FController.Model.espaco_entre_linhas := Edit_espaco_entre_linhas.text;
      FController.Model.viamdfe := Edit_viamdfe.text;
      FController.Model.use_viamdfe := Edit_use_viamdfe.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtempetiquetas.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtempetiquetas.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtempetiquetas.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtempetiquetas.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtempetiquetas.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtempetiquetas.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtempetiquetas.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 36;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := hd;  
     Grid.Cells[inttostr(i),0] := ip;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := loja;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := viaerp;  
     Grid.Cells[inttostr(i),0] := viapdv;  
     Grid.Cells[inttostr(i),0] := viafood;  
     Grid.Cells[inttostr(i),0] := viaposto;  
     Grid.Cells[inttostr(i),0] := viapvd;  
     Grid.Cells[inttostr(i),0] := vianfe;  
     Grid.Cells[inttostr(i),0] := viasped;  
     Grid.Cells[inttostr(i),0] := notify;  
     Grid.Cells[inttostr(i),0] := use_vianfe;  
     Grid.Cells[inttostr(i),0] := use_viasped;  
     Grid.Cells[inttostr(i),0] := use_vianfce;  
     Grid.Cells[inttostr(i),0] := id_terminal;  
     Grid.Cells[inttostr(i),0] := vianfce;  
     Grid.Cells[inttostr(i),0] := rel_zebrado;  
     Grid.Cells[inttostr(i),0] := versao_browser;  
     Grid.Cells[inttostr(i),0] := port_impr;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := salto_linha;  
     Grid.Cells[inttostr(i),0] := baud;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := parity;  
     Grid.Cells[inttostr(i),0] := stop;  
     Grid.Cells[inttostr(i),0] := handshake;  
     Grid.Cells[inttostr(i),0] := hardflow;  
     Grid.Cells[inttostr(i),0] := softflow;  
     Grid.Cells[inttostr(i),0] := term_matr;  
     Grid.Cells[inttostr(i),0] := serial;  
     Grid.Cells[inttostr(i),0] := espaco_entre_linhas;  
     Grid.Cells[inttostr(i),0] := viamdfe;  
     Grid.Cells[inttostr(i),0] := use_viamdfe;  
end;

procedure TFrm_ViewERPtempetiquetas.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtempetiquetas.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtempetiquetas.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.hd := Grid.Cells[1,Grid.row];
    FController.Model.ip := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.loja := Grid.Cells[4,Grid.row];
    FController.Model.datahora := Grid.Cells[5,Grid.row];
    FController.Model.viaerp := Grid.Cells[6,Grid.row];
    FController.Model.viapdv := Grid.Cells[7,Grid.row];
    FController.Model.viafood := Grid.Cells[8,Grid.row];
    FController.Model.viaposto := Grid.Cells[9,Grid.row];
    FController.Model.viapvd := Grid.Cells[10,Grid.row];
    FController.Model.vianfe := Grid.Cells[11,Grid.row];
    FController.Model.viasped := Grid.Cells[12,Grid.row];
    FController.Model.notify := Grid.Cells[13,Grid.row];
    FController.Model.use_vianfe := Grid.Cells[14,Grid.row];
    FController.Model.use_viasped := Grid.Cells[15,Grid.row];
    FController.Model.use_vianfce := Grid.Cells[16,Grid.row];
    FController.Model.id_terminal := Grid.Cells[17,Grid.row];
    FController.Model.vianfce := Grid.Cells[18,Grid.row];
    FController.Model.rel_zebrado := Grid.Cells[19,Grid.row];
    FController.Model.versao_browser := Grid.Cells[20,Grid.row];
    FController.Model.port_impr := Grid.Cells[21,Grid.row];
    FController.Model.modelo := Grid.Cells[22,Grid.row];
    FController.Model.salto_linha := Grid.Cells[23,Grid.row];
    FController.Model.baud := Grid.Cells[24,Grid.row];
    FController.Model.data := Grid.Cells[25,Grid.row];
    FController.Model.parity := Grid.Cells[26,Grid.row];
    FController.Model.stop := Grid.Cells[27,Grid.row];
    FController.Model.handshake := Grid.Cells[28,Grid.row];
    FController.Model.hardflow := Grid.Cells[29,Grid.row];
    FController.Model.softflow := Grid.Cells[30,Grid.row];
    FController.Model.term_matr := Grid.Cells[31,Grid.row];
    FController.Model.serial := Grid.Cells[32,Grid.row];
    FController.Model.espaco_entre_linhas := Grid.Cells[33,Grid.row];
    FController.Model.viamdfe := Grid.Cells[34,Grid.row];
    FController.Model.use_viamdfe := Grid.Cells[35,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtempetiquetas.LimparTela;  
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

procedure TFrm_ViewERPtempetiquetas.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Sethd(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setip(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setloja(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviaerp(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviapdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviafood(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviaposto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviapvd(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setvianfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviasped(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setnotify(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setuse_vianfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setuse_viasped(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setuse_vianfce(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setid_terminal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setvianfce(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setrel_zebrado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setversao_browser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setport_impr(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setmodelo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setsalto_linha(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setbaud(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setdata(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setparity(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setstop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Sethandshake(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Sethardflow(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setsoftflow(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setterm_matr(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setserial(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setespaco_entre_linhas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setviamdfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtempetiquetas.Setuse_viamdfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
