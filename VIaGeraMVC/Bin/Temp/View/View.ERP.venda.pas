
unit View.ERP.veiculos_transporte;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.veiculos_transporte, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPveiculostransporte = class(TForm) 
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
    FController : TControllerERPveiculostransporte; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnota : Integer;
    Fcupom : Integer;
    Fdata_emissao : TDateTime;
    Fhora : WideString;
    Fdata_saida : TDateTime;
    Fgerado : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_vendedor : Integer;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_transportadora : Integer;
    Fid_funcionario : Integer;
    Fid_credito : Integer;
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
    Frateio : WideString;
    Fduplicatacheque : WideString;
    Fparcelas : Integer;
    Fvl_juros : Double;
    Fcomentrada : WideString;
    Fintervalo : Integer;
    Fdia : Integer;
    Fcotacao : WideString;
    Fid_usuario_desconto : Integer;
    Fpercentual_usuario_desconto : Double;
    Fid_rota : Integer;
    Fid_tabela_preco : Integer;
    Fobs : indefinido;
    Fjuros : WideString;
    Fclick : Boolean;
    Fplaca : WideString;
    Fid_usuario : Integer;
    Fmotorista : WideString;
    Fuso : WideString;
    Fdevolucao : WideString;
    Fcancelada : WideString;
    Fexpedicao : WideString;
    Fid_carga : Integer;
    Fvl_iss : Double;
    Fid_palm : Integer;
    Fid_coringa : Integer;
    Fentregafutura : WideString;
    Fid_supervisor : Integer;
    Fnfe : WideString;
    Fnfe_chave : WideString;
    Fvolume_quantidade : WideString;
    Fvolume_numero : WideString;
    Fespecie : WideString;
    Fvl_icmsst : Double;
    Fvl_devolucao : Double;
    Fnfe_protocolo : WideString;
    Fbonificacao : WideString;
    Ffrete : WideString;
    Fserie : WideString;
    Fnf_manual : WideString;
    Fservidor : WideString;
    Ffabricacao : WideString;
    Fpis : Double;
    Fcofins : Double;
    Fid_prescritor : Integer;
    Ftipo_receituario : WideString;
    Fnotificacao : WideString;
    Ffpb : Integer;
    Ffpb_parcela_ms : Double;
    Fvl_custo_prod : Double;
    Fvl_custo_serv : Double;
    Fprodutor_ativo : WideString;
    Fnfe_placa : WideString;
    Freativacao : Boolean;
    Fvenda_bloqueada : WideString;
    Fcodigo_liberacao : Integer;
    Fid_uniao : Integer;
    Fdata_saidanf : TDateTime;
    Fhora_saidanf : WideString;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fbc_st : WideString;
    Fromaneio : WideString;
    Fecf : WideString;
    Fnfce : WideString;
    Fnfce_chave : WideString;
    Fnfce_protocolo : WideString;
    Fvl_custo : Double;
    Fpedido_alm : Boolean;
    Fid_obra : Integer;
    Fid_estimativa : Integer;
    Fid_motorista : Integer;
    Fid_veiculo : Integer;
    Fid_pedido_carregamento : Integer;
    Fid_funcionario_faturista : Integer;
    Fid_funcionario_producao : Integer;
    Fdescartaveis : Boolean;
    Fnfce_chave_cnt : WideString;
    Fid_os : Integer;
    Fnfe_protocolo_cancelada : WideString;
    Fbusca : WideString;
    Ftroca : WideString;
    Fid_responsavel_tecnico : Integer;
    Fnf_uniao : Boolean;
    Fnfce_protocolo_cancelada : WideString;
    Fvl_acrescimo : Double;
    Fid_contacorrente : Integer;
    Fimpri_orca : Boolean;
    Fnf_denegada : Boolean;
    Fnum_pedido_compra : WideString;
    Fdata_cancelamento : indefinido;
    Fid_usuario_cancelamento : Integer;
    Funiao : Boolean;
    Fdata_protocolo_nfe : indefinido;
    Fid_cliente_inscricao_estadual : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnota(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Sethora(const Value : WideString);
    procedure Setdata_saida(const Value : TDateTime);
    procedure Setgerado(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_transportadora(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_credito(const Value : Integer);
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
    procedure Setrateio(const Value : WideString);
    procedure Setduplicatacheque(const Value : WideString);
    procedure Setparcelas(const Value : Integer);
    procedure Setvl_juros(const Value : Double);
    procedure Setcomentrada(const Value : WideString);
    procedure Setintervalo(const Value : Integer);
    procedure Setdia(const Value : Integer);
    procedure Setcotacao(const Value : WideString);
    procedure Setid_usuario_desconto(const Value : Integer);
    procedure Setpercentual_usuario_desconto(const Value : Double);
    procedure Setid_rota(const Value : Integer);
    procedure Setid_tabela_preco(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setjuros(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setplaca(const Value : WideString);
    procedure Setid_usuario(const Value : Integer);
    procedure Setmotorista(const Value : WideString);
    procedure Setuso(const Value : WideString);
    procedure Setdevolucao(const Value : WideString);
    procedure Setcancelada(const Value : WideString);
    procedure Setexpedicao(const Value : WideString);
    procedure Setid_carga(const Value : Integer);
    procedure Setvl_iss(const Value : Double);
    procedure Setid_palm(const Value : Integer);
    procedure Setid_coringa(const Value : Integer);
    procedure Setentregafutura(const Value : WideString);
    procedure Setid_supervisor(const Value : Integer);
    procedure Setnfe(const Value : WideString);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setvolume_quantidade(const Value : WideString);
    procedure Setvolume_numero(const Value : WideString);
    procedure Setespecie(const Value : WideString);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setvl_devolucao(const Value : Double);
    procedure Setnfe_protocolo(const Value : WideString);
    procedure Setbonificacao(const Value : WideString);
    procedure Setfrete(const Value : WideString);
    procedure Setserie(const Value : WideString);
    procedure Setnf_manual(const Value : WideString);
    procedure Setservidor(const Value : WideString);
    procedure Setfabricacao(const Value : WideString);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setid_prescritor(const Value : Integer);
    procedure Settipo_receituario(const Value : WideString);
    procedure Setnotificacao(const Value : WideString);
    procedure Setfpb(const Value : Integer);
    procedure Setfpb_parcela_ms(const Value : Double);
    procedure Setvl_custo_prod(const Value : Double);
    procedure Setvl_custo_serv(const Value : Double);
    procedure Setprodutor_ativo(const Value : WideString);
    procedure Setnfe_placa(const Value : WideString);
    procedure Setreativacao(const Value : Boolean);
    procedure Setvenda_bloqueada(const Value : WideString);
    procedure Setcodigo_liberacao(const Value : Integer);
    procedure Setid_uniao(const Value : Integer);
    procedure Setdata_saidanf(const Value : TDateTime);
    procedure Sethora_saidanf(const Value : WideString);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setbc_st(const Value : WideString);
    procedure Setromaneio(const Value : WideString);
    procedure Setecf(const Value : WideString);
    procedure Setnfce(const Value : WideString);
    procedure Setnfce_chave(const Value : WideString);
    procedure Setnfce_protocolo(const Value : WideString);
    procedure Setvl_custo(const Value : Double);
    procedure Setpedido_alm(const Value : Boolean);
    procedure Setid_obra(const Value : Integer);
    procedure Setid_estimativa(const Value : Integer);
    procedure Setid_motorista(const Value : Integer);
    procedure Setid_veiculo(const Value : Integer);
    procedure Setid_pedido_carregamento(const Value : Integer);
    procedure Setid_funcionario_faturista(const Value : Integer);
    procedure Setid_funcionario_producao(const Value : Integer);
    procedure Setdescartaveis(const Value : Boolean);
    procedure Setnfce_chave_cnt(const Value : WideString);
    procedure Setid_os(const Value : Integer);
    procedure Setnfe_protocolo_cancelada(const Value : WideString);
    procedure Setbusca(const Value : WideString);
    procedure Settroca(const Value : WideString);
    procedure Setid_responsavel_tecnico(const Value : Integer);
    procedure Setnf_uniao(const Value : Boolean);
    procedure Setnfce_protocolo_cancelada(const Value : WideString);
    procedure Setvl_acrescimo(const Value : Double);
    procedure Setid_contacorrente(const Value : Integer);
    procedure Setimpri_orca(const Value : Boolean);
    procedure Setnf_denegada(const Value : Boolean);
    procedure Setnum_pedido_compra(const Value : WideString);
    procedure Setdata_cancelamento(const Value : indefinido);
    procedure Setid_usuario_cancelamento(const Value : Integer);
    procedure Setuniao(const Value : Boolean);
    procedure Setdata_protocolo_nfe(const Value : indefinido);
    procedure Setid_cliente_inscricao_estadual(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nota : Integer         read Fnota    write Fnota;
    property cupom : Integer         read Fcupom    write Fcupom;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property hora : WideString         read Fhora    write Fhora;
    property data_saida : TDateTime         read Fdata_saida    write Fdata_saida;
    property gerado : WideString         read Fgerado    write Fgerado;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_transportadora : Integer         read Fid_transportadora    write Fid_transportadora;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_credito : Integer         read Fid_credito    write Fid_credito;
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
    property rateio : WideString         read Frateio    write Frateio;
    property duplicatacheque : WideString         read Fduplicatacheque    write Fduplicatacheque;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property comentrada : WideString         read Fcomentrada    write Fcomentrada;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property dia : Integer         read Fdia    write Fdia;
    property cotacao : WideString         read Fcotacao    write Fcotacao;
    property id_usuario_desconto : Integer         read Fid_usuario_desconto    write Fid_usuario_desconto;
    property percentual_usuario_desconto : Double         read Fpercentual_usuario_desconto    write Fpercentual_usuario_desconto;
    property id_rota : Integer         read Fid_rota    write Fid_rota;
    property id_tabela_preco : Integer         read Fid_tabela_preco    write Fid_tabela_preco;
    property obs : indefinido         read Fobs    write Fobs;
    property juros : WideString         read Fjuros    write Fjuros;
    property click : Boolean         read Fclick    write Fclick;
    property placa : WideString         read Fplaca    write Fplaca;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property motorista : WideString         read Fmotorista    write Fmotorista;
    property uso : WideString         read Fuso    write Fuso;
    property devolucao : WideString         read Fdevolucao    write Fdevolucao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property expedicao : WideString         read Fexpedicao    write Fexpedicao;
    property id_carga : Integer         read Fid_carga    write Fid_carga;
    property vl_iss : Double         read Fvl_iss    write Fvl_iss;
    property id_palm : Integer         read Fid_palm    write Fid_palm;
    property id_coringa : Integer         read Fid_coringa    write Fid_coringa;
    property entregafutura : WideString         read Fentregafutura    write Fentregafutura;
    property id_supervisor : Integer         read Fid_supervisor    write Fid_supervisor;
    property nfe : WideString         read Fnfe    write Fnfe;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property volume_quantidade : WideString         read Fvolume_quantidade    write Fvolume_quantidade;
    property volume_numero : WideString         read Fvolume_numero    write Fvolume_numero;
    property especie : WideString         read Fespecie    write Fespecie;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property vl_devolucao : Double         read Fvl_devolucao    write Fvl_devolucao;
    property nfe_protocolo : WideString         read Fnfe_protocolo    write Fnfe_protocolo;
    property bonificacao : WideString         read Fbonificacao    write Fbonificacao;
    property frete : WideString         read Ffrete    write Ffrete;
    property serie : WideString         read Fserie    write Fserie;
    property nf_manual : WideString         read Fnf_manual    write Fnf_manual;
    property servidor : WideString         read Fservidor    write Fservidor;
    property fabricacao : WideString         read Ffabricacao    write Ffabricacao;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property id_prescritor : Integer         read Fid_prescritor    write Fid_prescritor;
    property tipo_receituario : WideString         read Ftipo_receituario    write Ftipo_receituario;
    property notificacao : WideString         read Fnotificacao    write Fnotificacao;
    property fpb : Integer         read Ffpb    write Ffpb;
    property fpb_parcela_ms : Double         read Ffpb_parcela_ms    write Ffpb_parcela_ms;
    property vl_custo_prod : Double         read Fvl_custo_prod    write Fvl_custo_prod;
    property vl_custo_serv : Double         read Fvl_custo_serv    write Fvl_custo_serv;
    property produtor_ativo : WideString         read Fprodutor_ativo    write Fprodutor_ativo;
    property nfe_placa : WideString         read Fnfe_placa    write Fnfe_placa;
    property reativacao : Boolean         read Freativacao    write Freativacao;
    property venda_bloqueada : WideString         read Fvenda_bloqueada    write Fvenda_bloqueada;
    property codigo_liberacao : Integer         read Fcodigo_liberacao    write Fcodigo_liberacao;
    property id_uniao : Integer         read Fid_uniao    write Fid_uniao;
    property data_saidanf : TDateTime         read Fdata_saidanf    write Fdata_saidanf;
    property hora_saidanf : WideString         read Fhora_saidanf    write Fhora_saidanf;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property bc_st : WideString         read Fbc_st    write Fbc_st;
    property romaneio : WideString         read Fromaneio    write Fromaneio;
    property ecf : WideString         read Fecf    write Fecf;
    property nfce : WideString         read Fnfce    write Fnfce;
    property nfce_chave : WideString         read Fnfce_chave    write Fnfce_chave;
    property nfce_protocolo : WideString         read Fnfce_protocolo    write Fnfce_protocolo;
    property vl_custo : Double         read Fvl_custo    write Fvl_custo;
    property pedido_alm : Boolean         read Fpedido_alm    write Fpedido_alm;
    property id_obra : Integer         read Fid_obra    write Fid_obra;
    property id_estimativa : Integer         read Fid_estimativa    write Fid_estimativa;
    property id_motorista : Integer         read Fid_motorista    write Fid_motorista;
    property id_veiculo : Integer         read Fid_veiculo    write Fid_veiculo;
    property id_pedido_carregamento : Integer         read Fid_pedido_carregamento    write Fid_pedido_carregamento;
    property id_funcionario_faturista : Integer         read Fid_funcionario_faturista    write Fid_funcionario_faturista;
    property id_funcionario_producao : Integer         read Fid_funcionario_producao    write Fid_funcionario_producao;
    property descartaveis : Boolean         read Fdescartaveis    write Fdescartaveis;
    property nfce_chave_cnt : WideString         read Fnfce_chave_cnt    write Fnfce_chave_cnt;
    property id_os : Integer         read Fid_os    write Fid_os;
    property nfe_protocolo_cancelada : WideString         read Fnfe_protocolo_cancelada    write Fnfe_protocolo_cancelada;
    property busca : WideString         read Fbusca    write Fbusca;
    property troca : WideString         read Ftroca    write Ftroca;
    property id_responsavel_tecnico : Integer         read Fid_responsavel_tecnico    write Fid_responsavel_tecnico;
    property nf_uniao : Boolean         read Fnf_uniao    write Fnf_uniao;
    property nfce_protocolo_cancelada : WideString         read Fnfce_protocolo_cancelada    write Fnfce_protocolo_cancelada;
    property vl_acrescimo : Double         read Fvl_acrescimo    write Fvl_acrescimo;
    property id_contacorrente : Integer         read Fid_contacorrente    write Fid_contacorrente;
    property impri_orca : Boolean         read Fimpri_orca    write Fimpri_orca;
    property nf_denegada : Boolean         read Fnf_denegada    write Fnf_denegada;
    property num_pedido_compra : WideString         read Fnum_pedido_compra    write Fnum_pedido_compra;
    property data_cancelamento : indefinido         read Fdata_cancelamento    write Fdata_cancelamento;
    property id_usuario_cancelamento : Integer         read Fid_usuario_cancelamento    write Fid_usuario_cancelamento;
    property uniao : Boolean         read Funiao    write Funiao;
    property data_protocolo_nfe : indefinido         read Fdata_protocolo_nfe    write Fdata_protocolo_nfe;
    property id_cliente_inscricao_estadual : Integer         read Fid_cliente_inscricao_estadual    write Fid_cliente_inscricao_estadual;

  end;

var
  Frm_ViewERPveiculostransporte : TFrm_ViewERPveiculostransporte; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 130; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transportadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_iss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_palm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_coringa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entregafutura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_supervisor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].volume_quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].volume_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bonificacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf_manual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_prescritor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_receituario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].notificacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb_parcela_ms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_custo_prod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_custo_serv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtor_ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reativacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_bloqueada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_liberacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_saidanf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_saidanf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].romaneio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_estimativa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_veiculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_carregamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario_faturista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario_producao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descartaveis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_chave_cnt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].busca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_responsavel_tecnico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_protocolo_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_acrescimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impri_orca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf_denegada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_pedido_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_cancelamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_cancelamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_protocolo_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente_inscricao_estadual); 
    end; 
