
unit View.ERP.fornecedor_pedido_compra;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fornecedor_pedido_compra, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfornecedorpedidocompra = class(TForm) 
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
    FController : TControllerERPfornecedorpedidocompra; 
    Fid : Integer;
    Fid_fornecedor : Integer;
    Fid_produto : Integer;
    Fcodigo_fabricante : WideString;
    Fpreco_compra : Double;
    Fpreco_custo : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setpreco_compra(const Value : Double);
    procedure Setpreco_custo(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property preco_compra : Double         read Fpreco_compra    write Fpreco_compra;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;

  end;

var
  Frm_ViewERPfornecedorpedidocompra : TFrm_ViewERPfornecedorpedidocompra; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
    end; 
end; 

procedure TFrm_ViewERPfornecedorpedidocompra.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.preco_compra := Edit_preco_compra.text;
      FController.Model.preco_custo := Edit_preco_custo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfornecedorpedidocompra.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfornecedorpedidocompra.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfornecedorpedidocompra.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfornecedorpedidocompra.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfornecedorpedidocompra.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfornecedorpedidocompra.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfornecedorpedidocompra.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := preco_compra;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
end;

procedure TFrm_ViewERPfornecedorpedidocompra.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfornecedorpedidocompra.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfornecedorpedidocompra.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[3,Grid.row];
    FController.Model.preco_compra := Grid.Cells[4,Grid.row];
    FController.Model.preco_custo := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfornecedorpedidocompra.LimparTela;  
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

procedure TFrm_ViewERPfornecedorpedidocompra.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorpedidocompra.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorpedidocompra.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorpedidocompra.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorpedidocompra.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorpedidocompra.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
