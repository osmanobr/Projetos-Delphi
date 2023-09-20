
unit View.ERP.c;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.c, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPc = class(TForm) 
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
    FController : TControllerERPc; 
    Fid : Integer;
    Fid_cfop : Integer;
    Find_oper : WideString;
    Find_emit : WideString;
    Fid_fornecedor : Integer;
    Ffornecedor : WideString;
    Fcod_mod : WideString;
    Fcod_sit : WideString;
    Fser : WideString;
    Fsub : WideString;
    Fcod_cons : WideString;
    Fnum_doc : WideString;
    Fdt_doc : TDateTime;
    Fdt_e_s : TDateTime;
    Fvl_doc : Double;
    Fvl_desc : Double;
    Fvl_forn : Double;
    Fvl_serv_nt : Double;
    Fvl_terc : Double;
    Fvl_da : Double;
    Fvl_bc_icms : Double;
    Fvl_icms : Double;
    Fvl_bc_icms_st : Double;
    Fvl_icms_st : Double;
    Fcod_inf : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Ftp_ligacao : WideString;
    Fcod_grupo_tensao : WideString;
    Fi_cod_item : WideString;
    Fi_cod_class : WideString;
    Fi_qtd : Double;
    Fi_vl_item : Double;
    Fi_aliq_icms : Double;
    Fi_cst_icms : WideString;
    Fcst_pis : WideString;
    Fcst_cofins : WideString;
    Faliq_pis : Double;
    Faliq_cofins : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cfop(const Value : Integer);
    procedure Setind_oper(const Value : WideString);
    procedure Setind_emit(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setfornecedor(const Value : WideString);
    procedure Setcod_mod(const Value : WideString);
    procedure Setcod_sit(const Value : WideString);
    procedure Setser(const Value : WideString);
    procedure Setsub(const Value : WideString);
    procedure Setcod_cons(const Value : WideString);
    procedure Setnum_doc(const Value : WideString);
    procedure Setdt_doc(const Value : TDateTime);
    procedure Setdt_e_s(const Value : TDateTime);
    procedure Setvl_doc(const Value : Double);
    procedure Setvl_desc(const Value : Double);
    procedure Setvl_forn(const Value : Double);
    procedure Setvl_serv_nt(const Value : Double);
    procedure Setvl_terc(const Value : Double);
    procedure Setvl_da(const Value : Double);
    procedure Setvl_bc_icms(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_bc_icms_st(const Value : Double);
    procedure Setvl_icms_st(const Value : Double);
    procedure Setcod_inf(const Value : WideString);
    procedure Setvl_pis(const Value : Double);
    procedure Setvl_cofins(const Value : Double);
    procedure Settp_ligacao(const Value : WideString);
    procedure Setcod_grupo_tensao(const Value : WideString);
    procedure Seti_cod_item(const Value : WideString);
    procedure Seti_cod_class(const Value : WideString);
    procedure Seti_qtd(const Value : Double);
    procedure Seti_vl_item(const Value : Double);
    procedure Seti_aliq_icms(const Value : Double);
    procedure Seti_cst_icms(const Value : WideString);
    procedure Setcst_pis(const Value : WideString);
    procedure Setcst_cofins(const Value : WideString);
    procedure Setaliq_pis(const Value : Double);
    procedure Setaliq_cofins(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property ind_oper : WideString         read Find_oper    write Find_oper;
    property ind_emit : WideString         read Find_emit    write Find_emit;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property fornecedor : WideString         read Ffornecedor    write Ffornecedor;
    property cod_mod : WideString         read Fcod_mod    write Fcod_mod;
    property cod_sit : WideString         read Fcod_sit    write Fcod_sit;
    property ser : WideString         read Fser    write Fser;
    property sub : WideString         read Fsub    write Fsub;
    property cod_cons : WideString         read Fcod_cons    write Fcod_cons;
    property num_doc : WideString         read Fnum_doc    write Fnum_doc;
    property dt_doc : TDateTime         read Fdt_doc    write Fdt_doc;
    property dt_e_s : TDateTime         read Fdt_e_s    write Fdt_e_s;
    property vl_doc : Double         read Fvl_doc    write Fvl_doc;
    property vl_desc : Double         read Fvl_desc    write Fvl_desc;
    property vl_forn : Double         read Fvl_forn    write Fvl_forn;
    property vl_serv_nt : Double         read Fvl_serv_nt    write Fvl_serv_nt;
    property vl_terc : Double         read Fvl_terc    write Fvl_terc;
    property vl_da : Double         read Fvl_da    write Fvl_da;
    property vl_bc_icms : Double         read Fvl_bc_icms    write Fvl_bc_icms;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_bc_icms_st : Double         read Fvl_bc_icms_st    write Fvl_bc_icms_st;
    property vl_icms_st : Double         read Fvl_icms_st    write Fvl_icms_st;
    property cod_inf : WideString         read Fcod_inf    write Fcod_inf;
    property vl_pis : Double         read Fvl_pis    write Fvl_pis;
    property vl_cofins : Double         read Fvl_cofins    write Fvl_cofins;
    property tp_ligacao : WideString         read Ftp_ligacao    write Ftp_ligacao;
    property cod_grupo_tensao : WideString         read Fcod_grupo_tensao    write Fcod_grupo_tensao;
    property i_cod_item : WideString         read Fi_cod_item    write Fi_cod_item;
    property i_cod_class : WideString         read Fi_cod_class    write Fi_cod_class;
    property i_qtd : Double         read Fi_qtd    write Fi_qtd;
    property i_vl_item : Double         read Fi_vl_item    write Fi_vl_item;
    property i_aliq_icms : Double         read Fi_aliq_icms    write Fi_aliq_icms;
    property i_cst_icms : WideString         read Fi_cst_icms    write Fi_cst_icms;
    property cst_pis : WideString         read Fcst_pis    write Fcst_pis;
    property cst_cofins : WideString         read Fcst_cofins    write Fcst_cofins;
    property aliq_pis : Double         read Faliq_pis    write Faliq_pis;
    property aliq_cofins : Double         read Faliq_cofins    write Faliq_cofins;

  end;

var
  Frm_ViewERPc : TFrm_ViewERPc; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 39; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ind_oper); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ind_emit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_mod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_sit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sub); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_e_s); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forn); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_serv_nt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_terc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_da); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_icms_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_inf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tp_ligacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_grupo_tensao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_cod_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_cod_class); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_qtd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_vl_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_aliq_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].i_cst_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_cofins); 
    end; 
