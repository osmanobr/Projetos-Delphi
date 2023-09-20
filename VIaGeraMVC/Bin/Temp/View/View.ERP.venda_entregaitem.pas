
unit View.ERP.venda_entrega_lote;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_entrega_lote, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaentregalote = class(TForm) 
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
    FController : TControllerERPvendaentregalote; 
    Fid : Integer;
    Fid_venda_entrega : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fst : indefinido;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fvl_ipi : Double;
    Ftipo : indefinido;
    Fvl_frete : Double;
    Fbc_icms : Double;
    Freducao : Double;
    Fp_ipi : Double;
    Fcst : indefinido;
    Fdesconto : Double;
    Fbc_st : Double;
    Ficmsst : Double;
    Fpis : Double;
    Fcofins : Double;
    Fdata_hora_entrega : indefinido;
    Fquantidade_entregue : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda_entrega(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setunidade(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setst(const Value : indefinido);
    procedure Seticms(const Value : Double);
    procedure Seticms_cupom(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setitem(const Value : Integer);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : indefinido);
    procedure Settam_grade(const Value : indefinido);
    procedure Setvl_ipi(const Value : Double);
    procedure Settipo(const Value : indefinido);
    procedure Setvl_frete(const Value : Double);
    procedure Setbc_icms(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setp_ipi(const Value : Double);
    procedure Setcst(const Value : indefinido);
    procedure Setdesconto(const Value : Double);
    procedure Setbc_st(const Value : Double);
    procedure Seticmsst(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setdata_hora_entrega(const Value : indefinido);
    procedure Setquantidade_entregue(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda_entrega : Integer         read Fid_venda_entrega    write Fid_venda_entrega;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property unidade : indefinido         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property st : indefinido         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property icms_cupom : Double         read Ficms_cupom    write Ficms_cupom;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property item : Integer         read Fitem    write Fitem;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : indefinido         read Fcor_grade    write Fcor_grade;
    property tam_grade : indefinido         read Ftam_grade    write Ftam_grade;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property bc_icms : Double         read Fbc_icms    write Fbc_icms;
    property reducao : Double         read Freducao    write Freducao;
    property p_ipi : Double         read Fp_ipi    write Fp_ipi;
    property cst : indefinido         read Fcst    write Fcst;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property bc_st : Double         read Fbc_st    write Fbc_st;
    property icmsst : Double         read Ficmsst    write Ficmsst;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property data_hora_entrega : indefinido         read Fdata_hora_entrega    write Fdata_hora_entrega;
    property quantidade_entregue : Double         read Fquantidade_entregue    write Fquantidade_entregue;

  end;

var
  Frm_ViewERPvendaentregalote : TFrm_ViewERPvendaentregalote; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].p_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_hora_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_entregue); 
    end; 
end; 

procedure TFrm_ViewERPvendaentregalote.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda_entrega := Edit_id_venda_entrega.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.icms_cupom := Edit_icms_cupom.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.item := Edit_item.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.vl_ipi := Edit_vl_ipi.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.bc_icms := Edit_bc_icms.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.p_ipi := Edit_p_ipi.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.bc_st := Edit_bc_st.text;
      FController.Model.icmsst := Edit_icmsst.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.data_hora_entrega := Edit_data_hora_entrega.text;
      FController.Model.quantidade_entregue := Edit_quantidade_entregue.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaentregalote.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaentregalote.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaentregalote.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaentregalote.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaentregalote.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaentregalote.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaentregalote.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 30;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda_entrega;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := icms_cupom;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := vl_ipi;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := bc_icms;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := p_ipi;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := bc_st;  
     Grid.Cells[inttostr(i),0] := icmsst;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := data_hora_entrega;  
     Grid.Cells[inttostr(i),0] := quantidade_entregue;  
end;

procedure TFrm_ViewERPvendaentregalote.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaentregalote.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaentregalote.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda_entrega := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.unidade := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[6,Grid.row];
    FController.Model.vl_total := Grid.Cells[7,Grid.row];
    FController.Model.st := Grid.Cells[8,Grid.row];
    FController.Model.icms := Grid.Cells[9,Grid.row];
    FController.Model.icms_cupom := Grid.Cells[10,Grid.row];
    FController.Model.vl_icms := Grid.Cells[11,Grid.row];
    FController.Model.item := Grid.Cells[12,Grid.row];
    FController.Model.id_grade := Grid.Cells[13,Grid.row];
    FController.Model.cor_grade := Grid.Cells[14,Grid.row];
    FController.Model.tam_grade := Grid.Cells[15,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[16,Grid.row];
    FController.Model.tipo := Grid.Cells[17,Grid.row];
    FController.Model.vl_frete := Grid.Cells[18,Grid.row];
    FController.Model.bc_icms := Grid.Cells[19,Grid.row];
    FController.Model.reducao := Grid.Cells[20,Grid.row];
    FController.Model.p_ipi := Grid.Cells[21,Grid.row];
    FController.Model.cst := Grid.Cells[22,Grid.row];
    FController.Model.desconto := Grid.Cells[23,Grid.row];
    FController.Model.bc_st := Grid.Cells[24,Grid.row];
    FController.Model.icmsst := Grid.Cells[25,Grid.row];
    FController.Model.pis := Grid.Cells[26,Grid.row];
    FController.Model.cofins := Grid.Cells[27,Grid.row];
    FController.Model.data_hora_entrega := Grid.Cells[28,Grid.row];
    FController.Model.quantidade_entregue := Grid.Cells[29,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaentregalote.LimparTela;  
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

procedure TFrm_ViewERPvendaentregalote.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setid_venda_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Seticms_cupom(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setcor_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Settam_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setbc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setp_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setcst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setbc_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Seticmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setdata_hora_entrega(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaentregalote.Setquantidade_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
