
unit View.ERP.backup;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.backup, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPbackup = class(TForm) 
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
    FController : TControllerERPbackup; 
    Fid : Integer;
    Fid_backup : Integer;
    Farquivo : WideString;
    Fpartes : Integer;
    Fdatahora : indefinido;
    Fenviado : Boolean;
    Fcompress_size : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_backup(const Value : Integer);
    procedure Setarquivo(const Value : WideString);
    procedure Setpartes(const Value : Integer);
    procedure Setdatahora(const Value : indefinido);
    procedure Setenviado(const Value : Boolean);
    procedure Setcompress_size(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_backup : Integer         read Fid_backup    write Fid_backup;
    property arquivo : WideString         read Farquivo    write Farquivo;
    property partes : Integer         read Fpartes    write Fpartes;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property enviado : Boolean         read Fenviado    write Fenviado;
    property compress_size : indefinido         read Fcompress_size    write Fcompress_size;

  end;

var
  Frm_ViewERPbackup : TFrm_ViewERPbackup; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_backup); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].arquivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].partes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compress_size); 
    end; 
end; 

procedure TFrm_ViewERPbackup.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_backup := Edit_id_backup.text;
      FController.Model.arquivo := Edit_arquivo.text;
      FController.Model.partes := Edit_partes.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.enviado := Edit_enviado.text;
      FController.Model.compress_size := Edit_compress_size.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPbackup.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPbackup.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPbackup.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPbackup.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPbackup.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPbackup.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPbackup.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_backup;  
     Grid.Cells[inttostr(i),0] := arquivo;  
     Grid.Cells[inttostr(i),0] := partes;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := enviado;  
     Grid.Cells[inttostr(i),0] := compress_size;  
end;

procedure TFrm_ViewERPbackup.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPbackup.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPbackup.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_backup := Grid.Cells[1,Grid.row];
    FController.Model.arquivo := Grid.Cells[2,Grid.row];
    FController.Model.partes := Grid.Cells[3,Grid.row];
    FController.Model.datahora := Grid.Cells[4,Grid.row];
    FController.Model.enviado := Grid.Cells[5,Grid.row];
    FController.Model.compress_size := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPbackup.LimparTela;  
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

procedure TFrm_ViewERPbackup.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setid_backup(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setarquivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setpartes(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setenviado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbackup.Setcompress_size(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
