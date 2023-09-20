
unit View.ERP.op;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.op, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPop = class(TForm) 
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
    FController : TControllerERPop; 
    Fid : Integer;
    Fid_op : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fquantidade_perdas : Double;
    Fquantidade_boas : Double;
    Funidade : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_op(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setquantidade_perdas(const Value : Double);
    procedure Setquantidade_boas(const Value : Double);
    procedure Setunidade(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_op : Integer         read Fid_op    write Fid_op;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property quantidade_perdas : Double         read Fquantidade_perdas    write Fquantidade_perdas;
    property quantidade_boas : Double         read Fquantidade_boas    write Fquantidade_boas;
    property unidade : indefinido         read Funidade    write Funidade;

  end;

var
  Frm_ViewERPop : TFrm_ViewERPop; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_op); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_perdas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_boas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
    end; 
end; 

procedure TFrm_ViewERPop.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_op := Edit_id_op.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.quantidade_perdas := Edit_quantidade_perdas.text;
      FController.Model.quantidade_boas := Edit_quantidade_boas.text;
      FController.Model.unidade := Edit_unidade.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPop.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPop.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPop.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPop.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPop.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPop.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPop.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_op;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := quantidade_perdas;  
     Grid.Cells[inttostr(i),0] := quantidade_boas;  
     Grid.Cells[inttostr(i),0] := unidade;  
end;

procedure TFrm_ViewERPop.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPop.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPop.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_op := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.quantidade := Grid.Cells[4,Grid.row];
    FController.Model.quantidade_perdas := Grid.Cells[5,Grid.row];
    FController.Model.quantidade_boas := Grid.Cells[6,Grid.row];
    FController.Model.unidade := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPop.LimparTela;  
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

procedure TFrm_ViewERPop.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setid_op(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setquantidade_perdas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setquantidade_boas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPop.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
