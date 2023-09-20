
unit View.ERP.acerto_almoxarifado_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.acerto_almoxarifado_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPacertoalmoxarifadoitem = class(TForm) 
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
    FController : TControllerERPacertoalmoxarifadoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_acerto : TDateTime;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fgerado : WideString;
    Festoque : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_acerto(const Value : TDateTime);
    procedure Setmotivo(const Value : WideString);
    procedure Setid_usuario(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setgerado(const Value : WideString);
    procedure Setestoque(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_acerto : TDateTime         read Fdata_acerto    write Fdata_acerto;
    property motivo : WideString         read Fmotivo    write Fmotivo;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property click : Boolean         read Fclick    write Fclick;
    property gerado : WideString         read Fgerado    write Fgerado;
    property estoque : WideString         read Festoque    write Festoque;

  end;

var
  Frm_ViewERPacertoalmoxarifadoitem : TFrm_ViewERPacertoalmoxarifadoitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_acerto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
    end; 
end; 

procedure TFrm_ViewERPacertoalmoxarifadoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_acerto := Edit_data_acerto.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.click := Edit_click.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.estoque := Edit_estoque.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPacertoalmoxarifadoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPacertoalmoxarifadoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPacertoalmoxarifadoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPacertoalmoxarifadoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPacertoalmoxarifadoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPacertoalmoxarifadoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPacertoalmoxarifadoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_acerto;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := estoque;  
end;

procedure TFrm_ViewERPacertoalmoxarifadoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPacertoalmoxarifadoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPacertoalmoxarifadoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_acerto := Grid.Cells[2,Grid.row];
    FController.Model.motivo := Grid.Cells[3,Grid.row];
    FController.Model.id_usuario := Grid.Cells[4,Grid.row];
    FController.Model.click := Grid.Cells[5,Grid.row];
    FController.Model.gerado := Grid.Cells[6,Grid.row];
    FController.Model.estoque := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPacertoalmoxarifadoitem.LimparTela;  
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

procedure TFrm_ViewERPacertoalmoxarifadoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setdata_acerto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setmotivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoalmoxarifadoitem.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