end; 

procedure TFrm_ViewERPc.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.ind_oper := Edit_ind_oper.text;
      FController.Model.ind_emit := Edit_ind_emit.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.fornecedor := Edit_fornecedor.text;
      FController.Model.cod_mod := Edit_cod_mod.text;
      FController.Model.cod_sit := Edit_cod_sit.text;
      FController.Model.ser := Edit_ser.text;
      FController.Model.sub := Edit_sub.text;
      FController.Model.cod_cons := Edit_cod_cons.text;
      FController.Model.num_doc := Edit_num_doc.text;
      FController.Model.dt_doc := Edit_dt_doc.text;
      FController.Model.dt_e_s := Edit_dt_e_s.text;
      FController.Model.vl_doc := Edit_vl_doc.text;
      FController.Model.vl_desc := Edit_vl_desc.text;
      FController.Model.vl_forn := Edit_vl_forn.text;
      FController.Model.vl_serv_nt := Edit_vl_serv_nt.text;
      FController.Model.vl_terc := Edit_vl_terc.text;
      FController.Model.vl_da := Edit_vl_da.text;
      FController.Model.vl_bc_icms := Edit_vl_bc_icms.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_bc_icms_st := Edit_vl_bc_icms_st.text;
      FController.Model.vl_icms_st := Edit_vl_icms_st.text;
      FController.Model.cod_inf := Edit_cod_inf.text;
      FController.Model.vl_pis := Edit_vl_pis.text;
      FController.Model.vl_cofins := Edit_vl_cofins.text;
      FController.Model.tp_ligacao := Edit_tp_ligacao.text;
      FController.Model.cod_grupo_tensao := Edit_cod_grupo_tensao.text;
      FController.Model.i_cod_item := Edit_i_cod_item.text;
      FController.Model.i_cod_class := Edit_i_cod_class.text;
      FController.Model.i_qtd := Edit_i_qtd.text;
      FController.Model.i_vl_item := Edit_i_vl_item.text;
      FController.Model.i_aliq_icms := Edit_i_aliq_icms.text;
      FController.Model.i_cst_icms := Edit_i_cst_icms.text;
      FController.Model.cst_pis := Edit_cst_pis.text;
      FController.Model.cst_cofins := Edit_cst_cofins.text;
      FController.Model.aliq_pis := Edit_aliq_pis.text;
      FController.Model.aliq_cofins := Edit_aliq_cofins.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPc.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPc.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPc.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPc.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPc.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPc.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPc.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 39;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := ind_oper;  
     Grid.Cells[inttostr(i),0] := ind_emit;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := fornecedor;  
     Grid.Cells[inttostr(i),0] := cod_mod;  
     Grid.Cells[inttostr(i),0] := cod_sit;  
     Grid.Cells[inttostr(i),0] := ser;  
     Grid.Cells[inttostr(i),0] := sub;  
     Grid.Cells[inttostr(i),0] := cod_cons;  
     Grid.Cells[inttostr(i),0] := num_doc;  
     Grid.Cells[inttostr(i),0] := dt_doc;  
     Grid.Cells[inttostr(i),0] := dt_e_s;  
     Grid.Cells[inttostr(i),0] := vl_doc;  
     Grid.Cells[inttostr(i),0] := vl_desc;  
     Grid.Cells[inttostr(i),0] := vl_forn;  
     Grid.Cells[inttostr(i),0] := vl_serv_nt;  
     Grid.Cells[inttostr(i),0] := vl_terc;  
     Grid.Cells[inttostr(i),0] := vl_da;  
     Grid.Cells[inttostr(i),0] := vl_bc_icms;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_bc_icms_st;  
     Grid.Cells[inttostr(i),0] := vl_icms_st;  
     Grid.Cells[inttostr(i),0] := cod_inf;  
     Grid.Cells[inttostr(i),0] := vl_pis;  
     Grid.Cells[inttostr(i),0] := vl_cofins;  
     Grid.Cells[inttostr(i),0] := tp_ligacao;  
     Grid.Cells[inttostr(i),0] := cod_grupo_tensao;  
     Grid.Cells[inttostr(i),0] := i_cod_item;  
     Grid.Cells[inttostr(i),0] := i_cod_class;  
     Grid.Cells[inttostr(i),0] := i_qtd;  
     Grid.Cells[inttostr(i),0] := i_vl_item;  
     Grid.Cells[inttostr(i),0] := i_aliq_icms;  
     Grid.Cells[inttostr(i),0] := i_cst_icms;  
     Grid.Cells[inttostr(i),0] := cst_pis;  
     Grid.Cells[inttostr(i),0] := cst_cofins;  
     Grid.Cells[inttostr(i),0] := aliq_pis;  
     Grid.Cells[inttostr(i),0] := aliq_cofins;  
