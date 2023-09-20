
unit View.ERP.ncm_substituido;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.ncm_substituido, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPncmsubstituido = class(TForm) 
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
    FController : TControllerERPncmsubstituido; 
    Fid : Integer;
    Fncm : WideString;
    Fpiscofins_entrada : WideString;
    Fpiscofins_saida : WideString;
    Fpiscofins_nat_receita : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setncm(const Value : WideString);
    procedure Setpiscofins_entrada(const Value : WideString);
    procedure Setpiscofins_saida(const Value : WideString);
    procedure Setpiscofins_nat_receita(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property ncm : WideString         read Fncm    write Fncm;
    property piscofins_entrada : WideString         read Fpiscofins_entrada    write Fpiscofins_entrada;
    property piscofins_saida : WideString         read Fpiscofins_saida    write Fpiscofins_saida;
    property piscofins_nat_receita : WideString         read Fpiscofins_nat_receita    write Fpiscofins_nat_receita;

  end;

var
  Frm_ViewERPncmsubstituido : TFrm_ViewERPncmsubstituido; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 5; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].piscofins_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].piscofins_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].piscofins_nat_receita); 
    end; 
end; 

procedure TFrm_ViewERPncmsubstituido.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.piscofins_entrada := Edit_piscofins_entrada.text;
      FController.Model.piscofins_saida := Edit_piscofins_saida.text;
      FController.Model.piscofins_nat_receita := Edit_piscofins_nat_receita.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPncmsubstituido.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPncmsubstituido.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPncmsubstituido.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPncmsubstituido.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPncmsubstituido.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPncmsubstituido.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPncmsubstituido.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 5;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := piscofins_entrada;  
     Grid.Cells[inttostr(i),0] := piscofins_saida;  
     Grid.Cells[inttostr(i),0] := piscofins_nat_receita;  
end;

procedure TFrm_ViewERPncmsubstituido.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPncmsubstituido.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPncmsubstituido.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ncm := Grid.Cells[1,Grid.row];
    FController.Model.piscofins_entrada := Grid.Cells[2,Grid.row];
    FController.Model.piscofins_saida := Grid.Cells[3,Grid.row];
    FController.Model.piscofins_nat_receita := Grid.Cells[4,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPncmsubstituido.LimparTela;  
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

procedure TFrm_ViewERPncmsubstituido.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmsubstituido.Setncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmsubstituido.Setpiscofins_entrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmsubstituido.Setpiscofins_saida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmsubstituido.Setpiscofins_nat_receita(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
