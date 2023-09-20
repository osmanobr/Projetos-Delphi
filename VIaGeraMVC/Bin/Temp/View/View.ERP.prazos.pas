
unit View.ERP.posto_lancamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.posto_lancamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpostolancamento = class(TForm) 
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
    FController : TControllerERPpostolancamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fprazo1 : Double;
    Fprazo2 : Double;
    Fprazo3 : Double;
    Fprazo4 : Double;
    Fprazo5 : Double;
    Fprazo6 : Double;
    Fprazo7 : Double;
    Fprazo8 : Double;
    Fprazo9 : Double;
    Fprazo10 : Double;
    Fprazo11 : Double;
    Fprazo12 : Double;
    Fprazo13 : Double;
    Fprazo14 : Double;
    Fprazo15 : Double;
    Fprazo16 : Double;
    Fprazo17 : Double;
    Fprazo18 : Double;
    Fprazo19 : Double;
    Fprazo20 : Double;
    Fprazo21 : Double;
    Fprazo22 : Double;
    Fprazo23 : Double;
    Fprazo24 : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setprazo1(const Value : Double);
    procedure Setprazo2(const Value : Double);
    procedure Setprazo3(const Value : Double);
    procedure Setprazo4(const Value : Double);
    procedure Setprazo5(const Value : Double);
    procedure Setprazo6(const Value : Double);
    procedure Setprazo7(const Value : Double);
    procedure Setprazo8(const Value : Double);
    procedure Setprazo9(const Value : Double);
    procedure Setprazo10(const Value : Double);
    procedure Setprazo11(const Value : Double);
    procedure Setprazo12(const Value : Double);
    procedure Setprazo13(const Value : Double);
    procedure Setprazo14(const Value : Double);
    procedure Setprazo15(const Value : Double);
    procedure Setprazo16(const Value : Double);
    procedure Setprazo17(const Value : Double);
    procedure Setprazo18(const Value : Double);
    procedure Setprazo19(const Value : Double);
    procedure Setprazo20(const Value : Double);
    procedure Setprazo21(const Value : Double);
    procedure Setprazo22(const Value : Double);
    procedure Setprazo23(const Value : Double);
    procedure Setprazo24(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property prazo1 : Double         read Fprazo1    write Fprazo1;
    property prazo2 : Double         read Fprazo2    write Fprazo2;
    property prazo3 : Double         read Fprazo3    write Fprazo3;
    property prazo4 : Double         read Fprazo4    write Fprazo4;
    property prazo5 : Double         read Fprazo5    write Fprazo5;
    property prazo6 : Double         read Fprazo6    write Fprazo6;
    property prazo7 : Double         read Fprazo7    write Fprazo7;
    property prazo8 : Double         read Fprazo8    write Fprazo8;
    property prazo9 : Double         read Fprazo9    write Fprazo9;
    property prazo10 : Double         read Fprazo10    write Fprazo10;
    property prazo11 : Double         read Fprazo11    write Fprazo11;
    property prazo12 : Double         read Fprazo12    write Fprazo12;
    property prazo13 : Double         read Fprazo13    write Fprazo13;
    property prazo14 : Double         read Fprazo14    write Fprazo14;
    property prazo15 : Double         read Fprazo15    write Fprazo15;
    property prazo16 : Double         read Fprazo16    write Fprazo16;
    property prazo17 : Double         read Fprazo17    write Fprazo17;
    property prazo18 : Double         read Fprazo18    write Fprazo18;
    property prazo19 : Double         read Fprazo19    write Fprazo19;
    property prazo20 : Double         read Fprazo20    write Fprazo20;
    property prazo21 : Double         read Fprazo21    write Fprazo21;
    property prazo22 : Double         read Fprazo22    write Fprazo22;
    property prazo23 : Double         read Fprazo23    write Fprazo23;
    property prazo24 : Double         read Fprazo24    write Fprazo24;

  end;

var
  Frm_ViewERPpostolancamento : TFrm_ViewERPpostolancamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 26; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo8); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo9); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo10); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo11); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo12); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo13); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo14); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo15); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo16); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo17); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo18); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo19); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo20); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo21); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo22); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo23); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prazo24); 
    end; 
end; 

