
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
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fstatus : indefinido;
    Fdata_abre : TDateTime;
    Fhora_abre : indefinido;
    Fdata_fecha : TDateTime;
    Fhora_fecha : indefinido;
    Fvl_abre : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setstatus(const Value : indefinido);
    procedure Setdata_abre(const Value : TDateTime);
    procedure Sethora_abre(const Value : indefinido);
    procedure Setdata_fecha(const Value : TDateTime);
    procedure Sethora_fecha(const Value : indefinido);
    procedure Setvl_abre(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property status : indefinido         read Fstatus    write Fstatus;
    property data_abre : TDateTime         read Fdata_abre    write Fdata_abre;
    property hora_abre : indefinido         read Fhora_abre    write Fhora_abre;
    property data_fecha : TDateTime         read Fdata_fecha    write Fdata_fecha;
    property hora_fecha : indefinido         read Fhora_fecha    write Fhora_fecha;
    property vl_abre : Double         read Fvl_abre    write Fvl_abre;

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_abre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_abre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_fecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_fecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_abre); 
    end; 
end; 

procedure TFrm_ViewERPpmpf.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.status := Edit_status.text;
      FController.Model.data_abre := Edit_data_abre.text;
      FController.Model.hora_abre := Edit_hora_abre.text;
      FController.Model.data_fecha := Edit_data_fecha.text;
      FController.Model.hora_fecha := Edit_hora_fecha.text;
      FController.Model.vl_abre := Edit_vl_abre.text;

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
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := data_abre;  
     Grid.Cells[inttostr(i),0] := hora_abre;  
     Grid.Cells[inttostr(i),0] := data_fecha;  
     Grid.Cells[inttostr(i),0] := hora_fecha;  
     Grid.Cells[inttostr(i),0] := vl_abre;  
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
    FController.Model.id_caixa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.status := Grid.Cells[3,Grid.row];
    FController.Model.data_abre := Grid.Cells[4,Grid.row];
    FController.Model.hora_abre := Grid.Cells[5,Grid.row];
    FController.Model.data_fecha := Grid.Cells[6,Grid.row];
    FController.Model.hora_fecha := Grid.Cells[7,Grid.row];
    FController.Model.vl_abre := Grid.Cells[8,Grid.row];
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
procedure TFrm_ViewERPpmpf.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setdata_abre(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_abre(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setdata_fecha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Sethora_fecha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpmpf.Setvl_abre(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
