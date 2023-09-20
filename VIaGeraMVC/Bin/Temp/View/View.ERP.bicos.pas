
unit View.ERP.barras;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.barras, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPbarras = class(TForm) 
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
    FController : TControllerERPbarras; 
    Fid : Integer;
    Fid_produto : Integer;
    Fnome : WideString;
    Fpreco : Double;
    Ftanque : Integer;
    Fbico : WideString;
    Flitros : Double;
    Fstatus : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setpreco(const Value : Double);
    procedure Settanque(const Value : Integer);
    procedure Setbico(const Value : WideString);
    procedure Setlitros(const Value : Double);
    procedure Setstatus(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome : WideString         read Fnome    write Fnome;
    property preco : Double         read Fpreco    write Fpreco;
    property tanque : Integer         read Ftanque    write Ftanque;
    property bico : WideString         read Fbico    write Fbico;
    property litros : Double         read Flitros    write Flitros;
    property status : WideString         read Fstatus    write Fstatus;

  end;

var
  Frm_ViewERPbarras : TFrm_ViewERPbarras; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tanque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].litros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
    end; 
end; 

procedure TFrm_ViewERPbarras.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.preco := Edit_preco.text;
      FController.Model.tanque := Edit_tanque.text;
      FController.Model.bico := Edit_bico.text;
      FController.Model.litros := Edit_litros.text;
      FController.Model.status := Edit_status.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPbarras.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPbarras.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPbarras.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPbarras.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPbarras.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPbarras.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPbarras.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := preco;  
     Grid.Cells[inttostr(i),0] := tanque;  
     Grid.Cells[inttostr(i),0] := bico;  
     Grid.Cells[inttostr(i),0] := litros;  
     Grid.Cells[inttostr(i),0] := status;  
end;

procedure TFrm_ViewERPbarras.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPbarras.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPbarras.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.preco := Grid.Cells[3,Grid.row];
    FController.Model.tanque := Grid.Cells[4,Grid.row];
    FController.Model.bico := Grid.Cells[5,Grid.row];
    FController.Model.litros := Grid.Cells[6,Grid.row];
    FController.Model.status := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPbarras.LimparTela;  
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

procedure TFrm_ViewERPbarras.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setpreco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Settanque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setbico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setlitros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPbarras.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.