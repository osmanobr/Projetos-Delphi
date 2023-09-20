
unit View.ERP.posto_encerrante_itens;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.posto_encerrante_itens, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpostoencerranteitens = class(TForm) 
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
    FController : TControllerERPpostoencerranteitens; 
    Fid : Integer;
    Fid_encerrante : Integer;
    Fnota : indefinido;
    Fid_tanque : Integer;
    Fquantidade : Double;
    Fid_compra : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_encerrante(const Value : Integer);
    procedure Setnota(const Value : indefinido);
    procedure Setid_tanque(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setid_compra(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_encerrante : Integer         read Fid_encerrante    write Fid_encerrante;
    property nota : indefinido         read Fnota    write Fnota;
    property id_tanque : Integer         read Fid_tanque    write Fid_tanque;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property id_compra : Integer         read Fid_compra    write Fid_compra;

  end;

var
  Frm_ViewERPpostoencerranteitens : TFrm_ViewERPpostoencerranteitens; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_encerrante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tanque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
    end; 
end; 

procedure TFrm_ViewERPpostoencerranteitens.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_encerrante := Edit_id_encerrante.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.id_tanque := Edit_id_tanque.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.id_compra := Edit_id_compra.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpostoencerranteitens.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpostoencerranteitens.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpostoencerranteitens.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpostoencerranteitens.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpostoencerranteitens.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpostoencerranteitens.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpostoencerranteitens.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_encerrante;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := id_tanque;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := id_compra;  
end;

procedure TFrm_ViewERPpostoencerranteitens.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpostoencerranteitens.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpostoencerranteitens.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_encerrante := Grid.Cells[1,Grid.row];
    FController.Model.nota := Grid.Cells[2,Grid.row];
    FController.Model.id_tanque := Grid.Cells[3,Grid.row];
    FController.Model.quantidade := Grid.Cells[4,Grid.row];
    FController.Model.id_compra := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpostoencerranteitens.LimparTela;  
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

procedure TFrm_ViewERPpostoencerranteitens.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerranteitens.Setid_encerrante(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerranteitens.Setnota(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerranteitens.Setid_tanque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerranteitens.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerranteitens.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
