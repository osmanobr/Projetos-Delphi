
unit View.ERP.mesa_haver;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.mesa_haver, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmesahaver = class(TForm) 
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
    FController : TControllerERPmesahaver; 
    Fid : Integer;
    Fid_mesa : Integer;
    Fmesa : WideString;
    Fitem : Integer;
    Fdata : TDateTime;
    Fcupom : WideString;
    Fid_caixa : Integer;
    Fid_produto : WideString;
    Fnome_produto : WideString;
    Fid_grupo : Integer;
    Fid_fornecedor : Integer;
    Funidade : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fst : WideString;
    Ficms : Double;
    Fvl_icms : Double;
    Fcancelada : WideString;
    Ftransmitida : WideString;
    Fcozinha : WideString;
    Fimprimiu : WideString;
    Fobservacao : WideString;
    Fcopa : WideString;
    Fqtd_devolvida : Double;
    Fcartao : WideString;
    Fbar : WideString;
    Fid_vendedor : Integer;
    Fclick : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_mesa(const Value : Integer);
    procedure Setmesa(const Value : WideString);
    procedure Setitem(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setcupom(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_produto(const Value : WideString);
    procedure Setnome_produto(const Value : WideString);
    procedure Setid_grupo(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setunidade(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setst(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setcancelada(const Value : WideString);
    procedure Settransmitida(const Value : WideString);
    procedure Setcozinha(const Value : WideString);
    procedure Setimprimiu(const Value : WideString);
    procedure Setobservacao(const Value : WideString);
    procedure Setcopa(const Value : WideString);
    procedure Setqtd_devolvida(const Value : Double);
    procedure Setcartao(const Value : WideString);
    procedure Setbar(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setclick(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_mesa : Integer         read Fid_mesa    write Fid_mesa;
    property mesa : WideString         read Fmesa    write Fmesa;
    property item : Integer         read Fitem    write Fitem;
    property data : TDateTime         read Fdata    write Fdata;
    property cupom : WideString         read Fcupom    write Fcupom;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_produto : WideString         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property unidade : WideString         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property st : WideString         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property transmitida : WideString         read Ftransmitida    write Ftransmitida;
    property cozinha : WideString         read Fcozinha    write Fcozinha;
    property imprimiu : WideString         read Fimprimiu    write Fimprimiu;
    property observacao : WideString         read Fobservacao    write Fobservacao;
    property copa : WideString         read Fcopa    write Fcopa;
    property qtd_devolvida : Double         read Fqtd_devolvida    write Fqtd_devolvida;
    property cartao : WideString         read Fcartao    write Fcartao;
    property bar : WideString         read Fbar    write Fbar;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property click : WideString         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPmesahaver : TFrm_ViewERPmesahaver; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_mesa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mesa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transmitida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cozinha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimiu); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].copa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_devolvida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPmesahaver.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_mesa := Edit_id_mesa.text;
      FController.Model.mesa := Edit_mesa.text;
      FController.Model.item := Edit_item.text;
      FController.Model.data := Edit_data.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.transmitida := Edit_transmitida.text;
      FController.Model.cozinha := Edit_cozinha.text;
      FController.Model.imprimiu := Edit_imprimiu.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.copa := Edit_copa.text;
      FController.Model.qtd_devolvida := Edit_qtd_devolvida.text;
      FController.Model.cartao := Edit_cartao.text;
      FController.Model.bar := Edit_bar.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmesahaver.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmesahaver.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmesahaver.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmesahaver.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmesahaver.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmesahaver.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmesahaver.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 30;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_mesa;  
     Grid.Cells[inttostr(i),0] := mesa;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := transmitida;  
     Grid.Cells[inttostr(i),0] := cozinha;  
     Grid.Cells[inttostr(i),0] := imprimiu;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := copa;  
     Grid.Cells[inttostr(i),0] := qtd_devolvida;  
     Grid.Cells[inttostr(i),0] := cartao;  
     Grid.Cells[inttostr(i),0] := bar;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPmesahaver.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmesahaver.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmesahaver.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_mesa := Grid.Cells[1,Grid.row];
    FController.Model.mesa := Grid.Cells[2,Grid.row];
    FController.Model.item := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.cupom := Grid.Cells[5,Grid.row];
    FController.Model.id_caixa := Grid.Cells[6,Grid.row];
    FController.Model.id_produto := Grid.Cells[7,Grid.row];
    FController.Model.nome_produto := Grid.Cells[8,Grid.row];
    FController.Model.id_grupo := Grid.Cells[9,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[10,Grid.row];
    FController.Model.unidade := Grid.Cells[11,Grid.row];
    FController.Model.quantidade := Grid.Cells[12,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[13,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[14,Grid.row];
    FController.Model.vl_total := Grid.Cells[15,Grid.row];
    FController.Model.st := Grid.Cells[16,Grid.row];
    FController.Model.icms := Grid.Cells[17,Grid.row];
    FController.Model.vl_icms := Grid.Cells[18,Grid.row];
    FController.Model.cancelada := Grid.Cells[19,Grid.row];
    FController.Model.transmitida := Grid.Cells[20,Grid.row];
    FController.Model.cozinha := Grid.Cells[21,Grid.row];
    FController.Model.imprimiu := Grid.Cells[22,Grid.row];
    FController.Model.observacao := Grid.Cells[23,Grid.row];
    FController.Model.copa := Grid.Cells[24,Grid.row];
    FController.Model.qtd_devolvida := Grid.Cells[25,Grid.row];
    FController.Model.cartao := Grid.Cells[26,Grid.row];
    FController.Model.bar := Grid.Cells[27,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[28,Grid.row];
    FController.Model.click := Grid.Cells[29,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmesahaver.LimparTela;  
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

procedure TFrm_ViewERPmesahaver.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_mesa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setmesa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setcupom(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Settransmitida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setcozinha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setimprimiu(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setobservacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setcopa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setqtd_devolvida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setcartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setbar(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesahaver.Setclick(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
