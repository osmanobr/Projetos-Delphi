
unit View.ERP.os;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPos = class(TForm) 
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
    FController : TControllerERPos; 
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fdata : TDateTime;
    Fquantidade : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setdata(const Value : TDateTime);
    procedure Setquantidade(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property data : TDateTime         read Fdata    write Fdata;
    property quantidade : Double         read Fquantidade    write Fquantidade;

  end;

var
  Frm_ViewERPos : TFrm_ViewERPos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
    end; 
end; 

procedure TFrm_ViewERPos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.data := Edit_data.text;
      FController.Model.quantidade := Edit_quantidade.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := quantidade;  
end;

procedure TFrm_ViewERPos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_os := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPos.LimparTela;  
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

procedure TFrm_ViewERPos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPos.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPos.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPos.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPos.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.