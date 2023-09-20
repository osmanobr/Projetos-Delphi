
unit View.ERP.fechamento_caixa_detalhe;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fechamento_caixa_detalhe, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfechamentocaixadetalhe = class(TForm) 
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
    FController : TControllerERPfechamentocaixadetalhe; 
    Fid : Integer;
    Fid_fechamento_caixa : Integer;
    Fid_usuario : Integer;
    Fnome_usuario : WideString;
    Facao : WideString;
    Fdatahora : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fechamento_caixa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setnome_usuario(const Value : WideString);
    procedure Setacao(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_fechamento_caixa : Integer         read Fid_fechamento_caixa    write Fid_fechamento_caixa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property nome_usuario : WideString         read Fnome_usuario    write Fnome_usuario;
    property acao : WideString         read Facao    write Facao;
    property datahora : indefinido         read Fdatahora    write Fdatahora;

  end;

var
  Frm_ViewERPfechamentocaixadetalhe : TFrm_ViewERPfechamentocaixadetalhe; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fechamento_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
    end; 
end; 

procedure TFrm_ViewERPfechamentocaixadetalhe.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fechamento_caixa := Edit_id_fechamento_caixa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.nome_usuario := Edit_nome_usuario.text;
      FController.Model.acao := Edit_acao.text;
      FController.Model.datahora := Edit_datahora.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfechamentocaixadetalhe.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfechamentocaixadetalhe.BBCancelarClick(Sender: TObject); 
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
      {Verifica s� � uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPfechamentocaixadetalhe.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a grava��o dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
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

procedure TFrm_ViewERPfechamentocaixadetalhe.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfechamentocaixadetalhe.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfechamentocaixadetalhe.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfechamentocaixadetalhe.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fechamento_caixa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := nome_usuario;  
     Grid.Cells[inttostr(i),0] := acao;  
     Grid.Cells[inttostr(i),0] := datahora;  
end;

procedure TFrm_ViewERPfechamentocaixadetalhe.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfechamentocaixadetalhe.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfechamentocaixadetalhe.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fechamento_caixa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.nome_usuario := Grid.Cells[3,Grid.row];
    FController.Model.acao := Grid.Cells[4,Grid.row];
    FController.Model.datahora := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfechamentocaixadetalhe.LimparTela;  
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

procedure TFrm_ViewERPfechamentocaixadetalhe.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixadetalhe.Setid_fechamento_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixadetalhe.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixadetalhe.Setnome_usuario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixadetalhe.Setacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixadetalhe.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.