
unit View.ERP.produtos_lote_itens;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.produtos_lote_itens, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPprodutosloteitens = class(TForm) 
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
    FController : TControllerERPprodutosloteitens; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fprod_antigo : Integer;
    Fquantidade_antigo : Double;
    Fprod_novo : Integer;
    Fquantidade_novo : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setmotivo(const Value : indefinido);
    procedure Setprod_antigo(const Value : Integer);
    procedure Setquantidade_antigo(const Value : Double);
    procedure Setprod_novo(const Value : Integer);
    procedure Setquantidade_novo(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property data : TDateTime         read Fdata    write Fdata;
    property motivo : indefinido         read Fmotivo    write Fmotivo;
    property prod_antigo : Integer         read Fprod_antigo    write Fprod_antigo;
    property quantidade_antigo : Double         read Fquantidade_antigo    write Fquantidade_antigo;
    property prod_novo : Integer         read Fprod_novo    write Fprod_novo;
    property quantidade_novo : Double         read Fquantidade_novo    write Fquantidade_novo;

  end;

var
  Frm_ViewERPprodutosloteitens : TFrm_ViewERPprodutosloteitens; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prod_antigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_antigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prod_novo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_novo); 
    end; 
end; 

procedure TFrm_ViewERPprodutosloteitens.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.data := Edit_data.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.prod_antigo := Edit_prod_antigo.text;
      FController.Model.quantidade_antigo := Edit_quantidade_antigo.text;
      FController.Model.prod_novo := Edit_prod_novo.text;
      FController.Model.quantidade_novo := Edit_quantidade_novo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPprodutosloteitens.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPprodutosloteitens.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPprodutosloteitens.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPprodutosloteitens.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPprodutosloteitens.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPprodutosloteitens.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPprodutosloteitens.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := prod_antigo;  
     Grid.Cells[inttostr(i),0] := quantidade_antigo;  
     Grid.Cells[inttostr(i),0] := prod_novo;  
     Grid.Cells[inttostr(i),0] := quantidade_novo;  
end;

procedure TFrm_ViewERPprodutosloteitens.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPprodutosloteitens.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPprodutosloteitens.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.motivo := Grid.Cells[4,Grid.row];
    FController.Model.prod_antigo := Grid.Cells[5,Grid.row];
    FController.Model.quantidade_antigo := Grid.Cells[6,Grid.row];
    FController.Model.prod_novo := Grid.Cells[7,Grid.row];
    FController.Model.quantidade_novo := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPprodutosloteitens.LimparTela;  
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

procedure TFrm_ViewERPprodutosloteitens.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setmotivo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setprod_antigo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setquantidade_antigo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setprod_novo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutosloteitens.Setquantidade_novo(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
