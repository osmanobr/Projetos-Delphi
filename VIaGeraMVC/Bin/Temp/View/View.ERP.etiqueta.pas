
unit View.ERP.etiqueta;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.etiqueta, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPetiqueta = class(TForm) 
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
    FController : TControllerERPetiqueta; 
    Fid : Integer;
    Fnome : WideString;
    Flin : indefinido;
    Fcol : indefinido;
    Ffonte : WideString;
    Ftamanho : WideString;
    Fimprime : WideString;
    Fcampo : WideString;
    Ftabela : WideString;
    Ftipo : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setlin(const Value : indefinido);
    procedure Setcol(const Value : indefinido);
    procedure Setfonte(const Value : WideString);
    procedure Settamanho(const Value : WideString);
    procedure Setimprime(const Value : WideString);
    procedure Setcampo(const Value : WideString);
    procedure Settabela(const Value : WideString);
    procedure Settipo(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property lin : indefinido         read Flin    write Flin;
    property col : indefinido         read Fcol    write Fcol;
    property fonte : WideString         read Ffonte    write Ffonte;
    property tamanho : WideString         read Ftamanho    write Ftamanho;
    property imprime : WideString         read Fimprime    write Fimprime;
    property campo : WideString         read Fcampo    write Fcampo;
    property tabela : WideString         read Ftabela    write Ftabela;
    property tipo : WideString         read Ftipo    write Ftipo;

  end;

var
  Frm_ViewERPetiqueta : TFrm_ViewERPetiqueta; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].col); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fonte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tamanho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprime); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].campo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tabela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
    end; 
end; 

procedure TFrm_ViewERPetiqueta.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.lin := Edit_lin.text;
      FController.Model.col := Edit_col.text;
      FController.Model.fonte := Edit_fonte.text;
      FController.Model.tamanho := Edit_tamanho.text;
      FController.Model.imprime := Edit_imprime.text;
      FController.Model.campo := Edit_campo.text;
      FController.Model.tabela := Edit_tabela.text;
      FController.Model.tipo := Edit_tipo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPetiqueta.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPetiqueta.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPetiqueta.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPetiqueta.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPetiqueta.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPetiqueta.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPetiqueta.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := lin;  
     Grid.Cells[inttostr(i),0] := col;  
     Grid.Cells[inttostr(i),0] := fonte;  
     Grid.Cells[inttostr(i),0] := tamanho;  
     Grid.Cells[inttostr(i),0] := imprime;  
     Grid.Cells[inttostr(i),0] := campo;  
     Grid.Cells[inttostr(i),0] := tabela;  
     Grid.Cells[inttostr(i),0] := tipo;  
end;

procedure TFrm_ViewERPetiqueta.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPetiqueta.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPetiqueta.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.lin := Grid.Cells[2,Grid.row];
    FController.Model.col := Grid.Cells[3,Grid.row];
    FController.Model.fonte := Grid.Cells[4,Grid.row];
    FController.Model.tamanho := Grid.Cells[5,Grid.row];
    FController.Model.imprime := Grid.Cells[6,Grid.row];
    FController.Model.campo := Grid.Cells[7,Grid.row];
    FController.Model.tabela := Grid.Cells[8,Grid.row];
    FController.Model.tipo := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPetiqueta.LimparTela;  
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

procedure TFrm_ViewERPetiqueta.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setlin(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setcol(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setfonte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Settamanho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setimprime(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Setcampo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Settabela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiqueta.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
