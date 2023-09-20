
unit View.ERP.terminal_public;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.terminal_public, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPterminalpublic = class(TForm) 
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
    FController : TControllerERPterminalpublic; 
    Fid : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fid_usuario : Integer;
    Fgerado : indefinido;
    Fclick : Boolean;
    Festoque_origem : indefinido;
    Festoque_destino : indefinido;
    Fid_func_responsavel_origem : Integer;
    Fid_func_responsavel_destino : Integer;
    Fcancelado : indefinido;
    Fid_empresa : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setmotivo(const Value : indefinido);
    procedure Setid_usuario(const Value : Integer);
    procedure Setgerado(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setestoque_origem(const Value : indefinido);
    procedure Setestoque_destino(const Value : indefinido);
    procedure Setid_func_responsavel_origem(const Value : Integer);
    procedure Setid_func_responsavel_destino(const Value : Integer);
    procedure Setcancelado(const Value : indefinido);
    procedure Setid_empresa(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property motivo : indefinido         read Fmotivo    write Fmotivo;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property click : Boolean         read Fclick    write Fclick;
    property estoque_origem : indefinido         read Festoque_origem    write Festoque_origem;
    property estoque_destino : indefinido         read Festoque_destino    write Festoque_destino;
    property id_func_responsavel_origem : Integer         read Fid_func_responsavel_origem    write Fid_func_responsavel_origem;
    property id_func_responsavel_destino : Integer         read Fid_func_responsavel_destino    write Fid_func_responsavel_destino;
    property cancelado : indefinido         read Fcancelado    write Fcancelado;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;

  end;

var
  Frm_ViewERPterminalpublic : TFrm_ViewERPterminalpublic; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_func_responsavel_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_func_responsavel_destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
    end; 
end; 

procedure TFrm_ViewERPterminalpublic.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.click := Edit_click.text;
      FController.Model.estoque_origem := Edit_estoque_origem.text;
      FController.Model.estoque_destino := Edit_estoque_destino.text;
      FController.Model.id_func_responsavel_origem := Edit_id_func_responsavel_origem.text;
      FController.Model.id_func_responsavel_destino := Edit_id_func_responsavel_destino.text;
      FController.Model.cancelado := Edit_cancelado.text;
      FController.Model.id_empresa := Edit_id_empresa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPterminalpublic.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPterminalpublic.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPterminalpublic.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPterminalpublic.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPterminalpublic.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPterminalpublic.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPterminalpublic.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := estoque_origem;  
     Grid.Cells[inttostr(i),0] := estoque_destino;  
     Grid.Cells[inttostr(i),0] := id_func_responsavel_origem;  
     Grid.Cells[inttostr(i),0] := id_func_responsavel_destino;  
     Grid.Cells[inttostr(i),0] := cancelado;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
end;

procedure TFrm_ViewERPterminalpublic.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPterminalpublic.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPterminalpublic.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.motivo := Grid.Cells[2,Grid.row];
    FController.Model.id_usuario := Grid.Cells[3,Grid.row];
    FController.Model.gerado := Grid.Cells[4,Grid.row];
    FController.Model.click := Grid.Cells[5,Grid.row];
    FController.Model.estoque_origem := Grid.Cells[6,Grid.row];
    FController.Model.estoque_destino := Grid.Cells[7,Grid.row];
    FController.Model.id_func_responsavel_origem := Grid.Cells[8,Grid.row];
    FController.Model.id_func_responsavel_destino := Grid.Cells[9,Grid.row];
    FController.Model.cancelado := Grid.Cells[10,Grid.row];
    FController.Model.id_empresa := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPterminalpublic.LimparTela;  
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

procedure TFrm_ViewERPterminalpublic.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setmotivo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setestoque_origem(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setestoque_destino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setid_func_responsavel_origem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setid_func_responsavel_destino(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setcancelado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPterminalpublic.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
