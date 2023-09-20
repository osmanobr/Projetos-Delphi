
unit View.ERP.paf_r;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.paf_r, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpafr = class(TForm) 
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
    FController : TControllerERPpafr; 
    Fid : Integer;
    Fid_conta_pagar : Integer;
    Fid_cliser : Integer;
    Faplicado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_conta_pagar(const Value : Integer);
    procedure Setid_cliser(const Value : Integer);
    procedure Setaplicado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_conta_pagar : Integer         read Fid_conta_pagar    write Fid_conta_pagar;
    property id_cliser : Integer         read Fid_cliser    write Fid_cliser;
    property aplicado : Boolean         read Faplicado    write Faplicado;

  end;

var
  Frm_ViewERPpafr : TFrm_ViewERPpafr; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aplicado); 
    end; 
end; 

procedure TFrm_ViewERPpafr.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_conta_pagar := Edit_id_conta_pagar.text;
      FController.Model.id_cliser := Edit_id_cliser.text;
      FController.Model.aplicado := Edit_aplicado.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpafr.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpafr.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpafr.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpafr.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpafr.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpafr.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpafr.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 4;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_conta_pagar;  
     Grid.Cells[inttostr(i),0] := id_cliser;  
     Grid.Cells[inttostr(i),0] := aplicado;  
end;

procedure TFrm_ViewERPpafr.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpafr.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpafr.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_conta_pagar := Grid.Cells[1,Grid.row];
    FController.Model.id_cliser := Grid.Cells[2,Grid.row];
    FController.Model.aplicado := Grid.Cells[3,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpafr.LimparTela;  
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

procedure TFrm_ViewERPpafr.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setid_conta_pagar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setid_cliser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setaplicado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.