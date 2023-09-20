
unit View.ERP.clientes_documentos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_documentos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientesdocumentos = class(TForm) 
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
    FController : TControllerERPclientesdocumentos; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_dependente : Integer;
    Ffoto : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_dependente(const Value : Integer);
    procedure Setfoto(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_dependente : Integer         read Fid_dependente    write Fid_dependente;
    property foto : indefinido         read Ffoto    write Ffoto;

  end;

var
  Frm_ViewERPclientesdocumentos : TFrm_ViewERPclientesdocumentos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 4; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_dependente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].foto); 
    end; 
end; 

procedure TFrm_ViewERPclientesdocumentos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_dependente := Edit_id_dependente.text;
      FController.Model.foto := Edit_foto.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientesdocumentos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientesdocumentos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientesdocumentos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientesdocumentos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientesdocumentos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientesdocumentos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientesdocumentos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 4;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_dependente;  
     Grid.Cells[inttostr(i),0] := foto;  
end;

procedure TFrm_ViewERPclientesdocumentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientesdocumentos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientesdocumentos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.id_dependente := Grid.Cells[2,Grid.row];
    FController.Model.foto := Grid.Cells[3,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientesdocumentos.LimparTela;  
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

procedure TFrm_ViewERPclientesdocumentos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesdocumentos.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesdocumentos.Setid_dependente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesdocumentos.Setfoto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.