
unit View.ERP.terminal_alert;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.terminal_alert, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPterminalalert = class(TForm) 
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
    FController : TControllerERPterminalalert; 
    Fid_terminal : Integer;
    Floja : Integer;
    Flive : Boolean;
    Fdatahora : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid_terminal(const Value : Integer);
    procedure Setloja(const Value : Integer);
    procedure Setlive(const Value : Boolean);
    procedure Setdatahora(const Value : indefinido);

  public

    property id_terminal : Integer         read Fid_terminal    write Fid_terminal;
    property loja : Integer         read Floja    write Floja;
    property live : Boolean         read Flive    write Flive;
    property datahora : indefinido         read Fdatahora    write Fdatahora;

  end;

var
  Frm_ViewERPterminalalert : TFrm_ViewERPterminalalert; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 4; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_terminal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].loja); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].live); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
    end; 
end; 

procedure TFrm_ViewERPterminalalert.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id_terminal := Edit_id_terminal.text;
      FController.Model.loja := Edit_loja.text;
      FController.Model.live := Edit_live.text;
      FController.Model.datahora := Edit_datahora.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPterminalalert.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPterminalalert.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPterminalalert.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPterminalalert.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPterminalalert.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPterminalalert.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPterminalalert.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 4;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id_terminal;  
     Grid.Cells[inttostr(i),0] := loja;  
     Grid.Cells[inttostr(i),0] := live;  
     Grid.Cells[inttostr(i),0] := datahora;  
end;

procedure TFrm_ViewERPterminalalert.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPterminalalert.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPterminalalert.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id_terminal := Grid.Cells[0,Grid.row];
    FController.Model.loja := Grid.Cells[1,Grid.row];
    FController.Model.live := Grid.Cells[2,Grid.row];
    FController.Model.datahora := Grid.Cells[3,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPterminalalert.LimparTela;  
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

procedure TFrm_ViewERPterminalalert.Setid_terminal(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalalert.Setloja(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalalert.Setlive(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalalert.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
