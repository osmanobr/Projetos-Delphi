
unit View.ERP.mdfe_xml;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.mdfe_xml, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmdfexml = class(TForm) 
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
    FController : TControllerERPmdfexml; 
    Fid : Integer;
    Fmesa : WideString;
    Fsituacao : WideString;
    Fdataabre : TDateTime;
    Fhoraabre : WideString;
    Fdatafecha : TDateTime;
    Fhorafecha : WideString;
    Fcupom : WideString;
    Fserie : WideString;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fvl_produto : Double;
    Fvl_desconto : Double;
    Fvl_couvert : Double;
    Fvl_consumacao : Double;
    Fvl_taxa : Double;
    Fvl_rateio : Double;
    Fvl_haver : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fvl_itens : Double;
    Fpessoas : Double;
    Fparcelas : Integer;
    Fcomentrada : WideString;
    Fintervalo : Integer;
    Fid_forma1 : Integer;
    Fvl_pago1 : Double;
    Fid_forma2 : Integer;
    Fvl_pago2 : Double;
    Fcancelada : WideString;
    Fgerado : WideString;
    Fobs : WideString;
    Ftransmitida : WideString;
    Fcartao : WideString;
    Fvl_comissao : Double;
    Fsaida : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setmesa(const Value : WideString);
    procedure Setsituacao(const Value : WideString);
    procedure Setdataabre(const Value : TDateTime);
    procedure Sethoraabre(const Value : WideString);
    procedure Setdatafecha(const Value : TDateTime);
    procedure Sethorafecha(const Value : WideString);
    procedure Setcupom(const Value : WideString);
    procedure Setserie(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setvl_icms(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_couvert(const Value : Double);
    procedure Setvl_consumacao(const Value : Double);
    procedure Setvl_taxa(const Value : Double);
    procedure Setvl_rateio(const Value : Double);
    procedure Setvl_haver(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_troco(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_itens(const Value : Double);
    procedure Setpessoas(const Value : Double);
    procedure Setparcelas(const Value : Integer);
    procedure Setcomentrada(const Value : WideString);
    procedure Setintervalo(const Value : Integer);
    procedure Setid_forma1(const Value : Integer);
    procedure Setvl_pago1(const Value : Double);
    procedure Setid_forma2(const Value : Integer);
    procedure Setvl_pago2(const Value : Double);
    procedure Setcancelada(const Value : WideString);
    procedure Setgerado(const Value : WideString);
    procedure Setobs(const Value : WideString);
    procedure Settransmitida(const Value : WideString);
    procedure Setcartao(const Value : WideString);
    procedure Setvl_comissao(const Value : Double);
    procedure Setsaida(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property mesa : WideString         read Fmesa    write Fmesa;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property dataabre : TDateTime         read Fdataabre    write Fdataabre;
    property horaabre : WideString         read Fhoraabre    write Fhoraabre;
    property datafecha : TDateTime         read Fdatafecha    write Fdatafecha;
    property horafecha : WideString         read Fhorafecha    write Fhorafecha;
    property cupom : WideString         read Fcupom    write Fcupom;
    property serie : WideString         read Fserie    write Fserie;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_couvert : Double         read Fvl_couvert    write Fvl_couvert;
    property vl_consumacao : Double         read Fvl_consumacao    write Fvl_consumacao;
    property vl_taxa : Double         read Fvl_taxa    write Fvl_taxa;
    property vl_rateio : Double         read Fvl_rateio    write Fvl_rateio;
    property vl_haver : Double         read Fvl_haver    write Fvl_haver;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_troco : Double         read Fvl_troco    write Fvl_troco;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_itens : Double         read Fvl_itens    write Fvl_itens;
    property pessoas : Double         read Fpessoas    write Fpessoas;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property comentrada : WideString         read Fcomentrada    write Fcomentrada;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property id_forma1 : Integer         read Fid_forma1    write Fid_forma1;
    property vl_pago1 : Double         read Fvl_pago1    write Fvl_pago1;
    property id_forma2 : Integer         read Fid_forma2    write Fid_forma2;
    property vl_pago2 : Double         read Fvl_pago2    write Fvl_pago2;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property gerado : WideString         read Fgerado    write Fgerado;
    property obs : WideString         read Fobs    write Fobs;
    property transmitida : WideString         read Ftransmitida    write Ftransmitida;
    property cartao : WideString         read Fcartao    write Fcartao;
    property vl_comissao : Double         read Fvl_comissao    write Fvl_comissao;
    property saida : WideString         read Fsaida    write Fsaida;

  end;

var
  Frm_ViewERPmdfexml : TFrm_ViewERPmdfexml; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 42; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mesa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dataabre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].horaabre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datafecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].horafecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_couvert); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_consumacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_taxa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_rateio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_haver); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_troco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pessoas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comentrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transmitida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].saida); 
    end; 
end; 

