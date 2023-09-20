
unit View.ERP.cesta_fabricacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cesta_fabricacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcestafabricacao = class(TForm) 
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
    FController : TControllerERPcestafabricacao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fst : WideString;
    Fbase : Double;
    Fe_am : Double;
    Fe_ac : Double;
    Fe_al : Double;
    Fe_ap : Double;
    Fe_ba : Double;
    Fe_ce : Double;
    Fe_df : Double;
    Fe_es : Double;
    Fe_go : Double;
    Fe_ma : Double;
    Fe_mg : Double;
    Fe_mt : Double;
    Fe_ms : Double;
    Fe_pa : Double;
    Fe_pb : Double;
    Fe_pe : Double;
    Fe_pi : Double;
    Fe_pr : Double;
    Fe_rj : Double;
    Fe_rn : Double;
    Fe_ro : Double;
    Fe_rr : Double;
    Fe_rs : Double;
    Fe_sc : Double;
    Fe_se : Double;
    Fe_sp : Double;
    Fe_to : Double;
    Fobs : WideString;
    Fcfop : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setst(const Value : WideString);
    procedure Setbase(const Value : Double);
    procedure Sete_am(const Value : Double);
    procedure Sete_ac(const Value : Double);
    procedure Sete_al(const Value : Double);
    procedure Sete_ap(const Value : Double);
    procedure Sete_ba(const Value : Double);
    procedure Sete_ce(const Value : Double);
    procedure Sete_df(const Value : Double);
    procedure Sete_es(const Value : Double);
    procedure Sete_go(const Value : Double);
    procedure Sete_ma(const Value : Double);
    procedure Sete_mg(const Value : Double);
    procedure Sete_mt(const Value : Double);
    procedure Sete_ms(const Value : Double);
    procedure Sete_pa(const Value : Double);
    procedure Sete_pb(const Value : Double);
    procedure Sete_pe(const Value : Double);
    procedure Sete_pi(const Value : Double);
    procedure Sete_pr(const Value : Double);
    procedure Sete_rj(const Value : Double);
    procedure Sete_rn(const Value : Double);
    procedure Sete_ro(const Value : Double);
    procedure Sete_rr(const Value : Double);
    procedure Sete_rs(const Value : Double);
    procedure Sete_sc(const Value : Double);
    procedure Sete_se(const Value : Double);
    procedure Sete_sp(const Value : Double);
    procedure Sete_to(const Value : Double);
    procedure Setobs(const Value : WideString);
    procedure Setcfop(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property st : WideString         read Fst    write Fst;
    property base : Double         read Fbase    write Fbase;
    property e_am : Double         read Fe_am    write Fe_am;
    property e_ac : Double         read Fe_ac    write Fe_ac;
    property e_al : Double         read Fe_al    write Fe_al;
    property e_ap : Double         read Fe_ap    write Fe_ap;
    property e_ba : Double         read Fe_ba    write Fe_ba;
    property e_ce : Double         read Fe_ce    write Fe_ce;
    property e_df : Double         read Fe_df    write Fe_df;
    property e_es : Double         read Fe_es    write Fe_es;
    property e_go : Double         read Fe_go    write Fe_go;
    property e_ma : Double         read Fe_ma    write Fe_ma;
    property e_mg : Double         read Fe_mg    write Fe_mg;
    property e_mt : Double         read Fe_mt    write Fe_mt;
    property e_ms : Double         read Fe_ms    write Fe_ms;
    property e_pa : Double         read Fe_pa    write Fe_pa;
    property e_pb : Double         read Fe_pb    write Fe_pb;
    property e_pe : Double         read Fe_pe    write Fe_pe;
    property e_pi : Double         read Fe_pi    write Fe_pi;
    property e_pr : Double         read Fe_pr    write Fe_pr;
    property e_rj : Double         read Fe_rj    write Fe_rj;
    property e_rn : Double         read Fe_rn    write Fe_rn;
    property e_ro : Double         read Fe_ro    write Fe_ro;
    property e_rr : Double         read Fe_rr    write Fe_rr;
    property e_rs : Double         read Fe_rs    write Fe_rs;
    property e_sc : Double         read Fe_sc    write Fe_sc;
    property e_se : Double         read Fe_se    write Fe_se;
    property e_sp : Double         read Fe_sp    write Fe_sp;
    property e_to : Double         read Fe_to    write Fe_to;
    property obs : WideString         read Fobs    write Fobs;
    property cfop : WideString         read Fcfop    write Fcfop;

  end;

var
  Frm_ViewERPcestafabricacao : TFrm_ViewERPcestafabricacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 34; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_am); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ac); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_al); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ap); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ba); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_df); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_es); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_go); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_mg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_mt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_pa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_pb); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_pe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_pi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_pr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_rj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_rn); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_ro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_rr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_rs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_sc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_se); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_sp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_to); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop); 
    end; 
end; 

