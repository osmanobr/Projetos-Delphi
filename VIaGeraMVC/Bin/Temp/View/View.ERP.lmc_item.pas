
unit View.ERP.lmc;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lmc, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlmc = class(TForm) 
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
    FController : TControllerERPlmc; 
    Fid : Integer;
    Fid_lmc : Integer;
    Fid_bico : Integer;
    Fid_tanque : Integer;
    Festoq_abert : Double;
    Festoq_fech : Double;
    Fvenda_bico : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_lmc(const Value : Integer);
    procedure Setid_bico(const Value : Integer);
    procedure Setid_tanque(const Value : Integer);
    procedure Setestoq_abert(const Value : Double);
    procedure Setestoq_fech(const Value : Double);
    procedure Setvenda_bico(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_lmc : Integer         read Fid_lmc    write Fid_lmc;
    property id_bico : Integer         read Fid_bico    write Fid_bico;
    property id_tanque : Integer         read Fid_tanque    write Fid_tanque;
    property estoq_abert : Double         read Festoq_abert    write Festoq_abert;
    property estoq_fech : Double         read Festoq_fech    write Festoq_fech;
    property venda_bico : Double         read Fvenda_bico    write Fvenda_bico;

  end;

var
  Frm_ViewERPlmc : TFrm_ViewERPlmc; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lmc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_bico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tanque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoq_abert); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoq_fech); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_bico); 
    end; 
end; 

procedure TFrm_ViewERPlmc.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_lmc := Edit_id_lmc.text;
      FController.Model.id_bico := Edit_id_bico.text;
      FController.Model.id_tanque := Edit_id_tanque.text;
      FController.Model.estoq_abert := Edit_estoq_abert.text;
      FController.Model.estoq_fech := Edit_estoq_fech.text;
      FController.Model.venda_bico := Edit_venda_bico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlmc.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlmc.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlmc.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlmc.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlmc.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlmc.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlmc.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_lmc;  
     Grid.Cells[inttostr(i),0] := id_bico;  
     Grid.Cells[inttostr(i),0] := id_tanque;  
     Grid.Cells[inttostr(i),0] := estoq_abert;  
     Grid.Cells[inttostr(i),0] := estoq_fech;  
     Grid.Cells[inttostr(i),0] := venda_bico;  
end;

procedure TFrm_ViewERPlmc.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlmc.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlmc.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_lmc := Grid.Cells[1,Grid.row];
    FController.Model.id_bico := Grid.Cells[2,Grid.row];
    FController.Model.id_tanque := Grid.Cells[3,Grid.row];
    FController.Model.estoq_abert := Grid.Cells[4,Grid.row];
    FController.Model.estoq_fech := Grid.Cells[5,Grid.row];
    FController.Model.venda_bico := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlmc.LimparTela;  
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

procedure TFrm_ViewERPlmc.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setid_lmc(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setid_bico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setid_tanque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setestoq_abert(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setestoq_fech(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmc.Setvenda_bico(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
