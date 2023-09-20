unit Model.ERP.print_file;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprintfile = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fid_grupo : Integer;
    Fnome_grupo : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fcodigo_fabricante : WideString;
    Funidade : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fgarantia : WideString;
    Fmodelo : WideString;
    Fcor : WideString;
    Fmargem_lucro : Double;
    Fpreco_custo : Double;
    Fpreco_compra : Double;
    Fpreco_venda : Double;
    Fpreco_venda_ant : Double;
    Flocalizacao : WideString;
    Freferencia : WideString;
    Fcomissao : Double;
    Fembalagem : WideString;
    Fembalagem_itens : Double;
    Ffracionado : WideString;
    Festoque_minimo : Double;
    Festoque_atual : Double;
    Fetiqueta_pdv : WideString;
    Fbalanca_pdv : WideString;
    Fst : WideString;
    Ficms_entrada : Double;
    Ficms_saida : Double;
    Freducao : Double;
    Fipi_entrada : Double;
    Fipi_saida : Double;
    Fdata_ultimacompra : TDateTime;
    Fdata_ultimavenda : TDateTime;
    Fdiferido : WideString;
    Freferencia_tecnica : indefinido;
    Fpromocao : Boolean;
    Fpreco_promocao : Double;
    Fvl_frete : Double;
    Fvl_outras : Double;
    Fvl_substituicao : Double;
    Fvl_margem_lucro : Double;
    Fvl_enc_estadual : Double;
    Fvl_enc_federal : Double;
    Fult_preco_venda : Double;
    Fult_preco_compra : Double;
    Fativo : WideString;
    Fclick : Boolean;
    Fproduto_variado : WideString;
    Fid_planocelular : Integer;
    Ffrete : Double;
    Fsimples : Double;
    Fvl_pmz : Double;
    Fippt : WideString;
    Fiat : WideString;
    Fatacado : Boolean;
    Fquantidade_atacado : Double;
    Fpreco_atacado : Double;
    Festoque_deposito : Double;
    Fpauta : Double;
    Fncm : WideString;
    Fcst : WideString;
    Fcfop_interno : Integer;
    Fcfop_externo : Integer;
    Ftamanho : WideString;
    Fsexo : WideString;
    Fespecial : WideString;
    Fqtd_padrao : Double;
    Festoque_bonificacao : Double;
    Fpiscofins : WideString;
    Ftipo : WideString;
    Freg_ms : WideString;
    Fcsts_ipi : WideString;
    Fvalidade : WideString;
    Fdosagem : Double;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Fean : WideString;
    Fcomissao_servico : Double;
    Fean_caixa : WideString;
    Fid_fabricante : Integer;
    Fkit : indefinido;
    Ficms_atacado : Double;
    Fmargem_lucro_atacado : Double;
    Fpreco_custo_atacado : Double;
    Fpreco_atacado_ant : Double;
    Fcontrole_proprio : Boolean;
    Fvalidade_proprio : Integer;
    Ftabela_pdv : Boolean;
    Fvenda_fracionada : Boolean;
    Fvalor_unitario_item_nf : Double;
    Fid_insumo : Integer;
    Fid_almoxarifado : Integer;
    Fcst_natureza_receita : WideString;
    Fprod_kit : Boolean;
    Fpauta_dentro : Double;
    Fpauta_fora : Double;
    Fbalanca_soft : Boolean;
    Fbalanca_dias : Integer;
    Fbalanca_tecla : Integer;
    Fcodigo_anp : WideString;
    Fid_setor : Integer;
    Fid_secao : Integer;
    Fid_grupos : Integer;
    Fid_subgrupo : Integer;
    Fformacao_preco : WideString;
    Ftrabalha_metro_cubico : Boolean;
    Fean_caixa2 : WideString;
    Fean_caixa3 : WideString;
    Fembalagem_itens2 : Double;
    Fembalagem_itens3 : Double;
    Fvalor_unitario_item_nf2 : Double;
    Fvalor_unitario_item_nf3 : Double;
    Fcusto_financeiro : Double;
    Fcontribuicao_social : Double;
    Fcusto_operacional : Double;
    Fvl_irpj : Double;
    Fcomplemento_aliq : Double;
    Fpreco_custo_nf : Double;
    Fpreco_custo_nf2 : Double;
    Fpreco_custo_nf3 : Double;
    Fgenerico : Boolean;
    Fdesconto_formacao : Double;
    Fcst_piscofins_saida : WideString;
    Fcst_piscofins_entrada : WideString;
    Fid_familia : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;
    Fpreco_compra_alterado : Boolean;
    Fmedida : indefinido;
    Flona : Integer;
    Flote : Boolean;
    Fcontrolar_lote_tipo : WideString;
    Fcontrolar_lote : Boolean;
    Fsem_gtin : Boolean;
    Fpercentual_desconto : Double;
    Fmargem_lucro_b : Double;
    Fvl_margem_lucro_b : Double;
    Fquantidade_kit : Double;
    Fcomplemento : Boolean;
    Fdesconto_zero : Boolean;
    Fmargem_lucro_sugestao : Double;
    Fgera_comissao : Boolean;
    Fvenda_metade : Boolean;
    Fmetade_porcentagem : Double;
    Finadimplencia : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setid_grupo(const Value: Integer);
    procedure Setnome_grupo(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setgarantia(const Value: WideString);
    procedure Setmodelo(const Value: WideString);
    procedure Setcor(const Value: WideString);
    procedure Setmargem_lucro(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_compra(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_venda_ant(const Value: Double);
    procedure Setlocalizacao(const Value: WideString);
    procedure Setreferencia(const Value: WideString);
    procedure Setcomissao(const Value: Double);
    procedure Setembalagem(const Value: WideString);
    procedure Setembalagem_itens(const Value: Double);
    procedure Setfracionado(const Value: WideString);
    procedure Setestoque_minimo(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setetiqueta_pdv(const Value: WideString);
    procedure Setbalanca_pdv(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Seticms_entrada(const Value: Double);
    procedure Seticms_saida(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setipi_entrada(const Value: Double);
    procedure Setipi_saida(const Value: Double);
    procedure Setdata_ultimacompra(const Value: TDateTime);
    procedure Setdata_ultimavenda(const Value: TDateTime);
    procedure Setdiferido(const Value: WideString);
    procedure Setreferencia_tecnica(const Value: indefinido);
    procedure Setpromocao(const Value: Boolean);
    procedure Setpreco_promocao(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setvl_substituicao(const Value: Double);
    procedure Setvl_margem_lucro(const Value: Double);
    procedure Setvl_enc_estadual(const Value: Double);
    procedure Setvl_enc_federal(const Value: Double);
    procedure Setult_preco_venda(const Value: Double);
    procedure Setult_preco_compra(const Value: Double);
    procedure Setativo(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setproduto_variado(const Value: WideString);
    procedure Setid_planocelular(const Value: Integer);
    procedure Setfrete(const Value: Double);
    procedure Setsimples(const Value: Double);
    procedure Setvl_pmz(const Value: Double);
    procedure Setippt(const Value: WideString);
    procedure Setiat(const Value: WideString);
    procedure Setatacado(const Value: Boolean);
    procedure Setquantidade_atacado(const Value: Double);
    procedure Setpreco_atacado(const Value: Double);
    procedure Setestoque_deposito(const Value: Double);
    procedure Setpauta(const Value: Double);
    procedure Setncm(const Value: WideString);
    procedure Setcst(const Value: WideString);
    procedure Setcfop_interno(const Value: Integer);
    procedure Setcfop_externo(const Value: Integer);
    procedure Settamanho(const Value: WideString);
    procedure Setsexo(const Value: WideString);
    procedure Setespecial(const Value: WideString);
    procedure Setqtd_padrao(const Value: Double);
    procedure Setestoque_bonificacao(const Value: Double);
    procedure Setpiscofins(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setreg_ms(const Value: WideString);
    procedure Setcsts_ipi(const Value: WideString);
    procedure Setvalidade(const Value: WideString);
    procedure Setdosagem(const Value: Double);
    procedure Setvl_pis(const Value: Double);
    procedure Setvl_cofins(const Value: Double);
    procedure Setean(const Value: WideString);
    procedure Setcomissao_servico(const Value: Double);
    procedure Setean_caixa(const Value: WideString);
    procedure Setid_fabricante(const Value: Integer);
    procedure Setkit(const Value: indefinido);
    procedure Seticms_atacado(const Value: Double);
    procedure Setmargem_lucro_atacado(const Value: Double);
    procedure Setpreco_custo_atacado(const Value: Double);
    procedure Setpreco_atacado_ant(const Value: Double);
    procedure Setcontrole_proprio(const Value: Boolean);
    procedure Setvalidade_proprio(const Value: Integer);
    procedure Settabela_pdv(const Value: Boolean);
    procedure Setvenda_fracionada(const Value: Boolean);
    procedure Setvalor_unitario_item_nf(const Value: Double);
    procedure Setid_insumo(const Value: Integer);
    procedure Setid_almoxarifado(const Value: Integer);
    procedure Setcst_natureza_receita(const Value: WideString);
    procedure Setprod_kit(const Value: Boolean);
    procedure Setpauta_dentro(const Value: Double);
    procedure Setpauta_fora(const Value: Double);
    procedure Setbalanca_soft(const Value: Boolean);
    procedure Setbalanca_dias(const Value: Integer);
    procedure Setbalanca_tecla(const Value: Integer);
    procedure Setcodigo_anp(const Value: WideString);
    procedure Setid_setor(const Value: Integer);
    procedure Setid_secao(const Value: Integer);
    procedure Setid_grupos(const Value: Integer);
    procedure Setid_subgrupo(const Value: Integer);
    procedure Setformacao_preco(const Value: WideString);
    procedure Settrabalha_metro_cubico(const Value: Boolean);
    procedure Setean_caixa2(const Value: WideString);
    procedure Setean_caixa3(const Value: WideString);
    procedure Setembalagem_itens2(const Value: Double);
    procedure Setembalagem_itens3(const Value: Double);
    procedure Setvalor_unitario_item_nf2(const Value: Double);
    procedure Setvalor_unitario_item_nf3(const Value: Double);
    procedure Setcusto_financeiro(const Value: Double);
    procedure Setcontribuicao_social(const Value: Double);
    procedure Setcusto_operacional(const Value: Double);
    procedure Setvl_irpj(const Value: Double);
    procedure Setcomplemento_aliq(const Value: Double);
    procedure Setpreco_custo_nf(const Value: Double);
    procedure Setpreco_custo_nf2(const Value: Double);
    procedure Setpreco_custo_nf3(const Value: Double);
    procedure Setgenerico(const Value: Boolean);
    procedure Setdesconto_formacao(const Value: Double);
    procedure Setcst_piscofins_saida(const Value: WideString);
    procedure Setcst_piscofins_entrada(const Value: WideString);
    procedure Setid_familia(const Value: Integer);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);
    procedure Setpreco_compra_alterado(const Value: Boolean);
    procedure Setmedida(const Value: indefinido);
    procedure Setlona(const Value: Integer);
    procedure Setlote(const Value: Boolean);
    procedure Setcontrolar_lote_tipo(const Value: WideString);
    procedure Setcontrolar_lote(const Value: Boolean);
    procedure Setsem_gtin(const Value: Boolean);
    procedure Setpercentual_desconto(const Value: Double);
    procedure Setmargem_lucro_b(const Value: Double);
    procedure Setvl_margem_lucro_b(const Value: Double);
    procedure Setquantidade_kit(const Value: Double);
    procedure Setcomplemento(const Value: Boolean);
    procedure Setdesconto_zero(const Value: Boolean);
    procedure Setmargem_lucro_sugestao(const Value: Double);
    procedure Setgera_comissao(const Value: Boolean);
    procedure Setvenda_metade(const Value: Boolean);
    procedure Setmetade_porcentagem(const Value: Double);
    procedure Setinadimplencia(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property nome_grupo     : WideString read Fnome_grupo write Setnome_grupo;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property unidade     : WideString read Funidade write Setunidade;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property garantia     : WideString read Fgarantia write Setgarantia;
    property modelo     : WideString read Fmodelo write Setmodelo;
    property cor     : WideString read Fcor write Setcor;
    property margem_lucro     : Double read Fmargem_lucro write Setmargem_lucro;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_compra     : Double read Fpreco_compra write Setpreco_compra;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_venda_ant     : Double read Fpreco_venda_ant write Setpreco_venda_ant;
    property localizacao     : WideString read Flocalizacao write Setlocalizacao;
    property referencia     : WideString read Freferencia write Setreferencia;
    property comissao     : Double read Fcomissao write Setcomissao;
    property embalagem     : WideString read Fembalagem write Setembalagem;
    property embalagem_itens     : Double read Fembalagem_itens write Setembalagem_itens;
    property fracionado     : WideString read Ffracionado write Setfracionado;
    property estoque_minimo     : Double read Festoque_minimo write Setestoque_minimo;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property etiqueta_pdv     : WideString read Fetiqueta_pdv write Setetiqueta_pdv;
    property balanca_pdv     : WideString read Fbalanca_pdv write Setbalanca_pdv;
    property st     : WideString read Fst write Setst;
    property icms_entrada     : Double read Ficms_entrada write Seticms_entrada;
    property icms_saida     : Double read Ficms_saida write Seticms_saida;
    property reducao     : Double read Freducao write Setreducao;
    property ipi_entrada     : Double read Fipi_entrada write Setipi_entrada;
    property ipi_saida     : Double read Fipi_saida write Setipi_saida;
    property data_ultimacompra     : TDateTime read Fdata_ultimacompra write Setdata_ultimacompra;
    property data_ultimavenda     : TDateTime read Fdata_ultimavenda write Setdata_ultimavenda;
    property diferido     : WideString read Fdiferido write Setdiferido;
    property referencia_tecnica     : indefinido read Freferencia_tecnica write Setreferencia_tecnica;
    property promocao     : Boolean read Fpromocao write Setpromocao;
    property preco_promocao     : Double read Fpreco_promocao write Setpreco_promocao;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property vl_substituicao     : Double read Fvl_substituicao write Setvl_substituicao;
    property vl_margem_lucro     : Double read Fvl_margem_lucro write Setvl_margem_lucro;
    property vl_enc_estadual     : Double read Fvl_enc_estadual write Setvl_enc_estadual;
    property vl_enc_federal     : Double read Fvl_enc_federal write Setvl_enc_federal;
    property ult_preco_venda     : Double read Fult_preco_venda write Setult_preco_venda;
    property ult_preco_compra     : Double read Fult_preco_compra write Setult_preco_compra;
    property ativo     : WideString read Fativo write Setativo;
    property click     : Boolean read Fclick write Setclick;
    property produto_variado     : WideString read Fproduto_variado write Setproduto_variado;
    property id_planocelular     : Integer read Fid_planocelular write Setid_planocelular;
    property frete     : Double read Ffrete write Setfrete;
    property simples     : Double read Fsimples write Setsimples;
    property vl_pmz     : Double read Fvl_pmz write Setvl_pmz;
    property ippt     : WideString read Fippt write Setippt;
    property iat     : WideString read Fiat write Setiat;
    property atacado     : Boolean read Fatacado write Setatacado;
    property quantidade_atacado     : Double read Fquantidade_atacado write Setquantidade_atacado;
    property preco_atacado     : Double read Fpreco_atacado write Setpreco_atacado;
    property estoque_deposito     : Double read Festoque_deposito write Setestoque_deposito;
    property pauta     : Double read Fpauta write Setpauta;
    property ncm     : WideString read Fncm write Setncm;
    property cst     : WideString read Fcst write Setcst;
    property cfop_interno     : Integer read Fcfop_interno write Setcfop_interno;
    property cfop_externo     : Integer read Fcfop_externo write Setcfop_externo;
    property tamanho     : WideString read Ftamanho write Settamanho;
    property sexo     : WideString read Fsexo write Setsexo;
    property especial     : WideString read Fespecial write Setespecial;
    property qtd_padrao     : Double read Fqtd_padrao write Setqtd_padrao;
    property estoque_bonificacao     : Double read Festoque_bonificacao write Setestoque_bonificacao;
    property piscofins     : WideString read Fpiscofins write Setpiscofins;
    property tipo     : WideString read Ftipo write Settipo;
    property reg_ms     : WideString read Freg_ms write Setreg_ms;
    property csts_ipi     : WideString read Fcsts_ipi write Setcsts_ipi;
    property validade     : WideString read Fvalidade write Setvalidade;
    property dosagem     : Double read Fdosagem write Setdosagem;
    property vl_pis     : Double read Fvl_pis write Setvl_pis;
    property vl_cofins     : Double read Fvl_cofins write Setvl_cofins;
    property ean     : WideString read Fean write Setean;
    property comissao_servico     : Double read Fcomissao_servico write Setcomissao_servico;
    property ean_caixa     : WideString read Fean_caixa write Setean_caixa;
    property id_fabricante     : Integer read Fid_fabricante write Setid_fabricante;
    property kit     : indefinido read Fkit write Setkit;
    property icms_atacado     : Double read Ficms_atacado write Seticms_atacado;
    property margem_lucro_atacado     : Double read Fmargem_lucro_atacado write Setmargem_lucro_atacado;
    property preco_custo_atacado     : Double read Fpreco_custo_atacado write Setpreco_custo_atacado;
    property preco_atacado_ant     : Double read Fpreco_atacado_ant write Setpreco_atacado_ant;
    property controle_proprio     : Boolean read Fcontrole_proprio write Setcontrole_proprio;
    property validade_proprio     : Integer read Fvalidade_proprio write Setvalidade_proprio;
    property tabela_pdv     : Boolean read Ftabela_pdv write Settabela_pdv;
    property venda_fracionada     : Boolean read Fvenda_fracionada write Setvenda_fracionada;
    property valor_unitario_item_nf     : Double read Fvalor_unitario_item_nf write Setvalor_unitario_item_nf;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property id_almoxarifado     : Integer read Fid_almoxarifado write Setid_almoxarifado;
    property cst_natureza_receita     : WideString read Fcst_natureza_receita write Setcst_natureza_receita;
    property prod_kit     : Boolean read Fprod_kit write Setprod_kit;
    property pauta_dentro     : Double read Fpauta_dentro write Setpauta_dentro;
    property pauta_fora     : Double read Fpauta_fora write Setpauta_fora;
    property balanca_soft     : Boolean read Fbalanca_soft write Setbalanca_soft;
    property balanca_dias     : Integer read Fbalanca_dias write Setbalanca_dias;
    property balanca_tecla     : Integer read Fbalanca_tecla write Setbalanca_tecla;
    property codigo_anp     : WideString read Fcodigo_anp write Setcodigo_anp;
    property id_setor     : Integer read Fid_setor write Setid_setor;
    property id_secao     : Integer read Fid_secao write Setid_secao;
    property id_grupos     : Integer read Fid_grupos write Setid_grupos;
    property id_subgrupo     : Integer read Fid_subgrupo write Setid_subgrupo;
    property formacao_preco     : WideString read Fformacao_preco write Setformacao_preco;
    property trabalha_metro_cubico     : Boolean read Ftrabalha_metro_cubico write Settrabalha_metro_cubico;
    property ean_caixa2     : WideString read Fean_caixa2 write Setean_caixa2;
    property ean_caixa3     : WideString read Fean_caixa3 write Setean_caixa3;
    property embalagem_itens2     : Double read Fembalagem_itens2 write Setembalagem_itens2;
    property embalagem_itens3     : Double read Fembalagem_itens3 write Setembalagem_itens3;
    property valor_unitario_item_nf2     : Double read Fvalor_unitario_item_nf2 write Setvalor_unitario_item_nf2;
    property valor_unitario_item_nf3     : Double read Fvalor_unitario_item_nf3 write Setvalor_unitario_item_nf3;
    property custo_financeiro     : Double read Fcusto_financeiro write Setcusto_financeiro;
    property contribuicao_social     : Double read Fcontribuicao_social write Setcontribuicao_social;
    property custo_operacional     : Double read Fcusto_operacional write Setcusto_operacional;
    property vl_irpj     : Double read Fvl_irpj write Setvl_irpj;
    property complemento_aliq     : Double read Fcomplemento_aliq write Setcomplemento_aliq;
    property preco_custo_nf     : Double read Fpreco_custo_nf write Setpreco_custo_nf;
    property preco_custo_nf2     : Double read Fpreco_custo_nf2 write Setpreco_custo_nf2;
    property preco_custo_nf3     : Double read Fpreco_custo_nf3 write Setpreco_custo_nf3;
    property generico     : Boolean read Fgenerico write Setgenerico;
    property desconto_formacao     : Double read Fdesconto_formacao write Setdesconto_formacao;
    property cst_piscofins_saida     : WideString read Fcst_piscofins_saida write Setcst_piscofins_saida;
    property cst_piscofins_entrada     : WideString read Fcst_piscofins_entrada write Setcst_piscofins_entrada;
    property id_familia     : Integer read Fid_familia write Setid_familia;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;
    property preco_compra_alterado     : Boolean read Fpreco_compra_alterado write Setpreco_compra_alterado;
    property medida     : indefinido read Fmedida write Setmedida;
    property lona     : Integer read Flona write Setlona;
    property lote     : Boolean read Flote write Setlote;
    property controlar_lote_tipo     : WideString read Fcontrolar_lote_tipo write Setcontrolar_lote_tipo;
    property controlar_lote     : Boolean read Fcontrolar_lote write Setcontrolar_lote;
    property sem_gtin     : Boolean read Fsem_gtin write Setsem_gtin;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;
    property margem_lucro_b     : Double read Fmargem_lucro_b write Setmargem_lucro_b;
    property vl_margem_lucro_b     : Double read Fvl_margem_lucro_b write Setvl_margem_lucro_b;
    property quantidade_kit     : Double read Fquantidade_kit write Setquantidade_kit;
    property complemento     : Boolean read Fcomplemento write Setcomplemento;
    property desconto_zero     : Boolean read Fdesconto_zero write Setdesconto_zero;
    property margem_lucro_sugestao     : Double read Fmargem_lucro_sugestao write Setmargem_lucro_sugestao;
    property gera_comissao     : Boolean read Fgera_comissao write Setgera_comissao;
    property venda_metade     : Boolean read Fvenda_metade write Setvenda_metade;
    property metade_porcentagem     : Double read Fmetade_porcentagem write Setmetade_porcentagem;
    property inadimplencia     : Double read Finadimplencia write Setinadimplencia;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprintfile.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprintfile) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprintfile(Model).id;
Self.Fid_empresa         := TModelERPprintfile(Model).id_empresa;
Self.Fnome         := TModelERPprintfile(Model).nome;
Self.Fid_grupo         := TModelERPprintfile(Model).id_grupo;
Self.Fnome_grupo         := TModelERPprintfile(Model).nome_grupo;
Self.Fid_fornecedor         := TModelERPprintfile(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPprintfile(Model).nome_fornecedor;
Self.Fcodigo_fabricante         := TModelERPprintfile(Model).codigo_fabricante;
Self.Funidade         := TModelERPprintfile(Model).unidade;
Self.Fpeso_bruto         := TModelERPprintfile(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPprintfile(Model).peso_liquido;
Self.Fgarantia         := TModelERPprintfile(Model).garantia;
Self.Fmodelo         := TModelERPprintfile(Model).modelo;
Self.Fcor         := TModelERPprintfile(Model).cor;
Self.Fmargem_lucro         := TModelERPprintfile(Model).margem_lucro;
Self.Fpreco_custo         := TModelERPprintfile(Model).preco_custo;
Self.Fpreco_compra         := TModelERPprintfile(Model).preco_compra;
Self.Fpreco_venda         := TModelERPprintfile(Model).preco_venda;
Self.Fpreco_venda_ant         := TModelERPprintfile(Model).preco_venda_ant;
Self.Flocalizacao         := TModelERPprintfile(Model).localizacao;
Self.Freferencia         := TModelERPprintfile(Model).referencia;
Self.Fcomissao         := TModelERPprintfile(Model).comissao;
Self.Fembalagem         := TModelERPprintfile(Model).embalagem;
Self.Fembalagem_itens         := TModelERPprintfile(Model).embalagem_itens;
Self.Ffracionado         := TModelERPprintfile(Model).fracionado;
Self.Festoque_minimo         := TModelERPprintfile(Model).estoque_minimo;
Self.Festoque_atual         := TModelERPprintfile(Model).estoque_atual;
Self.Fetiqueta_pdv         := TModelERPprintfile(Model).etiqueta_pdv;
Self.Fbalanca_pdv         := TModelERPprintfile(Model).balanca_pdv;
Self.Fst         := TModelERPprintfile(Model).st;
Self.Ficms_entrada         := TModelERPprintfile(Model).icms_entrada;
Self.Ficms_saida         := TModelERPprintfile(Model).icms_saida;
Self.Freducao         := TModelERPprintfile(Model).reducao;
Self.Fipi_entrada         := TModelERPprintfile(Model).ipi_entrada;
Self.Fipi_saida         := TModelERPprintfile(Model).ipi_saida;
Self.Fdata_ultimacompra         := TModelERPprintfile(Model).data_ultimacompra;
Self.Fdata_ultimavenda         := TModelERPprintfile(Model).data_ultimavenda;
Self.Fdiferido         := TModelERPprintfile(Model).diferido;
Self.Freferencia_tecnica         := TModelERPprintfile(Model).referencia_tecnica;
Self.Fpromocao         := TModelERPprintfile(Model).promocao;
Self.Fpreco_promocao         := TModelERPprintfile(Model).preco_promocao;
Self.Fvl_frete         := TModelERPprintfile(Model).vl_frete;
Self.Fvl_outras         := TModelERPprintfile(Model).vl_outras;
Self.Fvl_substituicao         := TModelERPprintfile(Model).vl_substituicao;
Self.Fvl_margem_lucro         := TModelERPprintfile(Model).vl_margem_lucro;
Self.Fvl_enc_estadual         := TModelERPprintfile(Model).vl_enc_estadual;
Self.Fvl_enc_federal         := TModelERPprintfile(Model).vl_enc_federal;
Self.Fult_preco_venda         := TModelERPprintfile(Model).ult_preco_venda;
Self.Fult_preco_compra         := TModelERPprintfile(Model).ult_preco_compra;
Self.Fativo         := TModelERPprintfile(Model).ativo;
Self.Fclick         := TModelERPprintfile(Model).click;
Self.Fproduto_variado         := TModelERPprintfile(Model).produto_variado;
Self.Fid_planocelular         := TModelERPprintfile(Model).id_planocelular;
Self.Ffrete         := TModelERPprintfile(Model).frete;
Self.Fsimples         := TModelERPprintfile(Model).simples;
Self.Fvl_pmz         := TModelERPprintfile(Model).vl_pmz;
Self.Fippt         := TModelERPprintfile(Model).ippt;
Self.Fiat         := TModelERPprintfile(Model).iat;
Self.Fatacado         := TModelERPprintfile(Model).atacado;
Self.Fquantidade_atacado         := TModelERPprintfile(Model).quantidade_atacado;
Self.Fpreco_atacado         := TModelERPprintfile(Model).preco_atacado;
Self.Festoque_deposito         := TModelERPprintfile(Model).estoque_deposito;
Self.Fpauta         := TModelERPprintfile(Model).pauta;
Self.Fncm         := TModelERPprintfile(Model).ncm;
Self.Fcst         := TModelERPprintfile(Model).cst;
Self.Fcfop_interno         := TModelERPprintfile(Model).cfop_interno;
Self.Fcfop_externo         := TModelERPprintfile(Model).cfop_externo;
Self.Ftamanho         := TModelERPprintfile(Model).tamanho;
Self.Fsexo         := TModelERPprintfile(Model).sexo;
Self.Fespecial         := TModelERPprintfile(Model).especial;
Self.Fqtd_padrao         := TModelERPprintfile(Model).qtd_padrao;
Self.Festoque_bonificacao         := TModelERPprintfile(Model).estoque_bonificacao;
Self.Fpiscofins         := TModelERPprintfile(Model).piscofins;
Self.Ftipo         := TModelERPprintfile(Model).tipo;
Self.Freg_ms         := TModelERPprintfile(Model).reg_ms;
Self.Fcsts_ipi         := TModelERPprintfile(Model).csts_ipi;
Self.Fvalidade         := TModelERPprintfile(Model).validade;
Self.Fdosagem         := TModelERPprintfile(Model).dosagem;
Self.Fvl_pis         := TModelERPprintfile(Model).vl_pis;
Self.Fvl_cofins         := TModelERPprintfile(Model).vl_cofins;
Self.Fean         := TModelERPprintfile(Model).ean;
Self.Fcomissao_servico         := TModelERPprintfile(Model).comissao_servico;
Self.Fean_caixa         := TModelERPprintfile(Model).ean_caixa;
Self.Fid_fabricante         := TModelERPprintfile(Model).id_fabricante;
Self.Fkit         := TModelERPprintfile(Model).kit;
Self.Ficms_atacado         := TModelERPprintfile(Model).icms_atacado;
Self.Fmargem_lucro_atacado         := TModelERPprintfile(Model).margem_lucro_atacado;
Self.Fpreco_custo_atacado         := TModelERPprintfile(Model).preco_custo_atacado;
Self.Fpreco_atacado_ant         := TModelERPprintfile(Model).preco_atacado_ant;
Self.Fcontrole_proprio         := TModelERPprintfile(Model).controle_proprio;
Self.Fvalidade_proprio         := TModelERPprintfile(Model).validade_proprio;
Self.Ftabela_pdv         := TModelERPprintfile(Model).tabela_pdv;
Self.Fvenda_fracionada         := TModelERPprintfile(Model).venda_fracionada;
Self.Fvalor_unitario_item_nf         := TModelERPprintfile(Model).valor_unitario_item_nf;
Self.Fid_insumo         := TModelERPprintfile(Model).id_insumo;
Self.Fid_almoxarifado         := TModelERPprintfile(Model).id_almoxarifado;
Self.Fcst_natureza_receita         := TModelERPprintfile(Model).cst_natureza_receita;
Self.Fprod_kit         := TModelERPprintfile(Model).prod_kit;
Self.Fpauta_dentro         := TModelERPprintfile(Model).pauta_dentro;
Self.Fpauta_fora         := TModelERPprintfile(Model).pauta_fora;
Self.Fbalanca_soft         := TModelERPprintfile(Model).balanca_soft;
Self.Fbalanca_dias         := TModelERPprintfile(Model).balanca_dias;
Self.Fbalanca_tecla         := TModelERPprintfile(Model).balanca_tecla;
Self.Fcodigo_anp         := TModelERPprintfile(Model).codigo_anp;
Self.Fid_setor         := TModelERPprintfile(Model).id_setor;
Self.Fid_secao         := TModelERPprintfile(Model).id_secao;
Self.Fid_grupos         := TModelERPprintfile(Model).id_grupos;
Self.Fid_subgrupo         := TModelERPprintfile(Model).id_subgrupo;
Self.Fformacao_preco         := TModelERPprintfile(Model).formacao_preco;
Self.Ftrabalha_metro_cubico         := TModelERPprintfile(Model).trabalha_metro_cubico;
Self.Fean_caixa2         := TModelERPprintfile(Model).ean_caixa2;
Self.Fean_caixa3         := TModelERPprintfile(Model).ean_caixa3;
Self.Fembalagem_itens2         := TModelERPprintfile(Model).embalagem_itens2;
Self.Fembalagem_itens3         := TModelERPprintfile(Model).embalagem_itens3;
Self.Fvalor_unitario_item_nf2         := TModelERPprintfile(Model).valor_unitario_item_nf2;
Self.Fvalor_unitario_item_nf3         := TModelERPprintfile(Model).valor_unitario_item_nf3;
Self.Fcusto_financeiro         := TModelERPprintfile(Model).custo_financeiro;
Self.Fcontribuicao_social         := TModelERPprintfile(Model).contribuicao_social;
Self.Fcusto_operacional         := TModelERPprintfile(Model).custo_operacional;
Self.Fvl_irpj         := TModelERPprintfile(Model).vl_irpj;
Self.Fcomplemento_aliq         := TModelERPprintfile(Model).complemento_aliq;
Self.Fpreco_custo_nf         := TModelERPprintfile(Model).preco_custo_nf;
Self.Fpreco_custo_nf2         := TModelERPprintfile(Model).preco_custo_nf2;
Self.Fpreco_custo_nf3         := TModelERPprintfile(Model).preco_custo_nf3;
Self.Fgenerico         := TModelERPprintfile(Model).generico;
Self.Fdesconto_formacao         := TModelERPprintfile(Model).desconto_formacao;
Self.Fcst_piscofins_saida         := TModelERPprintfile(Model).cst_piscofins_saida;
Self.Fcst_piscofins_entrada         := TModelERPprintfile(Model).cst_piscofins_entrada;
Self.Fid_familia         := TModelERPprintfile(Model).id_familia;
Self.Fquantidade_empresa_terceiro         := TModelERPprintfile(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPprintfile(Model).quantidade_terceiro_empresa;
Self.Fpreco_compra_alterado         := TModelERPprintfile(Model).preco_compra_alterado;
Self.Fmedida         := TModelERPprintfile(Model).medida;
Self.Flona         := TModelERPprintfile(Model).lona;
Self.Flote         := TModelERPprintfile(Model).lote;
Self.Fcontrolar_lote_tipo         := TModelERPprintfile(Model).controlar_lote_tipo;
Self.Fcontrolar_lote         := TModelERPprintfile(Model).controlar_lote;
Self.Fsem_gtin         := TModelERPprintfile(Model).sem_gtin;
Self.Fpercentual_desconto         := TModelERPprintfile(Model).percentual_desconto;
Self.Fmargem_lucro_b         := TModelERPprintfile(Model).margem_lucro_b;
Self.Fvl_margem_lucro_b         := TModelERPprintfile(Model).vl_margem_lucro_b;
Self.Fquantidade_kit         := TModelERPprintfile(Model).quantidade_kit;
Self.Fcomplemento         := TModelERPprintfile(Model).complemento;
Self.Fdesconto_zero         := TModelERPprintfile(Model).desconto_zero;
Self.Fmargem_lucro_sugestao         := TModelERPprintfile(Model).margem_lucro_sugestao;
Self.Fgera_comissao         := TModelERPprintfile(Model).gera_comissao;
Self.Fvenda_metade         := TModelERPprintfile(Model).venda_metade;
Self.Fmetade_porcentagem         := TModelERPprintfile(Model).metade_porcentagem;
Self.Finadimplencia         := TModelERPprintfile(Model).inadimplencia;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprintfile.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprintfile.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprintfile.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprintfile.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPprintfile.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPprintfile.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPprintfile.Setnome_grupo(const Value: Boolean);   
begin                
  Fnome_grupo := Value;   
end;                 

procedure TModelERPprintfile.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPprintfile.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPprintfile.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPprintfile.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPprintfile.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPprintfile.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPprintfile.Setgarantia(const Value: Boolean);   
begin                
  Fgarantia := Value;   
end;                 

procedure TModelERPprintfile.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPprintfile.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPprintfile.Setmargem_lucro(const Value: Boolean);   
begin                
  Fmargem_lucro := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_venda_ant(const Value: Boolean);   
begin                
  Fpreco_venda_ant := Value;   
end;                 

procedure TModelERPprintfile.Setlocalizacao(const Value: Boolean);   
begin                
  Flocalizacao := Value;   
end;                 

procedure TModelERPprintfile.Setreferencia(const Value: Boolean);   
begin                
  Freferencia := Value;   
end;                 

procedure TModelERPprintfile.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPprintfile.Setembalagem(const Value: Boolean);   
begin                
  Fembalagem := Value;   
end;                 

procedure TModelERPprintfile.Setembalagem_itens(const Value: Boolean);   
begin                
  Fembalagem_itens := Value;   
end;                 

procedure TModelERPprintfile.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPprintfile.Setestoque_minimo(const Value: Boolean);   
begin                
  Festoque_minimo := Value;   
end;                 

procedure TModelERPprintfile.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPprintfile.Setetiqueta_pdv(const Value: Boolean);   
begin                
  Fetiqueta_pdv := Value;   
end;                 

procedure TModelERPprintfile.Setbalanca_pdv(const Value: Boolean);   
begin                
  Fbalanca_pdv := Value;   
end;                 

procedure TModelERPprintfile.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPprintfile.Seticms_entrada(const Value: Boolean);   
begin                
  Ficms_entrada := Value;   
end;                 

procedure TModelERPprintfile.Seticms_saida(const Value: Boolean);   
begin                
  Ficms_saida := Value;   
end;                 

procedure TModelERPprintfile.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPprintfile.Setipi_entrada(const Value: Boolean);   
begin                
  Fipi_entrada := Value;   
end;                 

procedure TModelERPprintfile.Setipi_saida(const Value: Boolean);   
begin                
  Fipi_saida := Value;   
end;                 

procedure TModelERPprintfile.Setdata_ultimacompra(const Value: Boolean);   
begin                
  Fdata_ultimacompra := Value;   
end;                 

procedure TModelERPprintfile.Setdata_ultimavenda(const Value: Boolean);   
begin                
  Fdata_ultimavenda := Value;   
end;                 

procedure TModelERPprintfile.Setdiferido(const Value: Boolean);   
begin                
  Fdiferido := Value;   
end;                 

procedure TModelERPprintfile.Setreferencia_tecnica(const Value: Boolean);   
begin                
  Freferencia_tecnica := Value;   
end;                 

procedure TModelERPprintfile.Setpromocao(const Value: Boolean);   
begin                
  Fpromocao := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPprintfile.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPprintfile.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPprintfile.Setvl_substituicao(const Value: Boolean);   
begin                
  Fvl_substituicao := Value;   
end;                 

procedure TModelERPprintfile.Setvl_margem_lucro(const Value: Boolean);   
begin                
  Fvl_margem_lucro := Value;   
end;                 

procedure TModelERPprintfile.Setvl_enc_estadual(const Value: Boolean);   
begin                
  Fvl_enc_estadual := Value;   
end;                 

procedure TModelERPprintfile.Setvl_enc_federal(const Value: Boolean);   
begin                
  Fvl_enc_federal := Value;   
end;                 

procedure TModelERPprintfile.Setult_preco_venda(const Value: Boolean);   
begin                
  Fult_preco_venda := Value;   
end;                 

procedure TModelERPprintfile.Setult_preco_compra(const Value: Boolean);   
begin                
  Fult_preco_compra := Value;   
end;                 

procedure TModelERPprintfile.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPprintfile.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPprintfile.Setproduto_variado(const Value: Boolean);   
begin                
  Fproduto_variado := Value;   
end;                 

procedure TModelERPprintfile.Setid_planocelular(const Value: Boolean);   
begin                
  Fid_planocelular := Value;   
end;                 

procedure TModelERPprintfile.Setfrete(const Value: Boolean);   
begin                
  Ffrete := Value;   
end;                 

procedure TModelERPprintfile.Setsimples(const Value: Boolean);   
begin                
  Fsimples := Value;   
end;                 

procedure TModelERPprintfile.Setvl_pmz(const Value: Boolean);   
begin                
  Fvl_pmz := Value;   
end;                 

procedure TModelERPprintfile.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPprintfile.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPprintfile.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPprintfile.Setquantidade_atacado(const Value: Boolean);   
begin                
  Fquantidade_atacado := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_atacado(const Value: Boolean);   
begin                
  Fpreco_atacado := Value;   
end;                 

procedure TModelERPprintfile.Setestoque_deposito(const Value: Boolean);   
begin                
  Festoque_deposito := Value;   
end;                 

procedure TModelERPprintfile.Setpauta(const Value: Boolean);   
begin                
  Fpauta := Value;   
end;                 

procedure TModelERPprintfile.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPprintfile.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPprintfile.Setcfop_interno(const Value: Boolean);   
begin                
  Fcfop_interno := Value;   
end;                 

procedure TModelERPprintfile.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPprintfile.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPprintfile.Setsexo(const Value: Boolean);   
begin                
  Fsexo := Value;   
end;                 

procedure TModelERPprintfile.Setespecial(const Value: Boolean);   
begin                
  Fespecial := Value;   
end;                 

procedure TModelERPprintfile.Setqtd_padrao(const Value: Boolean);   
begin                
  Fqtd_padrao := Value;   
end;                 

procedure TModelERPprintfile.Setestoque_bonificacao(const Value: Boolean);   
begin                
  Festoque_bonificacao := Value;   
end;                 

procedure TModelERPprintfile.Setpiscofins(const Value: Boolean);   
begin                
  Fpiscofins := Value;   
end;                 

procedure TModelERPprintfile.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPprintfile.Setreg_ms(const Value: Boolean);   
begin                
  Freg_ms := Value;   
end;                 

procedure TModelERPprintfile.Setcsts_ipi(const Value: Boolean);   
begin                
  Fcsts_ipi := Value;   
end;                 

procedure TModelERPprintfile.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPprintfile.Setdosagem(const Value: Boolean);   
begin                
  Fdosagem := Value;   
end;                 

procedure TModelERPprintfile.Setvl_pis(const Value: Boolean);   
begin                
  Fvl_pis := Value;   
end;                 

procedure TModelERPprintfile.Setvl_cofins(const Value: Boolean);   
begin                
  Fvl_cofins := Value;   
end;                 

procedure TModelERPprintfile.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPprintfile.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPprintfile.Setean_caixa(const Value: Boolean);   
begin                
  Fean_caixa := Value;   
end;                 

procedure TModelERPprintfile.Setid_fabricante(const Value: Boolean);   
begin                
  Fid_fabricante := Value;   
end;                 

procedure TModelERPprintfile.Setkit(const Value: Boolean);   
begin                
  Fkit := Value;   
end;                 

procedure TModelERPprintfile.Seticms_atacado(const Value: Boolean);   
begin                
  Ficms_atacado := Value;   
end;                 

procedure TModelERPprintfile.Setmargem_lucro_atacado(const Value: Boolean);   
begin                
  Fmargem_lucro_atacado := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_custo_atacado(const Value: Boolean);   
begin                
  Fpreco_custo_atacado := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_atacado_ant(const Value: Boolean);   
begin                
  Fpreco_atacado_ant := Value;   
end;                 

procedure TModelERPprintfile.Setcontrole_proprio(const Value: Boolean);   
begin                
  Fcontrole_proprio := Value;   
end;                 

procedure TModelERPprintfile.Setvalidade_proprio(const Value: Boolean);   
begin                
  Fvalidade_proprio := Value;   
end;                 

procedure TModelERPprintfile.Settabela_pdv(const Value: Boolean);   
begin                
  Ftabela_pdv := Value;   
end;                 

procedure TModelERPprintfile.Setvenda_fracionada(const Value: Boolean);   
begin                
  Fvenda_fracionada := Value;   
end;                 

procedure TModelERPprintfile.Setvalor_unitario_item_nf(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf := Value;   
end;                 

procedure TModelERPprintfile.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPprintfile.Setid_almoxarifado(const Value: Boolean);   
begin                
  Fid_almoxarifado := Value;   
end;                 

procedure TModelERPprintfile.Setcst_natureza_receita(const Value: Boolean);   
begin                
  Fcst_natureza_receita := Value;   
end;                 

procedure TModelERPprintfile.Setprod_kit(const Value: Boolean);   
begin                
  Fprod_kit := Value;   
end;                 

procedure TModelERPprintfile.Setpauta_dentro(const Value: Boolean);   
begin                
  Fpauta_dentro := Value;   
end;                 

procedure TModelERPprintfile.Setpauta_fora(const Value: Boolean);   
begin                
  Fpauta_fora := Value;   
end;                 

procedure TModelERPprintfile.Setbalanca_soft(const Value: Boolean);   
begin                
  Fbalanca_soft := Value;   
end;                 

procedure TModelERPprintfile.Setbalanca_dias(const Value: Boolean);   
begin                
  Fbalanca_dias := Value;   
end;                 

procedure TModelERPprintfile.Setbalanca_tecla(const Value: Boolean);   
begin                
  Fbalanca_tecla := Value;   
end;                 

procedure TModelERPprintfile.Setcodigo_anp(const Value: Boolean);   
begin                
  Fcodigo_anp := Value;   
end;                 

procedure TModelERPprintfile.Setid_setor(const Value: Boolean);   
begin                
  Fid_setor := Value;   
end;                 

procedure TModelERPprintfile.Setid_secao(const Value: Boolean);   
begin                
  Fid_secao := Value;   
end;                 

procedure TModelERPprintfile.Setid_grupos(const Value: Boolean);   
begin                
  Fid_grupos := Value;   
end;                 

procedure TModelERPprintfile.Setid_subgrupo(const Value: Boolean);   
begin                
  Fid_subgrupo := Value;   
end;                 

procedure TModelERPprintfile.Setformacao_preco(const Value: Boolean);   
begin                
  Fformacao_preco := Value;   
end;                 

procedure TModelERPprintfile.Settrabalha_metro_cubico(const Value: Boolean);   
begin                
  Ftrabalha_metro_cubico := Value;   
end;                 

procedure TModelERPprintfile.Setean_caixa2(const Value: Boolean);   
begin                
  Fean_caixa2 := Value;   
end;                 

procedure TModelERPprintfile.Setean_caixa3(const Value: Boolean);   
begin                
  Fean_caixa3 := Value;   
end;                 

procedure TModelERPprintfile.Setembalagem_itens2(const Value: Boolean);   
begin                
  Fembalagem_itens2 := Value;   
end;                 

procedure TModelERPprintfile.Setembalagem_itens3(const Value: Boolean);   
begin                
  Fembalagem_itens3 := Value;   
end;                 

procedure TModelERPprintfile.Setvalor_unitario_item_nf2(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf2 := Value;   
end;                 

procedure TModelERPprintfile.Setvalor_unitario_item_nf3(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf3 := Value;   
end;                 

procedure TModelERPprintfile.Setcusto_financeiro(const Value: Boolean);   
begin                
  Fcusto_financeiro := Value;   
end;                 

procedure TModelERPprintfile.Setcontribuicao_social(const Value: Boolean);   
begin                
  Fcontribuicao_social := Value;   
end;                 

procedure TModelERPprintfile.Setcusto_operacional(const Value: Boolean);   
begin                
  Fcusto_operacional := Value;   
end;                 

procedure TModelERPprintfile.Setvl_irpj(const Value: Boolean);   
begin                
  Fvl_irpj := Value;   
end;                 

procedure TModelERPprintfile.Setcomplemento_aliq(const Value: Boolean);   
begin                
  Fcomplemento_aliq := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_custo_nf(const Value: Boolean);   
begin                
  Fpreco_custo_nf := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_custo_nf2(const Value: Boolean);   
begin                
  Fpreco_custo_nf2 := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_custo_nf3(const Value: Boolean);   
begin                
  Fpreco_custo_nf3 := Value;   
end;                 

procedure TModelERPprintfile.Setgenerico(const Value: Boolean);   
begin                
  Fgenerico := Value;   
end;                 

procedure TModelERPprintfile.Setdesconto_formacao(const Value: Boolean);   
begin                
  Fdesconto_formacao := Value;   
end;                 

procedure TModelERPprintfile.Setcst_piscofins_saida(const Value: Boolean);   
begin                
  Fcst_piscofins_saida := Value;   
end;                 

procedure TModelERPprintfile.Setcst_piscofins_entrada(const Value: Boolean);   
begin                
  Fcst_piscofins_entrada := Value;   
end;                 

procedure TModelERPprintfile.Setid_familia(const Value: Boolean);   
begin                
  Fid_familia := Value;   
end;                 

procedure TModelERPprintfile.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPprintfile.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 

procedure TModelERPprintfile.Setpreco_compra_alterado(const Value: Boolean);   
begin                
  Fpreco_compra_alterado := Value;   
end;                 

procedure TModelERPprintfile.Setmedida(const Value: Boolean);   
begin                
  Fmedida := Value;   
end;                 

procedure TModelERPprintfile.Setlona(const Value: Boolean);   
begin                
  Flona := Value;   
end;                 

procedure TModelERPprintfile.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPprintfile.Setcontrolar_lote_tipo(const Value: Boolean);   
begin                
  Fcontrolar_lote_tipo := Value;   
end;                 

procedure TModelERPprintfile.Setcontrolar_lote(const Value: Boolean);   
begin                
  Fcontrolar_lote := Value;   
end;                 

procedure TModelERPprintfile.Setsem_gtin(const Value: Boolean);   
begin                
  Fsem_gtin := Value;   
end;                 

procedure TModelERPprintfile.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPprintfile.Setmargem_lucro_b(const Value: Boolean);   
begin                
  Fmargem_lucro_b := Value;   
end;                 

procedure TModelERPprintfile.Setvl_margem_lucro_b(const Value: Boolean);   
begin                
  Fvl_margem_lucro_b := Value;   
end;                 

procedure TModelERPprintfile.Setquantidade_kit(const Value: Boolean);   
begin                
  Fquantidade_kit := Value;   
end;                 

procedure TModelERPprintfile.Setcomplemento(const Value: Boolean);   
begin                
  Fcomplemento := Value;   
end;                 

procedure TModelERPprintfile.Setdesconto_zero(const Value: Boolean);   
begin                
  Fdesconto_zero := Value;   
end;                 

procedure TModelERPprintfile.Setmargem_lucro_sugestao(const Value: Boolean);   
begin                
  Fmargem_lucro_sugestao := Value;   
end;                 

procedure TModelERPprintfile.Setgera_comissao(const Value: Boolean);   
begin                
  Fgera_comissao := Value;   
end;                 

procedure TModelERPprintfile.Setvenda_metade(const Value: Boolean);   
begin                
  Fvenda_metade := Value;   
end;                 

procedure TModelERPprintfile.Setmetade_porcentagem(const Value: Boolean);   
begin                
  Fmetade_porcentagem := Value;   
end;                 

procedure TModelERPprintfile.Setinadimplencia(const Value: Boolean);   
begin                
  Finadimplencia := Value;   
end;                 


end.
