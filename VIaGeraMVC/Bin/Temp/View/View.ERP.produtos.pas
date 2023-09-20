
unit View.ERP.print_file;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.print_file, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPprintfile = class(TForm) 
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
    FController : TControllerERPprintfile; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setid_grupo(const Value : Integer);
    procedure Setnome_grupo(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setgarantia(const Value : WideString);
    procedure Setmodelo(const Value : WideString);
    procedure Setcor(const Value : WideString);
    procedure Setmargem_lucro(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setpreco_compra(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_venda_ant(const Value : Double);
    procedure Setlocalizacao(const Value : WideString);
    procedure Setreferencia(const Value : WideString);
    procedure Setcomissao(const Value : Double);
    procedure Setembalagem(const Value : WideString);
    procedure Setembalagem_itens(const Value : Double);
    procedure Setfracionado(const Value : WideString);
    procedure Setestoque_minimo(const Value : Double);
    procedure Setestoque_atual(const Value : Double);
    procedure Setetiqueta_pdv(const Value : WideString);
    procedure Setbalanca_pdv(const Value : WideString);
    procedure Setst(const Value : WideString);
    procedure Seticms_entrada(const Value : Double);
    procedure Seticms_saida(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setipi_entrada(const Value : Double);
    procedure Setipi_saida(const Value : Double);
    procedure Setdata_ultimacompra(const Value : TDateTime);
    procedure Setdata_ultimavenda(const Value : TDateTime);
    procedure Setdiferido(const Value : WideString);
    procedure Setreferencia_tecnica(const Value : indefinido);
    procedure Setpromocao(const Value : Boolean);
    procedure Setpreco_promocao(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setvl_outras(const Value : Double);
    procedure Setvl_substituicao(const Value : Double);
    procedure Setvl_margem_lucro(const Value : Double);
    procedure Setvl_enc_estadual(const Value : Double);
    procedure Setvl_enc_federal(const Value : Double);
    procedure Setult_preco_venda(const Value : Double);
    procedure Setult_preco_compra(const Value : Double);
    procedure Setativo(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setproduto_variado(const Value : WideString);
    procedure Setid_planocelular(const Value : Integer);
    procedure Setfrete(const Value : Double);
    procedure Setsimples(const Value : Double);
    procedure Setvl_pmz(const Value : Double);
    procedure Setippt(const Value : WideString);
    procedure Setiat(const Value : WideString);
    procedure Setatacado(const Value : Boolean);
    procedure Setquantidade_atacado(const Value : Double);
    procedure Setpreco_atacado(const Value : Double);
    procedure Setestoque_deposito(const Value : Double);
    procedure Setpauta(const Value : Double);
    procedure Setncm(const Value : WideString);
    procedure Setcst(const Value : WideString);
    procedure Setcfop_interno(const Value : Integer);
    procedure Setcfop_externo(const Value : Integer);
    procedure Settamanho(const Value : WideString);
    procedure Setsexo(const Value : WideString);
    procedure Setespecial(const Value : WideString);
    procedure Setqtd_padrao(const Value : Double);
    procedure Setestoque_bonificacao(const Value : Double);
    procedure Setpiscofins(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setreg_ms(const Value : WideString);
    procedure Setcsts_ipi(const Value : WideString);
    procedure Setvalidade(const Value : WideString);
    procedure Setdosagem(const Value : Double);
    procedure Setvl_pis(const Value : Double);
    procedure Setvl_cofins(const Value : Double);
    procedure Setean(const Value : WideString);
    procedure Setcomissao_servico(const Value : Double);
    procedure Setean_caixa(const Value : WideString);
    procedure Setid_fabricante(const Value : Integer);
    procedure Setkit(const Value : indefinido);
    procedure Seticms_atacado(const Value : Double);
    procedure Setmargem_lucro_atacado(const Value : Double);
    procedure Setpreco_custo_atacado(const Value : Double);
    procedure Setpreco_atacado_ant(const Value : Double);
    procedure Setcontrole_proprio(const Value : Boolean);
    procedure Setvalidade_proprio(const Value : Integer);
    procedure Settabela_pdv(const Value : Boolean);
    procedure Setvenda_fracionada(const Value : Boolean);
    procedure Setvalor_unitario_item_nf(const Value : Double);
    procedure Setid_insumo(const Value : Integer);
    procedure Setid_almoxarifado(const Value : Integer);
    procedure Setcst_natureza_receita(const Value : WideString);
    procedure Setprod_kit(const Value : Boolean);
    procedure Setpauta_dentro(const Value : Double);
    procedure Setpauta_fora(const Value : Double);
    procedure Setbalanca_soft(const Value : Boolean);
    procedure Setbalanca_dias(const Value : Integer);
    procedure Setbalanca_tecla(const Value : Integer);
    procedure Setcodigo_anp(const Value : WideString);
    procedure Setid_setor(const Value : Integer);
    procedure Setid_secao(const Value : Integer);
    procedure Setid_grupos(const Value : Integer);
    procedure Setid_subgrupo(const Value : Integer);
    procedure Setformacao_preco(const Value : WideString);
    procedure Settrabalha_metro_cubico(const Value : Boolean);
    procedure Setean_caixa2(const Value : WideString);
    procedure Setean_caixa3(const Value : WideString);
    procedure Setembalagem_itens2(const Value : Double);
    procedure Setembalagem_itens3(const Value : Double);
    procedure Setvalor_unitario_item_nf2(const Value : Double);
    procedure Setvalor_unitario_item_nf3(const Value : Double);
    procedure Setcusto_financeiro(const Value : Double);
    procedure Setcontribuicao_social(const Value : Double);
    procedure Setcusto_operacional(const Value : Double);
    procedure Setvl_irpj(const Value : Double);
    procedure Setcomplemento_aliq(const Value : Double);
    procedure Setpreco_custo_nf(const Value : Double);
    procedure Setpreco_custo_nf2(const Value : Double);
    procedure Setpreco_custo_nf3(const Value : Double);
    procedure Setgenerico(const Value : Boolean);
    procedure Setdesconto_formacao(const Value : Double);
    procedure Setcst_piscofins_saida(const Value : WideString);
    procedure Setcst_piscofins_entrada(const Value : WideString);
    procedure Setid_familia(const Value : Integer);
    procedure Setquantidade_empresa_terceiro(const Value : Double);
    procedure Setquantidade_terceiro_empresa(const Value : Double);
    procedure Setpreco_compra_alterado(const Value : Boolean);
    procedure Setmedida(const Value : indefinido);
    procedure Setlona(const Value : Integer);
    procedure Setlote(const Value : Boolean);
    procedure Setcontrolar_lote_tipo(const Value : WideString);
    procedure Setcontrolar_lote(const Value : Boolean);
    procedure Setsem_gtin(const Value : Boolean);
    procedure Setpercentual_desconto(const Value : Double);
    procedure Setmargem_lucro_b(const Value : Double);
    procedure Setvl_margem_lucro_b(const Value : Double);
    procedure Setquantidade_kit(const Value : Double);
    procedure Setcomplemento(const Value : Boolean);
    procedure Setdesconto_zero(const Value : Boolean);
    procedure Setmargem_lucro_sugestao(const Value : Double);
    procedure Setgera_comissao(const Value : Boolean);
    procedure Setvenda_metade(const Value : Boolean);
    procedure Setmetade_porcentagem(const Value : Double);
    procedure Setinadimplencia(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property nome_grupo : WideString         read Fnome_grupo    write Fnome_grupo;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property unidade : WideString         read Funidade    write Funidade;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property garantia : WideString         read Fgarantia    write Fgarantia;
    property modelo : WideString         read Fmodelo    write Fmodelo;
    property cor : WideString         read Fcor    write Fcor;
    property margem_lucro : Double         read Fmargem_lucro    write Fmargem_lucro;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property preco_compra : Double         read Fpreco_compra    write Fpreco_compra;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_venda_ant : Double         read Fpreco_venda_ant    write Fpreco_venda_ant;
    property localizacao : WideString         read Flocalizacao    write Flocalizacao;
    property referencia : WideString         read Freferencia    write Freferencia;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property embalagem : WideString         read Fembalagem    write Fembalagem;
    property embalagem_itens : Double         read Fembalagem_itens    write Fembalagem_itens;
    property fracionado : WideString         read Ffracionado    write Ffracionado;
    property estoque_minimo : Double         read Festoque_minimo    write Festoque_minimo;
    property estoque_atual : Double         read Festoque_atual    write Festoque_atual;
    property etiqueta_pdv : WideString         read Fetiqueta_pdv    write Fetiqueta_pdv;
    property balanca_pdv : WideString         read Fbalanca_pdv    write Fbalanca_pdv;
    property st : WideString         read Fst    write Fst;
    property icms_entrada : Double         read Ficms_entrada    write Ficms_entrada;
    property icms_saida : Double         read Ficms_saida    write Ficms_saida;
    property reducao : Double         read Freducao    write Freducao;
    property ipi_entrada : Double         read Fipi_entrada    write Fipi_entrada;
    property ipi_saida : Double         read Fipi_saida    write Fipi_saida;
    property data_ultimacompra : TDateTime         read Fdata_ultimacompra    write Fdata_ultimacompra;
    property data_ultimavenda : TDateTime         read Fdata_ultimavenda    write Fdata_ultimavenda;
    property diferido : WideString         read Fdiferido    write Fdiferido;
    property referencia_tecnica : indefinido         read Freferencia_tecnica    write Freferencia_tecnica;
    property promocao : Boolean         read Fpromocao    write Fpromocao;
    property preco_promocao : Double         read Fpreco_promocao    write Fpreco_promocao;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property vl_outras : Double         read Fvl_outras    write Fvl_outras;
    property vl_substituicao : Double         read Fvl_substituicao    write Fvl_substituicao;
    property vl_margem_lucro : Double         read Fvl_margem_lucro    write Fvl_margem_lucro;
    property vl_enc_estadual : Double         read Fvl_enc_estadual    write Fvl_enc_estadual;
    property vl_enc_federal : Double         read Fvl_enc_federal    write Fvl_enc_federal;
    property ult_preco_venda : Double         read Fult_preco_venda    write Fult_preco_venda;
    property ult_preco_compra : Double         read Fult_preco_compra    write Fult_preco_compra;
    property ativo : WideString         read Fativo    write Fativo;
    property click : Boolean         read Fclick    write Fclick;
    property produto_variado : WideString         read Fproduto_variado    write Fproduto_variado;
    property id_planocelular : Integer         read Fid_planocelular    write Fid_planocelular;
    property frete : Double         read Ffrete    write Ffrete;
    property simples : Double         read Fsimples    write Fsimples;
    property vl_pmz : Double         read Fvl_pmz    write Fvl_pmz;
    property ippt : WideString         read Fippt    write Fippt;
    property iat : WideString         read Fiat    write Fiat;
    property atacado : Boolean         read Fatacado    write Fatacado;
    property quantidade_atacado : Double         read Fquantidade_atacado    write Fquantidade_atacado;
    property preco_atacado : Double         read Fpreco_atacado    write Fpreco_atacado;
    property estoque_deposito : Double         read Festoque_deposito    write Festoque_deposito;
    property pauta : Double         read Fpauta    write Fpauta;
    property ncm : WideString         read Fncm    write Fncm;
    property cst : WideString         read Fcst    write Fcst;
    property cfop_interno : Integer         read Fcfop_interno    write Fcfop_interno;
    property cfop_externo : Integer         read Fcfop_externo    write Fcfop_externo;
    property tamanho : WideString         read Ftamanho    write Ftamanho;
    property sexo : WideString         read Fsexo    write Fsexo;
    property especial : WideString         read Fespecial    write Fespecial;
    property qtd_padrao : Double         read Fqtd_padrao    write Fqtd_padrao;
    property estoque_bonificacao : Double         read Festoque_bonificacao    write Festoque_bonificacao;
    property piscofins : WideString         read Fpiscofins    write Fpiscofins;
    property tipo : WideString         read Ftipo    write Ftipo;
    property reg_ms : WideString         read Freg_ms    write Freg_ms;
    property csts_ipi : WideString         read Fcsts_ipi    write Fcsts_ipi;
    property validade : WideString         read Fvalidade    write Fvalidade;
    property dosagem : Double         read Fdosagem    write Fdosagem;
    property vl_pis : Double         read Fvl_pis    write Fvl_pis;
    property vl_cofins : Double         read Fvl_cofins    write Fvl_cofins;
    property ean : WideString         read Fean    write Fean;
    property comissao_servico : Double         read Fcomissao_servico    write Fcomissao_servico;
    property ean_caixa : WideString         read Fean_caixa    write Fean_caixa;
    property id_fabricante : Integer         read Fid_fabricante    write Fid_fabricante;
    property kit : indefinido         read Fkit    write Fkit;
    property icms_atacado : Double         read Ficms_atacado    write Ficms_atacado;
    property margem_lucro_atacado : Double         read Fmargem_lucro_atacado    write Fmargem_lucro_atacado;
    property preco_custo_atacado : Double         read Fpreco_custo_atacado    write Fpreco_custo_atacado;
    property preco_atacado_ant : Double         read Fpreco_atacado_ant    write Fpreco_atacado_ant;
    property controle_proprio : Boolean         read Fcontrole_proprio    write Fcontrole_proprio;
    property validade_proprio : Integer         read Fvalidade_proprio    write Fvalidade_proprio;
    property tabela_pdv : Boolean         read Ftabela_pdv    write Ftabela_pdv;
    property venda_fracionada : Boolean         read Fvenda_fracionada    write Fvenda_fracionada;
    property valor_unitario_item_nf : Double         read Fvalor_unitario_item_nf    write Fvalor_unitario_item_nf;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property id_almoxarifado : Integer         read Fid_almoxarifado    write Fid_almoxarifado;
    property cst_natureza_receita : WideString         read Fcst_natureza_receita    write Fcst_natureza_receita;
    property prod_kit : Boolean         read Fprod_kit    write Fprod_kit;
    property pauta_dentro : Double         read Fpauta_dentro    write Fpauta_dentro;
    property pauta_fora : Double         read Fpauta_fora    write Fpauta_fora;
    property balanca_soft : Boolean         read Fbalanca_soft    write Fbalanca_soft;
    property balanca_dias : Integer         read Fbalanca_dias    write Fbalanca_dias;
    property balanca_tecla : Integer         read Fbalanca_tecla    write Fbalanca_tecla;
    property codigo_anp : WideString         read Fcodigo_anp    write Fcodigo_anp;
    property id_setor : Integer         read Fid_setor    write Fid_setor;
    property id_secao : Integer         read Fid_secao    write Fid_secao;
    property id_grupos : Integer         read Fid_grupos    write Fid_grupos;
    property id_subgrupo : Integer         read Fid_subgrupo    write Fid_subgrupo;
    property formacao_preco : WideString         read Fformacao_preco    write Fformacao_preco;
    property trabalha_metro_cubico : Boolean         read Ftrabalha_metro_cubico    write Ftrabalha_metro_cubico;
    property ean_caixa2 : WideString         read Fean_caixa2    write Fean_caixa2;
    property ean_caixa3 : WideString         read Fean_caixa3    write Fean_caixa3;
    property embalagem_itens2 : Double         read Fembalagem_itens2    write Fembalagem_itens2;
    property embalagem_itens3 : Double         read Fembalagem_itens3    write Fembalagem_itens3;
    property valor_unitario_item_nf2 : Double         read Fvalor_unitario_item_nf2    write Fvalor_unitario_item_nf2;
    property valor_unitario_item_nf3 : Double         read Fvalor_unitario_item_nf3    write Fvalor_unitario_item_nf3;
    property custo_financeiro : Double         read Fcusto_financeiro    write Fcusto_financeiro;
    property contribuicao_social : Double         read Fcontribuicao_social    write Fcontribuicao_social;
    property custo_operacional : Double         read Fcusto_operacional    write Fcusto_operacional;
    property vl_irpj : Double         read Fvl_irpj    write Fvl_irpj;
    property complemento_aliq : Double         read Fcomplemento_aliq    write Fcomplemento_aliq;
    property preco_custo_nf : Double         read Fpreco_custo_nf    write Fpreco_custo_nf;
    property preco_custo_nf2 : Double         read Fpreco_custo_nf2    write Fpreco_custo_nf2;
    property preco_custo_nf3 : Double         read Fpreco_custo_nf3    write Fpreco_custo_nf3;
    property generico : Boolean         read Fgenerico    write Fgenerico;
    property desconto_formacao : Double         read Fdesconto_formacao    write Fdesconto_formacao;
    property cst_piscofins_saida : WideString         read Fcst_piscofins_saida    write Fcst_piscofins_saida;
    property cst_piscofins_entrada : WideString         read Fcst_piscofins_entrada    write Fcst_piscofins_entrada;
    property id_familia : Integer         read Fid_familia    write Fid_familia;
    property quantidade_empresa_terceiro : Double         read Fquantidade_empresa_terceiro    write Fquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa : Double         read Fquantidade_terceiro_empresa    write Fquantidade_terceiro_empresa;
    property preco_compra_alterado : Boolean         read Fpreco_compra_alterado    write Fpreco_compra_alterado;
    property medida : indefinido         read Fmedida    write Fmedida;
    property lona : Integer         read Flona    write Flona;
    property lote : Boolean         read Flote    write Flote;
    property controlar_lote_tipo : WideString         read Fcontrolar_lote_tipo    write Fcontrolar_lote_tipo;
    property controlar_lote : Boolean         read Fcontrolar_lote    write Fcontrolar_lote;
    property sem_gtin : Boolean         read Fsem_gtin    write Fsem_gtin;
    property percentual_desconto : Double         read Fpercentual_desconto    write Fpercentual_desconto;
    property margem_lucro_b : Double         read Fmargem_lucro_b    write Fmargem_lucro_b;
    property vl_margem_lucro_b : Double         read Fvl_margem_lucro_b    write Fvl_margem_lucro_b;
    property quantidade_kit : Double         read Fquantidade_kit    write Fquantidade_kit;
    property complemento : Boolean         read Fcomplemento    write Fcomplemento;
    property desconto_zero : Boolean         read Fdesconto_zero    write Fdesconto_zero;
    property margem_lucro_sugestao : Double         read Fmargem_lucro_sugestao    write Fmargem_lucro_sugestao;
    property gera_comissao : Boolean         read Fgera_comissao    write Fgera_comissao;
    property venda_metade : Boolean         read Fvenda_metade    write Fvenda_metade;
    property metade_porcentagem : Double         read Fmetade_porcentagem    write Fmetade_porcentagem;
    property inadimplencia : Double         read Finadimplencia    write Finadimplencia;

  end;

var
  Frm_ViewERPprintfile : TFrm_ViewERPprintfile; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 149; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_ant); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].localizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fracionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_minimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].etiqueta_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanca_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ultimacompra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ultimavenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].diferido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia_tecnica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_outras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_margem_lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_enc_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_enc_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ult_preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ult_preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_variado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_planocelular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pmz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ippt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iat); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_deposito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pauta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tamanho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sexo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_padrao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_bonificacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].piscofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reg_ms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].csts_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dosagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].kit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_atacado_ant); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle_proprio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validade_proprio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tabela_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_fracionada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_natureza_receita); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prod_kit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pauta_dentro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pauta_fora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanca_soft); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanca_dias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanca_tecla); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_anp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_setor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_secao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_subgrupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].formacao_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].trabalha_metro_cubico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contribuicao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_operacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_irpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].complemento_aliq); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].generico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_formacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_piscofins_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_piscofins_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_familia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_empresa_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_terceiro_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra_alterado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].medida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lona); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controlar_lote_tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controlar_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sem_gtin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_b); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_margem_lucro_b); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_kit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].complemento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_zero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_sugestao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_metade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].metade_porcentagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inadimplencia); 
    end; 
