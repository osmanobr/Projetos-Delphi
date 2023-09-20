
unit View.ERP.transf_deposito_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.transf_deposito_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtransfdepositoitem = class(TForm) 
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
    FController : TControllerERPtransfdepositoitem; 
    Fid : Integer;
    Fdata : TDateTime;
    Fid_forma : Integer;
    Forigem : indefinido;
    Fid_origem : Integer;
    Fid_origem_conta : WideString;
    Fdestino : indefinido;
    Fid_destino : Integer;
    Fid_destino_conta : WideString;
    Fvalor : Double;
    Fhistorico : indefinido;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setorigem(const Value : indefinido);
    procedure Setid_origem(const Value : Integer);
    procedure Setid_origem_conta(const Value : WideString);
    procedure Setdestino(const Value : indefinido);
    procedure Setid_destino(const Value : Integer);
    procedure Setid_destino_conta(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Sethistorico(const Value : indefinido);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property origem : indefinido         read Forigem    write Forigem;
    property id_origem : Integer         read Fid_origem    write Fid_origem;
    property id_origem_conta : WideString         read Fid_origem_conta    write Fid_origem_conta;
    property destino : indefinido         read Fdestino    write Fdestino;
    property id_destino : Integer         read Fid_destino    write Fid_destino;
    property id_destino_conta : WideString         read Fid_destino_conta    write Fid_destino_conta;
    property valor : Double         read Fvalor    write Fvalor;
    property historico : indefinido         read Fhistorico    write Fhistorico;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPtransfdepositoitem : TFrm_ViewERPtransfdepositoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_origem_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_destino_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPtransfdepositoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.origem := Edit_origem.text;
      FController.Model.id_origem := Edit_id_origem.text;
      FController.Model.id_origem_conta := Edit_id_origem_conta.text;
      FController.Model.destino := Edit_destino.text;
      FController.Model.id_destino := Edit_id_destino.text;
      FController.Model.id_destino_conta := Edit_id_destino_conta.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtransfdepositoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtransfdepositoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtransfdepositoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtransfdepositoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtransfdepositoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtransfdepositoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtransfdepositoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := origem;  
     Grid.Cells[inttostr(i),0] := id_origem;  
     Grid.Cells[inttostr(i),0] := id_origem_conta;  
     Grid.Cells[inttostr(i),0] := destino;  
     Grid.Cells[inttostr(i),0] := id_destino;  
     Grid.Cells[inttostr(i),0] := id_destino_conta;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPtransfdepositoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtransfdepositoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtransfdepositoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.id_forma := Grid.Cells[2,Grid.row];
    FController.Model.origem := Grid.Cells[3,Grid.row];
    FController.Model.id_origem := Grid.Cells[4,Grid.row];
    FController.Model.id_origem_conta := Grid.Cells[5,Grid.row];
    FController.Model.destino := Grid.Cells[6,Grid.row];
    FController.Model.id_destino := Grid.Cells[7,Grid.row];
    FController.Model.id_destino_conta := Grid.Cells[8,Grid.row];
    FController.Model.valor := Grid.Cells[9,Grid.row];
    FController.Model.historico := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtransfdepositoitem.LimparTela;  
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

procedure TFrm_ViewERPtransfdepositoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setorigem(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setid_origem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setid_origem_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setdestino(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setid_destino(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setid_destino_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Sethistorico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdepositoitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
