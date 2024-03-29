
unit View.ERP.reajuste;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.reajuste, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPreajuste = class(TForm) 
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
    FController : TControllerERPreajuste; 
    Fid : Integer;
    Fpreco_venda_antigo : Double;
    Fpreco_venda_atual : Double;
    Fpercentual_aplicado : Double;
    Fid_reajuste : Integer;
    Fid_produto : Integer;
    Fcancelado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setpreco_venda_antigo(const Value : Double);
    procedure Setpreco_venda_atual(const Value : Double);
    procedure Setpercentual_aplicado(const Value : Double);
    procedure Setid_reajuste(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setcancelado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property preco_venda_antigo : Double         read Fpreco_venda_antigo    write Fpreco_venda_antigo;
    property preco_venda_atual : Double         read Fpreco_venda_atual    write Fpreco_venda_atual;
    property percentual_aplicado : Double         read Fpercentual_aplicado    write Fpercentual_aplicado;
    property id_reajuste : Integer         read Fid_reajuste    write Fid_reajuste;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property cancelado : Boolean         read Fcancelado    write Fcancelado;

  end;

var
  Frm_ViewERPreajuste : TFrm_ViewERPreajuste; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_antigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_aplicado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_reajuste); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
    end; 
end; 

procedure TFrm_ViewERPreajuste.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.preco_venda_antigo := Edit_preco_venda_antigo.text;
      FController.Model.preco_venda_atual := Edit_preco_venda_atual.text;
      FController.Model.percentual_aplicado := Edit_percentual_aplicado.text;
      FController.Model.id_reajuste := Edit_id_reajuste.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.cancelado := Edit_cancelado.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPreajuste.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPreajuste.BBCancelarClick(Sender: TObject); 
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
      {Verifica s� � uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPreajuste.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a grava��o dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
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

procedure TFrm_ViewERPreajuste.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPreajuste.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPreajuste.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPreajuste.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := preco_venda_antigo;  
     Grid.Cells[inttostr(i),0] := preco_venda_atual;  
     Grid.Cells[inttostr(i),0] := percentual_aplicado;  
     Grid.Cells[inttostr(i),0] := id_reajuste;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := cancelado;  
end;

procedure TFrm_ViewERPreajuste.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPreajuste.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPreajuste.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.preco_venda_antigo := Grid.Cells[1,Grid.row];
    FController.Model.preco_venda_atual := Grid.Cells[2,Grid.row];
    FController.Model.percentual_aplicado := Grid.Cells[3,Grid.row];
    FController.Model.id_reajuste := Grid.Cells[4,Grid.row];
    FController.Model.id_produto := Grid.Cells[5,Grid.row];
    FController.Model.cancelado := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPreajuste.LimparTela;  
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

procedure TFrm_ViewERPreajuste.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setpreco_venda_antigo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setpreco_venda_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setpercentual_aplicado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setid_reajuste(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajuste.Setcancelado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
