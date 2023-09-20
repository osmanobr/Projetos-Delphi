
unit View.ERP.nota_devol;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.nota_devol, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPnotadevol = class(TForm) 
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
    FController : TControllerERPnotadevol; 
    Fid : Integer;
    Fdata_inicio : TDateTime;
    Fdata_final : TDateTime;
    Fid_funcionario : Integer;
    Flote : indefinido;
    Fobs : indefinido;
    Fgerado : indefinido;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata_inicio(const Value : TDateTime);
    procedure Setdata_final(const Value : TDateTime);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setlote(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property data_inicio : TDateTime         read Fdata_inicio    write Fdata_inicio;
    property data_final : TDateTime         read Fdata_final    write Fdata_final;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property lote : indefinido         read Flote    write Flote;
    property obs : indefinido         read Fobs    write Fobs;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPnotadevol : TFrm_ViewERPnotadevol; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPnotadevol.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data_inicio := Edit_data_inicio.text;
      FController.Model.data_final := Edit_data_final.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPnotadevol.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPnotadevol.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPnotadevol.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPnotadevol.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPnotadevol.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPnotadevol.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPnotadevol.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data_inicio;  
     Grid.Cells[inttostr(i),0] := data_final;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPnotadevol.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPnotadevol.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPnotadevol.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data_inicio := Grid.Cells[1,Grid.row];
    FController.Model.data_final := Grid.Cells[2,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[3,Grid.row];
    FController.Model.lote := Grid.Cells[4,Grid.row];
    FController.Model.obs := Grid.Cells[5,Grid.row];
    FController.Model.gerado := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPnotadevol.LimparTela;  
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

procedure TFrm_ViewERPnotadevol.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setdata_inicio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setdata_final(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setlote(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnotadevol.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
