
unit View.ERP.conta_receber_web;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_receber_web, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontareceberweb = class(TForm) 
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
    FController : TControllerERPcontareceberweb; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fagencia : WideString;
    Fconta : WideString;
    Fgerente : WideString;
    Ffone : WideString;
    Fid_banco : Integer;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setagencia(const Value : WideString);
    procedure Setconta(const Value : WideString);
    procedure Setgerente(const Value : WideString);
    procedure Setfone(const Value : WideString);
    procedure Setid_banco(const Value : Integer);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property agencia : WideString         read Fagencia    write Fagencia;
    property conta : WideString         read Fconta    write Fconta;
    property gerente : WideString         read Fgerente    write Fgerente;
    property fone : WideString         read Ffone    write Ffone;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcontareceberweb : TFrm_ViewERPcontareceberweb; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcontareceberweb.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.gerente := Edit_gerente.text;
      FController.Model.fone := Edit_fone.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontareceberweb.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontareceberweb.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontareceberweb.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontareceberweb.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontareceberweb.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontareceberweb.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontareceberweb.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := gerente;  
     Grid.Cells[inttostr(i),0] := fone;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcontareceberweb.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontareceberweb.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontareceberweb.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.agencia := Grid.Cells[2,Grid.row];
    FController.Model.conta := Grid.Cells[3,Grid.row];
    FController.Model.gerente := Grid.Cells[4,Grid.row];
    FController.Model.fone := Grid.Cells[5,Grid.row];
    FController.Model.id_banco := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontareceberweb.LimparTela;  
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

procedure TFrm_ViewERPcontareceberweb.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setagencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setgerente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setfone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberweb.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
