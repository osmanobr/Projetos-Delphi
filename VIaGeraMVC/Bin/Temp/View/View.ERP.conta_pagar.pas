
unit View.ERP.consignado_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.consignado_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPconsignadoitem = class(TForm) 
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
    FController : TControllerERPconsignadoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_pgto : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fnota : WideString;
    Fid_compra : Integer;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_conta : WideString;
    Ftx_juros : Double;
    Fvl_juros : Double;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_divida : Double;
    Fvl_geral : Double;
    Fvl_jurospago : Double;
    Fsituacao : WideString;
    Fclick : Boolean;
    Fchegou : WideString;
    Fobs : indefinido;
    Fid_custodia_cheque : Integer;
    Fid_custodia_titulo : Integer;
    Fid_funcionario : Integer;
    Ffornecedor : WideString;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;
    Fexcluido : Boolean;
    Fdata_competencia : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Setdata_pgto(const Value : TDateTime);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setnota(const Value : WideString);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Settx_juros(const Value : Double);
    procedure Setvl_juros(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_divida(const Value : Double);
    procedure Setvl_geral(const Value : Double);
    procedure Setvl_jurospago(const Value : Double);
    procedure Setsituacao(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setchegou(const Value : WideString);
    procedure Setobs(const Value : indefinido);
    procedure Setid_custodia_cheque(const Value : Integer);
    procedure Setid_custodia_titulo(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setfornecedor(const Value : WideString);
    procedure Setid_cliser(const Value : Integer);
    procedure Setfilial(const Value : WideString);
    procedure Setmatriz(const Value : WideString);
    procedure Setexcluido(const Value : Boolean);
    procedure Setdata_competencia(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property data_pgto : TDateTime         read Fdata_pgto    write Fdata_pgto;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property nota : WideString         read Fnota    write Fnota;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property tx_juros : Double         read Ftx_juros    write Ftx_juros;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_divida : Double         read Fvl_divida    write Fvl_divida;
    property vl_geral : Double         read Fvl_geral    write Fvl_geral;
    property vl_jurospago : Double         read Fvl_jurospago    write Fvl_jurospago;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property click : Boolean         read Fclick    write Fclick;
    property chegou : WideString         read Fchegou    write Fchegou;
    property obs : indefinido         read Fobs    write Fobs;
    property id_custodia_cheque : Integer         read Fid_custodia_cheque    write Fid_custodia_cheque;
    property id_custodia_titulo : Integer         read Fid_custodia_titulo    write Fid_custodia_titulo;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property fornecedor : WideString         read Ffornecedor    write Ffornecedor;
    property id_cliser : Integer         read Fid_cliser    write Fid_cliser;
    property filial : WideString         read Ffilial    write Ffilial;
    property matriz : WideString         read Fmatriz    write Fmatriz;
    property excluido : Boolean         read Fexcluido    write Fexcluido;
    property data_competencia : TDateTime         read Fdata_competencia    write Fdata_competencia;

  end;

var
  Frm_ViewERPconsignadoitem : TFrm_ViewERPconsignadoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 35; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tx_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_divida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_geral); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_jurospago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chegou); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia_titulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].excluido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_competencia); 
    end; 
end; 

procedure TFrm_ViewERPconsignadoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_pgto := Edit_data_pgto.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.tx_juros := Edit_tx_juros.text;
      FController.Model.vl_juros := Edit_vl_juros.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_divida := Edit_vl_divida.text;
      FController.Model.vl_geral := Edit_vl_geral.text;
      FController.Model.vl_jurospago := Edit_vl_jurospago.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.click := Edit_click.text;
      FController.Model.chegou := Edit_chegou.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.id_custodia_cheque := Edit_id_custodia_cheque.text;
      FController.Model.id_custodia_titulo := Edit_id_custodia_titulo.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.fornecedor := Edit_fornecedor.text;
      FController.Model.id_cliser := Edit_id_cliser.text;
      FController.Model.filial := Edit_filial.text;
      FController.Model.matriz := Edit_matriz.text;
      FController.Model.excluido := Edit_excluido.text;
      FController.Model.data_competencia := Edit_data_competencia.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPconsignadoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPconsignadoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPconsignadoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPconsignadoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPconsignadoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPconsignadoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPconsignadoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 35;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_pgto;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := tx_juros;  
     Grid.Cells[inttostr(i),0] := vl_juros;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_divida;  
     Grid.Cells[inttostr(i),0] := vl_geral;  
     Grid.Cells[inttostr(i),0] := vl_jurospago;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := chegou;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := id_custodia_cheque;  
     Grid.Cells[inttostr(i),0] := id_custodia_titulo;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := fornecedor;  
     Grid.Cells[inttostr(i),0] := id_cliser;  
     Grid.Cells[inttostr(i),0] := filial;  
     Grid.Cells[inttostr(i),0] := matriz;  
     Grid.Cells[inttostr(i),0] := excluido;  
     Grid.Cells[inttostr(i),0] := data_competencia;  
end;

procedure TFrm_ViewERPconsignadoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPconsignadoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPconsignadoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_emissao := Grid.Cells[2,Grid.row];
    FController.Model.data_pgto := Grid.Cells[3,Grid.row];
    FController.Model.data_vencto := Grid.Cells[4,Grid.row];
    FController.Model.documento := Grid.Cells[5,Grid.row];
    FController.Model.parcela := Grid.Cells[6,Grid.row];
    FController.Model.nota := Grid.Cells[7,Grid.row];
    FController.Model.id_compra := Grid.Cells[8,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[9,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[10,Grid.row];
    FController.Model.id_forma := Grid.Cells[11,Grid.row];
    FController.Model.id_caixa := Grid.Cells[12,Grid.row];
    FController.Model.id_conta := Grid.Cells[13,Grid.row];
    FController.Model.tx_juros := Grid.Cells[14,Grid.row];
    FController.Model.vl_juros := Grid.Cells[15,Grid.row];
    FController.Model.vl_total := Grid.Cells[16,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[17,Grid.row];
    FController.Model.vl_pago := Grid.Cells[18,Grid.row];
    FController.Model.vl_divida := Grid.Cells[19,Grid.row];
    FController.Model.vl_geral := Grid.Cells[20,Grid.row];
    FController.Model.vl_jurospago := Grid.Cells[21,Grid.row];
    FController.Model.situacao := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
    FController.Model.chegou := Grid.Cells[24,Grid.row];
    FController.Model.obs := Grid.Cells[25,Grid.row];
    FController.Model.id_custodia_cheque := Grid.Cells[26,Grid.row];
    FController.Model.id_custodia_titulo := Grid.Cells[27,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[28,Grid.row];
    FController.Model.fornecedor := Grid.Cells[29,Grid.row];
    FController.Model.id_cliser := Grid.Cells[30,Grid.row];
    FController.Model.filial := Grid.Cells[31,Grid.row];
    FController.Model.matriz := Grid.Cells[32,Grid.row];
    FController.Model.excluido := Grid.Cells[33,Grid.row];
    FController.Model.data_competencia := Grid.Cells[34,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPconsignadoitem.LimparTela;  
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

procedure TFrm_ViewERPconsignadoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setdata_pgto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Settx_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_divida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_geral(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setvl_jurospago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setchegou(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_custodia_cheque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_custodia_titulo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setfornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setid_cliser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setfilial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setmatriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setexcluido(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconsignadoitem.Setdata_competencia(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
