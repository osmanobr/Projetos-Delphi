
unit View.ERP.nfe_manifesto;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.nfe_manifesto, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPnfemanifesto = class(TForm) 
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
    FController : TControllerERPnfemanifesto; 
    Fid : Integer;
    Fid_nfe_manifesto : Integer;
    Fprotocolo : indefinido;
    Fdata_envio : indefinido;
    Fevento : indefinido;
    Fsequencia : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_nfe_manifesto(const Value : Integer);
    procedure Setprotocolo(const Value : indefinido);
    procedure Setdata_envio(const Value : indefinido);
    procedure Setevento(const Value : indefinido);
    procedure Setsequencia(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_nfe_manifesto : Integer         read Fid_nfe_manifesto    write Fid_nfe_manifesto;
    property protocolo : indefinido         read Fprotocolo    write Fprotocolo;
    property data_envio : indefinido         read Fdata_envio    write Fdata_envio;
    property evento : indefinido         read Fevento    write Fevento;
    property sequencia : Integer         read Fsequencia    write Fsequencia;

  end;

var
  Frm_ViewERPnfemanifesto : TFrm_ViewERPnfemanifesto; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_nfe_manifesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_envio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].evento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sequencia); 
    end; 
end; 

procedure TFrm_ViewERPnfemanifesto.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_nfe_manifesto := Edit_id_nfe_manifesto.text;
      FController.Model.protocolo := Edit_protocolo.text;
      FController.Model.data_envio := Edit_data_envio.text;
      FController.Model.evento := Edit_evento.text;
      FController.Model.sequencia := Edit_sequencia.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPnfemanifesto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPnfemanifesto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPnfemanifesto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPnfemanifesto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPnfemanifesto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPnfemanifesto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPnfemanifesto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_nfe_manifesto;  
     Grid.Cells[inttostr(i),0] := protocolo;  
     Grid.Cells[inttostr(i),0] := data_envio;  
     Grid.Cells[inttostr(i),0] := evento;  
     Grid.Cells[inttostr(i),0] := sequencia;  
end;

procedure TFrm_ViewERPnfemanifesto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPnfemanifesto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPnfemanifesto.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_nfe_manifesto := Grid.Cells[1,Grid.row];
    FController.Model.protocolo := Grid.Cells[2,Grid.row];
    FController.Model.data_envio := Grid.Cells[3,Grid.row];
    FController.Model.evento := Grid.Cells[4,Grid.row];
    FController.Model.sequencia := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPnfemanifesto.LimparTela;  
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

procedure TFrm_ViewERPnfemanifesto.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifesto.Setid_nfe_manifesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifesto.Setprotocolo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifesto.Setdata_envio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifesto.Setevento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifesto.Setsequencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