procedure TFrm_ViewERPcestafabricacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.st := Edit_st.text;
      FController.Model.base := Edit_base.text;
      FController.Model.e_am := Edit_e_am.text;
      FController.Model.e_ac := Edit_e_ac.text;
      FController.Model.e_al := Edit_e_al.text;
      FController.Model.e_ap := Edit_e_ap.text;
      FController.Model.e_ba := Edit_e_ba.text;
      FController.Model.e_ce := Edit_e_ce.text;
      FController.Model.e_df := Edit_e_df.text;
      FController.Model.e_es := Edit_e_es.text;
      FController.Model.e_go := Edit_e_go.text;
      FController.Model.e_ma := Edit_e_ma.text;
      FController.Model.e_mg := Edit_e_mg.text;
      FController.Model.e_mt := Edit_e_mt.text;
      FController.Model.e_ms := Edit_e_ms.text;
      FController.Model.e_pa := Edit_e_pa.text;
      FController.Model.e_pb := Edit_e_pb.text;
      FController.Model.e_pe := Edit_e_pe.text;
      FController.Model.e_pi := Edit_e_pi.text;
      FController.Model.e_pr := Edit_e_pr.text;
      FController.Model.e_rj := Edit_e_rj.text;
      FController.Model.e_rn := Edit_e_rn.text;
      FController.Model.e_ro := Edit_e_ro.text;
      FController.Model.e_rr := Edit_e_rr.text;
      FController.Model.e_rs := Edit_e_rs.text;
      FController.Model.e_sc := Edit_e_sc.text;
      FController.Model.e_se := Edit_e_se.text;
      FController.Model.e_sp := Edit_e_sp.text;
      FController.Model.e_to := Edit_e_to.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.cfop := Edit_cfop.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcestafabricacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcestafabricacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcestafabricacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcestafabricacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcestafabricacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcestafabricacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcestafabricacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 34;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := base;  
     Grid.Cells[inttostr(i),0] := e_am;  
     Grid.Cells[inttostr(i),0] := e_ac;  
     Grid.Cells[inttostr(i),0] := e_al;  
     Grid.Cells[inttostr(i),0] := e_ap;  
     Grid.Cells[inttostr(i),0] := e_ba;  
     Grid.Cells[inttostr(i),0] := e_ce;  
     Grid.Cells[inttostr(i),0] := e_df;  
     Grid.Cells[inttostr(i),0] := e_es;  
     Grid.Cells[inttostr(i),0] := e_go;  
     Grid.Cells[inttostr(i),0] := e_ma;  
     Grid.Cells[inttostr(i),0] := e_mg;  
     Grid.Cells[inttostr(i),0] := e_mt;  
     Grid.Cells[inttostr(i),0] := e_ms;  
     Grid.Cells[inttostr(i),0] := e_pa;  
     Grid.Cells[inttostr(i),0] := e_pb;  
     Grid.Cells[inttostr(i),0] := e_pe;  
     Grid.Cells[inttostr(i),0] := e_pi;  
     Grid.Cells[inttostr(i),0] := e_pr;  
     Grid.Cells[inttostr(i),0] := e_rj;  
     Grid.Cells[inttostr(i),0] := e_rn;  
     Grid.Cells[inttostr(i),0] := e_ro;  
     Grid.Cells[inttostr(i),0] := e_rr;  
     Grid.Cells[inttostr(i),0] := e_rs;  
     Grid.Cells[inttostr(i),0] := e_sc;  
     Grid.Cells[inttostr(i),0] := e_se;  
     Grid.Cells[inttostr(i),0] := e_sp;  
     Grid.Cells[inttostr(i),0] := e_to;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := cfop;  
end;

procedure TFrm_ViewERPcestafabricacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcestafabricacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcestafabricacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.st := Grid.Cells[3,Grid.row];
    FController.Model.base := Grid.Cells[4,Grid.row];
    FController.Model.e_am := Grid.Cells[5,Grid.row];
    FController.Model.e_ac := Grid.Cells[6,Grid.row];
    FController.Model.e_al := Grid.Cells[7,Grid.row];
    FController.Model.e_ap := Grid.Cells[8,Grid.row];
    FController.Model.e_ba := Grid.Cells[9,Grid.row];
    FController.Model.e_ce := Grid.Cells[10,Grid.row];
    FController.Model.e_df := Grid.Cells[11,Grid.row];
    FController.Model.e_es := Grid.Cells[12,Grid.row];
    FController.Model.e_go := Grid.Cells[13,Grid.row];
    FController.Model.e_ma := Grid.Cells[14,Grid.row];
    FController.Model.e_mg := Grid.Cells[15,Grid.row];
    FController.Model.e_mt := Grid.Cells[16,Grid.row];
    FController.Model.e_ms := Grid.Cells[17,Grid.row];
    FController.Model.e_pa := Grid.Cells[18,Grid.row];
    FController.Model.e_pb := Grid.Cells[19,Grid.row];
    FController.Model.e_pe := Grid.Cells[20,Grid.row];
    FController.Model.e_pi := Grid.Cells[21,Grid.row];
    FController.Model.e_pr := Grid.Cells[22,Grid.row];
    FController.Model.e_rj := Grid.Cells[23,Grid.row];
    FController.Model.e_rn := Grid.Cells[24,Grid.row];
    FController.Model.e_ro := Grid.Cells[25,Grid.row];
    FController.Model.e_rr := Grid.Cells[26,Grid.row];
    FController.Model.e_rs := Grid.Cells[27,Grid.row];
    FController.Model.e_sc := Grid.Cells[28,Grid.row];
    FController.Model.e_se := Grid.Cells[29,Grid.row];
    FController.Model.e_sp := Grid.Cells[30,Grid.row];
    FController.Model.e_to := Grid.Cells[31,Grid.row];
    FController.Model.obs := Grid.Cells[32,Grid.row];
    FController.Model.cfop := Grid.Cells[33,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcestafabricacao.LimparTela;  
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

procedure TFrm_ViewERPcestafabricacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setbase(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_am(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ac(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_al(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ap(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ba(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ce(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_df(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_es(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_go(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ma(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_mg(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_mt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_pa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_pb(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_pe(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_pi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_pr(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_rj(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_rn(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_ro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_rr(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_rs(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_sc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_se(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_sp(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Sete_to(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestafabricacao.Setcfop(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
