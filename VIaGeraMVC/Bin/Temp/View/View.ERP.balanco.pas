
unit View.ERP.backup_compress;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.backup_compress, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPbackupcompress = class(TForm) 
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
    FController : TControllerERPbackupcompress; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Ftipo : WideString;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fgerado : WideString;
    Festoque : WideString;
    Funiao : Boolean;
    Fid_uniao : Integer;
    Fconsulta_rapida : Boolean;
    Flancar_inventario : Boolean;
    Flanca_acerto : Boolean;
    Fid_grupo : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Settipo(const Value : WideString);
    procedure Setmotivo(const Value : WideString);
    procedure Setid_usuario(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setgerado(const Value : WideString);
    procedure Setestoque(const Value : WideString);
    procedure Setuniao(const Value : Boolean);
    procedure Setid_uniao(const Value : Integer);
    procedure Setconsulta_rapida(const Value : Boolean);
    procedure Setlancar_inventario(const Value : Boolean);
    procedure Setlanca_acerto(const Value : Boolean);
    procedure Setid_grupo(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property tipo : WideString         read Ftipo    write Ftipo;
    property motivo : WideString         read Fmotivo    write Fmotivo;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property click : Boolean         read Fclick    write Fclick;
    property gerado : WideString         read Fgerado    write Fgerado;
    property estoque : WideString         read Festoque    write Festoque;
    property uniao : Boolean         read Funiao    write Funiao;
    property id_uniao : Integer         read Fid_uniao    write Fid_uniao;
    property consulta_rapida : Boolean         read Fconsulta_rapida    write Fconsulta_rapida;
    property lancar_inventario : Boolean         read Flancar_inventario    write Flancar_inventario;
    property lanca_acerto : Boolean         read Flanca_acerto    write Flanca_acerto;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;

  end;

var
  Frm_ViewERPbackupcompress : TFrm_ViewERPbackupcompress; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 15; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consulta_rapida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lancar_inventario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lanca_acerto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
    end; 
end; 

procedure TFrm_ViewERPbackupcompress.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.click := Edit_click.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.uniao := Edit_uniao.text;
      FController.Model.id_uniao := Edit_id_uniao.text;
      FController.Model.consulta_rapida := Edit_consulta_rapida.text;
      FController.Model.lancar_inventario := Edit_lancar_inventario.text;
      FController.Model.lanca_acerto := Edit_lanca_acerto.text;
      FController.Model.id_grupo := Edit_id_grupo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPbackupcompress.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPbackupcompress.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPbackupcompress.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPbackupcompress.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPbackupcompress.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPbackupcompress.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPbackupcompress.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := uniao;  
     Grid.Cells[inttostr(i),0] := id_uniao;  
     Grid.Cells[inttostr(i),0] := consulta_rapida;  
     Grid.Cells[inttostr(i),0] := lancar_inventario;  
     Grid.Cells[inttostr(i),0] := lanca_acerto;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
end;

procedure TFrm_ViewERPbackupcompress.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPbackupcompress.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPbackupcompress.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.tipo := Grid.Cells[3,Grid.row];
    FController.Model.motivo := Grid.Cells[4,Grid.row];
    FController.Model.id_usuario := Grid.Cells[5,Grid.row];
    FController.Model.click := Grid.Cells[6,Grid.row];
    FController.Model.gerado := Grid.Cells[7,Grid.row];
    FController.Model.estoque := Grid.Cells[8,Grid.row];
    FController.Model.uniao := Grid.Cells[9,Grid.row];
    FController.Model.id_uniao := Grid.Cells[10,Grid.row];
    FController.Model.consulta_rapida := Grid.Cells[11,Grid.row];
    FController.Model.lancar_inventario := Grid.Cells[12,Grid.row];
    FController.Model.lanca_acerto := Grid.Cells[13,Grid.row];
    FController.Model.id_grupo := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPbackupcompress.LimparTela;  
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

procedure TFrm_ViewERPbackupcompress.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setmotivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setuniao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setid_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setconsulta_rapida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setlancar_inventario(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setlanca_acerto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackupcompress.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
