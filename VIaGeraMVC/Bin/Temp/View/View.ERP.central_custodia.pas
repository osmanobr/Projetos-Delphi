
unit View.ERP.cartao_tef;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cartao_tef, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcartaotef = class(TForm) 
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
    FController : TControllerERPcartaotef; 
    Fid : Integer;
    Fid_custodia_conta_receber : Integer;
    Fid_custodia_cheque_recebido : Integer;
    Fid_custodia_cheque_emitido : Integer;
    Fid_registro : Integer;
    Fclick : Boolean;
    Fid_custodia_contas_pagar : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_custodia_conta_receber(const Value : Integer);
    procedure Setid_custodia_cheque_recebido(const Value : Integer);
    procedure Setid_custodia_cheque_emitido(const Value : Integer);
    procedure Setid_registro(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setid_custodia_contas_pagar(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_custodia_conta_receber : Integer         read Fid_custodia_conta_receber    write Fid_custodia_conta_receber;
    property id_custodia_cheque_recebido : Integer         read Fid_custodia_cheque_recebido    write Fid_custodia_cheque_recebido;
    property id_custodia_cheque_emitido : Integer         read Fid_custodia_cheque_emitido    write Fid_custodia_cheque_emitido;
    property id_registro : Integer         read Fid_registro    write Fid_registro;
    property click : Boolean         read Fclick    write Fclick;
    property id_custodia_contas_pagar : Integer         read Fid_custodia_contas_pagar    write Fid_custodia_contas_pagar;

  end;

var
  Frm_ViewERPcartaotef : TFrm_ViewERPcartaotef; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_cheque_recebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_cheque_emitido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_registro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_contas_pagar); 
    end; 
end; 

procedure TFrm_ViewERPcartaotef.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_custodia_conta_receber := Edit_id_custodia_conta_receber.text;
      FController.Model.id_custodia_cheque_recebido := Edit_id_custodia_cheque_recebido.text;
      FController.Model.id_custodia_cheque_emitido := Edit_id_custodia_cheque_emitido.text;
      FController.Model.id_registro := Edit_id_registro.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_custodia_contas_pagar := Edit_id_custodia_contas_pagar.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcartaotef.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcartaotef.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcartaotef.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcartaotef.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcartaotef.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcartaotef.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcartaotef.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_custodia_conta_receber;  
     Grid.Cells[inttostr(i),0] := id_custodia_cheque_recebido;  
     Grid.Cells[inttostr(i),0] := id_custodia_cheque_emitido;  
     Grid.Cells[inttostr(i),0] := id_registro;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_custodia_contas_pagar;  
end;

procedure TFrm_ViewERPcartaotef.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcartaotef.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcartaotef.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_custodia_conta_receber := Grid.Cells[1,Grid.row];
    FController.Model.id_custodia_cheque_recebido := Grid.Cells[2,Grid.row];
    FController.Model.id_custodia_cheque_emitido := Grid.Cells[3,Grid.row];
    FController.Model.id_registro := Grid.Cells[4,Grid.row];
    FController.Model.click := Grid.Cells[5,Grid.row];
    FController.Model.id_custodia_contas_pagar := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcartaotef.LimparTela;  
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

procedure TFrm_ViewERPcartaotef.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setid_custodia_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setid_custodia_cheque_recebido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setid_custodia_cheque_emitido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setid_registro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartaotef.Setid_custodia_contas_pagar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
