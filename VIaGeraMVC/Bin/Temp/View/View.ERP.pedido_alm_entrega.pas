
unit View.ERP.pedido_alm;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pedido_alm, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpedidoalm = class(TForm) 
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
    FController : TControllerERPpedidoalm; 
    Fid : Integer;
    Fid_venda : Integer;
    Fid_pedido_alm : Integer;
    Fid_pedido_alm_item : Integer;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fcancelado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_pedido_alm(const Value : Integer);
    procedure Setid_pedido_alm_item(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setid_almoxarifado(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setunitario(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setcancelado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_pedido_alm : Integer         read Fid_pedido_alm    write Fid_pedido_alm;
    property id_pedido_alm_item : Integer         read Fid_pedido_alm_item    write Fid_pedido_alm_item;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property id_almoxarifado : Integer         read Fid_almoxarifado    write Fid_almoxarifado;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property total : Double         read Ftotal    write Ftotal;
    property cancelado : Boolean         read Fcancelado    write Fcancelado;

  end;

var
  Frm_ViewERPpedidoalm : TFrm_ViewERPpedidoalm; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_alm_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
    end; 
end; 

procedure TFrm_ViewERPpedidoalm.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_pedido_alm := Edit_id_pedido_alm.text;
      FController.Model.id_pedido_alm_item := Edit_id_pedido_alm_item.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.id_almoxarifado := Edit_id_almoxarifado.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.total := Edit_total.text;
      FController.Model.cancelado := Edit_cancelado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpedidoalm.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpedidoalm.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpedidoalm.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpedidoalm.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpedidoalm.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpedidoalm.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpedidoalm.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_pedido_alm;  
     Grid.Cells[inttostr(i),0] := id_pedido_alm_item;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := id_almoxarifado;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := cancelado;  
end;

procedure TFrm_ViewERPpedidoalm.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpedidoalm.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpedidoalm.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda := Grid.Cells[1,Grid.row];
    FController.Model.id_pedido_alm := Grid.Cells[2,Grid.row];
    FController.Model.id_pedido_alm_item := Grid.Cells[3,Grid.row];
    FController.Model.id_produto := Grid.Cells[4,Grid.row];
    FController.Model.id_almoxarifado := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.unitario := Grid.Cells[7,Grid.row];
    FController.Model.total := Grid.Cells[8,Grid.row];
    FController.Model.cancelado := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpedidoalm.LimparTela;  
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

procedure TFrm_ViewERPpedidoalm.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setid_pedido_alm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setid_pedido_alm_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setid_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalm.Setcancelado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
