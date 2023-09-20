
unit View.ERP.estimativa_obra_historico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estimativa_obra_historico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestimativaobrahistorico = class(TForm) 
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
    FController : TControllerERPestimativaobrahistorico; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_estimativa_obra : Integer;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fquantidade_entregue : Double;
    Fconcluido : Boolean;
    Fcusto : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_estimativa_obra(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setid_almoxarifado(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setunitario(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setquantidade_entregue(const Value : Double);
    procedure Setconcluido(const Value : Boolean);
    procedure Setcusto(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_estimativa_obra : Integer         read Fid_estimativa_obra    write Fid_estimativa_obra;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property id_almoxarifado : Integer         read Fid_almoxarifado    write Fid_almoxarifado;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property total : Double         read Ftotal    write Ftotal;
    property quantidade_entregue : Double         read Fquantidade_entregue    write Fquantidade_entregue;
    property concluido : Boolean         read Fconcluido    write Fconcluido;
    property custo : Double         read Fcusto    write Fcusto;

  end;

var
  Frm_ViewERPestimativaobrahistorico : TFrm_ViewERPestimativaobrahistorico; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_estimativa_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].concluido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo); 
    end; 
end; 

procedure TFrm_ViewERPestimativaobrahistorico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_estimativa_obra := Edit_id_estimativa_obra.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.id_almoxarifado := Edit_id_almoxarifado.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.total := Edit_total.text;
      FController.Model.quantidade_entregue := Edit_quantidade_entregue.text;
      FController.Model.concluido := Edit_concluido.text;
      FController.Model.custo := Edit_custo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestimativaobrahistorico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestimativaobrahistorico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestimativaobrahistorico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestimativaobrahistorico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestimativaobrahistorico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestimativaobrahistorico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestimativaobrahistorico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_estimativa_obra;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := id_almoxarifado;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := quantidade_entregue;  
     Grid.Cells[inttostr(i),0] := concluido;  
     Grid.Cells[inttostr(i),0] := custo;  
end;

procedure TFrm_ViewERPestimativaobrahistorico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestimativaobrahistorico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestimativaobrahistorico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_estimativa_obra := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.id_almoxarifado := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.unitario := Grid.Cells[7,Grid.row];
    FController.Model.total := Grid.Cells[8,Grid.row];
    FController.Model.quantidade_entregue := Grid.Cells[9,Grid.row];
    FController.Model.concluido := Grid.Cells[10,Grid.row];
    FController.Model.custo := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestimativaobrahistorico.LimparTela;  
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

procedure TFrm_ViewERPestimativaobrahistorico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setid_estimativa_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setid_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setquantidade_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setconcluido(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobrahistorico.Setcusto(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
