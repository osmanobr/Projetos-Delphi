
unit View.ERP.mesa_caixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.mesa_caixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmesacaixa = class(TForm) 
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
    FController : TControllerERPmesacaixa; 
    Fid : Integer;
    Fcartao : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcartao(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property cartao : WideString         read Fcartao    write Fcartao;

  end;

var
  Frm_ViewERPmesacaixa : TFrm_ViewERPmesacaixa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 2; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao); 
    end; 
end; 

procedure TFrm_ViewERPmesacaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.cartao := Edit_cartao.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmesacaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmesacaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmesacaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmesacaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmesacaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmesacaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmesacaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 2;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := cartao;  
end;

procedure TFrm_ViewERPmesacaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmesacaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmesacaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.cartao := Grid.Cells[1,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmesacaixa.LimparTela;  
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

procedure TFrm_ViewERPmesacaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmesacaixa.Setcartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
