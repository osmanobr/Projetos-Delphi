
unit View.ERP.cfop_import;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cfop_import, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcfopimport = class(TForm) 
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
    FController : TControllerERPcfopimport; 
    Fid : Integer;
    Ftitulo : WideString;
    Fdescricao : indefinido;
    Fdesenvolvedor : indefinido;
    Fproduto : indefinido;
    Fdatahora : indefinido;
    Ftipo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Settitulo(const Value : WideString);
    procedure Setdescricao(const Value : indefinido);
    procedure Setdesenvolvedor(const Value : indefinido);
    procedure Setproduto(const Value : indefinido);
    procedure Setdatahora(const Value : indefinido);
    procedure Settipo(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property titulo : WideString         read Ftitulo    write Ftitulo;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property desenvolvedor : indefinido         read Fdesenvolvedor    write Fdesenvolvedor;
    property produto : indefinido         read Fproduto    write Fproduto;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property tipo : indefinido         read Ftipo    write Ftipo;

  end;

var
  Frm_ViewERPcfopimport : TFrm_ViewERPcfopimport; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].titulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desenvolvedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
    end; 
end; 

procedure TFrm_ViewERPcfopimport.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.titulo := Edit_titulo.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.desenvolvedor := Edit_desenvolvedor.text;
      FController.Model.produto := Edit_produto.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.tipo := Edit_tipo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcfopimport.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcfopimport.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcfopimport.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcfopimport.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcfopimport.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcfopimport.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcfopimport.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := titulo;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := desenvolvedor;  
     Grid.Cells[inttostr(i),0] := produto;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := tipo;  
end;

procedure TFrm_ViewERPcfopimport.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcfopimport.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcfopimport.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.titulo := Grid.Cells[1,Grid.row];
    FController.Model.descricao := Grid.Cells[2,Grid.row];
    FController.Model.desenvolvedor := Grid.Cells[3,Grid.row];
    FController.Model.produto := Grid.Cells[4,Grid.row];
    FController.Model.datahora := Grid.Cells[5,Grid.row];
    FController.Model.tipo := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcfopimport.LimparTela;  
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

procedure TFrm_ViewERPcfopimport.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Settitulo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Setdesenvolvedor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Setproduto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcfopimport.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
