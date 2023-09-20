
unit View.ERP.pedido_alm_entrega;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pedido_alm_entrega, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpedidoalmentrega = class(TForm) 
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
    FController : TControllerERPpedidoalmentrega; 
    Fid : Integer;
    Fid_pedido_alm : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fitem : Integer;
    Fnome_produto : WideString;
    Fdata : indefinido;
    Funidade : indefinido;
    Fquantidade : Double;
    Funitario : Double;
    Fdesconto : Double;
    Ftotal : Double;
    Fcancelada : Boolean;
    Fid_almoxarifado : Integer;
    Fqtd_entrega : Double;
    Fentregue : Boolean;
    Fqtd_entregue : Double;
    Fid_estimativa_obra_item : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_pedido_alm(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setitem(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setdata(const Value : indefinido);
    procedure Setunidade(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setunitario(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setcancelada(const Value : Boolean);
    procedure Setid_almoxarifado(const Value : Integer);
    procedure Setqtd_entrega(const Value : Double);
    procedure Setentregue(const Value : Boolean);
    procedure Setqtd_entregue(const Value : Double);
    procedure Setid_estimativa_obra_item(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_pedido_alm : Integer         read Fid_pedido_alm    write Fid_pedido_alm;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property item : Integer         read Fitem    write Fitem;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property data : indefinido         read Fdata    write Fdata;
    property unidade : indefinido         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property total : Double         read Ftotal    write Ftotal;
    property cancelada : Boolean         read Fcancelada    write Fcancelada;
    property id_almoxarifado : Integer         read Fid_almoxarifado    write Fid_almoxarifado;
    property qtd_entrega : Double         read Fqtd_entrega    write Fqtd_entrega;
    property entregue : Boolean         read Fentregue    write Fentregue;
    property qtd_entregue : Double         read Fqtd_entregue    write Fqtd_entregue;
    property id_estimativa_obra_item : Integer         read Fid_estimativa_obra_item    write Fid_estimativa_obra_item;

  end;

var
  Frm_ViewERPpedidoalmentrega : TFrm_ViewERPpedidoalmentrega; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_estimativa_obra_item); 
    end; 
end; 

procedure TFrm_ViewERPpedidoalmentrega.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_pedido_alm := Edit_id_pedido_alm.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.item := Edit_item.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.data := Edit_data.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.total := Edit_total.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.id_almoxarifado := Edit_id_almoxarifado.text;
      FController.Model.qtd_entrega := Edit_qtd_entrega.text;
      FController.Model.entregue := Edit_entregue.text;
      FController.Model.qtd_entregue := Edit_qtd_entregue.text;
      FController.Model.id_estimativa_obra_item := Edit_id_estimativa_obra_item.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpedidoalmentrega.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpedidoalmentrega.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpedidoalmentrega.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpedidoalmentrega.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpedidoalmentrega.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpedidoalmentrega.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpedidoalmentrega.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_pedido_alm;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := id_almoxarifado;  
     Grid.Cells[inttostr(i),0] := qtd_entrega;  
     Grid.Cells[inttostr(i),0] := entregue;  
     Grid.Cells[inttostr(i),0] := qtd_entregue;  
     Grid.Cells[inttostr(i),0] := id_estimativa_obra_item;  
end;

procedure TFrm_ViewERPpedidoalmentrega.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpedidoalmentrega.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpedidoalmentrega.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_pedido_alm := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.item := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.data := Grid.Cells[6,Grid.row];
    FController.Model.unidade := Grid.Cells[7,Grid.row];
    FController.Model.quantidade := Grid.Cells[8,Grid.row];
    FController.Model.unitario := Grid.Cells[9,Grid.row];
    FController.Model.desconto := Grid.Cells[10,Grid.row];
    FController.Model.total := Grid.Cells[11,Grid.row];
    FController.Model.cancelada := Grid.Cells[12,Grid.row];
    FController.Model.id_almoxarifado := Grid.Cells[13,Grid.row];
    FController.Model.qtd_entrega := Grid.Cells[14,Grid.row];
    FController.Model.entregue := Grid.Cells[15,Grid.row];
    FController.Model.qtd_entregue := Grid.Cells[16,Grid.row];
    FController.Model.id_estimativa_obra_item := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpedidoalmentrega.LimparTela;  
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

procedure TFrm_ViewERPpedidoalmentrega.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setid_pedido_alm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setcancelada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setid_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setqtd_entrega(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setentregue(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setqtd_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmentrega.Setid_estimativa_obra_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
