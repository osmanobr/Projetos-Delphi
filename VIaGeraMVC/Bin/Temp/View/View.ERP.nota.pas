
unit View.ERP.nfe_manifesto_nsu;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.nfe_manifesto_nsu, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPnfemanifestonsu = class(TForm) 
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
    FController : TControllerERPnfemanifestonsu; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Flin : Integer;
    Fcol : Integer;
    Ffonte : indefinido;
    Ftamanho : indefinido;
    Fimprime : indefinido;
    Fcampo : indefinido;
    Ftabela : indefinido;
    Ftipo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setlin(const Value : Integer);
    procedure Setcol(const Value : Integer);
    procedure Setfonte(const Value : indefinido);
    procedure Settamanho(const Value : indefinido);
    procedure Setimprime(const Value : indefinido);
    procedure Setcampo(const Value : indefinido);
    procedure Settabela(const Value : indefinido);
    procedure Settipo(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property lin : Integer         read Flin    write Flin;
    property col : Integer         read Fcol    write Fcol;
    property fonte : indefinido         read Ffonte    write Ffonte;
    property tamanho : indefinido         read Ftamanho    write Ftamanho;
    property imprime : indefinido         read Fimprime    write Fimprime;
    property campo : indefinido         read Fcampo    write Fcampo;
    property tabela : indefinido         read Ftabela    write Ftabela;
    property tipo : indefinido         read Ftipo    write Ftipo;

  end;

var
  Frm_ViewERPnfemanifestonsu : TFrm_ViewERPnfemanifestonsu; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
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

procedure TFrm_ViewERPnfemanifestonsu.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
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

procedure TFrm_ViewERPnfemanifestonsu.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPnfemanifestonsu.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPnfemanifestonsu.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPnfemanifestonsu.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPnfemanifestonsu.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPnfemanifestonsu.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPnfemanifestonsu.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
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

procedure TFrm_ViewERPnfemanifestonsu.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPnfemanifestonsu.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPnfemanifestonsu.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.lin := Grid.Cells[3,Grid.row];
    FController.Model.col := Grid.Cells[4,Grid.row];
    FController.Model.fonte := Grid.Cells[5,Grid.row];
    FController.Model.tamanho := Grid.Cells[6,Grid.row];
    FController.Model.imprime := Grid.Cells[7,Grid.row];
    FController.Model.campo := Grid.Cells[8,Grid.row];
    FController.Model.tabela := Grid.Cells[9,Grid.row];
    FController.Model.tipo := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPnfemanifestonsu.LimparTela;  
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

procedure TFrm_ViewERPnfemanifestonsu.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setlin(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setcol(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setfonte(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Settamanho(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setimprime(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Setcampo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Settabela(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestonsu.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