end;

procedure TFrm_ViewERPc.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPc.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPc.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cfop := Grid.Cells[1,Grid.row];
    FController.Model.ind_oper := Grid.Cells[2,Grid.row];
    FController.Model.ind_emit := Grid.Cells[3,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[4,Grid.row];
    FController.Model.fornecedor := Grid.Cells[5,Grid.row];
    FController.Model.cod_mod := Grid.Cells[6,Grid.row];
    FController.Model.cod_sit := Grid.Cells[7,Grid.row];
    FController.Model.ser := Grid.Cells[8,Grid.row];
    FController.Model.sub := Grid.Cells[9,Grid.row];
    FController.Model.cod_cons := Grid.Cells[10,Grid.row];
    FController.Model.num_doc := Grid.Cells[11,Grid.row];
    FController.Model.dt_doc := Grid.Cells[12,Grid.row];
    FController.Model.dt_e_s := Grid.Cells[13,Grid.row];
    FController.Model.vl_doc := Grid.Cells[14,Grid.row];
    FController.Model.vl_desc := Grid.Cells[15,Grid.row];
    FController.Model.vl_forn := Grid.Cells[16,Grid.row];
    FController.Model.vl_serv_nt := Grid.Cells[17,Grid.row];
    FController.Model.vl_terc := Grid.Cells[18,Grid.row];
    FController.Model.vl_da := Grid.Cells[19,Grid.row];
    FController.Model.vl_bc_icms := Grid.Cells[20,Grid.row];
    FController.Model.vl_icms := Grid.Cells[21,Grid.row];
    FController.Model.vl_bc_icms_st := Grid.Cells[22,Grid.row];
    FController.Model.vl_icms_st := Grid.Cells[23,Grid.row];
    FController.Model.cod_inf := Grid.Cells[24,Grid.row];
    FController.Model.vl_pis := Grid.Cells[25,Grid.row];
    FController.Model.vl_cofins := Grid.Cells[26,Grid.row];
    FController.Model.tp_ligacao := Grid.Cells[27,Grid.row];
    FController.Model.cod_grupo_tensao := Grid.Cells[28,Grid.row];
    FController.Model.i_cod_item := Grid.Cells[29,Grid.row];
    FController.Model.i_cod_class := Grid.Cells[30,Grid.row];
    FController.Model.i_qtd := Grid.Cells[31,Grid.row];
    FController.Model.i_vl_item := Grid.Cells[32,Grid.row];
    FController.Model.i_aliq_icms := Grid.Cells[33,Grid.row];
    FController.Model.i_cst_icms := Grid.Cells[34,Grid.row];
    FController.Model.cst_pis := Grid.Cells[35,Grid.row];
    FController.Model.cst_cofins := Grid.Cells[36,Grid.row];
    FController.Model.aliq_pis := Grid.Cells[37,Grid.row];
    FController.Model.aliq_cofins := Grid.Cells[38,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPc.LimparTela;  
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

procedure TFrm_ViewERPc.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setind_oper(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setind_emit(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setfornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcod_mod(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcod_sit(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setser(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setsub(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcod_cons(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setnum_doc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setdt_doc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setdt_e_s(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_doc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_desc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_forn(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_serv_nt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_terc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_da(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_bc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_bc_icms_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_icms_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcod_inf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setvl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Settp_ligacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcod_grupo_tensao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_cod_item(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_cod_class(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_qtd(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_vl_item(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_aliq_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Seti_cst_icms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcst_pis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setcst_cofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setaliq_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPc.Setaliq_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
