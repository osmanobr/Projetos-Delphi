
unit View.ERP.advertencia;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.advertencia, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPadvertencia = class(TForm) 
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
    FController : TControllerERPadvertencia; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fid_veiculo : Integer;
    Fdata : TDateTime;
    Finicio : indefinido;
    Ftempo : indefinido;
    Ffinal : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_veiculo(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setinicio(const Value : indefinido);
    procedure Settempo(const Value : indefinido);
    procedure Setfinal(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_veiculo : Integer         read Fid_veiculo    write Fid_veiculo;
    property data : TDateTime         read Fdata    write Fdata;
    property inicio : indefinido         read Finicio    write Finicio;
    property tempo : indefinido         read Ftempo    write Ftempo;
    property final : indefinido         read Ffinal    write Ffinal;

  end;

var
  Frm_ViewERPadvertencia : TFrm_ViewERPadvertencia; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_veiculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].final); 
    end; 
end; 

procedure TFrm_ViewERPadvertencia.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_veiculo := Edit_id_veiculo.text;
      FController.Model.data := Edit_data.text;
      FController.Model.inicio := Edit_inicio.text;
      FController.Model.tempo := Edit_tempo.text;
      FController.Model.final := Edit_final.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPadvertencia.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPadvertencia.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPadvertencia.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPadvertencia.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPadvertencia.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPadvertencia.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPadvertencia.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_veiculo;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := inicio;  
     Grid.Cells[inttostr(i),0] := tempo;  
     Grid.Cells[inttostr(i),0] := final;  
end;

procedure TFrm_ViewERPadvertencia.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPadvertencia.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPadvertencia.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.id_cliente := Grid.Cells[3,Grid.row];
    FController.Model.id_veiculo := Grid.Cells[4,Grid.row];
    FController.Model.data := Grid.Cells[5,Grid.row];
    FController.Model.inicio := Grid.Cells[6,Grid.row];
    FController.Model.tempo := Grid.Cells[7,Grid.row];
    FController.Model.final := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPadvertencia.LimparTela;  
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

procedure TFrm_ViewERPadvertencia.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setid_veiculo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setinicio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Settempo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPadvertencia.Setfinal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