end; 

procedure TFrm_ViewERPveiculostransporte.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.data_saida := Edit_data_saida.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_transportadora := Edit_id_transportadora.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.id_credito := Edit_id_credito.text;
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
      FController.Model.click := Edit_click.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.uso := Edit_uso.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.id_carga := Edit_id_carga.text;
      FController.Model.vl_iss := Edit_vl_iss.text;
      FController.Model.id_palm := Edit_id_palm.text;
      FController.Model.id_coringa := Edit_id_coringa.text;
      FController.Model.entregafutura := Edit_entregafutura.text;
      FController.Model.id_supervisor := Edit_id_supervisor.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.volume_quantidade := Edit_volume_quantidade.text;
      FController.Model.volume_numero := Edit_volume_numero.text;
      FController.Model.especie := Edit_especie.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.vl_devolucao := Edit_vl_devolucao.text;
      FController.Model.nfe_protocolo := Edit_nfe_protocolo.text;
      FController.Model.bonificacao := Edit_bonificacao.text;
      FController.Model.frete := Edit_frete.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.nf_manual := Edit_nf_manual.text;
      FController.Model.servidor := Edit_servidor.text;
      FController.Model.fabricacao := Edit_fabricacao.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.id_prescritor := Edit_id_prescritor.text;
      FController.Model.tipo_receituario := Edit_tipo_receituario.text;
      FController.Model.notificacao := Edit_notificacao.text;
      FController.Model.fpb := Edit_fpb.text;
      FController.Model.fpb_parcela_ms := Edit_fpb_parcela_ms.text;
      FController.Model.vl_custo_prod := Edit_vl_custo_prod.text;
      FController.Model.vl_custo_serv := Edit_vl_custo_serv.text;
      FController.Model.produtor_ativo := Edit_produtor_ativo.text;
      FController.Model.nfe_placa := Edit_nfe_placa.text;
      FController.Model.reativacao := Edit_reativacao.text;
      FController.Model.venda_bloqueada := Edit_venda_bloqueada.text;
      FController.Model.codigo_liberacao := Edit_codigo_liberacao.text;
      FController.Model.id_uniao := Edit_id_uniao.text;
      FController.Model.data_saidanf := Edit_data_saidanf.text;
      FController.Model.hora_saidanf := Edit_hora_saidanf.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.bc_st := Edit_bc_st.text;
      FController.Model.romaneio := Edit_romaneio.text;
      FController.Model.ecf := Edit_ecf.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.nfce_chave := Edit_nfce_chave.text;
      FController.Model.nfce_protocolo := Edit_nfce_protocolo.text;
      FController.Model.vl_custo := Edit_vl_custo.text;
      FController.Model.pedido_alm := Edit_pedido_alm.text;
      FController.Model.id_obra := Edit_id_obra.text;
      FController.Model.id_estimativa := Edit_id_estimativa.text;
      FController.Model.id_motorista := Edit_id_motorista.text;
      FController.Model.id_veiculo := Edit_id_veiculo.text;
      FController.Model.id_pedido_carregamento := Edit_id_pedido_carregamento.text;
      FController.Model.id_funcionario_faturista := Edit_id_funcionario_faturista.text;
      FController.Model.id_funcionario_producao := Edit_id_funcionario_producao.text;
      FController.Model.descartaveis := Edit_descartaveis.text;
      FController.Model.nfce_chave_cnt := Edit_nfce_chave_cnt.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.nfe_protocolo_cancelada := Edit_nfe_protocolo_cancelada.text;
      FController.Model.busca := Edit_busca.text;
      FController.Model.troca := Edit_troca.text;
      FController.Model.id_responsavel_tecnico := Edit_id_responsavel_tecnico.text;
      FController.Model.nf_uniao := Edit_nf_uniao.text;
      FController.Model.nfce_protocolo_cancelada := Edit_nfce_protocolo_cancelada.text;
      FController.Model.vl_acrescimo := Edit_vl_acrescimo.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.impri_orca := Edit_impri_orca.text;
      FController.Model.nf_denegada := Edit_nf_denegada.text;
      FController.Model.num_pedido_compra := Edit_num_pedido_compra.text;
      FController.Model.data_cancelamento := Edit_data_cancelamento.text;
      FController.Model.id_usuario_cancelamento := Edit_id_usuario_cancelamento.text;
      FController.Model.uniao := Edit_uniao.text;
      FController.Model.data_protocolo_nfe := Edit_data_protocolo_nfe.text;
      FController.Model.id_cliente_inscricao_estadual := Edit_id_cliente_inscricao_estadual.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPveiculostransporte.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPveiculostransporte.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPveiculostransporte.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPveiculostransporte.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPveiculostransporte.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPveiculostransporte.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPveiculostransporte.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 130;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := data_saida;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_transportadora;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := id_credito;  
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
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := uso;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := id_carga;  
     Grid.Cells[inttostr(i),0] := vl_iss;  
     Grid.Cells[inttostr(i),0] := id_palm;  
     Grid.Cells[inttostr(i),0] := id_coringa;  
     Grid.Cells[inttostr(i),0] := entregafutura;  
     Grid.Cells[inttostr(i),0] := id_supervisor;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := volume_quantidade;  
     Grid.Cells[inttostr(i),0] := volume_numero;  
     Grid.Cells[inttostr(i),0] := especie;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := vl_devolucao;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo;  
     Grid.Cells[inttostr(i),0] := bonificacao;  
     Grid.Cells[inttostr(i),0] := frete;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := nf_manual;  
     Grid.Cells[inttostr(i),0] := servidor;  
     Grid.Cells[inttostr(i),0] := fabricacao;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := id_prescritor;  
     Grid.Cells[inttostr(i),0] := tipo_receituario;  
     Grid.Cells[inttostr(i),0] := notificacao;  
     Grid.Cells[inttostr(i),0] := fpb;  
     Grid.Cells[inttostr(i),0] := fpb_parcela_ms;  
     Grid.Cells[inttostr(i),0] := vl_custo_prod;  
     Grid.Cells[inttostr(i),0] := vl_custo_serv;  
     Grid.Cells[inttostr(i),0] := produtor_ativo;  
     Grid.Cells[inttostr(i),0] := nfe_placa;  
     Grid.Cells[inttostr(i),0] := reativacao;  
     Grid.Cells[inttostr(i),0] := venda_bloqueada;  
     Grid.Cells[inttostr(i),0] := codigo_liberacao;  
     Grid.Cells[inttostr(i),0] := id_uniao;  
     Grid.Cells[inttostr(i),0] := data_saidanf;  
     Grid.Cells[inttostr(i),0] := hora_saidanf;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := bc_st;  
     Grid.Cells[inttostr(i),0] := romaneio;  
     Grid.Cells[inttostr(i),0] := ecf;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := nfce_chave;  
     Grid.Cells[inttostr(i),0] := nfce_protocolo;  
     Grid.Cells[inttostr(i),0] := vl_custo;  
     Grid.Cells[inttostr(i),0] := pedido_alm;  
     Grid.Cells[inttostr(i),0] := id_obra;  
     Grid.Cells[inttostr(i),0] := id_estimativa;  
     Grid.Cells[inttostr(i),0] := id_motorista;  
     Grid.Cells[inttostr(i),0] := id_veiculo;  
     Grid.Cells[inttostr(i),0] := id_pedido_carregamento;  
     Grid.Cells[inttostr(i),0] := id_funcionario_faturista;  
     Grid.Cells[inttostr(i),0] := id_funcionario_producao;  
     Grid.Cells[inttostr(i),0] := descartaveis;  
     Grid.Cells[inttostr(i),0] := nfce_chave_cnt;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo_cancelada;  
     Grid.Cells[inttostr(i),0] := busca;  
     Grid.Cells[inttostr(i),0] := troca;  
     Grid.Cells[inttostr(i),0] := id_responsavel_tecnico;  
     Grid.Cells[inttostr(i),0] := nf_uniao;  
     Grid.Cells[inttostr(i),0] := nfce_protocolo_cancelada;  
     Grid.Cells[inttostr(i),0] := vl_acrescimo;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := impri_orca;  
     Grid.Cells[inttostr(i),0] := nf_denegada;  
     Grid.Cells[inttostr(i),0] := num_pedido_compra;  
     Grid.Cells[inttostr(i),0] := data_cancelamento;  
     Grid.Cells[inttostr(i),0] := id_usuario_cancelamento;  
     Grid.Cells[inttostr(i),0] := uniao;  
     Grid.Cells[inttostr(i),0] := data_protocolo_nfe;  
     Grid.Cells[inttostr(i),0] := id_cliente_inscricao_estadual;  
