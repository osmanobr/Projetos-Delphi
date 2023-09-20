
unit View.ERP.d;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.d, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPd = class(TForm) 
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
    FController : TControllerERPd; 
    Fid : Integer;
    Find_oper : WideString;
    Find_emit : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fcod_mod : WideString;
    Fcod_sit : WideString;
    Fser : WideString;
    Fsub : WideString;
    Fnum_doc : WideString;
    Fdt_doc : TDateTime;
    Fdt_a_p : TDateTime;
    Fvl_doc : Double;
    Fvl_desc : Double;
    Fvl_serv : Double;
    Fvl_serv_nt : Double;
    Fvl_terc : Double;
    Fvl_da : Double;
    Fvl_bc_icms : Double;
    Fvl_icms : Double;
    Fvl_bc_icmsst : Double;
    Fvl_icmsst : Double;
    Fcod_inf : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Fcod_cta : WideString;
    Ftp_assinante : WideString;
    Fcst_icms : WideString;
    Faliq_icms : Double;
    Fid_cfop : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setind_oper(const Value : WideString);
    procedure Setind_emit(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setcod_mod(const Value : WideString);
    procedure Setcod_sit(const Value : WideString);
    procedure Setser(const Value : WideString);
    procedure Setsub(const Value : WideString);
    procedure Setnum_doc(const Value : WideString);
    procedure Setdt_doc(const Value : TDateTime);
    procedure Setdt_a_p(const Value : TDateTime);
    procedure Setvl_doc(const Value : Double);
    procedure Setvl_desc(const Value : Double);
    procedure Setvl_serv(const Value : Double);
    procedure Setvl_serv_nt(const Value : Double);
    procedure Setvl_terc(const Value : Double);
    procedure Setvl_da(const Value : Double);
    procedure Setvl_bc_icms(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_bc_icmsst(const Value : Double);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setcod_inf(const Value : WideString);
    procedure Setvl_pis(const Value : Double);
    procedure Setvl_cofins(const Value : Double);
    procedure Setcod_cta(const Value : WideString);
    procedure Settp_assinante(const Value : WideString);
    procedure Setcst_icms(const Value : WideString);
    procedure Setaliq_icms(const Value : Double);
    procedure Setid_cfop(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property ind_oper : WideString         read Find_oper    write Find_oper;
    property ind_emit : WideString         read Find_emit    write Find_emit;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property cod_mod : WideString         read Fcod_mod    write Fcod_mod;
    property cod_sit : WideString         read Fcod_sit    write Fcod_sit;
    property ser : WideString         read Fser    write Fser;
    property sub : WideString         read Fsub    write Fsub;
    property num_doc : WideString         read Fnum_doc    write Fnum_doc;
    property dt_doc : TDateTime         read Fdt_doc    write Fdt_doc;
    property dt_a_p : TDateTime         read Fdt_a_p    write Fdt_a_p;
    property vl_doc : Double         read Fvl_doc    write Fvl_doc;
    property vl_desc : Double         read Fvl_desc    write Fvl_desc;
    property vl_serv : Double         read Fvl_serv    write Fvl_serv;
    property vl_serv_nt : Double         read Fvl_serv_nt    write Fvl_serv_nt;
    property vl_terc : Double         read Fvl_terc    write Fvl_terc;
    property vl_da : Double         read Fvl_da    write Fvl_da;
    property vl_bc_icms : Double         read Fvl_bc_icms    write Fvl_bc_icms;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_bc_icmsst : Double         read Fvl_bc_icmsst    write Fvl_bc_icmsst;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property cod_inf : WideString         read Fcod_inf    write Fcod_inf;
    property vl_pis : Double         read Fvl_pis    write Fvl_pis;
    property vl_cofins : Double         read Fvl_cofins    write Fvl_cofins;
    property cod_cta : WideString         read Fcod_cta    write Fcod_cta;
    property tp_assinante : WideString         read Ftp_assinante    write Ftp_assinante;
    property cst_icms : WideString         read Fcst_icms    write Fcst_icms;
    property aliq_icms : Double         read Faliq_icms    write Faliq_icms;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;

  end;

var
  Frm_ViewERPd : TFrm_ViewERPd; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 30; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ind_oper); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ind_emit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_mod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_sit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sub); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_a_p); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_serv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_serv_nt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_terc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_da); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_inf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tp_assinante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
    end; 
end; 

