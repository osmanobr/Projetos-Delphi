
unit View.ERP.import_controller;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_controller, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportcontroller = class(TForm) 
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
    FController : TControllerERPimportcontroller; 
    Fid : Integer;
    Fimportacao : Integer;
    Fdescricao : WideString;
    Ftotal : Boolean;
    Fgeracoes : Boolean;
    Ftempo : Integer;
    Finicio : WideString;
    Ffim : WideString;
    Fgerado : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setimportacao(const Value : Integer);
    procedure Setdescricao(const Value : WideString);
    procedure Settotal(const Value : Boolean);
    procedure Setgeracoes(const Value : Boolean);
    procedure Settempo(const Value : Integer);
    procedure Setinicio(const Value : WideString);
    procedure Setfim(const Value : WideString);
    procedure Setgerado(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property importacao : Integer         read Fimportacao    write Fimportacao;
    property descricao : WideString         read Fdescricao    write Fdescricao;
    property total : Boolean         read Ftotal    write Ftotal;
    property geracoes : Boolean         read Fgeracoes    write Fgeracoes;
    property tempo : Integer         read Ftempo    write Ftempo;
    property inicio : WideString         read Finicio    write Finicio;
    property fim : WideString         read Ffim    write Ffim;
    property gerado : indefinido         read Fgerado    write Fgerado;

  end;

var
  Frm_ViewERPimportcontroller : TFrm_ViewERPimportcontroller; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].importacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].geracoes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fim); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
    end; 
end; 

procedure TFrm_ViewERPimportcontroller.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.importacao := Edit_importacao.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.total := Edit_total.text;
      FController.Model.geracoes := Edit_geracoes.text;
      FController.Model.tempo := Edit_tempo.text;
      FController.Model.inicio := Edit_inicio.text;
      FController.Model.fim := Edit_fim.text;
      FController.Model.gerado := Edit_gerado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportcontroller.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportcontroller.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportcontroller.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportcontroller.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportcontroller.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportcontroller.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportcontroller.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := importacao;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := geracoes;  
     Grid.Cells[inttostr(i),0] := tempo;  
     Grid.Cells[inttostr(i),0] := inicio;  
     Grid.Cells[inttostr(i),0] := fim;  
     Grid.Cells[inttostr(i),0] := gerado;  
end;

procedure TFrm_ViewERPimportcontroller.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportcontroller.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportcontroller.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.importacao := Grid.Cells[1,Grid.row];
    FController.Model.descricao := Grid.Cells[2,Grid.row];
    FController.Model.total := Grid.Cells[3,Grid.row];
    FController.Model.geracoes := Grid.Cells[4,Grid.row];
    FController.Model.tempo := Grid.Cells[5,Grid.row];
    FController.Model.inicio := Grid.Cells[6,Grid.row];
    FController.Model.fim := Grid.Cells[7,Grid.row];
    FController.Model.gerado := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportcontroller.LimparTela;  
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

procedure TFrm_ViewERPimportcontroller.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setimportacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setdescricao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Settotal(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setgeracoes(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Settempo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setinicio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setfim(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcontroller.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
