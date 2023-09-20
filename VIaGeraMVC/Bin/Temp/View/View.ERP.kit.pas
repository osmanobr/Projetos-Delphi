
unit View.ERP.inventarios;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.inventarios, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPinventarios = class(TForm) 
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
    FController : TControllerERPinventarios; 
    Fid : Integer;
    Fid_produto : Integer;
    Fnome : WideString;
    Ftipo : WideString;
    Fvalor : Double;
    Fpreco_venda : Double;
    Fpreco_calculado : Double;
    Fespessura : Double;
    Flargura : Double;
    Fcomprimento : Double;
    Fmetro_cubico : Double;
    Fclick : Boolean;
    Fvasilhame : Boolean;
    Fkit_compra : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_calculado(const Value : Double);
    procedure Setespessura(const Value : Double);
    procedure Setlargura(const Value : Double);
    procedure Setcomprimento(const Value : Double);
    procedure Setmetro_cubico(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setvasilhame(const Value : Boolean);
    procedure Setkit_compra(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome : WideString         read Fnome    write Fnome;
    property tipo : WideString         read Ftipo    write Ftipo;
    property valor : Double         read Fvalor    write Fvalor;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_calculado : Double         read Fpreco_calculado    write Fpreco_calculado;
    property espessura : Double         read Fespessura    write Fespessura;
    property largura : Double         read Flargura    write Flargura;
    property comprimento : Double         read Fcomprimento    write Fcomprimento;
    property metro_cubico : Double         read Fmetro_cubico    write Fmetro_cubico;
    property click : Boolean         read Fclick    write Fclick;
    property vasilhame : Boolean         read Fvasilhame    write Fvasilhame;
    property kit_compra : Boolean         read Fkit_compra    write Fkit_compra;

  end;

var
  Frm_ViewERPinventarios : TFrm_ViewERPinventarios; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_calculado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].espessura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].largura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comprimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].metro_cubico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vasilhame); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].kit_compra); 
    end; 
end; 

procedure TFrm_ViewERPinventarios.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_calculado := Edit_preco_calculado.text;
      FController.Model.espessura := Edit_espessura.text;
      FController.Model.largura := Edit_largura.text;
      FController.Model.comprimento := Edit_comprimento.text;
      FController.Model.metro_cubico := Edit_metro_cubico.text;
      FController.Model.click := Edit_click.text;
      FController.Model.vasilhame := Edit_vasilhame.text;
      FController.Model.kit_compra := Edit_kit_compra.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPinventarios.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPinventarios.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPinventarios.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPinventarios.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPinventarios.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPinventarios.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPinventarios.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_calculado;  
     Grid.Cells[inttostr(i),0] := espessura;  
     Grid.Cells[inttostr(i),0] := largura;  
     Grid.Cells[inttostr(i),0] := comprimento;  
     Grid.Cells[inttostr(i),0] := metro_cubico;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := vasilhame;  
     Grid.Cells[inttostr(i),0] := kit_compra;  
end;

procedure TFrm_ViewERPinventarios.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPinventarios.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPinventarios.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.tipo := Grid.Cells[3,Grid.row];
    FController.Model.valor := Grid.Cells[4,Grid.row];
    FController.Model.preco_venda := Grid.Cells[5,Grid.row];
    FController.Model.preco_calculado := Grid.Cells[6,Grid.row];
    FController.Model.espessura := Grid.Cells[7,Grid.row];
    FController.Model.largura := Grid.Cells[8,Grid.row];
    FController.Model.comprimento := Grid.Cells[9,Grid.row];
    FController.Model.metro_cubico := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
    FController.Model.vasilhame := Grid.Cells[12,Grid.row];
    FController.Model.kit_compra := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPinventarios.LimparTela;  
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

procedure TFrm_ViewERPinventarios.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setpreco_calculado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setespessura(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setlargura(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setcomprimento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setmetro_cubico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setvasilhame(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventarios.Setkit_compra(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
