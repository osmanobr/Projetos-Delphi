
unit View.ERP.conta_pagar_comissao_parceiro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_pagar_comissao_parceiro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontapagarcomissaoparceiro = class(TForm) 
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
    FController : TControllerERPcontapagarcomissaoparceiro; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_pagar : Integer;
    Fid_parceiro : Integer;
    Fnome_parceiro : WideString;
    Fvalor : Double;
    Fsituacao : WideString;
    Fparcela : WideString;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_conta_pagar(const Value : Integer);
    procedure Setid_parceiro(const Value : Integer);
    procedure Setnome_parceiro(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setsituacao(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_conta_pagar : Integer         read Fid_conta_pagar    write Fid_conta_pagar;
    property id_parceiro : Integer         read Fid_parceiro    write Fid_parceiro;
    property nome_parceiro : WideString         read Fnome_parceiro    write Fnome_parceiro;
    property valor : Double         read Fvalor    write Fvalor;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property parcela : WideString         read Fparcela    write Fparcela;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcontapagarcomissaoparceiro : TFrm_ViewERPcontapagarcomissaoparceiro; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_parceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_parceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcontapagarcomissaoparceiro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_conta_pagar := Edit_id_conta_pagar.text;
      FController.Model.id_parceiro := Edit_id_parceiro.text;
      FController.Model.nome_parceiro := Edit_nome_parceiro.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontapagarcomissaoparceiro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontapagarcomissaoparceiro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontapagarcomissaoparceiro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontapagarcomissaoparceiro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontapagarcomissaoparceiro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontapagarcomissaoparceiro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontapagarcomissaoparceiro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_conta_pagar;  
     Grid.Cells[inttostr(i),0] := id_parceiro;  
     Grid.Cells[inttostr(i),0] := nome_parceiro;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcontapagarcomissaoparceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontapagarcomissaoparceiro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontapagarcomissaoparceiro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_conta_pagar := Grid.Cells[2,Grid.row];
    FController.Model.id_parceiro := Grid.Cells[3,Grid.row];
    FController.Model.nome_parceiro := Grid.Cells[4,Grid.row];
    FController.Model.valor := Grid.Cells[5,Grid.row];
    FController.Model.situacao := Grid.Cells[6,Grid.row];
    FController.Model.parcela := Grid.Cells[7,Grid.row];
    FController.Model.click := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontapagarcomissaoparceiro.LimparTela;  
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

procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setid_conta_pagar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setid_parceiro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setnome_parceiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarcomissaoparceiro.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
