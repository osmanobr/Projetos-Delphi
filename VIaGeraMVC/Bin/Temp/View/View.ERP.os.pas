
unit View.ERP.orcamento_uniao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.orcamento_uniao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPorcamentouniao = class(TForm) 
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
    FController : TControllerERPorcamentouniao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Ftipo : indefinido;
    Fnota : Integer;
    Fcupom : Integer;
    Fdata_emissao : TDateTime;
    Fhora : indefinido;
    Fdata_saida : TDateTime;
    Fgerado : indefinido;
    Fhora_fechamento : indefinido;
    Fnumero_serie : indefinido;
    Fmarca : indefinido;
    Fmodelo : indefinido;
    Fnota_produto : indefinido;
    Floja : indefinido;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_vendedor : Integer;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_transportadora : Integer;
    Fid_funcionario : Integer;
    Fid_credito : Integer;
    Fid_contrato : Integer;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_desconto : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fbase_ipi : Double;
    Fbase_substituicao : Double;
    Fqtd_itens : Integer;
    Fpercentual_desconto : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fid_cfop : Integer;
    Frateio : indefinido;
    Fduplicatacheque : indefinido;
    Fparcelas : Integer;
    Fvl_juros : Double;
    Fcomentrada : indefinido;
    Fintervalo : Integer;
    Fdia : Integer;
    Fcotacao : indefinido;
    Fid_usuario_desconto : Integer;
    Fpercentual_usuario_desconto : Double;
    Fid_rota : Integer;
    Fid_tabela_preco : Integer;
    Fobs : indefinido;
    Fjuros : indefinido;
    Fplaca : indefinido;
    Fusa_tabela : indefinido;
    Fdefeito_reclamado : indefinido;
    Fdefeito_constatado : indefinido;
    Fclick : Boolean;
    Fid_coringa : Integer;
    Fuso : indefinido;
    Fcancelada : indefinido;
    Fexpedicao : indefinido;
    Findicacao : indefinido;
    Ffabricacao : indefinido;
    Fecf : indefinido;
    Fpis : Double;
    Fcofins : Double;
    Fvl_icmsst : Double;
    Fstatus : indefinido;
    Fstatus_os : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Settipo(const Value : indefinido);
    procedure Setnota(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Sethora(const Value : indefinido);
    procedure Setdata_saida(const Value : TDateTime);
    procedure Setgerado(const Value : indefinido);
    procedure Sethora_fechamento(const Value : indefinido);
    procedure Setnumero_serie(const Value : indefinido);
    procedure Setmarca(const Value : indefinido);
    procedure Setmodelo(const Value : indefinido);
    procedure Setnota_produto(const Value : indefinido);
    procedure Setloja(const Value : indefinido);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_transportadora(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_credito(const Value : Integer);
    procedure Setid_contrato(const Value : Integer);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_servico(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setvl_seguro(const Value : Double);
    procedure Setvl_outras(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_troco(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setbase_ipi(const Value : Double);
    procedure Setbase_substituicao(const Value : Double);
    procedure Setqtd_itens(const Value : Integer);
    procedure Setpercentual_desconto(const Value : Double);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setid_cfop(const Value : Integer);
    procedure Setrateio(const Value : indefinido);
    procedure Setduplicatacheque(const Value : indefinido);
    procedure Setparcelas(const Value : Integer);
    procedure Setvl_juros(const Value : Double);
    procedure Setcomentrada(const Value : indefinido);
    procedure Setintervalo(const Value : Integer);
    procedure Setdia(const Value : Integer);
    procedure Setcotacao(const Value : indefinido);
    procedure Setid_usuario_desconto(const Value : Integer);
    procedure Setpercentual_usuario_desconto(const Value : Double);
    procedure Setid_rota(const Value : Integer);
    procedure Setid_tabela_preco(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setjuros(const Value : indefinido);
    procedure Setplaca(const Value : indefinido);
    procedure Setusa_tabela(const Value : indefinido);
    procedure Setdefeito_reclamado(const Value : indefinido);
    procedure Setdefeito_constatado(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setid_coringa(const Value : Integer);
    procedure Setuso(const Value : indefinido);
    procedure Setcancelada(const Value : indefinido);
    procedure Setexpedicao(const Value : indefinido);
    procedure Setindicacao(const Value : indefinido);
    procedure Setfabricacao(const Value : indefinido);
    procedure Setecf(const Value : indefinido);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setstatus(const Value : indefinido);
    procedure Setstatus_os(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property nota : Integer         read Fnota    write Fnota;
    property cupom : Integer         read Fcupom    write Fcupom;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property hora : indefinido         read Fhora    write Fhora;
    property data_saida : TDateTime         read Fdata_saida    write Fdata_saida;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property hora_fechamento : indefinido         read Fhora_fechamento    write Fhora_fechamento;
    property numero_serie : indefinido         read Fnumero_serie    write Fnumero_serie;
    property marca : indefinido         read Fmarca    write Fmarca;
    property modelo : indefinido         read Fmodelo    write Fmodelo;
    property nota_produto : indefinido         read Fnota_produto    write Fnota_produto;
    property loja : indefinido         read Floja    write Floja;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_transportadora : Integer         read Fid_transportadora    write Fid_transportadora;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_credito : Integer         read Fid_credito    write Fid_credito;
    property id_contrato : Integer         read Fid_contrato    write Fid_contrato;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property vl_seguro : Double         read Fvl_seguro    write Fvl_seguro;
    property vl_outras : Double         read Fvl_outras    write Fvl_outras;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_troco : Double         read Fvl_troco    write Fvl_troco;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property base_ipi : Double         read Fbase_ipi    write Fbase_ipi;
    property base_substituicao : Double         read Fbase_substituicao    write Fbase_substituicao;
    property qtd_itens : Integer         read Fqtd_itens    write Fqtd_itens;
    property percentual_desconto : Double         read Fpercentual_desconto    write Fpercentual_desconto;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property rateio : indefinido         read Frateio    write Frateio;
    property duplicatacheque : indefinido         read Fduplicatacheque    write Fduplicatacheque;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property comentrada : indefinido         read Fcomentrada    write Fcomentrada;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property dia : Integer         read Fdia    write Fdia;
    property cotacao : indefinido         read Fcotacao    write Fcotacao;
    property id_usuario_desconto : Integer         read Fid_usuario_desconto    write Fid_usuario_desconto;
    property percentual_usuario_desconto : Double         read Fpercentual_usuario_desconto    write Fpercentual_usuario_desconto;
    property id_rota : Integer         read Fid_rota    write Fid_rota;
    property id_tabela_preco : Integer         read Fid_tabela_preco    write Fid_tabela_preco;
    property obs : indefinido         read Fobs    write Fobs;
    property juros : indefinido         read Fjuros    write Fjuros;
    property placa : indefinido         read Fplaca    write Fplaca;
    property usa_tabela : indefinido         read Fusa_tabela    write Fusa_tabela;
    property defeito_reclamado : indefinido         read Fdefeito_reclamado    write Fdefeito_reclamado;
    property defeito_constatado : indefinido         read Fdefeito_constatado    write Fdefeito_constatado;
    property click : Boolean         read Fclick    write Fclick;
    property id_coringa : Integer         read Fid_coringa    write Fid_coringa;
    property uso : indefinido         read Fuso    write Fuso;
    property cancelada : indefinido         read Fcancelada    write Fcancelada;
    property expedicao : indefinido         read Fexpedicao    write Fexpedicao;
    property indicacao : indefinido         read Findicacao    write Findicacao;
    property fabricacao : indefinido         read Ffabricacao    write Ffabricacao;
    property ecf : indefinido         read Fecf    write Fecf;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property status : indefinido         read Fstatus    write Fstatus;
    property status_os : Integer         read Fstatus_os    write Fstatus_os;

  end;

var
  Frm_ViewERPorcamentouniao : TFrm_ViewERPorcamentouniao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 74; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_fechamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].marca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].loja); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transportadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contrato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_seguro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_outras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_troco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rateio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].duplicatacheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comentrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cotacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_usuario_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_rota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tabela_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].usa_tabela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].defeito_reclamado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].defeito_constatado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_coringa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].indicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status_os); 
    end; 
