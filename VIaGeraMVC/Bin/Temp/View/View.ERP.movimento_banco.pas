
unit View.ERP.movimentacao_almoxarifado_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.movimentacao_almoxarifado_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmovimentacaoalmoxarifadoitem = class(TForm) 
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
    FController : TControllerERPmovimentacaoalmoxarifadoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_banco : Integer;
    Fagencia : indefinido;
    Fcheque : indefinido;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_usuario : Integer;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fid_conta : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Fhistorico : indefinido;
    Fdebcre : indefinido;
    Fid_contacorrente : indefinido;
    Ftipo_pgto : indefinido;
    Fclick : Boolean;
    Fid_compra : Integer;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;
    Fid_credito : Integer;
    Fativo : Boolean;
    Fid_conta_receber_uniao : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_banco(const Value : Integer);
    procedure Setagencia(const Value : indefinido);
    procedure Setcheque(const Value : indefinido);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setdocumento(const Value : indefinido);
    procedure Setparcela(const Value : indefinido);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setvalor(const Value : Double);
    procedure Sethistorico(const Value : indefinido);
    procedure Setdebcre(const Value : indefinido);
    procedure Setid_contacorrente(const Value : indefinido);
    procedure Settipo_pgto(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_parcela_receber(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Setid_credito(const Value : Integer);
    procedure Setativo(const Value : Boolean);
    procedure Setid_conta_receber_uniao(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property agencia : indefinido         read Fagencia    write Fagencia;
    property cheque : indefinido         read Fcheque    write Fcheque;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property documento : indefinido         read Fdocumento    write Fdocumento;
    property parcela : indefinido         read Fparcela    write Fparcela;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property valor : Double         read Fvalor    write Fvalor;
    property historico : indefinido         read Fhistorico    write Fhistorico;
    property debcre : indefinido         read Fdebcre    write Fdebcre;
    property id_contacorrente : indefinido         read Fid_contacorrente    write Fid_contacorrente;
    property tipo_pgto : indefinido         read Ftipo_pgto    write Ftipo_pgto;
    property click : Boolean         read Fclick    write Fclick;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_parcela_receber : Integer         read Fid_parcela_receber    write Fid_parcela_receber;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property id_credito : Integer         read Fid_credito    write Fid_credito;
    property ativo : Boolean         read Fativo    write Fativo;
    property id_conta_receber_uniao : Integer         read Fid_conta_receber_uniao    write Fid_conta_receber_uniao;

  end;

var
  Frm_ViewERPmovimentacaoalmoxarifadoitem : TFrm_ViewERPmovimentacaoalmoxarifadoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 25; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_parcela_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber_uniao); 
    end; 
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.cheque := Edit_cheque.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.tipo_pgto := Edit_tipo_pgto.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_parcela_receber := Edit_id_parcela_receber.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.id_credito := Edit_id_credito.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.id_conta_receber_uniao := Edit_id_conta_receber_uniao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmovimentacaoalmoxarifadoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 25;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := cheque;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := tipo_pgto;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_parcela_receber;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := id_credito;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := id_conta_receber_uniao;  
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.id_banco := Grid.Cells[3,Grid.row];
    FController.Model.agencia := Grid.Cells[4,Grid.row];
    FController.Model.cheque := Grid.Cells[5,Grid.row];
    FController.Model.id_pedido := Grid.Cells[6,Grid.row];
    FController.Model.id_os := Grid.Cells[7,Grid.row];
    FController.Model.id_usuario := Grid.Cells[8,Grid.row];
    FController.Model.documento := Grid.Cells[9,Grid.row];
    FController.Model.parcela := Grid.Cells[10,Grid.row];
    FController.Model.id_conta := Grid.Cells[11,Grid.row];
    FController.Model.id_forma := Grid.Cells[12,Grid.row];
    FController.Model.valor := Grid.Cells[13,Grid.row];
    FController.Model.historico := Grid.Cells[14,Grid.row];
    FController.Model.debcre := Grid.Cells[15,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[16,Grid.row];
    FController.Model.tipo_pgto := Grid.Cells[17,Grid.row];
    FController.Model.click := Grid.Cells[18,Grid.row];
    FController.Model.id_compra := Grid.Cells[19,Grid.row];
    FController.Model.id_parcela_receber := Grid.Cells[20,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[21,Grid.row];
    FController.Model.id_credito := Grid.Cells[22,Grid.row];
    FController.Model.ativo := Grid.Cells[23,Grid.row];
    FController.Model.id_conta_receber_uniao := Grid.Cells[24,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.LimparTela;  
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

procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setagencia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setcheque(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setdocumento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setparcela(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Sethistorico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setdebcre(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_contacorrente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Settipo_pgto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_parcela_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifadoitem.Setid_conta_receber_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
