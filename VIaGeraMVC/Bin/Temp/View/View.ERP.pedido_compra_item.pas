
unit View.ERP.pedido_compra_duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pedido_compra_duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpedidocompraduplicata = class(TForm) 
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
    FController : TControllerERPpedidocompraduplicata; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido_compra : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fchegou : Boolean;
    Fcst : indefinido;
    Fbc_icms : Double;
    Ficms : Double;
    Fvl_icms : Double;
    Freducao : Double;
    Fbc_st : Double;
    Fvl_st : Double;
    Fipi : Double;
    Fvl_ipi : Double;
    Festoque_data_pedido : Double;
    Freferencia : indefinido;
    Fclick : Boolean;
    Fdata_solicitacao : TDateTime;
    Fsolicitante : indefinido;
    Fsolicitacao : indefinido;
    Fbc_ipi : Double;
    Fentregue : Double;
    Fem_espera : Double;
    Fnome_fornecedor : indefinido;
    Funidade : indefinido;
    Fitens : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_pedido_compra(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Settipo(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setunitario(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setchegou(const Value : Boolean);
    procedure Setcst(const Value : indefinido);
    procedure Setbc_icms(const Value : Double);
    procedure Seticms(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setbc_st(const Value : Double);
    procedure Setvl_st(const Value : Double);
    procedure Setipi(const Value : Double);
    procedure Setvl_ipi(const Value : Double);
    procedure Setestoque_data_pedido(const Value : Double);
    procedure Setreferencia(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setdata_solicitacao(const Value : TDateTime);
    procedure Setsolicitante(const Value : indefinido);
    procedure Setsolicitacao(const Value : indefinido);
    procedure Setbc_ipi(const Value : Double);
    procedure Setentregue(const Value : Double);
    procedure Setem_espera(const Value : Double);
    procedure Setnome_fornecedor(const Value : indefinido);
    procedure Setunidade(const Value : indefinido);
    procedure Setitens(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_pedido_compra : Integer         read Fid_pedido_compra    write Fid_pedido_compra;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property total : Double         read Ftotal    write Ftotal;
    property chegou : Boolean         read Fchegou    write Fchegou;
    property cst : indefinido         read Fcst    write Fcst;
    property bc_icms : Double         read Fbc_icms    write Fbc_icms;
    property icms : Double         read Ficms    write Ficms;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property reducao : Double         read Freducao    write Freducao;
    property bc_st : Double         read Fbc_st    write Fbc_st;
    property vl_st : Double         read Fvl_st    write Fvl_st;
    property ipi : Double         read Fipi    write Fipi;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property estoque_data_pedido : Double         read Festoque_data_pedido    write Festoque_data_pedido;
    property referencia : indefinido         read Freferencia    write Freferencia;
    property click : Boolean         read Fclick    write Fclick;
    property data_solicitacao : TDateTime         read Fdata_solicitacao    write Fdata_solicitacao;
    property solicitante : indefinido         read Fsolicitante    write Fsolicitante;
    property solicitacao : indefinido         read Fsolicitacao    write Fsolicitacao;
    property bc_ipi : Double         read Fbc_ipi    write Fbc_ipi;
    property entregue : Double         read Fentregue    write Fentregue;
    property em_espera : Double         read Fem_espera    write Fem_espera;
    property nome_fornecedor : indefinido         read Fnome_fornecedor    write Fnome_fornecedor;
    property unidade : indefinido         read Funidade    write Funidade;
    property itens : Double         read Fitens    write Fitens;

  end;

var
  Frm_ViewERPpedidocompraduplicata : TFrm_ViewERPpedidocompraduplicata; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 31; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chegou); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_data_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_solicitacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].solicitante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].solicitacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].em_espera); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].itens); 
    end; 
end; 

