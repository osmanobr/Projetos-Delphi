
unit View.ERP.ncm_tributacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.ncm_tributacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPncmtributacao = class(TForm) 
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
    FController : TControllerERPncmtributacao; 
    Fncm : indefinido;
    Fdescricao : indefinido;
    Fcategoria : indefinido;
    Fcodigocategoria : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setncm(const Value : indefinido);
    procedure Setdescricao(const Value : indefinido);
    procedure Setcategoria(const Value : indefinido);
    procedure Setcodigocategoria(const Value : indefinido);

  public

    property ncm : indefinido         read Fncm    write Fncm;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property categoria : indefinido         read Fcategoria    write Fcategoria;
    property codigocategoria : indefinido         read Fcodigocategoria    write Fcodigocategoria;

  end;

var
  Frm_ViewERPncmtributacao : TFrm_ViewERPncmtributacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 4; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].categoria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigocategoria); 
    end; 
end; 

procedure TFrm_ViewERPncmtributacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.categoria := Edit_categoria.text;
      FController.Model.codigocategoria := Edit_codigocategoria.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPncmtributacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPncmtributacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPncmtributacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPncmtributacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPncmtributacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPncmtributacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPncmtributacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 4;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := categoria;  
     Grid.Cells[inttostr(i),0] := codigocategoria;  
end;

procedure TFrm_ViewERPncmtributacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPncmtributacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPncmtributacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.ncm := Grid.Cells[0,Grid.row];
    FController.Model.descricao := Grid.Cells[1,Grid.row];
    FController.Model.categoria := Grid.Cells[2,Grid.row];
    FController.Model.codigocategoria := Grid.Cells[3,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPncmtributacao.LimparTela;  
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

procedure TFrm_ViewERPncmtributacao.Setncm(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmtributacao.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmtributacao.Setcategoria(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmtributacao.Setcodigocategoria(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
