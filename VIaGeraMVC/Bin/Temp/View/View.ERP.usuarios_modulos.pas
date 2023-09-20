
unit View.ERP.usuarios;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.usuarios, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPusuarios = class(TForm) 
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
    FController : TControllerERPusuarios; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_modulo : Integer;
    Facesso : Boolean;
    Finclusao : Boolean;
    Fexclusao : Boolean;
    Falteracao : Boolean;
    Fimpressao : Boolean;
    Fid_usuario : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_modulo(const Value : Integer);
    procedure Setacesso(const Value : Boolean);
    procedure Setinclusao(const Value : Boolean);
    procedure Setexclusao(const Value : Boolean);
    procedure Setalteracao(const Value : Boolean);
    procedure Setimpressao(const Value : Boolean);
    procedure Setid_usuario(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_modulo : Integer         read Fid_modulo    write Fid_modulo;
    property acesso : Boolean         read Facesso    write Facesso;
    property inclusao : Boolean         read Finclusao    write Finclusao;
    property exclusao : Boolean         read Fexclusao    write Fexclusao;
    property alteracao : Boolean         read Falteracao    write Falteracao;
    property impressao : Boolean         read Fimpressao    write Fimpressao;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;

  end;

var
  Frm_ViewERPusuarios : TFrm_ViewERPusuarios; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_modulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acesso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inclusao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].exclusao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impressao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
    end; 
end; 

procedure TFrm_ViewERPusuarios.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_modulo := Edit_id_modulo.text;
      FController.Model.acesso := Edit_acesso.text;
      FController.Model.inclusao := Edit_inclusao.text;
      FController.Model.exclusao := Edit_exclusao.text;
      FController.Model.alteracao := Edit_alteracao.text;
      FController.Model.impressao := Edit_impressao.text;
      FController.Model.id_usuario := Edit_id_usuario.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPusuarios.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPusuarios.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPusuarios.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPusuarios.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPusuarios.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPusuarios.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPusuarios.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_modulo;  
     Grid.Cells[inttostr(i),0] := acesso;  
     Grid.Cells[inttostr(i),0] := inclusao;  
     Grid.Cells[inttostr(i),0] := exclusao;  
     Grid.Cells[inttostr(i),0] := alteracao;  
     Grid.Cells[inttostr(i),0] := impressao;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
end;

procedure TFrm_ViewERPusuarios.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPusuarios.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPusuarios.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_modulo := Grid.Cells[2,Grid.row];
    FController.Model.acesso := Grid.Cells[3,Grid.row];
    FController.Model.inclusao := Grid.Cells[4,Grid.row];
    FController.Model.exclusao := Grid.Cells[5,Grid.row];
    FController.Model.alteracao := Grid.Cells[6,Grid.row];
    FController.Model.impressao := Grid.Cells[7,Grid.row];
    FController.Model.id_usuario := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPusuarios.LimparTela;  
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

procedure TFrm_ViewERPusuarios.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setid_modulo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setacesso(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setinclusao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setexclusao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setalteracao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setimpressao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPusuarios.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
