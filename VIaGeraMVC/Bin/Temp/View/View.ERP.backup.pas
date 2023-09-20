
unit View.ERP.autorizacao_compra_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.autorizacao_compra_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPautorizacaocompraitem = class(TForm) 
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
    FController : TControllerERPautorizacaocompraitem; 
    Fid : Integer;
    Farquivo : WideString;
    Fpartes : Integer;
    Fdatahora : indefinido;
    Fenviar : Boolean;
    Fcompactar : Boolean;
    Fdatahora_enviado : indefinido;
    Fcompress_size : indefinido;
    Fdayweek : indefinido;
    Fclientcode : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setarquivo(const Value : WideString);
    procedure Setpartes(const Value : Integer);
    procedure Setdatahora(const Value : indefinido);
    procedure Setenviar(const Value : Boolean);
    procedure Setcompactar(const Value : Boolean);
    procedure Setdatahora_enviado(const Value : indefinido);
    procedure Setcompress_size(const Value : indefinido);
    procedure Setdayweek(const Value : indefinido);
    procedure Setclientcode(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property arquivo : WideString         read Farquivo    write Farquivo;
    property partes : Integer         read Fpartes    write Fpartes;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property enviar : Boolean         read Fenviar    write Fenviar;
    property compactar : Boolean         read Fcompactar    write Fcompactar;
    property datahora_enviado : indefinido         read Fdatahora_enviado    write Fdatahora_enviado;
    property compress_size : indefinido         read Fcompress_size    write Fcompress_size;
    property dayweek : indefinido         read Fdayweek    write Fdayweek;
    property clientcode : Integer         read Fclientcode    write Fclientcode;

  end;

var
  Frm_ViewERPautorizacaocompraitem : TFrm_ViewERPautorizacaocompraitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].arquivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].partes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compactar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora_enviado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compress_size); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dayweek); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].clientcode); 
    end; 
end; 

procedure TFrm_ViewERPautorizacaocompraitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.arquivo := Edit_arquivo.text;
      FController.Model.partes := Edit_partes.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.enviar := Edit_enviar.text;
      FController.Model.compactar := Edit_compactar.text;
      FController.Model.datahora_enviado := Edit_datahora_enviado.text;
      FController.Model.compress_size := Edit_compress_size.text;
      FController.Model.dayweek := Edit_dayweek.text;
      FController.Model.clientcode := Edit_clientcode.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPautorizacaocompraitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPautorizacaocompraitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPautorizacaocompraitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPautorizacaocompraitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPautorizacaocompraitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPautorizacaocompraitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPautorizacaocompraitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := arquivo;  
     Grid.Cells[inttostr(i),0] := partes;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := enviar;  
     Grid.Cells[inttostr(i),0] := compactar;  
     Grid.Cells[inttostr(i),0] := datahora_enviado;  
     Grid.Cells[inttostr(i),0] := compress_size;  
     Grid.Cells[inttostr(i),0] := dayweek;  
     Grid.Cells[inttostr(i),0] := clientcode;  
end;

procedure TFrm_ViewERPautorizacaocompraitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPautorizacaocompraitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPautorizacaocompraitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.arquivo := Grid.Cells[1,Grid.row];
    FController.Model.partes := Grid.Cells[2,Grid.row];
    FController.Model.datahora := Grid.Cells[3,Grid.row];
    FController.Model.enviar := Grid.Cells[4,Grid.row];
    FController.Model.compactar := Grid.Cells[5,Grid.row];
    FController.Model.datahora_enviado := Grid.Cells[6,Grid.row];
    FController.Model.compress_size := Grid.Cells[7,Grid.row];
    FController.Model.dayweek := Grid.Cells[8,Grid.row];
    FController.Model.clientcode := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPautorizacaocompraitem.LimparTela;  
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

procedure TFrm_ViewERPautorizacaocompraitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setarquivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setpartes(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setenviar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setcompactar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setdatahora_enviado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setcompress_size(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setdayweek(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPautorizacaocompraitem.Setclientcode(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
