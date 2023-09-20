
unit View.ERP.produtos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.produtos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPprodutos = class(TForm) 
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
    FController : TControllerERPprodutos; 
    Fid : Integer;
    Fid_produto : Integer;
    Falterado : indefinido;
    Fpreco_anterior : Double;
    Fpreco_venda : Double;
    Fcarga : Boolean;
    Fmotivo : Integer;
    Fcontrolado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setalterado(const Value : indefinido);
    procedure Setpreco_anterior(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setcarga(const Value : Boolean);
    procedure Setmotivo(const Value : Integer);
    procedure Setcontrolado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property alterado : indefinido         read Falterado    write Falterado;
    property preco_anterior : Double         read Fpreco_anterior    write Fpreco_anterior;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property carga : Boolean         read Fcarga    write Fcarga;
    property motivo : Integer         read Fmotivo    write Fmotivo;
    property controlado : Boolean         read Fcontrolado    write Fcontrolado;

  end;

var
  Frm_ViewERPprodutos : TFrm_ViewERPprodutos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_anterior); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controlado); 
    end; 
end; 

procedure TFrm_ViewERPprodutos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.alterado := Edit_alterado.text;
      FController.Model.preco_anterior := Edit_preco_anterior.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.carga := Edit_carga.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.controlado := Edit_controlado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPprodutos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPprodutos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPprodutos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPprodutos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPprodutos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPprodutos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPprodutos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := alterado;  
     Grid.Cells[inttostr(i),0] := preco_anterior;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := carga;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := controlado;  
end;

procedure TFrm_ViewERPprodutos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPprodutos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPprodutos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto := Grid.Cells[1,Grid.row];
    FController.Model.alterado := Grid.Cells[2,Grid.row];
    FController.Model.preco_anterior := Grid.Cells[3,Grid.row];
    FController.Model.preco_venda := Grid.Cells[4,Grid.row];
    FController.Model.carga := Grid.Cells[5,Grid.row];
    FController.Model.motivo := Grid.Cells[6,Grid.row];
    FController.Model.controlado := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPprodutos.LimparTela;  
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

procedure TFrm_ViewERPprodutos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setalterado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setpreco_anterior(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setcarga(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setmotivo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutos.Setcontrolado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
