unit Model.ERP.venda_entregaitem;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaentregaitem = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Funidade : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fnro_garantia : WideString;
    Fdata_garantia : TDateTime;
    Fid_grupo : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_fornecedor : Integer;
    Fid_vendedor : Integer;
    Fst : WideString;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fdiferido : WideString;
    Fcancelada : WideString;
    Fclick : Boolean;
    Festoque : WideString;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fdevolucao : WideString;
    Fid_planocelular : Integer;
    Fnro_celular : WideString;
    Ftipoplano : WideString;
    Fvalor_plano : Double;
    Fvalor_recarga : Double;
    Fdata_ativacao : TDateTime;
    Fmigracao_prepos : WideString;
    Ftroca_pospago : WideString;
    Fexpedicao : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fid_carga : Integer;
    Fqtd_entregue : Double;
    Fvl_icmsst : Double;
    Fvlbc_icms : Double;
    Fbase_substituicao : Double;
    Fpis : Double;
    Fcofins : Double;
    Flote : WideString;
    Ffpb_posologia : Double;
    Ffpb_dias : Double;
    Fcst : WideString;
    Fvl_custo : Double;
    Fprodutor_ativo : WideString;
    Fbico : WideString;
    Fipi : Double;
    Festoque_saida : WideString;
    Fquantidade_devolucao : Double;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fcfop : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fbc_st : WideString;
    Fid_pedido_alm : Integer;
    Fid_produto_alm : Integer;
    Fvl_fcp_uf_dest : Double;
    Fvl_icms_uf_dest : Double;
    Fvl_icms_uf_rem : Double;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fqdt_devolvida : Double;
    Fcfop_externo : Integer;
    Funitario_original : Double;
    Fvl_unitario_itens_caixa : Double;
    Fpreco_venda : Double;
    Fpercentual_desconto_item : Double;
    Fpercentual_desconto : Double;
    Fpromocao : Boolean;
    Fpercentual_desc_definido : Double;
    Fid_produto_pai_kit : Integer;
    Fobs : WideString;
    Fvl_outro : Double;
    Fqtd_caixa : Double;
    Fcodigo_ean : WideString;
    Fid_venda_antiga : Integer;
    Funitario_caixa : Double;
    Funidade_tributavel : WideString;
    Fconsiderar_preco_caixa : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setnro_garantia(const Value: WideString);
    procedure Setdata_garantia(const Value: TDateTime);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Seticms_cupom(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_ipi(const Value: Double);
    procedure Setdiferido(const Value: WideString);
    procedure Setcancelada(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setestoque(const Value: WideString);
    procedure Setitem(const Value: Integer);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: WideString);
    procedure Settam_grade(const Value: WideString);
    procedure Setdevolucao(const Value: WideString);
    procedure Setid_planocelular(const Value: Integer);
    procedure Setnro_celular(const Value: WideString);
    procedure Settipoplano(const Value: WideString);
    procedure Setvalor_plano(const Value: Double);
    procedure Setvalor_recarga(const Value: Double);
    procedure Setdata_ativacao(const Value: TDateTime);
    procedure Setmigracao_prepos(const Value: WideString);
    procedure Settroca_pospago(const Value: WideString);
    procedure Setexpedicao(const Value: WideString);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setid_carga(const Value: Integer);
    procedure Setqtd_entregue(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setvlbc_icms(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setlote(const Value: WideString);
    procedure Setfpb_posologia(const Value: Double);
    procedure Setfpb_dias(const Value: Double);
    procedure Setcst(const Value: WideString);
    procedure Setvl_custo(const Value: Double);
    procedure Setprodutor_ativo(const Value: WideString);
    procedure Setbico(const Value: WideString);
    procedure Setipi(const Value: Double);
    procedure Setestoque_saida(const Value: WideString);
    procedure Setquantidade_devolucao(const Value: Double);
    procedure Settaxa_ibpt(const Value: Double);
    procedure Settaxa_valor(const Value: Double);
    procedure Setcfop(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setbc_st(const Value: WideString);
    procedure Setid_pedido_alm(const Value: Integer);
    procedure Setid_produto_alm(const Value: Integer);
    procedure Setvl_fcp_uf_dest(const Value: Double);
    procedure Setvl_icms_uf_dest(const Value: Double);
    procedure Setvl_icms_uf_rem(const Value: Double);
    procedure Settaxa_federal(const Value: Double);
    procedure Settaxa_estadual(const Value: Double);
    procedure Settaxa_municipal(const Value: Double);
    procedure Setvalor_federal(const Value: Double);
    procedure Setvalor_estadual(const Value: Double);
    procedure Setvalor_municipal(const Value: Double);
    procedure Setqdt_devolvida(const Value: Double);
    procedure Setcfop_externo(const Value: Integer);
    procedure Setunitario_original(const Value: Double);
    procedure Setvl_unitario_itens_caixa(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpercentual_desconto_item(const Value: Double);
    procedure Setpercentual_desconto(const Value: Double);
    procedure Setpromocao(const Value: Boolean);
    procedure Setpercentual_desc_definido(const Value: Double);
    procedure Setid_produto_pai_kit(const Value: Integer);
    procedure Setobs(const Value: WideString);
    procedure Setvl_outro(const Value: Double);
    procedure Setqtd_caixa(const Value: Double);
    procedure Setcodigo_ean(const Value: WideString);
    procedure Setid_venda_antiga(const Value: Integer);
    procedure Setunitario_caixa(const Value: Double);
    procedure Setunidade_tributavel(const Value: WideString);
    procedure Setconsiderar_preco_caixa(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property data     : TDateTime read Fdata write Setdata;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property nro_garantia     : WideString read Fnro_garantia write Setnro_garantia;
    property data_garantia     : TDateTime read Fdata_garantia write Setdata_garantia;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property icms_cupom     : Double read Ficms_cupom write Seticms_cupom;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property diferido     : WideString read Fdiferido write Setdiferido;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property click     : Boolean read Fclick write Setclick;
    property estoque     : WideString read Festoque write Setestoque;
    property item     : Integer read Fitem write Setitem;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : WideString read Fcor_grade write Setcor_grade;
    property tam_grade     : WideString read Ftam_grade write Settam_grade;
    property devolucao     : WideString read Fdevolucao write Setdevolucao;
    property id_planocelular     : Integer read Fid_planocelular write Setid_planocelular;
    property nro_celular     : WideString read Fnro_celular write Setnro_celular;
    property tipoplano     : WideString read Ftipoplano write Settipoplano;
    property valor_plano     : Double read Fvalor_plano write Setvalor_plano;
    property valor_recarga     : Double read Fvalor_recarga write Setvalor_recarga;
    property data_ativacao     : TDateTime read Fdata_ativacao write Setdata_ativacao;
    property migracao_prepos     : WideString read Fmigracao_prepos write Setmigracao_prepos;
    property troca_pospago     : WideString read Ftroca_pospago write Settroca_pospago;
    property expedicao     : WideString read Fexpedicao write Setexpedicao;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property id_carga     : Integer read Fid_carga write Setid_carga;
    property qtd_entregue     : Double read Fqtd_entregue write Setqtd_entregue;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property vlbc_icms     : Double read Fvlbc_icms write Setvlbc_icms;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property lote     : WideString read Flote write Setlote;
    property fpb_posologia     : Double read Ffpb_posologia write Setfpb_posologia;
    property fpb_dias     : Double read Ffpb_dias write Setfpb_dias;
    property cst     : WideString read Fcst write Setcst;
    property vl_custo     : Double read Fvl_custo write Setvl_custo;
    property produtor_ativo     : WideString read Fprodutor_ativo write Setprodutor_ativo;
    property bico     : WideString read Fbico write Setbico;
    property ipi     : Double read Fipi write Setipi;
    property estoque_saida     : WideString read Festoque_saida write Setestoque_saida;
    property quantidade_devolucao     : Double read Fquantidade_devolucao write Setquantidade_devolucao;
    property taxa_ibpt     : Double read Ftaxa_ibpt write Settaxa_ibpt;
    property taxa_valor     : Double read Ftaxa_valor write Settaxa_valor;
    property cfop     : Integer read Fcfop write Setcfop;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property bc_st     : WideString read Fbc_st write Setbc_st;
    property id_pedido_alm     : Integer read Fid_pedido_alm write Setid_pedido_alm;
    property id_produto_alm     : Integer read Fid_produto_alm write Setid_produto_alm;
    property vl_fcp_uf_dest     : Double read Fvl_fcp_uf_dest write Setvl_fcp_uf_dest;
    property vl_icms_uf_dest     : Double read Fvl_icms_uf_dest write Setvl_icms_uf_dest;
    property vl_icms_uf_rem     : Double read Fvl_icms_uf_rem write Setvl_icms_uf_rem;
    property taxa_federal     : Double read Ftaxa_federal write Settaxa_federal;
    property taxa_estadual     : Double read Ftaxa_estadual write Settaxa_estadual;
    property taxa_municipal     : Double read Ftaxa_municipal write Settaxa_municipal;
    property valor_federal     : Double read Fvalor_federal write Setvalor_federal;
    property valor_estadual     : Double read Fvalor_estadual write Setvalor_estadual;
    property valor_municipal     : Double read Fvalor_municipal write Setvalor_municipal;
    property qdt_devolvida     : Double read Fqdt_devolvida write Setqdt_devolvida;
    property cfop_externo     : Integer read Fcfop_externo write Setcfop_externo;
    property unitario_original     : Double read Funitario_original write Setunitario_original;
    property vl_unitario_itens_caixa     : Double read Fvl_unitario_itens_caixa write Setvl_unitario_itens_caixa;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property percentual_desconto_item     : Double read Fpercentual_desconto_item write Setpercentual_desconto_item;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;
    property promocao     : Boolean read Fpromocao write Setpromocao;
    property percentual_desc_definido     : Double read Fpercentual_desc_definido write Setpercentual_desc_definido;
    property id_produto_pai_kit     : Integer read Fid_produto_pai_kit write Setid_produto_pai_kit;
    property obs     : WideString read Fobs write Setobs;
    property vl_outro     : Double read Fvl_outro write Setvl_outro;
    property qtd_caixa     : Double read Fqtd_caixa write Setqtd_caixa;
    property codigo_ean     : WideString read Fcodigo_ean write Setcodigo_ean;
    property id_venda_antiga     : Integer read Fid_venda_antiga write Setid_venda_antiga;
    property unitario_caixa     : Double read Funitario_caixa write Setunitario_caixa;
    property unidade_tributavel     : WideString read Funidade_tributavel write Setunidade_tributavel;
    property considerar_preco_caixa     : Boolean read Fconsiderar_preco_caixa write Setconsiderar_preco_caixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaentregaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaentregaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaentregaitem(Model).id;
Self.Fid_venda         := TModelERPvendaentregaitem(Model).id_venda;
Self.Fid_empresa         := TModelERPvendaentregaitem(Model).id_empresa;
Self.Fid_produto         := TModelERPvendaentregaitem(Model).id_produto;
Self.Fnome_produto         := TModelERPvendaentregaitem(Model).nome_produto;
Self.Fdata         := TModelERPvendaentregaitem(Model).data;
Self.Funidade         := TModelERPvendaentregaitem(Model).unidade;
Self.Fquantidade         := TModelERPvendaentregaitem(Model).quantidade;
Self.Fvl_unitario         := TModelERPvendaentregaitem(Model).vl_unitario;
Self.Fvl_desconto         := TModelERPvendaentregaitem(Model).vl_desconto;
Self.Fvl_total         := TModelERPvendaentregaitem(Model).vl_total;
Self.Fnro_garantia         := TModelERPvendaentregaitem(Model).nro_garantia;
Self.Fdata_garantia         := TModelERPvendaentregaitem(Model).data_garantia;
Self.Fid_grupo         := TModelERPvendaentregaitem(Model).id_grupo;
Self.Fid_funcionario         := TModelERPvendaentregaitem(Model).id_funcionario;
Self.Fid_cliente         := TModelERPvendaentregaitem(Model).id_cliente;
Self.Fid_fornecedor         := TModelERPvendaentregaitem(Model).id_fornecedor;
Self.Fid_vendedor         := TModelERPvendaentregaitem(Model).id_vendedor;
Self.Fst         := TModelERPvendaentregaitem(Model).st;
Self.Ficms         := TModelERPvendaentregaitem(Model).icms;
Self.Ficms_cupom         := TModelERPvendaentregaitem(Model).icms_cupom;
Self.Fvl_icms         := TModelERPvendaentregaitem(Model).vl_icms;
Self.Fvl_ipi         := TModelERPvendaentregaitem(Model).vl_ipi;
Self.Fdiferido         := TModelERPvendaentregaitem(Model).diferido;
Self.Fcancelada         := TModelERPvendaentregaitem(Model).cancelada;
Self.Fclick         := TModelERPvendaentregaitem(Model).click;
Self.Festoque         := TModelERPvendaentregaitem(Model).estoque;
Self.Fitem         := TModelERPvendaentregaitem(Model).item;
Self.Fid_grade         := TModelERPvendaentregaitem(Model).id_grade;
Self.Fcor_grade         := TModelERPvendaentregaitem(Model).cor_grade;
Self.Ftam_grade         := TModelERPvendaentregaitem(Model).tam_grade;
Self.Fdevolucao         := TModelERPvendaentregaitem(Model).devolucao;
Self.Fid_planocelular         := TModelERPvendaentregaitem(Model).id_planocelular;
Self.Fnro_celular         := TModelERPvendaentregaitem(Model).nro_celular;
Self.Ftipoplano         := TModelERPvendaentregaitem(Model).tipoplano;
Self.Fvalor_plano         := TModelERPvendaentregaitem(Model).valor_plano;
Self.Fvalor_recarga         := TModelERPvendaentregaitem(Model).valor_recarga;
Self.Fdata_ativacao         := TModelERPvendaentregaitem(Model).data_ativacao;
Self.Fmigracao_prepos         := TModelERPvendaentregaitem(Model).migracao_prepos;
Self.Ftroca_pospago         := TModelERPvendaentregaitem(Model).troca_pospago;
Self.Fexpedicao         := TModelERPvendaentregaitem(Model).expedicao;
Self.Fpeso_bruto         := TModelERPvendaentregaitem(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPvendaentregaitem(Model).peso_liquido;
Self.Fid_carga         := TModelERPvendaentregaitem(Model).id_carga;
Self.Fqtd_entregue         := TModelERPvendaentregaitem(Model).qtd_entregue;
Self.Fvl_icmsst         := TModelERPvendaentregaitem(Model).vl_icmsst;
Self.Fvlbc_icms         := TModelERPvendaentregaitem(Model).vlbc_icms;
Self.Fbase_substituicao         := TModelERPvendaentregaitem(Model).base_substituicao;
Self.Fpis         := TModelERPvendaentregaitem(Model).pis;
Self.Fcofins         := TModelERPvendaentregaitem(Model).cofins;
Self.Flote         := TModelERPvendaentregaitem(Model).lote;
Self.Ffpb_posologia         := TModelERPvendaentregaitem(Model).fpb_posologia;
Self.Ffpb_dias         := TModelERPvendaentregaitem(Model).fpb_dias;
Self.Fcst         := TModelERPvendaentregaitem(Model).cst;
Self.Fvl_custo         := TModelERPvendaentregaitem(Model).vl_custo;
Self.Fprodutor_ativo         := TModelERPvendaentregaitem(Model).produtor_ativo;
Self.Fbico         := TModelERPvendaentregaitem(Model).bico;
Self.Fipi         := TModelERPvendaentregaitem(Model).ipi;
Self.Festoque_saida         := TModelERPvendaentregaitem(Model).estoque_saida;
Self.Fquantidade_devolucao         := TModelERPvendaentregaitem(Model).quantidade_devolucao;
Self.Ftaxa_ibpt         := TModelERPvendaentregaitem(Model).taxa_ibpt;
Self.Ftaxa_valor         := TModelERPvendaentregaitem(Model).taxa_valor;
Self.Fcfop         := TModelERPvendaentregaitem(Model).cfop;
Self.Fid_movimento         := TModelERPvendaentregaitem(Model).id_movimento;
Self.Fid_cupons         := TModelERPvendaentregaitem(Model).id_cupons;
Self.Fbc_st         := TModelERPvendaentregaitem(Model).bc_st;
Self.Fid_pedido_alm         := TModelERPvendaentregaitem(Model).id_pedido_alm;
Self.Fid_produto_alm         := TModelERPvendaentregaitem(Model).id_produto_alm;
Self.Fvl_fcp_uf_dest         := TModelERPvendaentregaitem(Model).vl_fcp_uf_dest;
Self.Fvl_icms_uf_dest         := TModelERPvendaentregaitem(Model).vl_icms_uf_dest;
Self.Fvl_icms_uf_rem         := TModelERPvendaentregaitem(Model).vl_icms_uf_rem;
Self.Ftaxa_federal         := TModelERPvendaentregaitem(Model).taxa_federal;
Self.Ftaxa_estadual         := TModelERPvendaentregaitem(Model).taxa_estadual;
Self.Ftaxa_municipal         := TModelERPvendaentregaitem(Model).taxa_municipal;
Self.Fvalor_federal         := TModelERPvendaentregaitem(Model).valor_federal;
Self.Fvalor_estadual         := TModelERPvendaentregaitem(Model).valor_estadual;
Self.Fvalor_municipal         := TModelERPvendaentregaitem(Model).valor_municipal;
Self.Fqdt_devolvida         := TModelERPvendaentregaitem(Model).qdt_devolvida;
Self.Fcfop_externo         := TModelERPvendaentregaitem(Model).cfop_externo;
Self.Funitario_original         := TModelERPvendaentregaitem(Model).unitario_original;
Self.Fvl_unitario_itens_caixa         := TModelERPvendaentregaitem(Model).vl_unitario_itens_caixa;
Self.Fpreco_venda         := TModelERPvendaentregaitem(Model).preco_venda;
Self.Fpercentual_desconto_item         := TModelERPvendaentregaitem(Model).percentual_desconto_item;
Self.Fpercentual_desconto         := TModelERPvendaentregaitem(Model).percentual_desconto;
Self.Fpromocao         := TModelERPvendaentregaitem(Model).promocao;
Self.Fpercentual_desc_definido         := TModelERPvendaentregaitem(Model).percentual_desc_definido;
Self.Fid_produto_pai_kit         := TModelERPvendaentregaitem(Model).id_produto_pai_kit;
Self.Fobs         := TModelERPvendaentregaitem(Model).obs;
Self.Fvl_outro         := TModelERPvendaentregaitem(Model).vl_outro;
Self.Fqtd_caixa         := TModelERPvendaentregaitem(Model).qtd_caixa;
Self.Fcodigo_ean         := TModelERPvendaentregaitem(Model).codigo_ean;
Self.Fid_venda_antiga         := TModelERPvendaentregaitem(Model).id_venda_antiga;
Self.Funitario_caixa         := TModelERPvendaentregaitem(Model).unitario_caixa;
Self.Funidade_tributavel         := TModelERPvendaentregaitem(Model).unidade_tributavel;
Self.Fconsiderar_preco_caixa         := TModelERPvendaentregaitem(Model).considerar_preco_caixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaentregaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaentregaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaentregaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setnro_garantia(const Value: Boolean);   
begin                
  Fnro_garantia := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setdata_garantia(const Value: Boolean);   
begin                
  Fdata_garantia := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPvendaentregaitem.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPvendaentregaitem.Seticms_cupom(const Value: Boolean);   
begin                
  Ficms_cupom := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setdiferido(const Value: Boolean);   
begin                
  Fdiferido := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_planocelular(const Value: Boolean);   
begin                
  Fid_planocelular := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setnro_celular(const Value: Boolean);   
begin                
  Fnro_celular := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settipoplano(const Value: Boolean);   
begin                
  Ftipoplano := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvalor_plano(const Value: Boolean);   
begin                
  Fvalor_plano := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvalor_recarga(const Value: Boolean);   
begin                
  Fvalor_recarga := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setdata_ativacao(const Value: Boolean);   
begin                
  Fdata_ativacao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setmigracao_prepos(const Value: Boolean);   
begin                
  Fmigracao_prepos := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settroca_pospago(const Value: Boolean);   
begin                
  Ftroca_pospago := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_carga(const Value: Boolean);   
begin                
  Fid_carga := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setqtd_entregue(const Value: Boolean);   
begin                
  Fqtd_entregue := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvlbc_icms(const Value: Boolean);   
begin                
  Fvlbc_icms := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setfpb_posologia(const Value: Boolean);   
begin                
  Ffpb_posologia := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setfpb_dias(const Value: Boolean);   
begin                
  Ffpb_dias := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_custo(const Value: Boolean);   
begin                
  Fvl_custo := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setprodutor_ativo(const Value: Boolean);   
begin                
  Fprodutor_ativo := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setbico(const Value: Boolean);   
begin                
  Fbico := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setipi(const Value: Boolean);   
begin                
  Fipi := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setestoque_saida(const Value: Boolean);   
begin                
  Festoque_saida := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setquantidade_devolucao(const Value: Boolean);   
begin                
  Fquantidade_devolucao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settaxa_ibpt(const Value: Boolean);   
begin                
  Ftaxa_ibpt := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settaxa_valor(const Value: Boolean);   
begin                
  Ftaxa_valor := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcfop(const Value: Boolean);   
begin                
  Fcfop := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_pedido_alm(const Value: Boolean);   
begin                
  Fid_pedido_alm := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_produto_alm(const Value: Boolean);   
begin                
  Fid_produto_alm := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_fcp_uf_dest(const Value: Boolean);   
begin                
  Fvl_fcp_uf_dest := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_icms_uf_dest(const Value: Boolean);   
begin                
  Fvl_icms_uf_dest := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_icms_uf_rem(const Value: Boolean);   
begin                
  Fvl_icms_uf_rem := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settaxa_federal(const Value: Boolean);   
begin                
  Ftaxa_federal := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settaxa_estadual(const Value: Boolean);   
begin                
  Ftaxa_estadual := Value;   
end;                 

procedure TModelERPvendaentregaitem.Settaxa_municipal(const Value: Boolean);   
begin                
  Ftaxa_municipal := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvalor_federal(const Value: Boolean);   
begin                
  Fvalor_federal := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvalor_estadual(const Value: Boolean);   
begin                
  Fvalor_estadual := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvalor_municipal(const Value: Boolean);   
begin                
  Fvalor_municipal := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setqdt_devolvida(const Value: Boolean);   
begin                
  Fqdt_devolvida := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setunitario_original(const Value: Boolean);   
begin                
  Funitario_original := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_unitario_itens_caixa(const Value: Boolean);   
begin                
  Fvl_unitario_itens_caixa := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpercentual_desconto_item(const Value: Boolean);   
begin                
  Fpercentual_desconto_item := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpromocao(const Value: Boolean);   
begin                
  Fpromocao := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setpercentual_desc_definido(const Value: Boolean);   
begin                
  Fpercentual_desc_definido := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_produto_pai_kit(const Value: Boolean);   
begin                
  Fid_produto_pai_kit := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setvl_outro(const Value: Boolean);   
begin                
  Fvl_outro := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setqtd_caixa(const Value: Boolean);   
begin                
  Fqtd_caixa := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setcodigo_ean(const Value: Boolean);   
begin                
  Fcodigo_ean := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setid_venda_antiga(const Value: Boolean);   
begin                
  Fid_venda_antiga := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setunitario_caixa(const Value: Boolean);   
begin                
  Funitario_caixa := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setunidade_tributavel(const Value: Boolean);   
begin                
  Funidade_tributavel := Value;   
end;                 

procedure TModelERPvendaentregaitem.Setconsiderar_preco_caixa(const Value: Boolean);   
begin                
  Fconsiderar_preco_caixa := Value;   
end;                 


end.