end; 

procedure TFrm_ViewERPorcamentouniao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.data_saida := Edit_data_saida.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.hora_fechamento := Edit_hora_fechamento.text;
      FController.Model.numero_serie := Edit_numero_serie.text;
      FController.Model.marca := Edit_marca.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.nota_produto := Edit_nota_produto.text;
      FController.Model.loja := Edit_loja.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_transportadora := Edit_id_transportadora.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.id_credito := Edit_id_credito.text;
      FController.Model.id_contrato := Edit_id_contrato.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.vl_seguro := Edit_vl_seguro.text;
      FController.Model.vl_outras := Edit_vl_outras.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_troco := Edit_vl_troco.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.base_ipi := Edit_base_ipi.text;
      FController.Model.base_substituicao := Edit_base_substituicao.text;
      FController.Model.qtd_itens := Edit_qtd_itens.text;
      FController.Model.percentual_desconto := Edit_percentual_desconto.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.rateio := Edit_rateio.text;
      FController.Model.duplicatacheque := Edit_duplicatacheque.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.vl_juros := Edit_vl_juros.text;
      FController.Model.comentrada := Edit_comentrada.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.dia := Edit_dia.text;
      FController.Model.cotacao := Edit_cotacao.text;
      FController.Model.id_usuario_desconto := Edit_id_usuario_desconto.text;
      FController.Model.percentual_usuario_desconto := Edit_percentual_usuario_desconto.text;
      FController.Model.id_rota := Edit_id_rota.text;
      FController.Model.id_tabela_preco := Edit_id_tabela_preco.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.juros := Edit_juros.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.usa_tabela := Edit_usa_tabela.text;
      FController.Model.defeito_reclamado := Edit_defeito_reclamado.text;
      FController.Model.defeito_constatado := Edit_defeito_constatado.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_coringa := Edit_id_coringa.text;
      FController.Model.uso := Edit_uso.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.indicacao := Edit_indicacao.text;
      FController.Model.fabricacao := Edit_fabricacao.text;
      FController.Model.ecf := Edit_ecf.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.status := Edit_status.text;
      FController.Model.status_os := Edit_status_os.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPorcamentouniao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPorcamentouniao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPorcamentouniao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPorcamentouniao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPorcamentouniao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPorcamentouniao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPorcamentouniao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 74;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := data_saida;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := hora_fechamento;  
     Grid.Cells[inttostr(i),0] := numero_serie;  
     Grid.Cells[inttostr(i),0] := marca;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := nota_produto;  
     Grid.Cells[inttostr(i),0] := loja;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_transportadora;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := id_credito;  
     Grid.Cells[inttostr(i),0] := id_contrato;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := vl_seguro;  
     Grid.Cells[inttostr(i),0] := vl_outras;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_troco;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := base_ipi;  
     Grid.Cells[inttostr(i),0] := base_substituicao;  
     Grid.Cells[inttostr(i),0] := qtd_itens;  
     Grid.Cells[inttostr(i),0] := percentual_desconto;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := rateio;  
     Grid.Cells[inttostr(i),0] := duplicatacheque;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := vl_juros;  
     Grid.Cells[inttostr(i),0] := comentrada;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := dia;  
     Grid.Cells[inttostr(i),0] := cotacao;  
     Grid.Cells[inttostr(i),0] := id_usuario_desconto;  
     Grid.Cells[inttostr(i),0] := percentual_usuario_desconto;  
     Grid.Cells[inttostr(i),0] := id_rota;  
     Grid.Cells[inttostr(i),0] := id_tabela_preco;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := juros;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := usa_tabela;  
     Grid.Cells[inttostr(i),0] := defeito_reclamado;  
     Grid.Cells[inttostr(i),0] := defeito_constatado;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_coringa;  
     Grid.Cells[inttostr(i),0] := uso;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := indicacao;  
     Grid.Cells[inttostr(i),0] := fabricacao;  
     Grid.Cells[inttostr(i),0] := ecf;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := status_os;  