procedure TFrm_ViewERPpedidocompraduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_pedido_compra := Edit_id_pedido_compra.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.total := Edit_total.text;
      FController.Model.chegou := Edit_chegou.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.bc_icms := Edit_bc_icms.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.bc_st := Edit_bc_st.text;
      FController.Model.vl_st := Edit_vl_st.text;
      FController.Model.ipi := Edit_ipi.text;
      FController.Model.vl_ipi := Edit_vl_ipi.text;
      FController.Model.estoque_data_pedido := Edit_estoque_data_pedido.text;
      FController.Model.referencia := Edit_referencia.text;
      FController.Model.click := Edit_click.text;
      FController.Model.data_solicitacao := Edit_data_solicitacao.text;
      FController.Model.solicitante := Edit_solicitante.text;
      FController.Model.solicitacao := Edit_solicitacao.text;
      FController.Model.bc_ipi := Edit_bc_ipi.text;
      FController.Model.entregue := Edit_entregue.text;
      FController.Model.em_espera := Edit_em_espera.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.itens := Edit_itens.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpedidocompraduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpedidocompraduplicata.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpedidocompraduplicata.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpedidocompraduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpedidocompraduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpedidocompraduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpedidocompraduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 31;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_pedido_compra;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := chegou;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := bc_icms;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := bc_st;  
     Grid.Cells[inttostr(i),0] := vl_st;  
     Grid.Cells[inttostr(i),0] := ipi;  
     Grid.Cells[inttostr(i),0] := vl_ipi;  
     Grid.Cells[inttostr(i),0] := estoque_data_pedido;  
     Grid.Cells[inttostr(i),0] := referencia;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := data_solicitacao;  
     Grid.Cells[inttostr(i),0] := solicitante;  
     Grid.Cells[inttostr(i),0] := solicitacao;  
     Grid.Cells[inttostr(i),0] := bc_ipi;  
     Grid.Cells[inttostr(i),0] := entregue;  
     Grid.Cells[inttostr(i),0] := em_espera;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := itens;  
end;

procedure TFrm_ViewERPpedidocompraduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpedidocompraduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpedidocompraduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_pedido_compra := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.tipo := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.unitario := Grid.Cells[7,Grid.row];
    FController.Model.total := Grid.Cells[8,Grid.row];
    FController.Model.chegou := Grid.Cells[9,Grid.row];
    FController.Model.cst := Grid.Cells[10,Grid.row];
    FController.Model.bc_icms := Grid.Cells[11,Grid.row];
    FController.Model.icms := Grid.Cells[12,Grid.row];
    FController.Model.vl_icms := Grid.Cells[13,Grid.row];
    FController.Model.reducao := Grid.Cells[14,Grid.row];
    FController.Model.bc_st := Grid.Cells[15,Grid.row];
    FController.Model.vl_st := Grid.Cells[16,Grid.row];
    FController.Model.ipi := Grid.Cells[17,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[18,Grid.row];
    FController.Model.estoque_data_pedido := Grid.Cells[19,Grid.row];
    FController.Model.referencia := Grid.Cells[20,Grid.row];
    FController.Model.click := Grid.Cells[21,Grid.row];
    FController.Model.data_solicitacao := Grid.Cells[22,Grid.row];
    FController.Model.solicitante := Grid.Cells[23,Grid.row];
    FController.Model.solicitacao := Grid.Cells[24,Grid.row];
    FController.Model.bc_ipi := Grid.Cells[25,Grid.row];
    FController.Model.entregue := Grid.Cells[26,Grid.row];
    FController.Model.em_espera := Grid.Cells[27,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[28,Grid.row];
    FController.Model.unidade := Grid.Cells[29,Grid.row];
    FController.Model.itens := Grid.Cells[30,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpedidocompraduplicata.LimparTela;  
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

procedure TFrm_ViewERPpedidocompraduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setid_pedido_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setchegou(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setcst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setbc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setbc_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setvl_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setestoque_data_pedido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setreferencia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setdata_solicitacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setsolicitante(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setsolicitacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setbc_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setentregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setem_espera(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setnome_fornecedor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocompraduplicata.Setitens(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
