
unit View.ERP.atividade;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.atividade, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPatividade = class(TForm) 
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
    FController : TControllerERPatividade; 
    Fid : Integer;
    Fdata : TDateTime;
    Fhora : WideString;
    Fid_fornecedor : Integer;
    Fid_empresa : Integer;
    Ftotal_autorizacao : Double;
    Fsituacao : WideString;
    Fclick : Boolean;
    Fnome_fornecedor : WideString;
    Fid_cliente : Integer;
    Ffaturado : WideString;
    Fnome_cliente : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Sethora(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Settotal_autorizacao(const Value : Double);
    procedure Setsituacao(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setfaturado(const Value : WideString);
    procedure Setnome_cliente(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property hora : WideString         read Fhora    write Fhora;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property total_autorizacao : Double         read Ftotal_autorizacao    write Ftotal_autorizacao;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property click : Boolean         read Fclick    write Fclick;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property faturado : WideString         read Ffaturado    write Ffaturado;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;

  end;

var
  Frm_ViewERPatividade : TFrm_ViewERPatividade; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_autorizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].faturado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
    end; 
end; 

procedure TFrm_ViewERPatividade.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.total_autorizacao := Edit_total_autorizacao.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.click := Edit_click.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.faturado := Edit_faturado.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPatividade.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPatividade.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPatividade.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPatividade.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPatividade.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPatividade.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPatividade.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := total_autorizacao;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := faturado;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
end;

procedure TFrm_ViewERPatividade.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPatividade.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPatividade.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.hora := Grid.Cells[2,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[3,Grid.row];
    FController.Model.id_empresa := Grid.Cells[4,Grid.row];
    FController.Model.total_autorizacao := Grid.Cells[5,Grid.row];
    FController.Model.situacao := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[8,Grid.row];
    FController.Model.id_cliente := Grid.Cells[9,Grid.row];
    FController.Model.faturado := Grid.Cells[10,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPatividade.LimparTela;  
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

procedure TFrm_ViewERPatividade.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Sethora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Settotal_autorizacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setfaturado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPatividade.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