end; 

procedure TFrm_ViewERPprintfile.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.nome_grupo := Edit_nome_grupo.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.garantia := Edit_garantia.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.margem_lucro := Edit_margem_lucro.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.preco_compra := Edit_preco_compra.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_venda_ant := Edit_preco_venda_ant.text;
      FController.Model.localizacao := Edit_localizacao.text;
      FController.Model.referencia := Edit_referencia.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.embalagem := Edit_embalagem.text;
      FController.Model.embalagem_itens := Edit_embalagem_itens.text;
      FController.Model.fracionado := Edit_fracionado.text;
      FController.Model.estoque_minimo := Edit_estoque_minimo.text;
      FController.Model.estoque_atual := Edit_estoque_atual.text;
      FController.Model.etiqueta_pdv := Edit_etiqueta_pdv.text;
      FController.Model.balanca_pdv := Edit_balanca_pdv.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms_entrada := Edit_icms_entrada.text;
      FController.Model.icms_saida := Edit_icms_saida.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.ipi_entrada := Edit_ipi_entrada.text;
      FController.Model.ipi_saida := Edit_ipi_saida.text;
      FController.Model.data_ultimacompra := Edit_data_ultimacompra.text;
      FController.Model.data_ultimavenda := Edit_data_ultimavenda.text;
      FController.Model.diferido := Edit_diferido.text;
      FController.Model.referencia_tecnica := Edit_referencia_tecnica.text;
      FController.Model.promocao := Edit_promocao.text;
      FController.Model.preco_promocao := Edit_preco_promocao.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.vl_outras := Edit_vl_outras.text;
      FController.Model.vl_substituicao := Edit_vl_substituicao.text;
      FController.Model.vl_margem_lucro := Edit_vl_margem_lucro.text;
      FController.Model.vl_enc_estadual := Edit_vl_enc_estadual.text;
      FController.Model.vl_enc_federal := Edit_vl_enc_federal.text;
      FController.Model.ult_preco_venda := Edit_ult_preco_venda.text;
      FController.Model.ult_preco_compra := Edit_ult_preco_compra.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.click := Edit_click.text;
      FController.Model.produto_variado := Edit_produto_variado.text;
      FController.Model.id_planocelular := Edit_id_planocelular.text;
      FController.Model.frete := Edit_frete.text;
      FController.Model.simples := Edit_simples.text;
      FController.Model.vl_pmz := Edit_vl_pmz.text;
      FController.Model.ippt := Edit_ippt.text;
      FController.Model.iat := Edit_iat.text;
      FController.Model.atacado := Edit_atacado.text;
      FController.Model.quantidade_atacado := Edit_quantidade_atacado.text;
      FController.Model.preco_atacado := Edit_preco_atacado.text;
      FController.Model.estoque_deposito := Edit_estoque_deposito.text;
      FController.Model.pauta := Edit_pauta.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.cfop_interno := Edit_cfop_interno.text;
      FController.Model.cfop_externo := Edit_cfop_externo.text;
      FController.Model.tamanho := Edit_tamanho.text;
      FController.Model.sexo := Edit_sexo.text;
      FController.Model.especial := Edit_especial.text;
      FController.Model.qtd_padrao := Edit_qtd_padrao.text;
      FController.Model.estoque_bonificacao := Edit_estoque_bonificacao.text;
      FController.Model.piscofins := Edit_piscofins.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.reg_ms := Edit_reg_ms.text;
      FController.Model.csts_ipi := Edit_csts_ipi.text;
      FController.Model.validade := Edit_validade.text;
      FController.Model.dosagem := Edit_dosagem.text;
      FController.Model.vl_pis := Edit_vl_pis.text;
      FController.Model.vl_cofins := Edit_vl_cofins.text;
      FController.Model.ean := Edit_ean.text;
      FController.Model.comissao_servico := Edit_comissao_servico.text;
      FController.Model.ean_caixa := Edit_ean_caixa.text;
      FController.Model.id_fabricante := Edit_id_fabricante.text;
      FController.Model.kit := Edit_kit.text;
      FController.Model.icms_atacado := Edit_icms_atacado.text;
      FController.Model.margem_lucro_atacado := Edit_margem_lucro_atacado.text;
      FController.Model.preco_custo_atacado := Edit_preco_custo_atacado.text;
      FController.Model.preco_atacado_ant := Edit_preco_atacado_ant.text;
      FController.Model.controle_proprio := Edit_controle_proprio.text;
      FController.Model.validade_proprio := Edit_validade_proprio.text;
      FController.Model.tabela_pdv := Edit_tabela_pdv.text;
      FController.Model.venda_fracionada := Edit_venda_fracionada.text;
      FController.Model.valor_unitario_item_nf := Edit_valor_unitario_item_nf.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.id_almoxarifado := Edit_id_almoxarifado.text;
      FController.Model.cst_natureza_receita := Edit_cst_natureza_receita.text;
      FController.Model.prod_kit := Edit_prod_kit.text;
      FController.Model.pauta_dentro := Edit_pauta_dentro.text;
      FController.Model.pauta_fora := Edit_pauta_fora.text;
      FController.Model.balanca_soft := Edit_balanca_soft.text;
      FController.Model.balanca_dias := Edit_balanca_dias.text;
      FController.Model.balanca_tecla := Edit_balanca_tecla.text;
      FController.Model.codigo_anp := Edit_codigo_anp.text;
      FController.Model.id_setor := Edit_id_setor.text;
      FController.Model.id_secao := Edit_id_secao.text;
      FController.Model.id_grupos := Edit_id_grupos.text;
      FController.Model.id_subgrupo := Edit_id_subgrupo.text;
      FController.Model.formacao_preco := Edit_formacao_preco.text;
      FController.Model.trabalha_metro_cubico := Edit_trabalha_metro_cubico.text;
      FController.Model.ean_caixa2 := Edit_ean_caixa2.text;
      FController.Model.ean_caixa3 := Edit_ean_caixa3.text;
      FController.Model.embalagem_itens2 := Edit_embalagem_itens2.text;
      FController.Model.embalagem_itens3 := Edit_embalagem_itens3.text;
      FController.Model.valor_unitario_item_nf2 := Edit_valor_unitario_item_nf2.text;
      FController.Model.valor_unitario_item_nf3 := Edit_valor_unitario_item_nf3.text;
      FController.Model.custo_financeiro := Edit_custo_financeiro.text;
      FController.Model.contribuicao_social := Edit_contribuicao_social.text;
      FController.Model.custo_operacional := Edit_custo_operacional.text;
      FController.Model.vl_irpj := Edit_vl_irpj.text;
      FController.Model.complemento_aliq := Edit_complemento_aliq.text;
      FController.Model.preco_custo_nf := Edit_preco_custo_nf.text;
      FController.Model.preco_custo_nf2 := Edit_preco_custo_nf2.text;
      FController.Model.preco_custo_nf3 := Edit_preco_custo_nf3.text;
      FController.Model.generico := Edit_generico.text;
      FController.Model.desconto_formacao := Edit_desconto_formacao.text;
      FController.Model.cst_piscofins_saida := Edit_cst_piscofins_saida.text;
      FController.Model.cst_piscofins_entrada := Edit_cst_piscofins_entrada.text;
      FController.Model.id_familia := Edit_id_familia.text;
      FController.Model.quantidade_empresa_terceiro := Edit_quantidade_empresa_terceiro.text;
      FController.Model.quantidade_terceiro_empresa := Edit_quantidade_terceiro_empresa.text;
      FController.Model.preco_compra_alterado := Edit_preco_compra_alterado.text;
      FController.Model.medida := Edit_medida.text;
      FController.Model.lona := Edit_lona.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.controlar_lote_tipo := Edit_controlar_lote_tipo.text;
      FController.Model.controlar_lote := Edit_controlar_lote.text;
      FController.Model.sem_gtin := Edit_sem_gtin.text;
      FController.Model.percentual_desconto := Edit_percentual_desconto.text;
      FController.Model.margem_lucro_b := Edit_margem_lucro_b.text;
      FController.Model.vl_margem_lucro_b := Edit_vl_margem_lucro_b.text;
      FController.Model.quantidade_kit := Edit_quantidade_kit.text;
      FController.Model.complemento := Edit_complemento.text;
      FController.Model.desconto_zero := Edit_desconto_zero.text;
      FController.Model.margem_lucro_sugestao := Edit_margem_lucro_sugestao.text;
      FController.Model.gera_comissao := Edit_gera_comissao.text;
      FController.Model.venda_metade := Edit_venda_metade.text;
      FController.Model.metade_porcentagem := Edit_metade_porcentagem.text;
      FController.Model.inadimplencia := Edit_inadimplencia.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPprintfile.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPprintfile.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPprintfile.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPprintfile.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPprintfile.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPprintfile.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPprintfile.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 149;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := nome_grupo;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := garantia;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := margem_lucro;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := preco_compra;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_venda_ant;  
     Grid.Cells[inttostr(i),0] := localizacao;  
     Grid.Cells[inttostr(i),0] := referencia;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := embalagem;  
     Grid.Cells[inttostr(i),0] := embalagem_itens;  
     Grid.Cells[inttostr(i),0] := fracionado;  
     Grid.Cells[inttostr(i),0] := estoque_minimo;  
     Grid.Cells[inttostr(i),0] := estoque_atual;  
     Grid.Cells[inttostr(i),0] := etiqueta_pdv;  
     Grid.Cells[inttostr(i),0] := balanca_pdv;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms_entrada;  
     Grid.Cells[inttostr(i),0] := icms_saida;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := ipi_entrada;  
     Grid.Cells[inttostr(i),0] := ipi_saida;  
     Grid.Cells[inttostr(i),0] := data_ultimacompra;  
     Grid.Cells[inttostr(i),0] := data_ultimavenda;  
     Grid.Cells[inttostr(i),0] := diferido;  
     Grid.Cells[inttostr(i),0] := referencia_tecnica;  
     Grid.Cells[inttostr(i),0] := promocao;  
     Grid.Cells[inttostr(i),0] := preco_promocao;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := vl_outras;  
     Grid.Cells[inttostr(i),0] := vl_substituicao;  
     Grid.Cells[inttostr(i),0] := vl_margem_lucro;  
     Grid.Cells[inttostr(i),0] := vl_enc_estadual;  
     Grid.Cells[inttostr(i),0] := vl_enc_federal;  
     Grid.Cells[inttostr(i),0] := ult_preco_venda;  
     Grid.Cells[inttostr(i),0] := ult_preco_compra;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := produto_variado;  
     Grid.Cells[inttostr(i),0] := id_planocelular;  
     Grid.Cells[inttostr(i),0] := frete;  
     Grid.Cells[inttostr(i),0] := simples;  
     Grid.Cells[inttostr(i),0] := vl_pmz;  
     Grid.Cells[inttostr(i),0] := ippt;  
     Grid.Cells[inttostr(i),0] := iat;  
     Grid.Cells[inttostr(i),0] := atacado;  
     Grid.Cells[inttostr(i),0] := quantidade_atacado;  
     Grid.Cells[inttostr(i),0] := preco_atacado;  
     Grid.Cells[inttostr(i),0] := estoque_deposito;  
     Grid.Cells[inttostr(i),0] := pauta;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := cfop_interno;  
     Grid.Cells[inttostr(i),0] := cfop_externo;  
     Grid.Cells[inttostr(i),0] := tamanho;  
     Grid.Cells[inttostr(i),0] := sexo;  
     Grid.Cells[inttostr(i),0] := especial;  
     Grid.Cells[inttostr(i),0] := qtd_padrao;  
     Grid.Cells[inttostr(i),0] := estoque_bonificacao;  
     Grid.Cells[inttostr(i),0] := piscofins;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := reg_ms;  
     Grid.Cells[inttostr(i),0] := csts_ipi;  
     Grid.Cells[inttostr(i),0] := validade;  
     Grid.Cells[inttostr(i),0] := dosagem;  
     Grid.Cells[inttostr(i),0] := vl_pis;  
     Grid.Cells[inttostr(i),0] := vl_cofins;  
     Grid.Cells[inttostr(i),0] := ean;  
     Grid.Cells[inttostr(i),0] := comissao_servico;  
     Grid.Cells[inttostr(i),0] := ean_caixa;  
     Grid.Cells[inttostr(i),0] := id_fabricante;  
     Grid.Cells[inttostr(i),0] := kit;  
     Grid.Cells[inttostr(i),0] := icms_atacado;  
     Grid.Cells[inttostr(i),0] := margem_lucro_atacado;  
     Grid.Cells[inttostr(i),0] := preco_custo_atacado;  
     Grid.Cells[inttostr(i),0] := preco_atacado_ant;  
     Grid.Cells[inttostr(i),0] := controle_proprio;  
     Grid.Cells[inttostr(i),0] := validade_proprio;  
     Grid.Cells[inttostr(i),0] := tabela_pdv;  
     Grid.Cells[inttostr(i),0] := venda_fracionada;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := id_almoxarifado;  
     Grid.Cells[inttostr(i),0] := cst_natureza_receita;  
     Grid.Cells[inttostr(i),0] := prod_kit;  
     Grid.Cells[inttostr(i),0] := pauta_dentro;  
     Grid.Cells[inttostr(i),0] := pauta_fora;  
     Grid.Cells[inttostr(i),0] := balanca_soft;  
     Grid.Cells[inttostr(i),0] := balanca_dias;  
     Grid.Cells[inttostr(i),0] := balanca_tecla;  
     Grid.Cells[inttostr(i),0] := codigo_anp;  
     Grid.Cells[inttostr(i),0] := id_setor;  
     Grid.Cells[inttostr(i),0] := id_secao;  
     Grid.Cells[inttostr(i),0] := id_grupos;  
     Grid.Cells[inttostr(i),0] := id_subgrupo;  
     Grid.Cells[inttostr(i),0] := formacao_preco;  
     Grid.Cells[inttostr(i),0] := trabalha_metro_cubico;  
     Grid.Cells[inttostr(i),0] := ean_caixa2;  
     Grid.Cells[inttostr(i),0] := ean_caixa3;  
     Grid.Cells[inttostr(i),0] := embalagem_itens2;  
     Grid.Cells[inttostr(i),0] := embalagem_itens3;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf2;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf3;  
     Grid.Cells[inttostr(i),0] := custo_financeiro;  
     Grid.Cells[inttostr(i),0] := contribuicao_social;  
     Grid.Cells[inttostr(i),0] := custo_operacional;  
     Grid.Cells[inttostr(i),0] := vl_irpj;  
     Grid.Cells[inttostr(i),0] := complemento_aliq;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf2;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf3;  
     Grid.Cells[inttostr(i),0] := generico;  
     Grid.Cells[inttostr(i),0] := desconto_formacao;  
     Grid.Cells[inttostr(i),0] := cst_piscofins_saida;  
     Grid.Cells[inttostr(i),0] := cst_piscofins_entrada;  
     Grid.Cells[inttostr(i),0] := id_familia;  
     Grid.Cells[inttostr(i),0] := quantidade_empresa_terceiro;  
     Grid.Cells[inttostr(i),0] := quantidade_terceiro_empresa;  
     Grid.Cells[inttostr(i),0] := preco_compra_alterado;  
     Grid.Cells[inttostr(i),0] := medida;  
     Grid.Cells[inttostr(i),0] := lona;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := controlar_lote_tipo;  
     Grid.Cells[inttostr(i),0] := controlar_lote;  
     Grid.Cells[inttostr(i),0] := sem_gtin;  
     Grid.Cells[inttostr(i),0] := percentual_desconto;  
     Grid.Cells[inttostr(i),0] := margem_lucro_b;  
     Grid.Cells[inttostr(i),0] := vl_margem_lucro_b;  
     Grid.Cells[inttostr(i),0] := quantidade_kit;  
     Grid.Cells[inttostr(i),0] := complemento;  
     Grid.Cells[inttostr(i),0] := desconto_zero;  
     Grid.Cells[inttostr(i),0] := margem_lucro_sugestao;  
     Grid.Cells[inttostr(i),0] := gera_comissao;  
     Grid.Cells[inttostr(i),0] := venda_metade;  
     Grid.Cells[inttostr(i),0] := metade_porcentagem;  
     Grid.Cells[inttostr(i),0] := inadimplencia;  
