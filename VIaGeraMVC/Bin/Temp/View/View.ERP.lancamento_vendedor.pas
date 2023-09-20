
unit View.ERP.lancamento_contabil;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lancamento_contabil, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlancamentocontabil = class(TForm) 
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
    FController : TControllerERPlancamentocontabil; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Foperacao : WideString;
    Fid_pedido : Integer;
    Fid_parcela : Integer;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fvalor : Double;
    Fdebcre : WideString;
    Fobservacao : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_parcela(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setdebcre(const Value : WideString);
    procedure Setobservacao(const Value : WideString);
    procedure Setid_usuario(const Value : Integer);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_parcela : Integer         read Fid_parcela    write Fid_parcela;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property valor : Double         read Fvalor    write Fvalor;
    property debcre : WideString         read Fdebcre    write Fdebcre;
    property observacao : WideString         read Fobservacao    write Fobservacao;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPlancamentocontabil : TFrm_ViewERPlancamentocontabil; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 15; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPlancamentocontabil.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_parcela := Edit_id_parcela.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlancamentocontabil.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlancamentocontabil.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlancamentocontabil.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlancamentocontabil.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlancamentocontabil.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlancamentocontabil.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlancamentocontabil.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_parcela;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPlancamentocontabil.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlancamentocontabil.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlancamentocontabil.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.operacao := Grid.Cells[3,Grid.row];
    FController.Model.id_pedido := Grid.Cells[4,Grid.row];
    FController.Model.id_parcela := Grid.Cells[5,Grid.row];
    FController.Model.id_forma := Grid.Cells[6,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[7,Grid.row];
    FController.Model.id_cliente := Grid.Cells[8,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[9,Grid.row];
    FController.Model.valor := Grid.Cells[10,Grid.row];
    FController.Model.debcre := Grid.Cells[11,Grid.row];
    FController.Model.observacao := Grid.Cells[12,Grid.row];
    FController.Model.id_usuario := Grid.Cells[13,Grid.row];
    FController.Model.click := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlancamentocontabil.LimparTela;  
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

procedure TFrm_ViewERPlancamentocontabil.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_parcela(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setdebcre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setobservacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentocontabil.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
