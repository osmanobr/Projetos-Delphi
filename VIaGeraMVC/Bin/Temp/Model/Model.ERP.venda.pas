unit Model.ERP.veiculos_transporte;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculostransporte = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnota(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Sethora(const Value: WideString);
    procedure Setdata_saida(const Value: TDateTime);
    procedure Setgerado(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_transportadora(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_credito(const Value: Integer);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_seguro(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_troco(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setbase_ipi(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setqtd_itens(const Value: Integer);
    procedure Setpercentual_desconto(const Value: Double);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setid_cfop(const Value: Integer);
    procedure Setrateio(const Value: WideString);
    procedure Setduplicatacheque(const Value: WideString);
    procedure Setparcelas(const Value: Integer);
    procedure Setvl_juros(const Value: Double);
    procedure Setcomentrada(const Value: WideString);
    procedure Setintervalo(const Value: Integer);
    procedure Setdia(const Value: Integer);
    procedure Setcotacao(const Value: WideString);
    procedure Setid_usuario_desconto(const Value: Integer);
    procedure Setpercentual_usuario_desconto(const Value: Double);
    procedure Setid_rota(const Value: Integer);
    procedure Setid_tabela_preco(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setjuros(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setplaca(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setmotorista(const Value: WideString);
    procedure Setuso(const Value: WideString);
    procedure Setdevolucao(const Value: WideString);
    procedure Setcancelada(const Value: WideString);
    procedure Setexpedicao(const Value: WideString);
    procedure Setid_carga(const Value: Integer);
    procedure Setvl_iss(const Value: Double);
    procedure Setid_palm(const Value: Integer);
    procedure Setid_coringa(const Value: Integer);
    procedure Setentregafutura(const Value: WideString);
    procedure Setid_supervisor(const Value: Integer);
    procedure Setnfe(const Value: WideString);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setvolume_quantidade(const Value: WideString);
    procedure Setvolume_numero(const Value: WideString);
    procedure Setespecie(const Value: WideString);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setvl_devolucao(const Value: Double);
    procedure Setnfe_protocolo(const Value: WideString);
    procedure Setbonificacao(const Value: WideString);
    procedure Setfrete(const Value: WideString);
    procedure Setserie(const Value: WideString);
    procedure Setnf_manual(const Value: WideString);
    procedure Setservidor(const Value: WideString);
    procedure Setfabricacao(const Value: WideString);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setid_prescritor(const Value: Integer);
    procedure Settipo_receituario(const Value: WideString);
    procedure Setnotificacao(const Value: WideString);
    procedure Setfpb(const Value: Integer);
    procedure Setfpb_parcela_ms(const Value: Double);
    procedure Setvl_custo_prod(const Value: Double);
    procedure Setvl_custo_serv(const Value: Double);
    procedure Setprodutor_ativo(const Value: WideString);
    procedure Setnfe_placa(const Value: WideString);
    procedure Setreativacao(const Value: Boolean);
    procedure Setvenda_bloqueada(const Value: WideString);
    procedure Setcodigo_liberacao(const Value: Integer);
    procedure Setid_uniao(const Value: Integer);
    procedure Setdata_saidanf(const Value: TDateTime);
    procedure Sethora_saidanf(const Value: WideString);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setbc_st(const Value: WideString);
    procedure Setromaneio(const Value: WideString);
    procedure Setecf(const Value: WideString);
    procedure Setnfce(const Value: WideString);
    procedure Setnfce_chave(const Value: WideString);
    procedure Setnfce_protocolo(const Value: WideString);
    procedure Setvl_custo(const Value: Double);
    procedure Setpedido_alm(const Value: Boolean);
    procedure Setid_obra(const Value: Integer);
    procedure Setid_estimativa(const Value: Integer);
    procedure Setid_motorista(const Value: Integer);
    procedure Setid_veiculo(const Value: Integer);
    procedure Setid_pedido_carregamento(const Value: Integer);
    procedure Setid_funcionario_faturista(const Value: Integer);
    procedure Setid_funcionario_producao(const Value: Integer);
    procedure Setdescartaveis(const Value: Boolean);
    procedure Setnfce_chave_cnt(const Value: WideString);
    procedure Setid_os(const Value: Integer);
    procedure Setnfe_protocolo_cancelada(const Value: WideString);
    procedure Setbusca(const Value: WideString);
    procedure Settroca(const Value: WideString);
    procedure Setid_responsavel_tecnico(const Value: Integer);
    procedure Setnf_uniao(const Value: Boolean);
    procedure Setnfce_protocolo_cancelada(const Value: WideString);
    procedure Setvl_acrescimo(const Value: Double);
    procedure Setid_contacorrente(const Value: Integer);
    procedure Setimpri_orca(const Value: Boolean);
    procedure Setnf_denegada(const Value: Boolean);
    procedure Setnum_pedido_compra(const Value: WideString);
    procedure Setdata_cancelamento(const Value: indefinido);
    procedure Setid_usuario_cancelamento(const Value: Integer);
    procedure Setuniao(const Value: Boolean);
    procedure Setdata_protocolo_nfe(const Value: indefinido);
    procedure Setid_cliente_inscricao_estadual(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nota     : Integer read Fnota write Setnota;
    property cupom     : Integer read Fcupom write Setcupom;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property hora     : WideString read Fhora write Sethora;
    property data_saida     : TDateTime read Fdata_saida write Setdata_saida;
    property gerado     : WideString read Fgerado write Setgerado;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_transportadora     : Integer read Fid_transportadora write Setid_transportadora;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_credito     : Integer read Fid_credito write Setid_credito;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_seguro     : Double read Fvl_seguro write Setvl_seguro;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_troco     : Double read Fvl_troco write Setvl_troco;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property base_ipi     : Double read Fbase_ipi write Setbase_ipi;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property qtd_itens     : Integer read Fqtd_itens write Setqtd_itens;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property rateio     : WideString read Frateio write Setrateio;
    property duplicatacheque     : WideString read Fduplicatacheque write Setduplicatacheque;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property comentrada     : WideString read Fcomentrada write Setcomentrada;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property dia     : Integer read Fdia write Setdia;
    property cotacao     : WideString read Fcotacao write Setcotacao;
    property id_usuario_desconto     : Integer read Fid_usuario_desconto write Setid_usuario_desconto;
    property percentual_usuario_desconto     : Double read Fpercentual_usuario_desconto write Setpercentual_usuario_desconto;
    property id_rota     : Integer read Fid_rota write Setid_rota;
    property id_tabela_preco     : Integer read Fid_tabela_preco write Setid_tabela_preco;
    property obs     : indefinido read Fobs write Setobs;
    property juros     : WideString read Fjuros write Setjuros;
    property click     : Boolean read Fclick write Setclick;
    property placa     : WideString read Fplaca write Setplaca;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property motorista     : WideString read Fmotorista write Setmotorista;
    property uso     : WideString read Fuso write Setuso;
    property devolucao     : WideString read Fdevolucao write Setdevolucao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property expedicao     : WideString read Fexpedicao write Setexpedicao;
    property id_carga     : Integer read Fid_carga write Setid_carga;
    property vl_iss     : Double read Fvl_iss write Setvl_iss;
    property id_palm     : Integer read Fid_palm write Setid_palm;
    property id_coringa     : Integer read Fid_coringa write Setid_coringa;
    property entregafutura     : WideString read Fentregafutura write Setentregafutura;
    property id_supervisor     : Integer read Fid_supervisor write Setid_supervisor;
    property nfe     : WideString read Fnfe write Setnfe;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property volume_quantidade     : WideString read Fvolume_quantidade write Setvolume_quantidade;
    property volume_numero     : WideString read Fvolume_numero write Setvolume_numero;
    property especie     : WideString read Fespecie write Setespecie;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property vl_devolucao     : Double read Fvl_devolucao write Setvl_devolucao;
    property nfe_protocolo     : WideString read Fnfe_protocolo write Setnfe_protocolo;
    property bonificacao     : WideString read Fbonificacao write Setbonificacao;
    property frete     : WideString read Ffrete write Setfrete;
    property serie     : WideString read Fserie write Setserie;
    property nf_manual     : WideString read Fnf_manual write Setnf_manual;
    property servidor     : WideString read Fservidor write Setservidor;
    property fabricacao     : WideString read Ffabricacao write Setfabricacao;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property id_prescritor     : Integer read Fid_prescritor write Setid_prescritor;
    property tipo_receituario     : WideString read Ftipo_receituario write Settipo_receituario;
    property notificacao     : WideString read Fnotificacao write Setnotificacao;
    property fpb     : Integer read Ffpb write Setfpb;
    property fpb_parcela_ms     : Double read Ffpb_parcela_ms write Setfpb_parcela_ms;
    property vl_custo_prod     : Double read Fvl_custo_prod write Setvl_custo_prod;
    property vl_custo_serv     : Double read Fvl_custo_serv write Setvl_custo_serv;
    property produtor_ativo     : WideString read Fprodutor_ativo write Setprodutor_ativo;
    property nfe_placa     : WideString read Fnfe_placa write Setnfe_placa;
    property reativacao     : Boolean read Freativacao write Setreativacao;
    property venda_bloqueada     : WideString read Fvenda_bloqueada write Setvenda_bloqueada;
    property codigo_liberacao     : Integer read Fcodigo_liberacao write Setcodigo_liberacao;
    property id_uniao     : Integer read Fid_uniao write Setid_uniao;
    property data_saidanf     : TDateTime read Fdata_saidanf write Setdata_saidanf;
    property hora_saidanf     : WideString read Fhora_saidanf write Sethora_saidanf;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property bc_st     : WideString read Fbc_st write Setbc_st;
    property romaneio     : WideString read Fromaneio write Setromaneio;
    property ecf     : WideString read Fecf write Setecf;
    property nfce     : WideString read Fnfce write Setnfce;
    property nfce_chave     : WideString read Fnfce_chave write Setnfce_chave;
    property nfce_protocolo     : WideString read Fnfce_protocolo write Setnfce_protocolo;
    property vl_custo     : Double read Fvl_custo write Setvl_custo;
    property pedido_alm     : Boolean read Fpedido_alm write Setpedido_alm;
    property id_obra     : Integer read Fid_obra write Setid_obra;
    property id_estimativa     : Integer read Fid_estimativa write Setid_estimativa;
    property id_motorista     : Integer read Fid_motorista write Setid_motorista;
    property id_veiculo     : Integer read Fid_veiculo write Setid_veiculo;
    property id_pedido_carregamento     : Integer read Fid_pedido_carregamento write Setid_pedido_carregamento;
    property id_funcionario_faturista     : Integer read Fid_funcionario_faturista write Setid_funcionario_faturista;
    property id_funcionario_producao     : Integer read Fid_funcionario_producao write Setid_funcionario_producao;
    property descartaveis     : Boolean read Fdescartaveis write Setdescartaveis;
    property nfce_chave_cnt     : WideString read Fnfce_chave_cnt write Setnfce_chave_cnt;
    property id_os     : Integer read Fid_os write Setid_os;
    property nfe_protocolo_cancelada     : WideString read Fnfe_protocolo_cancelada write Setnfe_protocolo_cancelada;
    property busca     : WideString read Fbusca write Setbusca;
    property troca     : WideString read Ftroca write Settroca;
    property id_responsavel_tecnico     : Integer read Fid_responsavel_tecnico write Setid_responsavel_tecnico;
    property nf_uniao     : Boolean read Fnf_uniao write Setnf_uniao;
    property nfce_protocolo_cancelada     : WideString read Fnfce_protocolo_cancelada write Setnfce_protocolo_cancelada;
    property vl_acrescimo     : Double read Fvl_acrescimo write Setvl_acrescimo;
    property id_contacorrente     : Integer read Fid_contacorrente write Setid_contacorrente;
    property impri_orca     : Boolean read Fimpri_orca write Setimpri_orca;
    property nf_denegada     : Boolean read Fnf_denegada write Setnf_denegada;
    property num_pedido_compra     : WideString read Fnum_pedido_compra write Setnum_pedido_compra;
    property data_cancelamento     : indefinido read Fdata_cancelamento write Setdata_cancelamento;
    property id_usuario_cancelamento     : Integer read Fid_usuario_cancelamento write Setid_usuario_cancelamento;
    property uniao     : Boolean read Funiao write Setuniao;
    property data_protocolo_nfe     : indefinido read Fdata_protocolo_nfe write Setdata_protocolo_nfe;
    property id_cliente_inscricao_estadual     : Integer read Fid_cliente_inscricao_estadual write Setid_cliente_inscricao_estadual;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculostransporte.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculostransporte) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPveiculostransporte(Model).id;
Self.Fid_empresa         := TModelERPveiculostransporte(Model).id_empresa;
Self.Fnota         := TModelERPveiculostransporte(Model).nota;
Self.Fcupom         := TModelERPveiculostransporte(Model).cupom;
Self.Fdata_emissao         := TModelERPveiculostransporte(Model).data_emissao;
Self.Fhora         := TModelERPveiculostransporte(Model).hora;
Self.Fdata_saida         := TModelERPveiculostransporte(Model).data_saida;
Self.Fgerado         := TModelERPveiculostransporte(Model).gerado;
Self.Fid_cliente         := TModelERPveiculostransporte(Model).id_cliente;
Self.Fnome_cliente         := TModelERPveiculostransporte(Model).nome_cliente;
Self.Fid_vendedor         := TModelERPveiculostransporte(Model).id_vendedor;
Self.Fid_forma         := TModelERPveiculostransporte(Model).id_forma;
Self.Fid_conta         := TModelERPveiculostransporte(Model).id_conta;
Self.Fid_caixa         := TModelERPveiculostransporte(Model).id_caixa;
Self.Fid_transportadora         := TModelERPveiculostransporte(Model).id_transportadora;
Self.Fid_funcionario         := TModelERPveiculostransporte(Model).id_funcionario;
Self.Fid_credito         := TModelERPveiculostransporte(Model).id_credito;
Self.Fvl_produto         := TModelERPveiculostransporte(Model).vl_produto;
Self.Fvl_servico         := TModelERPveiculostransporte(Model).vl_servico;
Self.Fvl_desconto         := TModelERPveiculostransporte(Model).vl_desconto;
Self.Fvl_frete         := TModelERPveiculostransporte(Model).vl_frete;
Self.Fvl_seguro         := TModelERPveiculostransporte(Model).vl_seguro;
Self.Fvl_outras         := TModelERPveiculostransporte(Model).vl_outras;
Self.Fvl_pago         := TModelERPveiculostransporte(Model).vl_pago;
Self.Fvl_troco         := TModelERPveiculostransporte(Model).vl_troco;
Self.Fvl_total         := TModelERPveiculostransporte(Model).vl_total;
Self.Fvl_icms         := TModelERPveiculostransporte(Model).vl_icms;
Self.Fbase_icms         := TModelERPveiculostransporte(Model).base_icms;
Self.Fbase_ipi         := TModelERPveiculostransporte(Model).base_ipi;
Self.Fbase_substituicao         := TModelERPveiculostransporte(Model).base_substituicao;
Self.Fqtd_itens         := TModelERPveiculostransporte(Model).qtd_itens;
Self.Fpercentual_desconto         := TModelERPveiculostransporte(Model).percentual_desconto;
Self.Fpeso_bruto         := TModelERPveiculostransporte(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPveiculostransporte(Model).peso_liquido;
Self.Fid_cfop         := TModelERPveiculostransporte(Model).id_cfop;
Self.Frateio         := TModelERPveiculostransporte(Model).rateio;
Self.Fduplicatacheque         := TModelERPveiculostransporte(Model).duplicatacheque;
Self.Fparcelas         := TModelERPveiculostransporte(Model).parcelas;
Self.Fvl_juros         := TModelERPveiculostransporte(Model).vl_juros;
Self.Fcomentrada         := TModelERPveiculostransporte(Model).comentrada;
Self.Fintervalo         := TModelERPveiculostransporte(Model).intervalo;
Self.Fdia         := TModelERPveiculostransporte(Model).dia;
Self.Fcotacao         := TModelERPveiculostransporte(Model).cotacao;
Self.Fid_usuario_desconto         := TModelERPveiculostransporte(Model).id_usuario_desconto;
Self.Fpercentual_usuario_desconto         := TModelERPveiculostransporte(Model).percentual_usuario_desconto;
Self.Fid_rota         := TModelERPveiculostransporte(Model).id_rota;
Self.Fid_tabela_preco         := TModelERPveiculostransporte(Model).id_tabela_preco;
Self.Fobs         := TModelERPveiculostransporte(Model).obs;
Self.Fjuros         := TModelERPveiculostransporte(Model).juros;
Self.Fclick         := TModelERPveiculostransporte(Model).click;
Self.Fplaca         := TModelERPveiculostransporte(Model).placa;
Self.Fid_usuario         := TModelERPveiculostransporte(Model).id_usuario;
Self.Fmotorista         := TModelERPveiculostransporte(Model).motorista;
Self.Fuso         := TModelERPveiculostransporte(Model).uso;
Self.Fdevolucao         := TModelERPveiculostransporte(Model).devolucao;
Self.Fcancelada         := TModelERPveiculostransporte(Model).cancelada;
Self.Fexpedicao         := TModelERPveiculostransporte(Model).expedicao;
Self.Fid_carga         := TModelERPveiculostransporte(Model).id_carga;
Self.Fvl_iss         := TModelERPveiculostransporte(Model).vl_iss;
Self.Fid_palm         := TModelERPveiculostransporte(Model).id_palm;
Self.Fid_coringa         := TModelERPveiculostransporte(Model).id_coringa;
Self.Fentregafutura         := TModelERPveiculostransporte(Model).entregafutura;
Self.Fid_supervisor         := TModelERPveiculostransporte(Model).id_supervisor;
Self.Fnfe         := TModelERPveiculostransporte(Model).nfe;
Self.Fnfe_chave         := TModelERPveiculostransporte(Model).nfe_chave;
Self.Fvolume_quantidade         := TModelERPveiculostransporte(Model).volume_quantidade;
Self.Fvolume_numero         := TModelERPveiculostransporte(Model).volume_numero;
Self.Fespecie         := TModelERPveiculostransporte(Model).especie;
Self.Fvl_icmsst         := TModelERPveiculostransporte(Model).vl_icmsst;
Self.Fvl_devolucao         := TModelERPveiculostransporte(Model).vl_devolucao;
Self.Fnfe_protocolo         := TModelERPveiculostransporte(Model).nfe_protocolo;
Self.Fbonificacao         := TModelERPveiculostransporte(Model).bonificacao;
Self.Ffrete         := TModelERPveiculostransporte(Model).frete;
Self.Fserie         := TModelERPveiculostransporte(Model).serie;
Self.Fnf_manual         := TModelERPveiculostransporte(Model).nf_manual;
Self.Fservidor         := TModelERPveiculostransporte(Model).servidor;
Self.Ffabricacao         := TModelERPveiculostransporte(Model).fabricacao;
Self.Fpis         := TModelERPveiculostransporte(Model).pis;
Self.Fcofins         := TModelERPveiculostransporte(Model).cofins;
Self.Fid_prescritor         := TModelERPveiculostransporte(Model).id_prescritor;
Self.Ftipo_receituario         := TModelERPveiculostransporte(Model).tipo_receituario;
Self.Fnotificacao         := TModelERPveiculostransporte(Model).notificacao;
Self.Ffpb         := TModelERPveiculostransporte(Model).fpb;
Self.Ffpb_parcela_ms         := TModelERPveiculostransporte(Model).fpb_parcela_ms;
Self.Fvl_custo_prod         := TModelERPveiculostransporte(Model).vl_custo_prod;
Self.Fvl_custo_serv         := TModelERPveiculostransporte(Model).vl_custo_serv;
Self.Fprodutor_ativo         := TModelERPveiculostransporte(Model).produtor_ativo;
Self.Fnfe_placa         := TModelERPveiculostransporte(Model).nfe_placa;
Self.Freativacao         := TModelERPveiculostransporte(Model).reativacao;
Self.Fvenda_bloqueada         := TModelERPveiculostransporte(Model).venda_bloqueada;
Self.Fcodigo_liberacao         := TModelERPveiculostransporte(Model).codigo_liberacao;
Self.Fid_uniao         := TModelERPveiculostransporte(Model).id_uniao;
Self.Fdata_saidanf         := TModelERPveiculostransporte(Model).data_saidanf;
Self.Fhora_saidanf         := TModelERPveiculostransporte(Model).hora_saidanf;
Self.Fid_movimento         := TModelERPveiculostransporte(Model).id_movimento;
Self.Fid_cupons         := TModelERPveiculostransporte(Model).id_cupons;
Self.Fbc_st         := TModelERPveiculostransporte(Model).bc_st;
Self.Fromaneio         := TModelERPveiculostransporte(Model).romaneio;
Self.Fecf         := TModelERPveiculostransporte(Model).ecf;
Self.Fnfce         := TModelERPveiculostransporte(Model).nfce;
Self.Fnfce_chave         := TModelERPveiculostransporte(Model).nfce_chave;
Self.Fnfce_protocolo         := TModelERPveiculostransporte(Model).nfce_protocolo;
Self.Fvl_custo         := TModelERPveiculostransporte(Model).vl_custo;
Self.Fpedido_alm         := TModelERPveiculostransporte(Model).pedido_alm;
Self.Fid_obra         := TModelERPveiculostransporte(Model).id_obra;
Self.Fid_estimativa         := TModelERPveiculostransporte(Model).id_estimativa;
Self.Fid_motorista         := TModelERPveiculostransporte(Model).id_motorista;
Self.Fid_veiculo         := TModelERPveiculostransporte(Model).id_veiculo;
Self.Fid_pedido_carregamento         := TModelERPveiculostransporte(Model).id_pedido_carregamento;
Self.Fid_funcionario_faturista         := TModelERPveiculostransporte(Model).id_funcionario_faturista;
Self.Fid_funcionario_producao         := TModelERPveiculostransporte(Model).id_funcionario_producao;
Self.Fdescartaveis         := TModelERPveiculostransporte(Model).descartaveis;
Self.Fnfce_chave_cnt         := TModelERPveiculostransporte(Model).nfce_chave_cnt;
Self.Fid_os         := TModelERPveiculostransporte(Model).id_os;
Self.Fnfe_protocolo_cancelada         := TModelERPveiculostransporte(Model).nfe_protocolo_cancelada;
Self.Fbusca         := TModelERPveiculostransporte(Model).busca;
Self.Ftroca         := TModelERPveiculostransporte(Model).troca;
Self.Fid_responsavel_tecnico         := TModelERPveiculostransporte(Model).id_responsavel_tecnico;
Self.Fnf_uniao         := TModelERPveiculostransporte(Model).nf_uniao;
Self.Fnfce_protocolo_cancelada         := TModelERPveiculostransporte(Model).nfce_protocolo_cancelada;
Self.Fvl_acrescimo         := TModelERPveiculostransporte(Model).vl_acrescimo;
Self.Fid_contacorrente         := TModelERPveiculostransporte(Model).id_contacorrente;
Self.Fimpri_orca         := TModelERPveiculostransporte(Model).impri_orca;
Self.Fnf_denegada         := TModelERPveiculostransporte(Model).nf_denegada;
Self.Fnum_pedido_compra         := TModelERPveiculostransporte(Model).num_pedido_compra;
Self.Fdata_cancelamento         := TModelERPveiculostransporte(Model).data_cancelamento;
Self.Fid_usuario_cancelamento         := TModelERPveiculostransporte(Model).id_usuario_cancelamento;
Self.Funiao         := TModelERPveiculostransporte(Model).uniao;
Self.Fdata_protocolo_nfe         := TModelERPveiculostransporte(Model).data_protocolo_nfe;
Self.Fid_cliente_inscricao_estadual         := TModelERPveiculostransporte(Model).id_cliente_inscricao_estadual;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculostransporte.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculostransporte.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculostransporte.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPveiculostransporte.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdata_saida(const Value: Boolean);   
begin                
  Fdata_saida := Value;   
end;                 

procedure TModelERPveiculostransporte.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_transportadora(const Value: Boolean);   
begin                
  Fid_transportadora := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_seguro(const Value: Boolean);   
begin                
  Fvl_seguro := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_troco(const Value: Boolean);   
begin                
  Fvl_troco := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbase_ipi(const Value: Boolean);   
begin                
  Fbase_ipi := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setqtd_itens(const Value: Boolean);   
begin                
  Fqtd_itens := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPveiculostransporte.Setrateio(const Value: Boolean);   
begin                
  Frateio := Value;   
end;                 

procedure TModelERPveiculostransporte.Setduplicatacheque(const Value: Boolean);   
begin                
  Fduplicatacheque := Value;   
end;                 

procedure TModelERPveiculostransporte.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcomentrada(const Value: Boolean);   
begin                
  Fcomentrada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdia(const Value: Boolean);   
begin                
  Fdia := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcotacao(const Value: Boolean);   
begin                
  Fcotacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_usuario_desconto(const Value: Boolean);   
begin                
  Fid_usuario_desconto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpercentual_usuario_desconto(const Value: Boolean);   
begin                
  Fpercentual_usuario_desconto := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_rota(const Value: Boolean);   
begin                
  Fid_rota := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_tabela_preco(const Value: Boolean);   
begin                
  Fid_tabela_preco := Value;   
end;                 

procedure TModelERPveiculostransporte.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPveiculostransporte.Setjuros(const Value: Boolean);   
begin                
  Fjuros := Value;   
end;                 

procedure TModelERPveiculostransporte.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPveiculostransporte.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPveiculostransporte.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPveiculostransporte.Setuso(const Value: Boolean);   
begin                
  Fuso := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_carga(const Value: Boolean);   
begin                
  Fid_carga := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_iss(const Value: Boolean);   
begin                
  Fvl_iss := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_palm(const Value: Boolean);   
begin                
  Fid_palm := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_coringa(const Value: Boolean);   
begin                
  Fid_coringa := Value;   
end;                 

procedure TModelERPveiculostransporte.Setentregafutura(const Value: Boolean);   
begin                
  Fentregafutura := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_supervisor(const Value: Boolean);   
begin                
  Fid_supervisor := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvolume_quantidade(const Value: Boolean);   
begin                
  Fvolume_quantidade := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvolume_numero(const Value: Boolean);   
begin                
  Fvolume_numero := Value;   
end;                 

procedure TModelERPveiculostransporte.Setespecie(const Value: Boolean);   
begin                
  Fespecie := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_devolucao(const Value: Boolean);   
begin                
  Fvl_devolucao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfe_protocolo(const Value: Boolean);   
begin                
  Fnfe_protocolo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbonificacao(const Value: Boolean);   
begin                
  Fbonificacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setfrete(const Value: Boolean);   
begin                
  Ffrete := Value;   
end;                 

procedure TModelERPveiculostransporte.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnf_manual(const Value: Boolean);   
begin                
  Fnf_manual := Value;   
end;                 

procedure TModelERPveiculostransporte.Setservidor(const Value: Boolean);   
begin                
  Fservidor := Value;   
end;                 

procedure TModelERPveiculostransporte.Setfabricacao(const Value: Boolean);   
begin                
  Ffabricacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_prescritor(const Value: Boolean);   
begin                
  Fid_prescritor := Value;   
end;                 

procedure TModelERPveiculostransporte.Settipo_receituario(const Value: Boolean);   
begin                
  Ftipo_receituario := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnotificacao(const Value: Boolean);   
begin                
  Fnotificacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setfpb(const Value: Boolean);   
begin                
  Ffpb := Value;   
end;                 

procedure TModelERPveiculostransporte.Setfpb_parcela_ms(const Value: Boolean);   
begin                
  Ffpb_parcela_ms := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_custo_prod(const Value: Boolean);   
begin                
  Fvl_custo_prod := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_custo_serv(const Value: Boolean);   
begin                
  Fvl_custo_serv := Value;   
end;                 

procedure TModelERPveiculostransporte.Setprodutor_ativo(const Value: Boolean);   
begin                
  Fprodutor_ativo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfe_placa(const Value: Boolean);   
begin                
  Fnfe_placa := Value;   
end;                 

procedure TModelERPveiculostransporte.Setreativacao(const Value: Boolean);   
begin                
  Freativacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvenda_bloqueada(const Value: Boolean);   
begin                
  Fvenda_bloqueada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setcodigo_liberacao(const Value: Boolean);   
begin                
  Fcodigo_liberacao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_uniao(const Value: Boolean);   
begin                
  Fid_uniao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdata_saidanf(const Value: Boolean);   
begin                
  Fdata_saidanf := Value;   
end;                 

procedure TModelERPveiculostransporte.Sethora_saidanf(const Value: Boolean);   
begin                
  Fhora_saidanf := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPveiculostransporte.Setromaneio(const Value: Boolean);   
begin                
  Fromaneio := Value;   
end;                 

procedure TModelERPveiculostransporte.Setecf(const Value: Boolean);   
begin                
  Fecf := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfce_chave(const Value: Boolean);   
begin                
  Fnfce_chave := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfce_protocolo(const Value: Boolean);   
begin                
  Fnfce_protocolo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_custo(const Value: Boolean);   
begin                
  Fvl_custo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setpedido_alm(const Value: Boolean);   
begin                
  Fpedido_alm := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_obra(const Value: Boolean);   
begin                
  Fid_obra := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_estimativa(const Value: Boolean);   
begin                
  Fid_estimativa := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_motorista(const Value: Boolean);   
begin                
  Fid_motorista := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_veiculo(const Value: Boolean);   
begin                
  Fid_veiculo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_pedido_carregamento(const Value: Boolean);   
begin                
  Fid_pedido_carregamento := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_funcionario_faturista(const Value: Boolean);   
begin                
  Fid_funcionario_faturista := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_funcionario_producao(const Value: Boolean);   
begin                
  Fid_funcionario_producao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdescartaveis(const Value: Boolean);   
begin                
  Fdescartaveis := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfce_chave_cnt(const Value: Boolean);   
begin                
  Fnfce_chave_cnt := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfe_protocolo_cancelada(const Value: Boolean);   
begin                
  Fnfe_protocolo_cancelada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setbusca(const Value: Boolean);   
begin                
  Fbusca := Value;   
end;                 

procedure TModelERPveiculostransporte.Settroca(const Value: Boolean);   
begin                
  Ftroca := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_responsavel_tecnico(const Value: Boolean);   
begin                
  Fid_responsavel_tecnico := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnf_uniao(const Value: Boolean);   
begin                
  Fnf_uniao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnfce_protocolo_cancelada(const Value: Boolean);   
begin                
  Fnfce_protocolo_cancelada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setvl_acrescimo(const Value: Boolean);   
begin                
  Fvl_acrescimo := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPveiculostransporte.Setimpri_orca(const Value: Boolean);   
begin                
  Fimpri_orca := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnf_denegada(const Value: Boolean);   
begin                
  Fnf_denegada := Value;   
end;                 

procedure TModelERPveiculostransporte.Setnum_pedido_compra(const Value: Boolean);   
begin                
  Fnum_pedido_compra := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdata_cancelamento(const Value: Boolean);   
begin                
  Fdata_cancelamento := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_usuario_cancelamento(const Value: Boolean);   
begin                
  Fid_usuario_cancelamento := Value;   
end;                 

procedure TModelERPveiculostransporte.Setuniao(const Value: Boolean);   
begin                
  Funiao := Value;   
end;                 

procedure TModelERPveiculostransporte.Setdata_protocolo_nfe(const Value: Boolean);   
begin                
  Fdata_protocolo_nfe := Value;   
end;                 

procedure TModelERPveiculostransporte.Setid_cliente_inscricao_estadual(const Value: Boolean);   
begin                
  Fid_cliente_inscricao_estadual := Value;   
end;                 


end.
