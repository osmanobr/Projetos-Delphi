
unit View.ERP.fechamento_caixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fechamento_caixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfechamentocaixa = class(TForm) 
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
    FController : TControllerERPfechamentocaixa; 
    Fid : Integer;
    Fid_fechamento_caixa : Integer;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Ffinalizadora : WideString;
    Fconta : WideString;
    Fsistema : Double;
    Finformado : Double;
    Fcalculado : Double;
    Fdatahora : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fechamento_caixa(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Setfinalizadora(const Value : WideString);
    procedure Setconta(const Value : WideString);
    procedure Setsistema(const Value : Double);
    procedure Setinformado(const Value : Double);
    procedure Setcalculado(const Value : Double);
    procedure Setdatahora(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_fechamento_caixa : Integer         read Fid_fechamento_caixa    write Fid_fechamento_caixa;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property finalizadora : WideString         read Ffinalizadora    write Ffinalizadora;
    property conta : WideString         read Fconta    write Fconta;
    property sistema : Double         read Fsistema    write Fsistema;
    property informado : Double         read Finformado    write Finformado;
    property calculado : Double         read Fcalculado    write Fcalculado;
    property datahora : indefinido         read Fdatahora    write Fdatahora;

  end;

var
  Frm_ViewERPfechamentocaixa : TFrm_ViewERPfechamentocaixa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fechamento_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].finalizadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sistema); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].informado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].calculado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
    end; 
end; 

procedure TFrm_ViewERPfechamentocaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fechamento_caixa := Edit_id_fechamento_caixa.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.finalizadora := Edit_finalizadora.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.sistema := Edit_sistema.text;
      FController.Model.informado := Edit_informado.text;
      FController.Model.calculado := Edit_calculado.text;
      FController.Model.datahora := Edit_datahora.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfechamentocaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfechamentocaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfechamentocaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfechamentocaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfechamentocaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfechamentocaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfechamentocaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fechamento_caixa;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := finalizadora;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := sistema;  
     Grid.Cells[inttostr(i),0] := informado;  
     Grid.Cells[inttostr(i),0] := calculado;  
     Grid.Cells[inttostr(i),0] := datahora;  
end;

procedure TFrm_ViewERPfechamentocaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfechamentocaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfechamentocaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fechamento_caixa := Grid.Cells[1,Grid.row];
    FController.Model.id_forma := Grid.Cells[2,Grid.row];
    FController.Model.id_conta := Grid.Cells[3,Grid.row];
    FController.Model.finalizadora := Grid.Cells[4,Grid.row];
    FController.Model.conta := Grid.Cells[5,Grid.row];
    FController.Model.sistema := Grid.Cells[6,Grid.row];
    FController.Model.informado := Grid.Cells[7,Grid.row];
    FController.Model.calculado := Grid.Cells[8,Grid.row];
    FController.Model.datahora := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfechamentocaixa.LimparTela;  
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

procedure TFrm_ViewERPfechamentocaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setid_fechamento_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setfinalizadora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setsistema(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setinformado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setcalculado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixa.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
