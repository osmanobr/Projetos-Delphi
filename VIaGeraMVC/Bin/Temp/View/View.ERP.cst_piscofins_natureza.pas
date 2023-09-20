
unit View.ERP.cst_piscofins;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cst_piscofins, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcstpiscofins = class(TForm) 
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
    FController : TControllerERPcstpiscofins; 
    Fid : Integer;
    Fnatureza : WideString;
    Fdescricao : indefinido;
    Fpis : Double;
    Fcofins : Double;
    Finicio : TDateTime;
    Ftermino : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnatureza(const Value : WideString);
    procedure Setdescricao(const Value : indefinido);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setinicio(const Value : TDateTime);
    procedure Settermino(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property natureza : WideString         read Fnatureza    write Fnatureza;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property inicio : TDateTime         read Finicio    write Finicio;
    property termino : TDateTime         read Ftermino    write Ftermino;

  end;

var
  Frm_ViewERPcstpiscofins : TFrm_ViewERPcstpiscofins; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].natureza); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].termino); 
    end; 
end; 

procedure TFrm_ViewERPcstpiscofins.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.natureza := Edit_natureza.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.inicio := Edit_inicio.text;
      FController.Model.termino := Edit_termino.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcstpiscofins.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcstpiscofins.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcstpiscofins.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcstpiscofins.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcstpiscofins.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcstpiscofins.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcstpiscofins.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := natureza;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := inicio;  
     Grid.Cells[inttostr(i),0] := termino;  
end;

procedure TFrm_ViewERPcstpiscofins.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcstpiscofins.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcstpiscofins.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.natureza := Grid.Cells[1,Grid.row];
    FController.Model.descricao := Grid.Cells[2,Grid.row];
    FController.Model.pis := Grid.Cells[3,Grid.row];
    FController.Model.cofins := Grid.Cells[4,Grid.row];
    FController.Model.inicio := Grid.Cells[5,Grid.row];
    FController.Model.termino := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcstpiscofins.LimparTela;  
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

procedure TFrm_ViewERPcstpiscofins.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Setnatureza(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Setinicio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofins.Settermino(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
