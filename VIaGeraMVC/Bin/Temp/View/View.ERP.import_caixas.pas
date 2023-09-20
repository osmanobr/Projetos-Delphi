
unit View.ERP.import_barras;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_barras, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportbarras = class(TForm) 
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
    FController : TControllerERPimportbarras; 
    Fid : Integer;
    Fid_caixa : Integer;
    Fget_import : Boolean;
    Fstart_import : indefinido;
    Fend_import : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setget_import(const Value : Boolean);
    procedure Setstart_import(const Value : indefinido);
    procedure Setend_import(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property get_import : Boolean         read Fget_import    write Fget_import;
    property start_import : indefinido         read Fstart_import    write Fstart_import;
    property end_import : indefinido         read Fend_import    write Fend_import;

  end;

var
  Frm_ViewERPimportbarras : TFrm_ViewERPimportbarras; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].get_import); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].start_import); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].end_import); 
    end; 
end; 

procedure TFrm_ViewERPimportbarras.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.get_import := Edit_get_import.text;
      FController.Model.start_import := Edit_start_import.text;
      FController.Model.end_import := Edit_end_import.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportbarras.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportbarras.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportbarras.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportbarras.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportbarras.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportbarras.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportbarras.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 5;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := get_import;  
     Grid.Cells[inttostr(i),0] := start_import;  
     Grid.Cells[inttostr(i),0] := end_import;  
end;

procedure TFrm_ViewERPimportbarras.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportbarras.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportbarras.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_caixa := Grid.Cells[1,Grid.row];
    FController.Model.get_import := Grid.Cells[2,Grid.row];
    FController.Model.start_import := Grid.Cells[3,Grid.row];
    FController.Model.end_import := Grid.Cells[4,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportbarras.LimparTela;  
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

procedure TFrm_ViewERPimportbarras.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportbarras.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportbarras.Setget_import(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportbarras.Setstart_import(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportbarras.Setend_import(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.