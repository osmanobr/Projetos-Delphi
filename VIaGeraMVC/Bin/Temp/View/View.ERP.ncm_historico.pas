
unit View.ERP.ncm;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.ncm, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPncm = class(TForm) 
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
    FController : TControllerERPncm; 
    Fid : Integer;
    Fncm : indefinido;
    Fexcluido : Boolean;
    Fadicionado : Boolean;
    Fdatahora : indefinido;
    Fsubstituido : indefinido;
    Fprodutos : indefinido;
    Fdescricao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setncm(const Value : indefinido);
    procedure Setexcluido(const Value : Boolean);
    procedure Setadicionado(const Value : Boolean);
    procedure Setdatahora(const Value : indefinido);
    procedure Setsubstituido(const Value : indefinido);
    procedure Setprodutos(const Value : indefinido);
    procedure Setdescricao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property ncm : indefinido         read Fncm    write Fncm;
    property excluido : Boolean         read Fexcluido    write Fexcluido;
    property adicionado : Boolean         read Fadicionado    write Fadicionado;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property substituido : indefinido         read Fsubstituido    write Fsubstituido;
    property produtos : indefinido         read Fprodutos    write Fprodutos;
    property descricao : indefinido         read Fdescricao    write Fdescricao;

  end;

var
  Frm_ViewERPncm : TFrm_ViewERPncm; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].excluido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].adicionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].substituido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
    end; 
end; 

procedure TFrm_ViewERPncm.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.excluido := Edit_excluido.text;
      FController.Model.adicionado := Edit_adicionado.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.substituido := Edit_substituido.text;
      FController.Model.produtos := Edit_produtos.text;
      FController.Model.descricao := Edit_descricao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPncm.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPncm.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPncm.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPncm.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPncm.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPncm.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPncm.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := excluido;  
     Grid.Cells[inttostr(i),0] := adicionado;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := substituido;  
     Grid.Cells[inttostr(i),0] := produtos;  
     Grid.Cells[inttostr(i),0] := descricao;  
end;

procedure TFrm_ViewERPncm.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPncm.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPncm.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ncm := Grid.Cells[1,Grid.row];
    FController.Model.excluido := Grid.Cells[2,Grid.row];
    FController.Model.adicionado := Grid.Cells[3,Grid.row];
    FController.Model.datahora := Grid.Cells[4,Grid.row];
    FController.Model.substituido := Grid.Cells[5,Grid.row];
    FController.Model.produtos := Grid.Cells[6,Grid.row];
    FController.Model.descricao := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPncm.LimparTela;  
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

procedure TFrm_ViewERPncm.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setncm(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setexcluido(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setadicionado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setsubstituido(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setprodutos(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncm.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
