
unit View.ERP.leitura_coleta_importacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.leitura_coleta_importacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPleituracoletaimportacao = class(TForm) 
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
    FController : TControllerERPleituracoletaimportacao; 
    Fid : Integer;
    Fid_condominio : Integer;
    Fid_bloco : Integer;
    Fleitura_inicial : TDateTime;
    Fleitura_final : TDateTime;
    Ffator : Double;
    Fpreco : Double;
    Fobservacao : WideString;
    Fvazamento : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_condominio(const Value : Integer);
    procedure Setid_bloco(const Value : Integer);
    procedure Setleitura_inicial(const Value : TDateTime);
    procedure Setleitura_final(const Value : TDateTime);
    procedure Setfator(const Value : Double);
    procedure Setpreco(const Value : Double);
    procedure Setobservacao(const Value : WideString);
    procedure Setvazamento(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_condominio : Integer         read Fid_condominio    write Fid_condominio;
    property id_bloco : Integer         read Fid_bloco    write Fid_bloco;
    property leitura_inicial : TDateTime         read Fleitura_inicial    write Fleitura_inicial;
    property leitura_final : TDateTime         read Fleitura_final    write Fleitura_final;
    property fator : Double         read Ffator    write Ffator;
    property preco : Double         read Fpreco    write Fpreco;
    property observacao : WideString         read Fobservacao    write Fobservacao;
    property vazamento : Integer         read Fvazamento    write Fvazamento;

  end;

var
  Frm_ViewERPleituracoletaimportacao : TFrm_ViewERPleituracoletaimportacao; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_condominio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_bloco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].leitura_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].leitura_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fator); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vazamento); 
    end; 
end; 

procedure TFrm_ViewERPleituracoletaimportacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_condominio := Edit_id_condominio.text;
      FController.Model.id_bloco := Edit_id_bloco.text;
      FController.Model.leitura_inicial := Edit_leitura_inicial.text;
      FController.Model.leitura_final := Edit_leitura_final.text;
      FController.Model.fator := Edit_fator.text;
      FController.Model.preco := Edit_preco.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.vazamento := Edit_vazamento.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPleituracoletaimportacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPleituracoletaimportacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPleituracoletaimportacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPleituracoletaimportacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPleituracoletaimportacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPleituracoletaimportacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPleituracoletaimportacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_condominio;  
     Grid.Cells[inttostr(i),0] := id_bloco;  
     Grid.Cells[inttostr(i),0] := leitura_inicial;  
     Grid.Cells[inttostr(i),0] := leitura_final;  
     Grid.Cells[inttostr(i),0] := fator;  
     Grid.Cells[inttostr(i),0] := preco;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := vazamento;  
end;

procedure TFrm_ViewERPleituracoletaimportacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPleituracoletaimportacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPleituracoletaimportacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_condominio := Grid.Cells[1,Grid.row];
    FController.Model.id_bloco := Grid.Cells[2,Grid.row];
    FController.Model.leitura_inicial := Grid.Cells[3,Grid.row];
    FController.Model.leitura_final := Grid.Cells[4,Grid.row];
    FController.Model.fator := Grid.Cells[5,Grid.row];
    FController.Model.preco := Grid.Cells[6,Grid.row];
    FController.Model.observacao := Grid.Cells[7,Grid.row];
    FController.Model.vazamento := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPleituracoletaimportacao.LimparTela;  
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

procedure TFrm_ViewERPleituracoletaimportacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setid_condominio(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setid_bloco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setleitura_inicial(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setleitura_final(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setfator(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setpreco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setobservacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletaimportacao.Setvazamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