procedure TFrm_ViewERPpostolancamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.prazo1 := Edit_prazo1.text;
      FController.Model.prazo2 := Edit_prazo2.text;
      FController.Model.prazo3 := Edit_prazo3.text;
      FController.Model.prazo4 := Edit_prazo4.text;
      FController.Model.prazo5 := Edit_prazo5.text;
      FController.Model.prazo6 := Edit_prazo6.text;
      FController.Model.prazo7 := Edit_prazo7.text;
      FController.Model.prazo8 := Edit_prazo8.text;
      FController.Model.prazo9 := Edit_prazo9.text;
      FController.Model.prazo10 := Edit_prazo10.text;
      FController.Model.prazo11 := Edit_prazo11.text;
      FController.Model.prazo12 := Edit_prazo12.text;
      FController.Model.prazo13 := Edit_prazo13.text;
      FController.Model.prazo14 := Edit_prazo14.text;
      FController.Model.prazo15 := Edit_prazo15.text;
      FController.Model.prazo16 := Edit_prazo16.text;
      FController.Model.prazo17 := Edit_prazo17.text;
      FController.Model.prazo18 := Edit_prazo18.text;
      FController.Model.prazo19 := Edit_prazo19.text;
      FController.Model.prazo20 := Edit_prazo20.text;
      FController.Model.prazo21 := Edit_prazo21.text;
      FController.Model.prazo22 := Edit_prazo22.text;
      FController.Model.prazo23 := Edit_prazo23.text;
      FController.Model.prazo24 := Edit_prazo24.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpostolancamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpostolancamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpostolancamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpostolancamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpostolancamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpostolancamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpostolancamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 26;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := prazo1;  
     Grid.Cells[inttostr(i),0] := prazo2;  
     Grid.Cells[inttostr(i),0] := prazo3;  
     Grid.Cells[inttostr(i),0] := prazo4;  
     Grid.Cells[inttostr(i),0] := prazo5;  
     Grid.Cells[inttostr(i),0] := prazo6;  
     Grid.Cells[inttostr(i),0] := prazo7;  
     Grid.Cells[inttostr(i),0] := prazo8;  
     Grid.Cells[inttostr(i),0] := prazo9;  
     Grid.Cells[inttostr(i),0] := prazo10;  
     Grid.Cells[inttostr(i),0] := prazo11;  
     Grid.Cells[inttostr(i),0] := prazo12;  
     Grid.Cells[inttostr(i),0] := prazo13;  
     Grid.Cells[inttostr(i),0] := prazo14;  
     Grid.Cells[inttostr(i),0] := prazo15;  
     Grid.Cells[inttostr(i),0] := prazo16;  
     Grid.Cells[inttostr(i),0] := prazo17;  
     Grid.Cells[inttostr(i),0] := prazo18;  
     Grid.Cells[inttostr(i),0] := prazo19;  
     Grid.Cells[inttostr(i),0] := prazo20;  
     Grid.Cells[inttostr(i),0] := prazo21;  
     Grid.Cells[inttostr(i),0] := prazo22;  
     Grid.Cells[inttostr(i),0] := prazo23;  
     Grid.Cells[inttostr(i),0] := prazo24;  
end;

procedure TFrm_ViewERPpostolancamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpostolancamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpostolancamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.prazo1 := Grid.Cells[2,Grid.row];
    FController.Model.prazo2 := Grid.Cells[3,Grid.row];
    FController.Model.prazo3 := Grid.Cells[4,Grid.row];
    FController.Model.prazo4 := Grid.Cells[5,Grid.row];
    FController.Model.prazo5 := Grid.Cells[6,Grid.row];
    FController.Model.prazo6 := Grid.Cells[7,Grid.row];
    FController.Model.prazo7 := Grid.Cells[8,Grid.row];
    FController.Model.prazo8 := Grid.Cells[9,Grid.row];
    FController.Model.prazo9 := Grid.Cells[10,Grid.row];
    FController.Model.prazo10 := Grid.Cells[11,Grid.row];
    FController.Model.prazo11 := Grid.Cells[12,Grid.row];
    FController.Model.prazo12 := Grid.Cells[13,Grid.row];
    FController.Model.prazo13 := Grid.Cells[14,Grid.row];
    FController.Model.prazo14 := Grid.Cells[15,Grid.row];
    FController.Model.prazo15 := Grid.Cells[16,Grid.row];
    FController.Model.prazo16 := Grid.Cells[17,Grid.row];
    FController.Model.prazo17 := Grid.Cells[18,Grid.row];
    FController.Model.prazo18 := Grid.Cells[19,Grid.row];
    FController.Model.prazo19 := Grid.Cells[20,Grid.row];
    FController.Model.prazo20 := Grid.Cells[21,Grid.row];
    FController.Model.prazo21 := Grid.Cells[22,Grid.row];
    FController.Model.prazo22 := Grid.Cells[23,Grid.row];
    FController.Model.prazo23 := Grid.Cells[24,Grid.row];
    FController.Model.prazo24 := Grid.Cells[25,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpostolancamento.LimparTela;  
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

procedure TFrm_ViewERPpostolancamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo5(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo6(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo7(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo8(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo9(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo10(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo11(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo12(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo13(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo14(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo15(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo16(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo17(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo18(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo19(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo20(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo21(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo22(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo23(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostolancamento.Setprazo24(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