procedure TFrm_ViewERPmdfexml.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.mesa := Edit_mesa.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.dataabre := Edit_dataabre.text;
      FController.Model.horaabre := Edit_horaabre.text;
      FController.Model.datafecha := Edit_datafecha.text;
      FController.Model.horafecha := Edit_horafecha.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_couvert := Edit_vl_couvert.text;
      FController.Model.vl_consumacao := Edit_vl_consumacao.text;
      FController.Model.vl_taxa := Edit_vl_taxa.text;
      FController.Model.vl_rateio := Edit_vl_rateio.text;
      FController.Model.vl_haver := Edit_vl_haver.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_troco := Edit_vl_troco.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_itens := Edit_vl_itens.text;
      FController.Model.pessoas := Edit_pessoas.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.comentrada := Edit_comentrada.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.id_forma1 := Edit_id_forma1.text;
      FController.Model.vl_pago1 := Edit_vl_pago1.text;
      FController.Model.id_forma2 := Edit_id_forma2.text;
      FController.Model.vl_pago2 := Edit_vl_pago2.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.transmitida := Edit_transmitida.text;
      FController.Model.cartao := Edit_cartao.text;
      FController.Model.vl_comissao := Edit_vl_comissao.text;
      FController.Model.saida := Edit_saida.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmdfexml.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmdfexml.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmdfexml.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmdfexml.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmdfexml.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmdfexml.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmdfexml.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 42;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := mesa;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := dataabre;  
     Grid.Cells[inttostr(i),0] := horaabre;  
     Grid.Cells[inttostr(i),0] := datafecha;  
     Grid.Cells[inttostr(i),0] := horafecha;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_couvert;  
     Grid.Cells[inttostr(i),0] := vl_consumacao;  
     Grid.Cells[inttostr(i),0] := vl_taxa;  
     Grid.Cells[inttostr(i),0] := vl_rateio;  
     Grid.Cells[inttostr(i),0] := vl_haver;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_troco;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_itens;  
     Grid.Cells[inttostr(i),0] := pessoas;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := comentrada;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := id_forma1;  
     Grid.Cells[inttostr(i),0] := vl_pago1;  
     Grid.Cells[inttostr(i),0] := id_forma2;  
     Grid.Cells[inttostr(i),0] := vl_pago2;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := transmitida;  
     Grid.Cells[inttostr(i),0] := cartao;  
     Grid.Cells[inttostr(i),0] := vl_comissao;  
     Grid.Cells[inttostr(i),0] := saida;  
end;

procedure TFrm_ViewERPmdfexml.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmdfexml.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmdfexml.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.mesa := Grid.Cells[1,Grid.row];
    FController.Model.situacao := Grid.Cells[2,Grid.row];
    FController.Model.dataabre := Grid.Cells[3,Grid.row];
    FController.Model.horaabre := Grid.Cells[4,Grid.row];
    FController.Model.datafecha := Grid.Cells[5,Grid.row];
    FController.Model.horafecha := Grid.Cells[6,Grid.row];
    FController.Model.cupom := Grid.Cells[7,Grid.row];
    FController.Model.serie := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.id_usuario := Grid.Cells[10,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[11,Grid.row];
    FController.Model.id_cliente := Grid.Cells[12,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[13,Grid.row];
    FController.Model.vl_icms := Grid.Cells[14,Grid.row];
    FController.Model.base_icms := Grid.Cells[15,Grid.row];
    FController.Model.vl_produto := Grid.Cells[16,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[17,Grid.row];
    FController.Model.vl_couvert := Grid.Cells[18,Grid.row];
    FController.Model.vl_consumacao := Grid.Cells[19,Grid.row];
    FController.Model.vl_taxa := Grid.Cells[20,Grid.row];
    FController.Model.vl_rateio := Grid.Cells[21,Grid.row];
    FController.Model.vl_haver := Grid.Cells[22,Grid.row];
    FController.Model.vl_pago := Grid.Cells[23,Grid.row];
    FController.Model.vl_troco := Grid.Cells[24,Grid.row];
    FController.Model.vl_total := Grid.Cells[25,Grid.row];
    FController.Model.vl_itens := Grid.Cells[26,Grid.row];
    FController.Model.pessoas := Grid.Cells[27,Grid.row];
    FController.Model.parcelas := Grid.Cells[28,Grid.row];
    FController.Model.comentrada := Grid.Cells[29,Grid.row];
    FController.Model.intervalo := Grid.Cells[30,Grid.row];
    FController.Model.id_forma1 := Grid.Cells[31,Grid.row];
    FController.Model.vl_pago1 := Grid.Cells[32,Grid.row];
    FController.Model.id_forma2 := Grid.Cells[33,Grid.row];
    FController.Model.vl_pago2 := Grid.Cells[34,Grid.row];
    FController.Model.cancelada := Grid.Cells[35,Grid.row];
    FController.Model.gerado := Grid.Cells[36,Grid.row];
    FController.Model.obs := Grid.Cells[37,Grid.row];
    FController.Model.transmitida := Grid.Cells[38,Grid.row];
    FController.Model.cartao := Grid.Cells[39,Grid.row];
    FController.Model.vl_comissao := Grid.Cells[40,Grid.row];
    FController.Model.saida := Grid.Cells[41,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmdfexml.LimparTela;  
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

procedure TFrm_ViewERPmdfexml.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setmesa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setdataabre(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Sethoraabre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setdatafecha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Sethorafecha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setcupom(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_couvert(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_consumacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_taxa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_rateio(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_haver(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_troco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_itens(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setpessoas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setcomentrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_forma1(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_pago1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setid_forma2(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_pago2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Settransmitida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setcartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setvl_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfexml.Setsaida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