end;

procedure TFrm_ViewERPveiculostransporte.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPveiculostransporte.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPveiculostransporte.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nota := Grid.Cells[2,Grid.row];
    FController.Model.cupom := Grid.Cells[3,Grid.row];
    FController.Model.data_emissao := Grid.Cells[4,Grid.row];
    FController.Model.hora := Grid.Cells[5,Grid.row];
    FController.Model.data_saida := Grid.Cells[6,Grid.row];
    FController.Model.gerado := Grid.Cells[7,Grid.row];
    FController.Model.id_cliente := Grid.Cells[8,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[9,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[10,Grid.row];
    FController.Model.id_forma := Grid.Cells[11,Grid.row];
    FController.Model.id_conta := Grid.Cells[12,Grid.row];
    FController.Model.id_caixa := Grid.Cells[13,Grid.row];
    FController.Model.id_transportadora := Grid.Cells[14,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[15,Grid.row];
    FController.Model.id_credito := Grid.Cells[16,Grid.row];
    FController.Model.vl_produto := Grid.Cells[17,Grid.row];
    FController.Model.vl_servico := Grid.Cells[18,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[19,Grid.row];
    FController.Model.vl_frete := Grid.Cells[20,Grid.row];
    FController.Model.vl_seguro := Grid.Cells[21,Grid.row];
    FController.Model.vl_outras := Grid.Cells[22,Grid.row];
    FController.Model.vl_pago := Grid.Cells[23,Grid.row];
    FController.Model.vl_troco := Grid.Cells[24,Grid.row];
    FController.Model.vl_total := Grid.Cells[25,Grid.row];
    FController.Model.vl_icms := Grid.Cells[26,Grid.row];
    FController.Model.base_icms := Grid.Cells[27,Grid.row];
    FController.Model.base_ipi := Grid.Cells[28,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[29,Grid.row];
    FController.Model.qtd_itens := Grid.Cells[30,Grid.row];
    FController.Model.percentual_desconto := Grid.Cells[31,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[32,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[33,Grid.row];
    FController.Model.id_cfop := Grid.Cells[34,Grid.row];
    FController.Model.rateio := Grid.Cells[35,Grid.row];
    FController.Model.duplicatacheque := Grid.Cells[36,Grid.row];
    FController.Model.parcelas := Grid.Cells[37,Grid.row];
    FController.Model.vl_juros := Grid.Cells[38,Grid.row];
    FController.Model.comentrada := Grid.Cells[39,Grid.row];
    FController.Model.intervalo := Grid.Cells[40,Grid.row];
    FController.Model.dia := Grid.Cells[41,Grid.row];
    FController.Model.cotacao := Grid.Cells[42,Grid.row];
    FController.Model.id_usuario_desconto := Grid.Cells[43,Grid.row];
    FController.Model.percentual_usuario_desconto := Grid.Cells[44,Grid.row];
    FController.Model.id_rota := Grid.Cells[45,Grid.row];
    FController.Model.id_tabela_preco := Grid.Cells[46,Grid.row];
    FController.Model.obs := Grid.Cells[47,Grid.row];
    FController.Model.juros := Grid.Cells[48,Grid.row];
    FController.Model.click := Grid.Cells[49,Grid.row];
    FController.Model.placa := Grid.Cells[50,Grid.row];
    FController.Model.id_usuario := Grid.Cells[51,Grid.row];
    FController.Model.motorista := Grid.Cells[52,Grid.row];
    FController.Model.uso := Grid.Cells[53,Grid.row];
    FController.Model.devolucao := Grid.Cells[54,Grid.row];
    FController.Model.cancelada := Grid.Cells[55,Grid.row];
    FController.Model.expedicao := Grid.Cells[56,Grid.row];
    FController.Model.id_carga := Grid.Cells[57,Grid.row];
    FController.Model.vl_iss := Grid.Cells[58,Grid.row];
    FController.Model.id_palm := Grid.Cells[59,Grid.row];
    FController.Model.id_coringa := Grid.Cells[60,Grid.row];
    FController.Model.entregafutura := Grid.Cells[61,Grid.row];
    FController.Model.id_supervisor := Grid.Cells[62,Grid.row];
    FController.Model.nfe := Grid.Cells[63,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[64,Grid.row];
    FController.Model.volume_quantidade := Grid.Cells[65,Grid.row];
    FController.Model.volume_numero := Grid.Cells[66,Grid.row];
    FController.Model.especie := Grid.Cells[67,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[68,Grid.row];
    FController.Model.vl_devolucao := Grid.Cells[69,Grid.row];
    FController.Model.nfe_protocolo := Grid.Cells[70,Grid.row];
    FController.Model.bonificacao := Grid.Cells[71,Grid.row];
    FController.Model.frete := Grid.Cells[72,Grid.row];
    FController.Model.serie := Grid.Cells[73,Grid.row];
    FController.Model.nf_manual := Grid.Cells[74,Grid.row];
    FController.Model.servidor := Grid.Cells[75,Grid.row];
    FController.Model.fabricacao := Grid.Cells[76,Grid.row];
    FController.Model.pis := Grid.Cells[77,Grid.row];
    FController.Model.cofins := Grid.Cells[78,Grid.row];
    FController.Model.id_prescritor := Grid.Cells[79,Grid.row];
    FController.Model.tipo_receituario := Grid.Cells[80,Grid.row];
    FController.Model.notificacao := Grid.Cells[81,Grid.row];
    FController.Model.fpb := Grid.Cells[82,Grid.row];
    FController.Model.fpb_parcela_ms := Grid.Cells[83,Grid.row];
    FController.Model.vl_custo_prod := Grid.Cells[84,Grid.row];
    FController.Model.vl_custo_serv := Grid.Cells[85,Grid.row];
    FController.Model.produtor_ativo := Grid.Cells[86,Grid.row];
    FController.Model.nfe_placa := Grid.Cells[87,Grid.row];
    FController.Model.reativacao := Grid.Cells[88,Grid.row];
    FController.Model.venda_bloqueada := Grid.Cells[89,Grid.row];
    FController.Model.codigo_liberacao := Grid.Cells[90,Grid.row];
    FController.Model.id_uniao := Grid.Cells[91,Grid.row];
    FController.Model.data_saidanf := Grid.Cells[92,Grid.row];
    FController.Model.hora_saidanf := Grid.Cells[93,Grid.row];
    FController.Model.id_movimento := Grid.Cells[94,Grid.row];
    FController.Model.id_cupons := Grid.Cells[95,Grid.row];
    FController.Model.bc_st := Grid.Cells[96,Grid.row];
    FController.Model.romaneio := Grid.Cells[97,Grid.row];
    FController.Model.ecf := Grid.Cells[98,Grid.row];
    FController.Model.nfce := Grid.Cells[99,Grid.row];
    FController.Model.nfce_chave := Grid.Cells[100,Grid.row];
    FController.Model.nfce_protocolo := Grid.Cells[101,Grid.row];
    FController.Model.vl_custo := Grid.Cells[102,Grid.row];
    FController.Model.pedido_alm := Grid.Cells[103,Grid.row];
    FController.Model.id_obra := Grid.Cells[104,Grid.row];
    FController.Model.id_estimativa := Grid.Cells[105,Grid.row];
    FController.Model.id_motorista := Grid.Cells[106,Grid.row];
    FController.Model.id_veiculo := Grid.Cells[107,Grid.row];
    FController.Model.id_pedido_carregamento := Grid.Cells[108,Grid.row];
    FController.Model.id_funcionario_faturista := Grid.Cells[109,Grid.row];
    FController.Model.id_funcionario_producao := Grid.Cells[110,Grid.row];
    FController.Model.descartaveis := Grid.Cells[111,Grid.row];
    FController.Model.nfce_chave_cnt := Grid.Cells[112,Grid.row];
    FController.Model.id_os := Grid.Cells[113,Grid.row];
    FController.Model.nfe_protocolo_cancelada := Grid.Cells[114,Grid.row];
    FController.Model.busca := Grid.Cells[115,Grid.row];
    FController.Model.troca := Grid.Cells[116,Grid.row];
    FController.Model.id_responsavel_tecnico := Grid.Cells[117,Grid.row];
    FController.Model.nf_uniao := Grid.Cells[118,Grid.row];
    FController.Model.nfce_protocolo_cancelada := Grid.Cells[119,Grid.row];
    FController.Model.vl_acrescimo := Grid.Cells[120,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[121,Grid.row];
    FController.Model.impri_orca := Grid.Cells[122,Grid.row];
    FController.Model.nf_denegada := Grid.Cells[123,Grid.row];
    FController.Model.num_pedido_compra := Grid.Cells[124,Grid.row];
    FController.Model.data_cancelamento := Grid.Cells[125,Grid.row];
    FController.Model.id_usuario_cancelamento := Grid.Cells[126,Grid.row];
    FController.Model.uniao := Grid.Cells[127,Grid.row];
    FController.Model.data_protocolo_nfe := Grid.Cells[128,Grid.row];
    FController.Model.id_cliente_inscricao_estadual := Grid.Cells[129,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPveiculostransporte.LimparTela;  
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

procedure TFrm_ViewERPveiculostransporte.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Sethora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdata_saida(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_transportadora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_seguro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_troco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbase_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setqtd_itens(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpercentual_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setrateio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setduplicatacheque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcomentrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcotacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_usuario_desconto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpercentual_usuario_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_rota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_tabela_preco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setjuros(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setplaca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setmotorista(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setuso(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdevolucao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setexpedicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_carga(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_iss(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_palm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_coringa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setentregafutura(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_supervisor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvolume_quantidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvolume_numero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setespecie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_devolucao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfe_protocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbonificacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setfrete(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnf_manual(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setservidor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setfabricacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_prescritor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Settipo_receituario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnotificacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setfpb(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setfpb_parcela_ms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_custo_prod(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_custo_serv(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setprodutor_ativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfe_placa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setreativacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvenda_bloqueada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setcodigo_liberacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdata_saidanf(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Sethora_saidanf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbc_st(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setromaneio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setecf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfce_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfce_protocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setpedido_alm(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_estimativa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_motorista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_veiculo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_pedido_carregamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_funcionario_faturista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_funcionario_producao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdescartaveis(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfce_chave_cnt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfe_protocolo_cancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setbusca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Settroca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_responsavel_tecnico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnf_uniao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnfce_protocolo_cancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setvl_acrescimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_contacorrente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setimpri_orca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnf_denegada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setnum_pedido_compra(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdata_cancelamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_usuario_cancelamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setuniao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setdata_protocolo_nfe(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculostransporte.Setid_cliente_inscricao_estadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