end;

procedure TFrm_ViewERPorcamentouniao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPorcamentouniao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPorcamentouniao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.tipo := Grid.Cells[2,Grid.row];
    FController.Model.nota := Grid.Cells[3,Grid.row];
    FController.Model.cupom := Grid.Cells[4,Grid.row];
    FController.Model.data_emissao := Grid.Cells[5,Grid.row];
    FController.Model.hora := Grid.Cells[6,Grid.row];
    FController.Model.data_saida := Grid.Cells[7,Grid.row];
    FController.Model.gerado := Grid.Cells[8,Grid.row];
    FController.Model.hora_fechamento := Grid.Cells[9,Grid.row];
    FController.Model.numero_serie := Grid.Cells[10,Grid.row];
    FController.Model.marca := Grid.Cells[11,Grid.row];
    FController.Model.modelo := Grid.Cells[12,Grid.row];
    FController.Model.nota_produto := Grid.Cells[13,Grid.row];
    FController.Model.loja := Grid.Cells[14,Grid.row];
    FController.Model.id_cliente := Grid.Cells[15,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[16,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[17,Grid.row];
    FController.Model.id_forma := Grid.Cells[18,Grid.row];
    FController.Model.id_conta := Grid.Cells[19,Grid.row];
    FController.Model.id_caixa := Grid.Cells[20,Grid.row];
    FController.Model.id_transportadora := Grid.Cells[21,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[22,Grid.row];
    FController.Model.id_credito := Grid.Cells[23,Grid.row];
    FController.Model.id_contrato := Grid.Cells[24,Grid.row];
    FController.Model.vl_produto := Grid.Cells[25,Grid.row];
    FController.Model.vl_servico := Grid.Cells[26,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[27,Grid.row];
    FController.Model.vl_frete := Grid.Cells[28,Grid.row];
    FController.Model.vl_seguro := Grid.Cells[29,Grid.row];
    FController.Model.vl_outras := Grid.Cells[30,Grid.row];
    FController.Model.vl_pago := Grid.Cells[31,Grid.row];
    FController.Model.vl_troco := Grid.Cells[32,Grid.row];
    FController.Model.vl_total := Grid.Cells[33,Grid.row];
    FController.Model.vl_icms := Grid.Cells[34,Grid.row];
    FController.Model.base_icms := Grid.Cells[35,Grid.row];
    FController.Model.base_ipi := Grid.Cells[36,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[37,Grid.row];
    FController.Model.qtd_itens := Grid.Cells[38,Grid.row];
    FController.Model.percentual_desconto := Grid.Cells[39,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[40,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[41,Grid.row];
    FController.Model.id_cfop := Grid.Cells[42,Grid.row];
    FController.Model.rateio := Grid.Cells[43,Grid.row];
    FController.Model.duplicatacheque := Grid.Cells[44,Grid.row];
    FController.Model.parcelas := Grid.Cells[45,Grid.row];
    FController.Model.vl_juros := Grid.Cells[46,Grid.row];
    FController.Model.comentrada := Grid.Cells[47,Grid.row];
    FController.Model.intervalo := Grid.Cells[48,Grid.row];
    FController.Model.dia := Grid.Cells[49,Grid.row];
    FController.Model.cotacao := Grid.Cells[50,Grid.row];
    FController.Model.id_usuario_desconto := Grid.Cells[51,Grid.row];
    FController.Model.percentual_usuario_desconto := Grid.Cells[52,Grid.row];
    FController.Model.id_rota := Grid.Cells[53,Grid.row];
    FController.Model.id_tabela_preco := Grid.Cells[54,Grid.row];
    FController.Model.obs := Grid.Cells[55,Grid.row];
    FController.Model.juros := Grid.Cells[56,Grid.row];
    FController.Model.placa := Grid.Cells[57,Grid.row];
    FController.Model.usa_tabela := Grid.Cells[58,Grid.row];
    FController.Model.defeito_reclamado := Grid.Cells[59,Grid.row];
    FController.Model.defeito_constatado := Grid.Cells[60,Grid.row];
    FController.Model.click := Grid.Cells[61,Grid.row];
    FController.Model.id_coringa := Grid.Cells[62,Grid.row];
    FController.Model.uso := Grid.Cells[63,Grid.row];
    FController.Model.cancelada := Grid.Cells[64,Grid.row];
    FController.Model.expedicao := Grid.Cells[65,Grid.row];
    FController.Model.indicacao := Grid.Cells[66,Grid.row];
    FController.Model.fabricacao := Grid.Cells[67,Grid.row];
    FController.Model.ecf := Grid.Cells[68,Grid.row];
    FController.Model.pis := Grid.Cells[69,Grid.row];
    FController.Model.cofins := Grid.Cells[70,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[71,Grid.row];
    FController.Model.status := Grid.Cells[72,Grid.row];
    FController.Model.status_os := Grid.Cells[73,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPorcamentouniao.LimparTela;  
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

procedure TFrm_ViewERPorcamentouniao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Sethora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setdata_saida(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Sethora_fechamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setnumero_serie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setmarca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setmodelo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setnota_produto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setloja(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_transportadora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_contrato(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_seguro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_troco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setbase_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setqtd_itens(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setpercentual_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setrateio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setduplicatacheque(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setcomentrada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setdia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setcotacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_usuario_desconto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setpercentual_usuario_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_rota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_tabela_preco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setjuros(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setplaca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setusa_tabela(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setdefeito_reclamado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setdefeito_constatado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setid_coringa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setuso(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setcancelada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setexpedicao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setindicacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setfabricacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setecf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamentouniao.Setstatus_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
