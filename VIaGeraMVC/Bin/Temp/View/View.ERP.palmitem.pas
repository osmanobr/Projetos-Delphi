
unit View.ERP.pagar_excluidos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pagar_excluidos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpagarexcluidos = class(TForm) 
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
    FController : TControllerERPpagarexcluidos; 
    Fiditem : Integer;
    Fnumeropedido : Integer;
    Fnumero : Integer;
    Fseq : Integer;
    Fproduto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fvalor : Double;
    Fvalorunitario : Double;
    Ftotal : Double;
    Fclick : Boolean;
    Fvl_desconto : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setiditem(const Value : Integer);
    procedure Setnumeropedido(const Value : Integer);
    procedure Setnumero(const Value : Integer);
    procedure Setseq(const Value : Integer);
    procedure Setproduto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvalor(const Value : Double);
    procedure Setvalorunitario(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setvl_desconto(const Value : Double);

  public

    property iditem : Integer         read Fiditem    write Fiditem;
    property numeropedido : Integer         read Fnumeropedido    write Fnumeropedido;
    property numero : Integer         read Fnumero    write Fnumero;
    property seq : Integer         read Fseq    write Fseq;
    property produto : Integer         read Fproduto    write Fproduto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property valor : Double         read Fvalor    write Fvalor;
    property valorunitario : Double         read Fvalorunitario    write Fvalorunitario;
    property total : Double         read Ftotal    write Ftotal;
    property click : Boolean         read Fclick    write Fclick;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;

  end;

var
  Frm_ViewERPpagarexcluidos : TFrm_ViewERPpagarexcluidos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iditem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numeropedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].seq); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valorunitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
    end; 
end; 

procedure TFrm_ViewERPpagarexcluidos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.iditem := Edit_iditem.text;
      FController.Model.numeropedido := Edit_numeropedido.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.seq := Edit_seq.text;
      FController.Model.produto := Edit_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.valorunitario := Edit_valorunitario.text;
      FController.Model.total := Edit_total.text;
      FController.Model.click := Edit_click.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpagarexcluidos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpagarexcluidos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpagarexcluidos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpagarexcluidos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpagarexcluidos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpagarexcluidos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpagarexcluidos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := iditem;  
     Grid.Cells[inttostr(i),0] := numeropedido;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := seq;  
     Grid.Cells[inttostr(i),0] := produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := valorunitario;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
end;

procedure TFrm_ViewERPpagarexcluidos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpagarexcluidos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpagarexcluidos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.iditem := Grid.Cells[0,Grid.row];
    FController.Model.numeropedido := Grid.Cells[1,Grid.row];
    FController.Model.numero := Grid.Cells[2,Grid.row];
    FController.Model.seq := Grid.Cells[3,Grid.row];
    FController.Model.produto := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.valor := Grid.Cells[7,Grid.row];
    FController.Model.valorunitario := Grid.Cells[8,Grid.row];
    FController.Model.total := Grid.Cells[9,Grid.row];
    FController.Model.click := Grid.Cells[10,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpagarexcluidos.LimparTela;  
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

procedure TFrm_ViewERPpagarexcluidos.Setiditem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setnumeropedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setnumero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setseq(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setproduto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setvalorunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpagarexcluidos.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