end;

procedure TFrm_ViewERPprintfile.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPprintfile.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPprintfile.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.id_grupo := Grid.Cells[3,Grid.row];
    FController.Model.nome_grupo := Grid.Cells[4,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[5,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[6,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[7,Grid.row];
    FController.Model.unidade := Grid.Cells[8,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[9,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[10,Grid.row];
    FController.Model.garantia := Grid.Cells[11,Grid.row];
    FController.Model.modelo := Grid.Cells[12,Grid.row];
    FController.Model.cor := Grid.Cells[13,Grid.row];
    FController.Model.margem_lucro := Grid.Cells[14,Grid.row];
    FController.Model.preco_custo := Grid.Cells[15,Grid.row];
    FController.Model.preco_compra := Grid.Cells[16,Grid.row];
    FController.Model.preco_venda := Grid.Cells[17,Grid.row];
    FController.Model.preco_venda_ant := Grid.Cells[18,Grid.row];
    FController.Model.localizacao := Grid.Cells[19,Grid.row];
    FController.Model.referencia := Grid.Cells[20,Grid.row];
    FController.Model.comissao := Grid.Cells[21,Grid.row];
    FController.Model.embalagem := Grid.Cells[22,Grid.row];
    FController.Model.embalagem_itens := Grid.Cells[23,Grid.row];
    FController.Model.fracionado := Grid.Cells[24,Grid.row];
    FController.Model.estoque_minimo := Grid.Cells[25,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[26,Grid.row];
    FController.Model.etiqueta_pdv := Grid.Cells[27,Grid.row];
    FController.Model.balanca_pdv := Grid.Cells[28,Grid.row];
    FController.Model.st := Grid.Cells[29,Grid.row];
    FController.Model.icms_entrada := Grid.Cells[30,Grid.row];
    FController.Model.icms_saida := Grid.Cells[31,Grid.row];
    FController.Model.reducao := Grid.Cells[32,Grid.row];
    FController.Model.ipi_entrada := Grid.Cells[33,Grid.row];
    FController.Model.ipi_saida := Grid.Cells[34,Grid.row];
    FController.Model.data_ultimacompra := Grid.Cells[35,Grid.row];
    FController.Model.data_ultimavenda := Grid.Cells[36,Grid.row];
    FController.Model.diferido := Grid.Cells[37,Grid.row];
    FController.Model.referencia_tecnica := Grid.Cells[38,Grid.row];
    FController.Model.promocao := Grid.Cells[39,Grid.row];
    FController.Model.preco_promocao := Grid.Cells[40,Grid.row];
    FController.Model.vl_frete := Grid.Cells[41,Grid.row];
    FController.Model.vl_outras := Grid.Cells[42,Grid.row];
    FController.Model.vl_substituicao := Grid.Cells[43,Grid.row];
    FController.Model.vl_margem_lucro := Grid.Cells[44,Grid.row];
    FController.Model.vl_enc_estadual := Grid.Cells[45,Grid.row];
    FController.Model.vl_enc_federal := Grid.Cells[46,Grid.row];
    FController.Model.ult_preco_venda := Grid.Cells[47,Grid.row];
    FController.Model.ult_preco_compra := Grid.Cells[48,Grid.row];
    FController.Model.ativo := Grid.Cells[49,Grid.row];
    FController.Model.click := Grid.Cells[50,Grid.row];
    FController.Model.produto_variado := Grid.Cells[51,Grid.row];
    FController.Model.id_planocelular := Grid.Cells[52,Grid.row];
    FController.Model.frete := Grid.Cells[53,Grid.row];
    FController.Model.simples := Grid.Cells[54,Grid.row];
    FController.Model.vl_pmz := Grid.Cells[55,Grid.row];
    FController.Model.ippt := Grid.Cells[56,Grid.row];
    FController.Model.iat := Grid.Cells[57,Grid.row];
    FController.Model.atacado := Grid.Cells[58,Grid.row];
    FController.Model.quantidade_atacado := Grid.Cells[59,Grid.row];
    FController.Model.preco_atacado := Grid.Cells[60,Grid.row];
    FController.Model.estoque_deposito := Grid.Cells[61,Grid.row];
    FController.Model.pauta := Grid.Cells[62,Grid.row];
    FController.Model.ncm := Grid.Cells[63,Grid.row];
    FController.Model.cst := Grid.Cells[64,Grid.row];
    FController.Model.cfop_interno := Grid.Cells[65,Grid.row];
    FController.Model.cfop_externo := Grid.Cells[66,Grid.row];
    FController.Model.tamanho := Grid.Cells[67,Grid.row];
    FController.Model.sexo := Grid.Cells[68,Grid.row];
    FController.Model.especial := Grid.Cells[69,Grid.row];
    FController.Model.qtd_padrao := Grid.Cells[70,Grid.row];
    FController.Model.estoque_bonificacao := Grid.Cells[71,Grid.row];
    FController.Model.piscofins := Grid.Cells[72,Grid.row];
    FController.Model.tipo := Grid.Cells[73,Grid.row];
    FController.Model.reg_ms := Grid.Cells[74,Grid.row];
    FController.Model.csts_ipi := Grid.Cells[75,Grid.row];
    FController.Model.validade := Grid.Cells[76,Grid.row];
    FController.Model.dosagem := Grid.Cells[77,Grid.row];
    FController.Model.vl_pis := Grid.Cells[78,Grid.row];
    FController.Model.vl_cofins := Grid.Cells[79,Grid.row];
    FController.Model.ean := Grid.Cells[80,Grid.row];
    FController.Model.comissao_servico := Grid.Cells[81,Grid.row];
    FController.Model.ean_caixa := Grid.Cells[82,Grid.row];
    FController.Model.id_fabricante := Grid.Cells[83,Grid.row];
    FController.Model.kit := Grid.Cells[84,Grid.row];
    FController.Model.icms_atacado := Grid.Cells[85,Grid.row];
    FController.Model.margem_lucro_atacado := Grid.Cells[86,Grid.row];
    FController.Model.preco_custo_atacado := Grid.Cells[87,Grid.row];
    FController.Model.preco_atacado_ant := Grid.Cells[88,Grid.row];
    FController.Model.controle_proprio := Grid.Cells[89,Grid.row];
    FController.Model.validade_proprio := Grid.Cells[90,Grid.row];
    FController.Model.tabela_pdv := Grid.Cells[91,Grid.row];
    FController.Model.venda_fracionada := Grid.Cells[92,Grid.row];
    FController.Model.valor_unitario_item_nf := Grid.Cells[93,Grid.row];
    FController.Model.id_insumo := Grid.Cells[94,Grid.row];
    FController.Model.id_almoxarifado := Grid.Cells[95,Grid.row];
    FController.Model.cst_natureza_receita := Grid.Cells[96,Grid.row];
    FController.Model.prod_kit := Grid.Cells[97,Grid.row];
    FController.Model.pauta_dentro := Grid.Cells[98,Grid.row];
    FController.Model.pauta_fora := Grid.Cells[99,Grid.row];
    FController.Model.balanca_soft := Grid.Cells[100,Grid.row];
    FController.Model.balanca_dias := Grid.Cells[101,Grid.row];
    FController.Model.balanca_tecla := Grid.Cells[102,Grid.row];
    FController.Model.codigo_anp := Grid.Cells[103,Grid.row];
    FController.Model.id_setor := Grid.Cells[104,Grid.row];
    FController.Model.id_secao := Grid.Cells[105,Grid.row];
    FController.Model.id_grupos := Grid.Cells[106,Grid.row];
    FController.Model.id_subgrupo := Grid.Cells[107,Grid.row];
    FController.Model.formacao_preco := Grid.Cells[108,Grid.row];
    FController.Model.trabalha_metro_cubico := Grid.Cells[109,Grid.row];
    FController.Model.ean_caixa2 := Grid.Cells[110,Grid.row];
    FController.Model.ean_caixa3 := Grid.Cells[111,Grid.row];
    FController.Model.embalagem_itens2 := Grid.Cells[112,Grid.row];
    FController.Model.embalagem_itens3 := Grid.Cells[113,Grid.row];
    FController.Model.valor_unitario_item_nf2 := Grid.Cells[114,Grid.row];
    FController.Model.valor_unitario_item_nf3 := Grid.Cells[115,Grid.row];
    FController.Model.custo_financeiro := Grid.Cells[116,Grid.row];
    FController.Model.contribuicao_social := Grid.Cells[117,Grid.row];
    FController.Model.custo_operacional := Grid.Cells[118,Grid.row];
    FController.Model.vl_irpj := Grid.Cells[119,Grid.row];
    FController.Model.complemento_aliq := Grid.Cells[120,Grid.row];
    FController.Model.preco_custo_nf := Grid.Cells[121,Grid.row];
    FController.Model.preco_custo_nf2 := Grid.Cells[122,Grid.row];
    FController.Model.preco_custo_nf3 := Grid.Cells[123,Grid.row];
    FController.Model.generico := Grid.Cells[124,Grid.row];
    FController.Model.desconto_formacao := Grid.Cells[125,Grid.row];
    FController.Model.cst_piscofins_saida := Grid.Cells[126,Grid.row];
    FController.Model.cst_piscofins_entrada := Grid.Cells[127,Grid.row];
    FController.Model.id_familia := Grid.Cells[128,Grid.row];
    FController.Model.quantidade_empresa_terceiro := Grid.Cells[129,Grid.row];
    FController.Model.quantidade_terceiro_empresa := Grid.Cells[130,Grid.row];
    FController.Model.preco_compra_alterado := Grid.Cells[131,Grid.row];
    FController.Model.medida := Grid.Cells[132,Grid.row];
    FController.Model.lona := Grid.Cells[133,Grid.row];
    FController.Model.lote := Grid.Cells[134,Grid.row];
    FController.Model.controlar_lote_tipo := Grid.Cells[135,Grid.row];
    FController.Model.controlar_lote := Grid.Cells[136,Grid.row];
    FController.Model.sem_gtin := Grid.Cells[137,Grid.row];
    FController.Model.percentual_desconto := Grid.Cells[138,Grid.row];
    FController.Model.margem_lucro_b := Grid.Cells[139,Grid.row];
    FController.Model.vl_margem_lucro_b := Grid.Cells[140,Grid.row];
    FController.Model.quantidade_kit := Grid.Cells[141,Grid.row];
    FController.Model.complemento := Grid.Cells[142,Grid.row];
    FController.Model.desconto_zero := Grid.Cells[143,Grid.row];
    FController.Model.margem_lucro_sugestao := Grid.Cells[144,Grid.row];
    FController.Model.gera_comissao := Grid.Cells[145,Grid.row];
    FController.Model.venda_metade := Grid.Cells[146,Grid.row];
    FController.Model.metade_porcentagem := Grid.Cells[147,Grid.row];
    FController.Model.inadimplencia := Grid.Cells[148,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPprintfile.LimparTela;  
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

procedure TFrm_ViewERPprintfile.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setnome_grupo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setgarantia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmodelo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmargem_lucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_venda_ant(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setlocalizacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setreferencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setembalagem(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setembalagem_itens(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setfracionado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setestoque_minimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setetiqueta_pdv(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setbalanca_pdv(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Seticms_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Seticms_saida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setipi_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setipi_saida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdata_ultimacompra(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdata_ultimavenda(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdiferido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setreferencia_tecnica(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpromocao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_promocao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_margem_lucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_enc_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_enc_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setult_preco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setult_preco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setproduto_variado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_planocelular(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setfrete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setsimples(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_pmz(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setippt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setiat(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setatacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setquantidade_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setestoque_deposito(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpauta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcfop_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcfop_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Settamanho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setsexo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setespecial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setqtd_padrao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setestoque_bonificacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpiscofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setreg_ms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcsts_ipi(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdosagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcomissao_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setean_caixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_fabricante(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setkit(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Seticms_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmargem_lucro_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_custo_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_atacado_ant(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcontrole_proprio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvalidade_proprio(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Settabela_pdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvenda_fracionada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvalor_unitario_item_nf(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcst_natureza_receita(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setprod_kit(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpauta_dentro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpauta_fora(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setbalanca_soft(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setbalanca_dias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setbalanca_tecla(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcodigo_anp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_setor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_secao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_grupos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_subgrupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setformacao_preco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Settrabalha_metro_cubico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setean_caixa2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setean_caixa3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setembalagem_itens2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setembalagem_itens3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvalor_unitario_item_nf2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvalor_unitario_item_nf3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcusto_financeiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcontribuicao_social(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcusto_operacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_irpj(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcomplemento_aliq(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_custo_nf(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_custo_nf2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_custo_nf3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setgenerico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdesconto_formacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcst_piscofins_saida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcst_piscofins_entrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setid_familia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setquantidade_empresa_terceiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setquantidade_terceiro_empresa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpreco_compra_alterado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmedida(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setlona(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setlote(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcontrolar_lote_tipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcontrolar_lote(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setsem_gtin(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setpercentual_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmargem_lucro_b(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvl_margem_lucro_b(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setquantidade_kit(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setcomplemento(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setdesconto_zero(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmargem_lucro_sugestao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setgera_comissao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setvenda_metade(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setmetade_porcentagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprintfile.Setinadimplencia(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
