
unit View.ERP.change_log;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.change_log, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPchangelog = class(TForm) 
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
    FController : TControllerERPchangelog; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_contacorrente : WideString;
    Fagencia : WideString;
    Fcheque : WideString;
    Fvalor : Double;
    Fstatus : WideString;
    Fdata_deposito : TDateTime;
    Fcustodiado_para : WideString;
    Fdata_custodia : TDateTime;
    Fid_devolucao : Integer;
    Fdata_devolucao : TDateTime;
    Fid_forma : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_conta_baixa : WideString;
    Fid_forma_baixa : Integer;
    Fclick : Boolean;
    Fid_compra : Integer;
    Fobs : indefinido;
    Fcustodia : Boolean;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_banco(const Value : Integer);
    procedure Setid_contacorrente(const Value : WideString);
    procedure Setagencia(const Value : WideString);
    procedure Setcheque(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setstatus(const Value : WideString);
    procedure Setdata_deposito(const Value : TDateTime);
    procedure Setcustodiado_para(const Value : WideString);
    procedure Setdata_custodia(const Value : TDateTime);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setdata_devolucao(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_conta_baixa(const Value : WideString);
    procedure Setid_forma_baixa(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setid_compra(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setcustodia(const Value : Boolean);
    procedure Setid_cliser(const Value : Integer);
    procedure Setfilial(const Value : WideString);
    procedure Setmatriz(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property id_contacorrente : WideString         read Fid_contacorrente    write Fid_contacorrente;
    property agencia : WideString         read Fagencia    write Fagencia;
    property cheque : WideString         read Fcheque    write Fcheque;
    property valor : Double         read Fvalor    write Fvalor;
    property status : WideString         read Fstatus    write Fstatus;
    property data_deposito : TDateTime         read Fdata_deposito    write Fdata_deposito;
    property custodiado_para : WideString         read Fcustodiado_para    write Fcustodiado_para;
    property data_custodia : TDateTime         read Fdata_custodia    write Fdata_custodia;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property data_devolucao : TDateTime         read Fdata_devolucao    write Fdata_devolucao;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_conta_baixa : WideString         read Fid_conta_baixa    write Fid_conta_baixa;
    property id_forma_baixa : Integer         read Fid_forma_baixa    write Fid_forma_baixa;
    property click : Boolean         read Fclick    write Fclick;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property obs : indefinido         read Fobs    write Fobs;
    property custodia : Boolean         read Fcustodia    write Fcustodia;
    property id_cliser : Integer         read Fid_cliser    write Fid_cliser;
    property filial : WideString         read Ffilial    write Ffilial;
    property matriz : WideString         read Fmatriz    write Fmatriz;

  end;

var
  Frm_ViewERPchangelog : TFrm_ViewERPchangelog; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 33; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_deposito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custodiado_para); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].matriz); 
    end; 
end; 

procedure TFrm_ViewERPchangelog.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.cheque := Edit_cheque.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.status := Edit_status.text;
      FController.Model.data_deposito := Edit_data_deposito.text;
      FController.Model.custodiado_para := Edit_custodiado_para.text;
      FController.Model.data_custodia := Edit_data_custodia.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.data_devolucao := Edit_data_devolucao.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_conta_baixa := Edit_id_conta_baixa.text;
      FController.Model.id_forma_baixa := Edit_id_forma_baixa.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.custodia := Edit_custodia.text;
      FController.Model.id_cliser := Edit_id_cliser.text;
      FController.Model.filial := Edit_filial.text;
      FController.Model.matriz := Edit_matriz.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPchangelog.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPchangelog.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPchangelog.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPchangelog.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPchangelog.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPchangelog.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPchangelog.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 33;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := cheque;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := data_deposito;  
     Grid.Cells[inttostr(i),0] := custodiado_para;  
     Grid.Cells[inttostr(i),0] := data_custodia;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := data_devolucao;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_conta_baixa;  
     Grid.Cells[inttostr(i),0] := id_forma_baixa;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := custodia;  
     Grid.Cells[inttostr(i),0] := id_cliser;  
     Grid.Cells[inttostr(i),0] := filial;  
     Grid.Cells[inttostr(i),0] := matriz;  
end;

procedure TFrm_ViewERPchangelog.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPchangelog.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPchangelog.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_emissao := Grid.Cells[2,Grid.row];
    FController.Model.data_vencto := Grid.Cells[3,Grid.row];
    FController.Model.documento := Grid.Cells[4,Grid.row];
    FController.Model.parcela := Grid.Cells[5,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[6,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[7,Grid.row];
    FController.Model.id_conta := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.id_banco := Grid.Cells[10,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[11,Grid.row];
    FController.Model.agencia := Grid.Cells[12,Grid.row];
    FController.Model.cheque := Grid.Cells[13,Grid.row];
    FController.Model.valor := Grid.Cells[14,Grid.row];
    FController.Model.status := Grid.Cells[15,Grid.row];
    FController.Model.data_deposito := Grid.Cells[16,Grid.row];
    FController.Model.custodiado_para := Grid.Cells[17,Grid.row];
    FController.Model.data_custodia := Grid.Cells[18,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[19,Grid.row];
    FController.Model.data_devolucao := Grid.Cells[20,Grid.row];
    FController.Model.id_forma := Grid.Cells[21,Grid.row];
    FController.Model.id_pedido := Grid.Cells[22,Grid.row];
    FController.Model.id_os := Grid.Cells[23,Grid.row];
    FController.Model.id_conta_baixa := Grid.Cells[24,Grid.row];
    FController.Model.id_forma_baixa := Grid.Cells[25,Grid.row];
    FController.Model.click := Grid.Cells[26,Grid.row];
    FController.Model.id_compra := Grid.Cells[27,Grid.row];
    FController.Model.obs := Grid.Cells[28,Grid.row];
    FController.Model.custodia := Grid.Cells[29,Grid.row];
    FController.Model.id_cliser := Grid.Cells[30,Grid.row];
    FController.Model.filial := Grid.Cells[31,Grid.row];
    FController.Model.matriz := Grid.Cells[32,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPchangelog.LimparTela;  
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

procedure TFrm_ViewERPchangelog.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_contacorrente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setagencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setcheque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdata_deposito(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setcustodiado_para(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdata_custodia(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setdata_devolucao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_conta_baixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_forma_baixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setcustodia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setid_cliser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setfilial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchangelog.Setmatriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