procedure TFrm_ViewERPd.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ind_oper := Edit_ind_oper.text;
      FController.Model.ind_emit := Edit_ind_emit.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.cod_mod := Edit_cod_mod.text;
      FController.Model.cod_sit := Edit_cod_sit.text;
      FController.Model.ser := Edit_ser.text;
      FController.Model.sub := Edit_sub.text;
      FController.Model.num_doc := Edit_num_doc.text;
      FController.Model.dt_doc := Edit_dt_doc.text;
      FController.Model.dt_a_p := Edit_dt_a_p.text;
      FController.Model.vl_doc := Edit_vl_doc.text;
      FController.Model.vl_desc := Edit_vl_desc.text;
      FController.Model.vl_serv := Edit_vl_serv.text;
      FController.Model.vl_serv_nt := Edit_vl_serv_nt.text;
      FController.Model.vl_terc := Edit_vl_terc.text;
      FController.Model.vl_da := Edit_vl_da.text;
      FController.Model.vl_bc_icms := Edit_vl_bc_icms.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_bc_icmsst := Edit_vl_bc_icmsst.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.cod_inf := Edit_cod_inf.text;
      FController.Model.vl_pis := Edit_vl_pis.text;
      FController.Model.vl_cofins := Edit_vl_cofins.text;
      FController.Model.cod_cta := Edit_cod_cta.text;
      FController.Model.tp_assinante := Edit_tp_assinante.text;
      FController.Model.cst_icms := Edit_cst_icms.text;
      FController.Model.aliq_icms := Edit_aliq_icms.text;
      FController.Model.id_cfop := Edit_id_cfop.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPd.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPd.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPd.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPd.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPd.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPd.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPd.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 30;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ind_oper;  
     Grid.Cells[inttostr(i),0] := ind_emit;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := cod_mod;  
     Grid.Cells[inttostr(i),0] := cod_sit;  
     Grid.Cells[inttostr(i),0] := ser;  
     Grid.Cells[inttostr(i),0] := sub;  
     Grid.Cells[inttostr(i),0] := num_doc;  
     Grid.Cells[inttostr(i),0] := dt_doc;  
     Grid.Cells[inttostr(i),0] := dt_a_p;  
     Grid.Cells[inttostr(i),0] := vl_doc;  
     Grid.Cells[inttostr(i),0] := vl_desc;  
     Grid.Cells[inttostr(i),0] := vl_serv;  
     Grid.Cells[inttostr(i),0] := vl_serv_nt;  
     Grid.Cells[inttostr(i),0] := vl_terc;  
     Grid.Cells[inttostr(i),0] := vl_da;  
     Grid.Cells[inttostr(i),0] := vl_bc_icms;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_bc_icmsst;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := cod_inf;  
     Grid.Cells[inttostr(i),0] := vl_pis;  
     Grid.Cells[inttostr(i),0] := vl_cofins;  
     Grid.Cells[inttostr(i),0] := cod_cta;  
     Grid.Cells[inttostr(i),0] := tp_assinante;  
     Grid.Cells[inttostr(i),0] := cst_icms;  
     Grid.Cells[inttostr(i),0] := aliq_icms;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
end;

procedure TFrm_ViewERPd.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPd.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPd.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ind_oper := Grid.Cells[1,Grid.row];
    FController.Model.ind_emit := Grid.Cells[2,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[3,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[4,Grid.row];
    FController.Model.cod_mod := Grid.Cells[5,Grid.row];
    FController.Model.cod_sit := Grid.Cells[6,Grid.row];
    FController.Model.ser := Grid.Cells[7,Grid.row];
    FController.Model.sub := Grid.Cells[8,Grid.row];
    FController.Model.num_doc := Grid.Cells[9,Grid.row];
    FController.Model.dt_doc := Grid.Cells[10,Grid.row];
    FController.Model.dt_a_p := Grid.Cells[11,Grid.row];
    FController.Model.vl_doc := Grid.Cells[12,Grid.row];
    FController.Model.vl_desc := Grid.Cells[13,Grid.row];
    FController.Model.vl_serv := Grid.Cells[14,Grid.row];
    FController.Model.vl_serv_nt := Grid.Cells[15,Grid.row];
    FController.Model.vl_terc := Grid.Cells[16,Grid.row];
    FController.Model.vl_da := Grid.Cells[17,Grid.row];
    FController.Model.vl_bc_icms := Grid.Cells[18,Grid.row];
    FController.Model.vl_icms := Grid.Cells[19,Grid.row];
    FController.Model.vl_bc_icmsst := Grid.Cells[20,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[21,Grid.row];
    FController.Model.cod_inf := Grid.Cells[22,Grid.row];
    FController.Model.vl_pis := Grid.Cells[23,Grid.row];
    FController.Model.vl_cofins := Grid.Cells[24,Grid.row];
    FController.Model.cod_cta := Grid.Cells[25,Grid.row];
    FController.Model.tp_assinante := Grid.Cells[26,Grid.row];
    FController.Model.cst_icms := Grid.Cells[27,Grid.row];
    FController.Model.aliq_icms := Grid.Cells[28,Grid.row];
    FController.Model.id_cfop := Grid.Cells[29,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPd.LimparTela;  
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

procedure TFrm_ViewERPd.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setind_oper(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setind_emit(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcod_mod(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcod_sit(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setser(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setsub(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setnum_doc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdt_doc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdt_a_p(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_doc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_desc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_serv(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_serv_nt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_terc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_da(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_bc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_bc_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcod_inf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcod_cta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Settp_assinante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcst_icms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setaliq_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
