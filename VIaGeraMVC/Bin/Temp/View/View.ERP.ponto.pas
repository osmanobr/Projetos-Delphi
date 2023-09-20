
unit View.ERP.pmpf;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pmpf, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpmpf = class(TForm) 
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
    FController : TControllerERPpmpf; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fdata : TDateTime;
    Fid_usuario_alteracao : Integer;
    Fhora_entrada_matutino : indefinido;
    Fhora_saida_matutino : indefinido;
    Fhora_entrada_vespertino : indefinido;
    Fhora_saida_vespertino : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_usuario_alteracao(const Value : Integer);
    procedure Sethora_entrada_matutino(const Value : indefinido);
    procedure Sethora_saida_matutino(const Value : indefinido);
    procedure Sethora_entrada_vespertino(const Value : indefinido);
    procedure Sethora_saida_vespertino(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property data : TDateTime         read Fdata    write Fdata;
    property id_usuario_alteracao : Integer         read Fid_usuario_alteracao    write Fid_usuario_alteracao;
    property hora_entrada_matutino : indefinido         read Fhora_entrada_matutino    write Fhora_entrada_matutino;
    property hora_saida_matutino : indefinido         read Fhora_saida_matutino    write Fhora_saida_matutino;
    property hora_entrada_vespertino : indefinido         read Fhora_entrada_vespertino    write Fhora_entrada_vespertino;
    property hora_saida_vespertino : indefinido         read Fhora_saida_vespertino    write Fhora_saida_vespertino;

  end;

var
  Frm_ViewERPpmpf : TFrm_ViewERPpmpf; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_entrada_matutino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_saida_matutino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_entrada_vespertino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_saida_vespertino); 
    end; 
end; 

procedure TFrm_ViewERPpmpf.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_usuario_alteracao := Edit_id_usuario_alteracao.text;
      FController.Model.hora_entrada_matutino := Edit_hora_entrada_matutino.text;
      FController.Model.hora_saida_matutino := Edit_hora_saida_matutino.text;
      FController.Model.hora_entrada_vespertino := Edit_hora_entrada_vespertino.text;
      FController.Model.hora_saida_vespertino := Edit_hora_saida_vespertino.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpmpf.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpmpf.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpmpf.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpmpf.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpmpf.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpmpf.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpmpf.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_usuario_alteracao;  
     Grid.Cells[inttostr(i),0] := hora_entrada_matutino;  
     Grid.Cells[inttostr(i),0] := hora_saida_matutino;  
     Grid.Cells[inttostr(i),0] := hora_entrada_vespertino;  
     Grid.Cells[inttostr(i),0] := hora_saida_vespertino;  
end;

procedure TFrm_ViewERPpmpf.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpmpf.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpmpf.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.id_usuario_alteracao := Grid.Cells[4,Grid.row];
    FController.Model.hora_entrada_matutino := Grid.Cells[5,Grid.row];
    FController.Model.hora_saida_matutino := Grid.Cells[6,Grid.row];
    FController.Model.hora_entrada_vespertino := Grid.Cells[7,Grid.row];
    FController.Model.hora_saida_vespertino := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpmpf.LimparTela;  
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

procedure TFrm_ViewERPpmpf.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setid_usuario_alteracao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_entrada_matutino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_saida_matutino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_entrada_vespertino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_saida_vespertino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
