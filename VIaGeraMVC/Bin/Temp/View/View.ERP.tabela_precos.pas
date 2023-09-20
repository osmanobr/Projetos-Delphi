
unit View.ERP.supervisor;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.supervisor, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPsupervisor = class(TForm) 
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
    FController : TControllerERPsupervisor; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fentrada : indefinido;
    Fpreco : indefinido;
    Fparcelas : Integer;
    Freajuste_tipo : indefinido;
    Freajuste_percentual : Double;
    Fclick : Boolean;
    Fintervalo : Integer;
    Fid_forma : Integer;
    Ffinaliza : Boolean;
    Fformas_novo : WideString;
    Fativo : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setentrada(const Value : indefinido);
    procedure Setpreco(const Value : indefinido);
    procedure Setparcelas(const Value : Integer);
    procedure Setreajuste_tipo(const Value : indefinido);
    procedure Setreajuste_percentual(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setintervalo(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setfinaliza(const Value : Boolean);
    procedure Setformas_novo(const Value : WideString);
    procedure Setativo(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property entrada : indefinido         read Fentrada    write Fentrada;
    property preco : indefinido         read Fpreco    write Fpreco;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property reajuste_tipo : indefinido         read Freajuste_tipo    write Freajuste_tipo;
    property reajuste_percentual : Double         read Freajuste_percentual    write Freajuste_percentual;
    property click : Boolean         read Fclick    write Fclick;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property finaliza : Boolean         read Ffinaliza    write Ffinaliza;
    property formas_novo : WideString         read Fformas_novo    write Fformas_novo;
    property ativo : Boolean         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPsupervisor : TFrm_ViewERPsupervisor; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reajuste_tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reajuste_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].finaliza); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].formas_novo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPsupervisor.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.entrada := Edit_entrada.text;
      FController.Model.preco := Edit_preco.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.reajuste_tipo := Edit_reajuste_tipo.text;
      FController.Model.reajuste_percentual := Edit_reajuste_percentual.text;
      FController.Model.click := Edit_click.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.finaliza := Edit_finaliza.text;
      FController.Model.formas_novo := Edit_formas_novo.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPsupervisor.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPsupervisor.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPsupervisor.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPsupervisor.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPsupervisor.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPsupervisor.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPsupervisor.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := entrada;  
     Grid.Cells[inttostr(i),0] := preco;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := reajuste_tipo;  
     Grid.Cells[inttostr(i),0] := reajuste_percentual;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := finaliza;  
     Grid.Cells[inttostr(i),0] := formas_novo;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPsupervisor.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPsupervisor.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPsupervisor.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.entrada := Grid.Cells[3,Grid.row];
    FController.Model.preco := Grid.Cells[4,Grid.row];
    FController.Model.parcelas := Grid.Cells[5,Grid.row];
    FController.Model.reajuste_tipo := Grid.Cells[6,Grid.row];
    FController.Model.reajuste_percentual := Grid.Cells[7,Grid.row];
    FController.Model.click := Grid.Cells[8,Grid.row];
    FController.Model.intervalo := Grid.Cells[9,Grid.row];
    FController.Model.id_forma := Grid.Cells[10,Grid.row];
    FController.Model.finaliza := Grid.Cells[11,Grid.row];
    FController.Model.formas_novo := Grid.Cells[12,Grid.row];
    FController.Model.ativo := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPsupervisor.LimparTela;  
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

procedure TFrm_ViewERPsupervisor.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setentrada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setpreco(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setreajuste_tipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setreajuste_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setfinaliza(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setformas_novo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsupervisor.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
