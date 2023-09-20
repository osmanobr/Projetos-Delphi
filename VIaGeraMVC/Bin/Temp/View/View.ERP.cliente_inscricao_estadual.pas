
unit View.ERP.cliente_controle_proprio;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cliente_controle_proprio, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientecontroleproprio = class(TForm) 
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
    FController : TControllerERPclientecontroleproprio; 
    Fid : Integer;
    Fid_cliente : Integer;
    Finscricao_estadual : indefinido;
    Fendereco : WideString;
    Fnumero : Integer;
    Fid_cidade : Integer;
    Fbairro : WideString;
    Festado : WideString;
    Fcomplemento : indefinido;
    Fcep : indefinido;
    Fativo : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setinscricao_estadual(const Value : indefinido);
    procedure Setendereco(const Value : WideString);
    procedure Setnumero(const Value : Integer);
    procedure Setid_cidade(const Value : Integer);
    procedure Setbairro(const Value : WideString);
    procedure Setestado(const Value : WideString);
    procedure Setcomplemento(const Value : indefinido);
    procedure Setcep(const Value : indefinido);
    procedure Setativo(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property inscricao_estadual : indefinido         read Finscricao_estadual    write Finscricao_estadual;
    property endereco : WideString         read Fendereco    write Fendereco;
    property numero : Integer         read Fnumero    write Fnumero;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property bairro : WideString         read Fbairro    write Fbairro;
    property estado : WideString         read Festado    write Festado;
    property complemento : indefinido         read Fcomplemento    write Fcomplemento;
    property cep : indefinido         read Fcep    write Fcep;
    property ativo : Boolean         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPclientecontroleproprio : TFrm_ViewERPclientecontroleproprio; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].complemento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPclientecontroleproprio.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.complemento := Edit_complemento.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientecontroleproprio.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientecontroleproprio.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientecontroleproprio.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientecontroleproprio.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientecontroleproprio.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientecontroleproprio.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientecontroleproprio.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := complemento;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPclientecontroleproprio.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientecontroleproprio.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientecontroleproprio.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[2,Grid.row];
    FController.Model.endereco := Grid.Cells[3,Grid.row];
    FController.Model.numero := Grid.Cells[4,Grid.row];
    FController.Model.id_cidade := Grid.Cells[5,Grid.row];
    FController.Model.bairro := Grid.Cells[6,Grid.row];
    FController.Model.estado := Grid.Cells[7,Grid.row];
    FController.Model.complemento := Grid.Cells[8,Grid.row];
    FController.Model.cep := Grid.Cells[9,Grid.row];
    FController.Model.ativo := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientecontroleproprio.LimparTela;  
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

procedure TFrm_ViewERPclientecontroleproprio.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setinscricao_estadual(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setnumero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setcomplemento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setcep(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientecontroleproprio.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
