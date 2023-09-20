unit Model.ERP.empresas_compra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresascompra = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fconsulta_estoque : WideString;
    Finformar_mes_contas_fixas : Boolean;
    Fverificar_ociosidade_maquina : Boolean;
    Ftempo_ociosidade : indefinido;
    Fcst_conversao_sped_tributado : WideString;
    Fcst_conversao_sped_isento : WideString;
    Fcst_conversao_sped_tributado_simples : WideString;
    Fcst_conversao_sped_isento_simples : WideString;
    Fvisualizar_historico_os : Boolean;
    Fconverter_cst090_cfop5102 : Boolean;
    Fcst_conversao : WideString;
    Fcst_conversao_com_cfop6102 : WideString;
    Fconverter_cst090_cfop6102 : Boolean;
    Fcliente_limite : Double;
    Fcliente_tipo : WideString;
    Fmenu_estilo : Integer;
    Fmenu_esquema : Integer;
    Fmenu_acentuado : Integer;
    Fultnsubusc : WideString;
    Fcod_uf : Integer;
    Fordemcte : WideString;
    Fpercentual_minimo_entrada : Double;
    Fimg_relatorio : indefinido;
    Fimg_fundo_relatorio : indefinido;
    Fimg_cliente : indefinido;
    Fbackup_bancos : indefinido;
    Fdata_manutencao : TDateTime;
    Fmanutencao_automatica : Boolean;
    Fmanutencao_pendente : Boolean;
    Fmanutencao_intervalo : indefinido;
    Fabrir_plano_contas : Boolean;
    Fcst_conversao_sped_tributado101e102 : WideString;
    Fcst_conversao_sped_isento203e400 : WideString;
    Fvalidacao_prevenda : Boolean;
    Fcomplemento_icms : Double;
    Fval_rel_venda : Boolean;
    Fpnl_pesquisa : WideString;
    Fpnl_fonte : Integer;
    Fpnl_negrito : Boolean;
    Fcbmarca : Integer;
    Fchbmarca : Boolean;
    Fcblocalizacao : Integer;
    Fchblocalizacao : Boolean;
    Fcbean : Integer;
    Fchbean : Boolean;
    Fcbreferencia : Integer;
    Fchbreferencia : Boolean;
    Fcbfabricante : Integer;
    Fchbfabricante : Boolean;
    Fcbmarca_modelo : Integer;
    Fchbmarca_modelo : Boolean;
    Fpre_venda_inc_qtd : Boolean;
    Fdesconto_formacao : Double;
    Fsel_prod : Boolean;
    Fid_caixa_sangria : Integer;
    Fmdfe : Integer;
    Fimpr_cotr : Boolean;
    Fintervalo : Integer;
    Falt_uni : Boolean;
    Ffinaliza : Boolean;
    Fbalanco : Boolean;
    Fsize_relatorio : indefinido;
    Fsize_fundo_relatorio : indefinido;
    Fsize_cliente : indefinido;
    Fcom_vista : Double;
    Fcom_prazo : Double;
    Fcontrole_validade : Boolean;
    Fcontrole_lote : Boolean;
    Falerta_validade : indefinido;
    Fcad_rural : Boolean;
    Fdata_contabil : Boolean;
    Forcamento : indefinido;
    Fimprimir_cobraca : Boolean;
    Fdetalhe_produto_entrada_nota : Boolean;
    Fcbdata_compra : Integer;
    Fchbdata_compra : Boolean;
    Frecebe_forma : Integer;
    Fomitir_dup : Boolean;
    Faliquota_sem_calculo : Boolean;
    Fqtd_alerta_estque_minimo : Integer;
    Ftipo : WideString;
    Fnovo_metodo_desconto : Boolean;
    Futilizar_limite_valor_nfenfce_para_usuario : Boolean;
    Fvalidade_orcamento : Integer;
    Fcontas_fixas_multiplos_clientes_mesmo_lote : Boolean;
    Fultimo_nsu_incluido : WideString;
    Fcodigo_ean : Boolean;
    Freferencia : Boolean;
    Fcodigo_fabricante : Boolean;
    Fimei : Boolean;
    Fchbestoque_bonificacao : Boolean;
    Fcbestoque_bonificacao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setconsulta_estoque(const Value: WideString);
    procedure Setinformar_mes_contas_fixas(const Value: Boolean);
    procedure Setverificar_ociosidade_maquina(const Value: Boolean);
    procedure Settempo_ociosidade(const Value: indefinido);
    procedure Setcst_conversao_sped_tributado(const Value: WideString);
    procedure Setcst_conversao_sped_isento(const Value: WideString);
    procedure Setcst_conversao_sped_tributado_simples(const Value: WideString);
    procedure Setcst_conversao_sped_isento_simples(const Value: WideString);
    procedure Setvisualizar_historico_os(const Value: Boolean);
    procedure Setconverter_cst090_cfop5102(const Value: Boolean);
    procedure Setcst_conversao(const Value: WideString);
    procedure Setcst_conversao_com_cfop6102(const Value: WideString);
    procedure Setconverter_cst090_cfop6102(const Value: Boolean);
    procedure Setcliente_limite(const Value: Double);
    procedure Setcliente_tipo(const Value: WideString);
    procedure Setmenu_estilo(const Value: Integer);
    procedure Setmenu_esquema(const Value: Integer);
    procedure Setmenu_acentuado(const Value: Integer);
    procedure Setultnsubusc(const Value: WideString);
    procedure Setcod_uf(const Value: Integer);
    procedure Setordemcte(const Value: WideString);
    procedure Setpercentual_minimo_entrada(const Value: Double);
    procedure Setimg_relatorio(const Value: indefinido);
    procedure Setimg_fundo_relatorio(const Value: indefinido);
    procedure Setimg_cliente(const Value: indefinido);
    procedure Setbackup_bancos(const Value: indefinido);
    procedure Setdata_manutencao(const Value: TDateTime);
    procedure Setmanutencao_automatica(const Value: Boolean);
    procedure Setmanutencao_pendente(const Value: Boolean);
    procedure Setmanutencao_intervalo(const Value: indefinido);
    procedure Setabrir_plano_contas(const Value: Boolean);
    procedure Setcst_conversao_sped_tributado101e102(const Value: WideString);
    procedure Setcst_conversao_sped_isento203e400(const Value: WideString);
    procedure Setvalidacao_prevenda(const Value: Boolean);
    procedure Setcomplemento_icms(const Value: Double);
    procedure Setval_rel_venda(const Value: Boolean);
    procedure Setpnl_pesquisa(const Value: WideString);
    procedure Setpnl_fonte(const Value: Integer);
    procedure Setpnl_negrito(const Value: Boolean);
    procedure Setcbmarca(const Value: Integer);
    procedure Setchbmarca(const Value: Boolean);
    procedure Setcblocalizacao(const Value: Integer);
    procedure Setchblocalizacao(const Value: Boolean);
    procedure Setcbean(const Value: Integer);
    procedure Setchbean(const Value: Boolean);
    procedure Setcbreferencia(const Value: Integer);
    procedure Setchbreferencia(const Value: Boolean);
    procedure Setcbfabricante(const Value: Integer);
    procedure Setchbfabricante(const Value: Boolean);
    procedure Setcbmarca_modelo(const Value: Integer);
    procedure Setchbmarca_modelo(const Value: Boolean);
    procedure Setpre_venda_inc_qtd(const Value: Boolean);
    procedure Setdesconto_formacao(const Value: Double);
    procedure Setsel_prod(const Value: Boolean);
    procedure Setid_caixa_sangria(const Value: Integer);
    procedure Setmdfe(const Value: Integer);
    procedure Setimpr_cotr(const Value: Boolean);
    procedure Setintervalo(const Value: Integer);
    procedure Setalt_uni(const Value: Boolean);
    procedure Setfinaliza(const Value: Boolean);
    procedure Setbalanco(const Value: Boolean);
    procedure Setsize_relatorio(const Value: indefinido);
    procedure Setsize_fundo_relatorio(const Value: indefinido);
    procedure Setsize_cliente(const Value: indefinido);
    procedure Setcom_vista(const Value: Double);
    procedure Setcom_prazo(const Value: Double);
    procedure Setcontrole_validade(const Value: Boolean);
    procedure Setcontrole_lote(const Value: Boolean);
    procedure Setalerta_validade(const Value: indefinido);
    procedure Setcad_rural(const Value: Boolean);
    procedure Setdata_contabil(const Value: Boolean);
    procedure Setorcamento(const Value: indefinido);
    procedure Setimprimir_cobraca(const Value: Boolean);
    procedure Setdetalhe_produto_entrada_nota(const Value: Boolean);
    procedure Setcbdata_compra(const Value: Integer);
    procedure Setchbdata_compra(const Value: Boolean);
    procedure Setrecebe_forma(const Value: Integer);
    procedure Setomitir_dup(const Value: Boolean);
    procedure Setaliquota_sem_calculo(const Value: Boolean);
    procedure Setqtd_alerta_estque_minimo(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setnovo_metodo_desconto(const Value: Boolean);
    procedure Setutilizar_limite_valor_nfenfce_para_usuario(const Value: Boolean);
    procedure Setvalidade_orcamento(const Value: Integer);
    procedure Setcontas_fixas_multiplos_clientes_mesmo_lote(const Value: Boolean);
    procedure Setultimo_nsu_incluido(const Value: WideString);
    procedure Setcodigo_ean(const Value: Boolean);
    procedure Setreferencia(const Value: Boolean);
    procedure Setcodigo_fabricante(const Value: Boolean);
    procedure Setimei(const Value: Boolean);
    procedure Setchbestoque_bonificacao(const Value: Boolean);
    procedure Setcbestoque_bonificacao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property consulta_estoque     : WideString read Fconsulta_estoque write Setconsulta_estoque;
    property informar_mes_contas_fixas     : Boolean read Finformar_mes_contas_fixas write Setinformar_mes_contas_fixas;
    property verificar_ociosidade_maquina     : Boolean read Fverificar_ociosidade_maquina write Setverificar_ociosidade_maquina;
    property tempo_ociosidade     : indefinido read Ftempo_ociosidade write Settempo_ociosidade;
    property cst_conversao_sped_tributado     : WideString read Fcst_conversao_sped_tributado write Setcst_conversao_sped_tributado;
    property cst_conversao_sped_isento     : WideString read Fcst_conversao_sped_isento write Setcst_conversao_sped_isento;
    property cst_conversao_sped_tributado_simples     : WideString read Fcst_conversao_sped_tributado_simples write Setcst_conversao_sped_tributado_simples;
    property cst_conversao_sped_isento_simples     : WideString read Fcst_conversao_sped_isento_simples write Setcst_conversao_sped_isento_simples;
    property visualizar_historico_os     : Boolean read Fvisualizar_historico_os write Setvisualizar_historico_os;
    property converter_cst090_cfop5102     : Boolean read Fconverter_cst090_cfop5102 write Setconverter_cst090_cfop5102;
    property cst_conversao     : WideString read Fcst_conversao write Setcst_conversao;
    property cst_conversao_com_cfop6102     : WideString read Fcst_conversao_com_cfop6102 write Setcst_conversao_com_cfop6102;
    property converter_cst090_cfop6102     : Boolean read Fconverter_cst090_cfop6102 write Setconverter_cst090_cfop6102;
    property cliente_limite     : Double read Fcliente_limite write Setcliente_limite;
    property cliente_tipo     : WideString read Fcliente_tipo write Setcliente_tipo;
    property menu_estilo     : Integer read Fmenu_estilo write Setmenu_estilo;
    property menu_esquema     : Integer read Fmenu_esquema write Setmenu_esquema;
    property menu_acentuado     : Integer read Fmenu_acentuado write Setmenu_acentuado;
    property ultnsubusc     : WideString read Fultnsubusc write Setultnsubusc;
    property cod_uf     : Integer read Fcod_uf write Setcod_uf;
    property ordemcte     : WideString read Fordemcte write Setordemcte;
    property percentual_minimo_entrada     : Double read Fpercentual_minimo_entrada write Setpercentual_minimo_entrada;
    property img_relatorio     : indefinido read Fimg_relatorio write Setimg_relatorio;
    property img_fundo_relatorio     : indefinido read Fimg_fundo_relatorio write Setimg_fundo_relatorio;
    property img_cliente     : indefinido read Fimg_cliente write Setimg_cliente;
    property backup_bancos     : indefinido read Fbackup_bancos write Setbackup_bancos;
    property data_manutencao     : TDateTime read Fdata_manutencao write Setdata_manutencao;
    property manutencao_automatica     : Boolean read Fmanutencao_automatica write Setmanutencao_automatica;
    property manutencao_pendente     : Boolean read Fmanutencao_pendente write Setmanutencao_pendente;
    property manutencao_intervalo     : indefinido read Fmanutencao_intervalo write Setmanutencao_intervalo;
    property abrir_plano_contas     : Boolean read Fabrir_plano_contas write Setabrir_plano_contas;
    property cst_conversao_sped_tributado101e102     : WideString read Fcst_conversao_sped_tributado101e102 write Setcst_conversao_sped_tributado101e102;
    property cst_conversao_sped_isento203e400     : WideString read Fcst_conversao_sped_isento203e400 write Setcst_conversao_sped_isento203e400;
    property validacao_prevenda     : Boolean read Fvalidacao_prevenda write Setvalidacao_prevenda;
    property complemento_icms     : Double read Fcomplemento_icms write Setcomplemento_icms;
    property val_rel_venda     : Boolean read Fval_rel_venda write Setval_rel_venda;
    property pnl_pesquisa     : WideString read Fpnl_pesquisa write Setpnl_pesquisa;
    property pnl_fonte     : Integer read Fpnl_fonte write Setpnl_fonte;
    property pnl_negrito     : Boolean read Fpnl_negrito write Setpnl_negrito;
    property cbmarca     : Integer read Fcbmarca write Setcbmarca;
    property chbmarca     : Boolean read Fchbmarca write Setchbmarca;
    property cblocalizacao     : Integer read Fcblocalizacao write Setcblocalizacao;
    property chblocalizacao     : Boolean read Fchblocalizacao write Setchblocalizacao;
    property cbean     : Integer read Fcbean write Setcbean;
    property chbean     : Boolean read Fchbean write Setchbean;
    property cbreferencia     : Integer read Fcbreferencia write Setcbreferencia;
    property chbreferencia     : Boolean read Fchbreferencia write Setchbreferencia;
    property cbfabricante     : Integer read Fcbfabricante write Setcbfabricante;
    property chbfabricante     : Boolean read Fchbfabricante write Setchbfabricante;
    property cbmarca_modelo     : Integer read Fcbmarca_modelo write Setcbmarca_modelo;
    property chbmarca_modelo     : Boolean read Fchbmarca_modelo write Setchbmarca_modelo;
    property pre_venda_inc_qtd     : Boolean read Fpre_venda_inc_qtd write Setpre_venda_inc_qtd;
    property desconto_formacao     : Double read Fdesconto_formacao write Setdesconto_formacao;
    property sel_prod     : Boolean read Fsel_prod write Setsel_prod;
    property id_caixa_sangria     : Integer read Fid_caixa_sangria write Setid_caixa_sangria;
    property mdfe     : Integer read Fmdfe write Setmdfe;
    property impr_cotr     : Boolean read Fimpr_cotr write Setimpr_cotr;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property alt_uni     : Boolean read Falt_uni write Setalt_uni;
    property finaliza     : Boolean read Ffinaliza write Setfinaliza;
    property balanco     : Boolean read Fbalanco write Setbalanco;
    property size_relatorio     : indefinido read Fsize_relatorio write Setsize_relatorio;
    property size_fundo_relatorio     : indefinido read Fsize_fundo_relatorio write Setsize_fundo_relatorio;
    property size_cliente     : indefinido read Fsize_cliente write Setsize_cliente;
    property com_vista     : Double read Fcom_vista write Setcom_vista;
    property com_prazo     : Double read Fcom_prazo write Setcom_prazo;
    property controle_validade     : Boolean read Fcontrole_validade write Setcontrole_validade;
    property controle_lote     : Boolean read Fcontrole_lote write Setcontrole_lote;
    property alerta_validade     : indefinido read Falerta_validade write Setalerta_validade;
    property cad_rural     : Boolean read Fcad_rural write Setcad_rural;
    property data_contabil     : Boolean read Fdata_contabil write Setdata_contabil;
    property orcamento     : indefinido read Forcamento write Setorcamento;
    property imprimir_cobraca     : Boolean read Fimprimir_cobraca write Setimprimir_cobraca;
    property detalhe_produto_entrada_nota     : Boolean read Fdetalhe_produto_entrada_nota write Setdetalhe_produto_entrada_nota;
    property cbdata_compra     : Integer read Fcbdata_compra write Setcbdata_compra;
    property chbdata_compra     : Boolean read Fchbdata_compra write Setchbdata_compra;
    property recebe_forma     : Integer read Frecebe_forma write Setrecebe_forma;
    property omitir_dup     : Boolean read Fomitir_dup write Setomitir_dup;
    property aliquota_sem_calculo     : Boolean read Faliquota_sem_calculo write Setaliquota_sem_calculo;
    property qtd_alerta_estque_minimo     : Integer read Fqtd_alerta_estque_minimo write Setqtd_alerta_estque_minimo;
    property tipo     : WideString read Ftipo write Settipo;
    property novo_metodo_desconto     : Boolean read Fnovo_metodo_desconto write Setnovo_metodo_desconto;
    property utilizar_limite_valor_nfenfce_para_usuario     : Boolean read Futilizar_limite_valor_nfenfce_para_usuario write Setutilizar_limite_valor_nfenfce_para_usuario;
    property validade_orcamento     : Integer read Fvalidade_orcamento write Setvalidade_orcamento;
    property contas_fixas_multiplos_clientes_mesmo_lote     : Boolean read Fcontas_fixas_multiplos_clientes_mesmo_lote write Setcontas_fixas_multiplos_clientes_mesmo_lote;
    property ultimo_nsu_incluido     : WideString read Fultimo_nsu_incluido write Setultimo_nsu_incluido;
    property codigo_ean     : Boolean read Fcodigo_ean write Setcodigo_ean;
    property referencia     : Boolean read Freferencia write Setreferencia;
    property codigo_fabricante     : Boolean read Fcodigo_fabricante write Setcodigo_fabricante;
    property imei     : Boolean read Fimei write Setimei;
    property chbestoque_bonificacao     : Boolean read Fchbestoque_bonificacao write Setchbestoque_bonificacao;
    property cbestoque_bonificacao     : Integer read Fcbestoque_bonificacao write Setcbestoque_bonificacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresascompra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresascompra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresascompra(Model).id;
Self.Fid_empresa         := TModelERPempresascompra(Model).id_empresa;
Self.Fconsulta_estoque         := TModelERPempresascompra(Model).consulta_estoque;
Self.Finformar_mes_contas_fixas         := TModelERPempresascompra(Model).informar_mes_contas_fixas;
Self.Fverificar_ociosidade_maquina         := TModelERPempresascompra(Model).verificar_ociosidade_maquina;
Self.Ftempo_ociosidade         := TModelERPempresascompra(Model).tempo_ociosidade;
Self.Fcst_conversao_sped_tributado         := TModelERPempresascompra(Model).cst_conversao_sped_tributado;
Self.Fcst_conversao_sped_isento         := TModelERPempresascompra(Model).cst_conversao_sped_isento;
Self.Fcst_conversao_sped_tributado_simples         := TModelERPempresascompra(Model).cst_conversao_sped_tributado_simples;
Self.Fcst_conversao_sped_isento_simples         := TModelERPempresascompra(Model).cst_conversao_sped_isento_simples;
Self.Fvisualizar_historico_os         := TModelERPempresascompra(Model).visualizar_historico_os;
Self.Fconverter_cst090_cfop5102         := TModelERPempresascompra(Model).converter_cst090_cfop5102;
Self.Fcst_conversao         := TModelERPempresascompra(Model).cst_conversao;
Self.Fcst_conversao_com_cfop6102         := TModelERPempresascompra(Model).cst_conversao_com_cfop6102;
Self.Fconverter_cst090_cfop6102         := TModelERPempresascompra(Model).converter_cst090_cfop6102;
Self.Fcliente_limite         := TModelERPempresascompra(Model).cliente_limite;
Self.Fcliente_tipo         := TModelERPempresascompra(Model).cliente_tipo;
Self.Fmenu_estilo         := TModelERPempresascompra(Model).menu_estilo;
Self.Fmenu_esquema         := TModelERPempresascompra(Model).menu_esquema;
Self.Fmenu_acentuado         := TModelERPempresascompra(Model).menu_acentuado;
Self.Fultnsubusc         := TModelERPempresascompra(Model).ultnsubusc;
Self.Fcod_uf         := TModelERPempresascompra(Model).cod_uf;
Self.Fordemcte         := TModelERPempresascompra(Model).ordemcte;
Self.Fpercentual_minimo_entrada         := TModelERPempresascompra(Model).percentual_minimo_entrada;
Self.Fimg_relatorio         := TModelERPempresascompra(Model).img_relatorio;
Self.Fimg_fundo_relatorio         := TModelERPempresascompra(Model).img_fundo_relatorio;
Self.Fimg_cliente         := TModelERPempresascompra(Model).img_cliente;
Self.Fbackup_bancos         := TModelERPempresascompra(Model).backup_bancos;
Self.Fdata_manutencao         := TModelERPempresascompra(Model).data_manutencao;
Self.Fmanutencao_automatica         := TModelERPempresascompra(Model).manutencao_automatica;
Self.Fmanutencao_pendente         := TModelERPempresascompra(Model).manutencao_pendente;
Self.Fmanutencao_intervalo         := TModelERPempresascompra(Model).manutencao_intervalo;
Self.Fabrir_plano_contas         := TModelERPempresascompra(Model).abrir_plano_contas;
Self.Fcst_conversao_sped_tributado101e102         := TModelERPempresascompra(Model).cst_conversao_sped_tributado101e102;
Self.Fcst_conversao_sped_isento203e400         := TModelERPempresascompra(Model).cst_conversao_sped_isento203e400;
Self.Fvalidacao_prevenda         := TModelERPempresascompra(Model).validacao_prevenda;
Self.Fcomplemento_icms         := TModelERPempresascompra(Model).complemento_icms;
Self.Fval_rel_venda         := TModelERPempresascompra(Model).val_rel_venda;
Self.Fpnl_pesquisa         := TModelERPempresascompra(Model).pnl_pesquisa;
Self.Fpnl_fonte         := TModelERPempresascompra(Model).pnl_fonte;
Self.Fpnl_negrito         := TModelERPempresascompra(Model).pnl_negrito;
Self.Fcbmarca         := TModelERPempresascompra(Model).cbmarca;
Self.Fchbmarca         := TModelERPempresascompra(Model).chbmarca;
Self.Fcblocalizacao         := TModelERPempresascompra(Model).cblocalizacao;
Self.Fchblocalizacao         := TModelERPempresascompra(Model).chblocalizacao;
Self.Fcbean         := TModelERPempresascompra(Model).cbean;
Self.Fchbean         := TModelERPempresascompra(Model).chbean;
Self.Fcbreferencia         := TModelERPempresascompra(Model).cbreferencia;
Self.Fchbreferencia         := TModelERPempresascompra(Model).chbreferencia;
Self.Fcbfabricante         := TModelERPempresascompra(Model).cbfabricante;
Self.Fchbfabricante         := TModelERPempresascompra(Model).chbfabricante;
Self.Fcbmarca_modelo         := TModelERPempresascompra(Model).cbmarca_modelo;
Self.Fchbmarca_modelo         := TModelERPempresascompra(Model).chbmarca_modelo;
Self.Fpre_venda_inc_qtd         := TModelERPempresascompra(Model).pre_venda_inc_qtd;
Self.Fdesconto_formacao         := TModelERPempresascompra(Model).desconto_formacao;
Self.Fsel_prod         := TModelERPempresascompra(Model).sel_prod;
Self.Fid_caixa_sangria         := TModelERPempresascompra(Model).id_caixa_sangria;
Self.Fmdfe         := TModelERPempresascompra(Model).mdfe;
Self.Fimpr_cotr         := TModelERPempresascompra(Model).impr_cotr;
Self.Fintervalo         := TModelERPempresascompra(Model).intervalo;
Self.Falt_uni         := TModelERPempresascompra(Model).alt_uni;
Self.Ffinaliza         := TModelERPempresascompra(Model).finaliza;
Self.Fbalanco         := TModelERPempresascompra(Model).balanco;
Self.Fsize_relatorio         := TModelERPempresascompra(Model).size_relatorio;
Self.Fsize_fundo_relatorio         := TModelERPempresascompra(Model).size_fundo_relatorio;
Self.Fsize_cliente         := TModelERPempresascompra(Model).size_cliente;
Self.Fcom_vista         := TModelERPempresascompra(Model).com_vista;
Self.Fcom_prazo         := TModelERPempresascompra(Model).com_prazo;
Self.Fcontrole_validade         := TModelERPempresascompra(Model).controle_validade;
Self.Fcontrole_lote         := TModelERPempresascompra(Model).controle_lote;
Self.Falerta_validade         := TModelERPempresascompra(Model).alerta_validade;
Self.Fcad_rural         := TModelERPempresascompra(Model).cad_rural;
Self.Fdata_contabil         := TModelERPempresascompra(Model).data_contabil;
Self.Forcamento         := TModelERPempresascompra(Model).orcamento;
Self.Fimprimir_cobraca         := TModelERPempresascompra(Model).imprimir_cobraca;
Self.Fdetalhe_produto_entrada_nota         := TModelERPempresascompra(Model).detalhe_produto_entrada_nota;
Self.Fcbdata_compra         := TModelERPempresascompra(Model).cbdata_compra;
Self.Fchbdata_compra         := TModelERPempresascompra(Model).chbdata_compra;
Self.Frecebe_forma         := TModelERPempresascompra(Model).recebe_forma;
Self.Fomitir_dup         := TModelERPempresascompra(Model).omitir_dup;
Self.Faliquota_sem_calculo         := TModelERPempresascompra(Model).aliquota_sem_calculo;
Self.Fqtd_alerta_estque_minimo         := TModelERPempresascompra(Model).qtd_alerta_estque_minimo;
Self.Ftipo         := TModelERPempresascompra(Model).tipo;
Self.Fnovo_metodo_desconto         := TModelERPempresascompra(Model).novo_metodo_desconto;
Self.Futilizar_limite_valor_nfenfce_para_usuario         := TModelERPempresascompra(Model).utilizar_limite_valor_nfenfce_para_usuario;
Self.Fvalidade_orcamento         := TModelERPempresascompra(Model).validade_orcamento;
Self.Fcontas_fixas_multiplos_clientes_mesmo_lote         := TModelERPempresascompra(Model).contas_fixas_multiplos_clientes_mesmo_lote;
Self.Fultimo_nsu_incluido         := TModelERPempresascompra(Model).ultimo_nsu_incluido;
Self.Fcodigo_ean         := TModelERPempresascompra(Model).codigo_ean;
Self.Freferencia         := TModelERPempresascompra(Model).referencia;
Self.Fcodigo_fabricante         := TModelERPempresascompra(Model).codigo_fabricante;
Self.Fimei         := TModelERPempresascompra(Model).imei;
Self.Fchbestoque_bonificacao         := TModelERPempresascompra(Model).chbestoque_bonificacao;
Self.Fcbestoque_bonificacao         := TModelERPempresascompra(Model).cbestoque_bonificacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresascompra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresascompra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresascompra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresascompra.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresascompra.Setconsulta_estoque(const Value: Boolean);   
begin                
  Fconsulta_estoque := Value;   
end;                 

procedure TModelERPempresascompra.Setinformar_mes_contas_fixas(const Value: Boolean);   
begin                
  Finformar_mes_contas_fixas := Value;   
end;                 

procedure TModelERPempresascompra.Setverificar_ociosidade_maquina(const Value: Boolean);   
begin                
  Fverificar_ociosidade_maquina := Value;   
end;                 

procedure TModelERPempresascompra.Settempo_ociosidade(const Value: Boolean);   
begin                
  Ftempo_ociosidade := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_tributado(const Value: Boolean);   
begin                
  Fcst_conversao_sped_tributado := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_isento(const Value: Boolean);   
begin                
  Fcst_conversao_sped_isento := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_tributado_simples(const Value: Boolean);   
begin                
  Fcst_conversao_sped_tributado_simples := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_isento_simples(const Value: Boolean);   
begin                
  Fcst_conversao_sped_isento_simples := Value;   
end;                 

procedure TModelERPempresascompra.Setvisualizar_historico_os(const Value: Boolean);   
begin                
  Fvisualizar_historico_os := Value;   
end;                 

procedure TModelERPempresascompra.Setconverter_cst090_cfop5102(const Value: Boolean);   
begin                
  Fconverter_cst090_cfop5102 := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao(const Value: Boolean);   
begin                
  Fcst_conversao := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_com_cfop6102(const Value: Boolean);   
begin                
  Fcst_conversao_com_cfop6102 := Value;   
end;                 

procedure TModelERPempresascompra.Setconverter_cst090_cfop6102(const Value: Boolean);   
begin                
  Fconverter_cst090_cfop6102 := Value;   
end;                 

procedure TModelERPempresascompra.Setcliente_limite(const Value: Boolean);   
begin                
  Fcliente_limite := Value;   
end;                 

procedure TModelERPempresascompra.Setcliente_tipo(const Value: Boolean);   
begin                
  Fcliente_tipo := Value;   
end;                 

procedure TModelERPempresascompra.Setmenu_estilo(const Value: Boolean);   
begin                
  Fmenu_estilo := Value;   
end;                 

procedure TModelERPempresascompra.Setmenu_esquema(const Value: Boolean);   
begin                
  Fmenu_esquema := Value;   
end;                 

procedure TModelERPempresascompra.Setmenu_acentuado(const Value: Boolean);   
begin                
  Fmenu_acentuado := Value;   
end;                 

procedure TModelERPempresascompra.Setultnsubusc(const Value: Boolean);   
begin                
  Fultnsubusc := Value;   
end;                 

procedure TModelERPempresascompra.Setcod_uf(const Value: Boolean);   
begin                
  Fcod_uf := Value;   
end;                 

procedure TModelERPempresascompra.Setordemcte(const Value: Boolean);   
begin                
  Fordemcte := Value;   
end;                 

procedure TModelERPempresascompra.Setpercentual_minimo_entrada(const Value: Boolean);   
begin                
  Fpercentual_minimo_entrada := Value;   
end;                 

procedure TModelERPempresascompra.Setimg_relatorio(const Value: Boolean);   
begin                
  Fimg_relatorio := Value;   
end;                 

procedure TModelERPempresascompra.Setimg_fundo_relatorio(const Value: Boolean);   
begin                
  Fimg_fundo_relatorio := Value;   
end;                 

procedure TModelERPempresascompra.Setimg_cliente(const Value: Boolean);   
begin                
  Fimg_cliente := Value;   
end;                 

procedure TModelERPempresascompra.Setbackup_bancos(const Value: Boolean);   
begin                
  Fbackup_bancos := Value;   
end;                 

procedure TModelERPempresascompra.Setdata_manutencao(const Value: Boolean);   
begin                
  Fdata_manutencao := Value;   
end;                 

procedure TModelERPempresascompra.Setmanutencao_automatica(const Value: Boolean);   
begin                
  Fmanutencao_automatica := Value;   
end;                 

procedure TModelERPempresascompra.Setmanutencao_pendente(const Value: Boolean);   
begin                
  Fmanutencao_pendente := Value;   
end;                 

procedure TModelERPempresascompra.Setmanutencao_intervalo(const Value: Boolean);   
begin                
  Fmanutencao_intervalo := Value;   
end;                 

procedure TModelERPempresascompra.Setabrir_plano_contas(const Value: Boolean);   
begin                
  Fabrir_plano_contas := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_tributado101e102(const Value: Boolean);   
begin                
  Fcst_conversao_sped_tributado101e102 := Value;   
end;                 

procedure TModelERPempresascompra.Setcst_conversao_sped_isento203e400(const Value: Boolean);   
begin                
  Fcst_conversao_sped_isento203e400 := Value;   
end;                 

procedure TModelERPempresascompra.Setvalidacao_prevenda(const Value: Boolean);   
begin                
  Fvalidacao_prevenda := Value;   
end;                 

procedure TModelERPempresascompra.Setcomplemento_icms(const Value: Boolean);   
begin                
  Fcomplemento_icms := Value;   
end;                 

procedure TModelERPempresascompra.Setval_rel_venda(const Value: Boolean);   
begin                
  Fval_rel_venda := Value;   
end;                 

procedure TModelERPempresascompra.Setpnl_pesquisa(const Value: Boolean);   
begin                
  Fpnl_pesquisa := Value;   
end;                 

procedure TModelERPempresascompra.Setpnl_fonte(const Value: Boolean);   
begin                
  Fpnl_fonte := Value;   
end;                 

procedure TModelERPempresascompra.Setpnl_negrito(const Value: Boolean);   
begin                
  Fpnl_negrito := Value;   
end;                 

procedure TModelERPempresascompra.Setcbmarca(const Value: Boolean);   
begin                
  Fcbmarca := Value;   
end;                 

procedure TModelERPempresascompra.Setchbmarca(const Value: Boolean);   
begin                
  Fchbmarca := Value;   
end;                 

procedure TModelERPempresascompra.Setcblocalizacao(const Value: Boolean);   
begin                
  Fcblocalizacao := Value;   
end;                 

procedure TModelERPempresascompra.Setchblocalizacao(const Value: Boolean);   
begin                
  Fchblocalizacao := Value;   
end;                 

procedure TModelERPempresascompra.Setcbean(const Value: Boolean);   
begin                
  Fcbean := Value;   
end;                 

procedure TModelERPempresascompra.Setchbean(const Value: Boolean);   
begin                
  Fchbean := Value;   
end;                 

procedure TModelERPempresascompra.Setcbreferencia(const Value: Boolean);   
begin                
  Fcbreferencia := Value;   
end;                 

procedure TModelERPempresascompra.Setchbreferencia(const Value: Boolean);   
begin                
  Fchbreferencia := Value;   
end;                 

procedure TModelERPempresascompra.Setcbfabricante(const Value: Boolean);   
begin                
  Fcbfabricante := Value;   
end;                 

procedure TModelERPempresascompra.Setchbfabricante(const Value: Boolean);   
begin                
  Fchbfabricante := Value;   
end;                 

procedure TModelERPempresascompra.Setcbmarca_modelo(const Value: Boolean);   
begin                
  Fcbmarca_modelo := Value;   
end;                 

procedure TModelERPempresascompra.Setchbmarca_modelo(const Value: Boolean);   
begin                
  Fchbmarca_modelo := Value;   
end;                 

procedure TModelERPempresascompra.Setpre_venda_inc_qtd(const Value: Boolean);   
begin                
  Fpre_venda_inc_qtd := Value;   
end;                 

procedure TModelERPempresascompra.Setdesconto_formacao(const Value: Boolean);   
begin                
  Fdesconto_formacao := Value;   
end;                 

procedure TModelERPempresascompra.Setsel_prod(const Value: Boolean);   
begin                
  Fsel_prod := Value;   
end;                 

procedure TModelERPempresascompra.Setid_caixa_sangria(const Value: Boolean);   
begin                
  Fid_caixa_sangria := Value;   
end;                 

procedure TModelERPempresascompra.Setmdfe(const Value: Boolean);   
begin                
  Fmdfe := Value;   
end;                 

procedure TModelERPempresascompra.Setimpr_cotr(const Value: Boolean);   
begin                
  Fimpr_cotr := Value;   
end;                 

procedure TModelERPempresascompra.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPempresascompra.Setalt_uni(const Value: Boolean);   
begin                
  Falt_uni := Value;   
end;                 

procedure TModelERPempresascompra.Setfinaliza(const Value: Boolean);   
begin                
  Ffinaliza := Value;   
end;                 

procedure TModelERPempresascompra.Setbalanco(const Value: Boolean);   
begin                
  Fbalanco := Value;   
end;                 

procedure TModelERPempresascompra.Setsize_relatorio(const Value: Boolean);   
begin                
  Fsize_relatorio := Value;   
end;                 

procedure TModelERPempresascompra.Setsize_fundo_relatorio(const Value: Boolean);   
begin                
  Fsize_fundo_relatorio := Value;   
end;                 

procedure TModelERPempresascompra.Setsize_cliente(const Value: Boolean);   
begin                
  Fsize_cliente := Value;   
end;                 

procedure TModelERPempresascompra.Setcom_vista(const Value: Boolean);   
begin                
  Fcom_vista := Value;   
end;                 

procedure TModelERPempresascompra.Setcom_prazo(const Value: Boolean);   
begin                
  Fcom_prazo := Value;   
end;                 

procedure TModelERPempresascompra.Setcontrole_validade(const Value: Boolean);   
begin                
  Fcontrole_validade := Value;   
end;                 

procedure TModelERPempresascompra.Setcontrole_lote(const Value: Boolean);   
begin                
  Fcontrole_lote := Value;   
end;                 

procedure TModelERPempresascompra.Setalerta_validade(const Value: Boolean);   
begin                
  Falerta_validade := Value;   
end;                 

procedure TModelERPempresascompra.Setcad_rural(const Value: Boolean);   
begin                
  Fcad_rural := Value;   
end;                 

procedure TModelERPempresascompra.Setdata_contabil(const Value: Boolean);   
begin                
  Fdata_contabil := Value;   
end;                 

procedure TModelERPempresascompra.Setorcamento(const Value: Boolean);   
begin                
  Forcamento := Value;   
end;                 

procedure TModelERPempresascompra.Setimprimir_cobraca(const Value: Boolean);   
begin                
  Fimprimir_cobraca := Value;   
end;                 

procedure TModelERPempresascompra.Setdetalhe_produto_entrada_nota(const Value: Boolean);   
begin                
  Fdetalhe_produto_entrada_nota := Value;   
end;                 

procedure TModelERPempresascompra.Setcbdata_compra(const Value: Boolean);   
begin                
  Fcbdata_compra := Value;   
end;                 

procedure TModelERPempresascompra.Setchbdata_compra(const Value: Boolean);   
begin                
  Fchbdata_compra := Value;   
end;                 

procedure TModelERPempresascompra.Setrecebe_forma(const Value: Boolean);   
begin                
  Frecebe_forma := Value;   
end;                 

procedure TModelERPempresascompra.Setomitir_dup(const Value: Boolean);   
begin                
  Fomitir_dup := Value;   
end;                 

procedure TModelERPempresascompra.Setaliquota_sem_calculo(const Value: Boolean);   
begin                
  Faliquota_sem_calculo := Value;   
end;                 

procedure TModelERPempresascompra.Setqtd_alerta_estque_minimo(const Value: Boolean);   
begin                
  Fqtd_alerta_estque_minimo := Value;   
end;                 

procedure TModelERPempresascompra.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPempresascompra.Setnovo_metodo_desconto(const Value: Boolean);   
begin                
  Fnovo_metodo_desconto := Value;   
end;                 

procedure TModelERPempresascompra.Setutilizar_limite_valor_nfenfce_para_usuario(const Value: Boolean);   
begin                
  Futilizar_limite_valor_nfenfce_para_usuario := Value;   
end;                 

procedure TModelERPempresascompra.Setvalidade_orcamento(const Value: Boolean);   
begin                
  Fvalidade_orcamento := Value;   
end;                 

procedure TModelERPempresascompra.Setcontas_fixas_multiplos_clientes_mesmo_lote(const Value: Boolean);   
begin                
  Fcontas_fixas_multiplos_clientes_mesmo_lote := Value;   
end;                 

procedure TModelERPempresascompra.Setultimo_nsu_incluido(const Value: Boolean);   
begin                
  Fultimo_nsu_incluido := Value;   
end;                 

procedure TModelERPempresascompra.Setcodigo_ean(const Value: Boolean);   
begin                
  Fcodigo_ean := Value;   
end;                 

procedure TModelERPempresascompra.Setreferencia(const Value: Boolean);   
begin                
  Freferencia := Value;   
end;                 

procedure TModelERPempresascompra.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPempresascompra.Setimei(const Value: Boolean);   
begin                
  Fimei := Value;   
end;                 

procedure TModelERPempresascompra.Setchbestoque_bonificacao(const Value: Boolean);   
begin                
  Fchbestoque_bonificacao := Value;   
end;                 

procedure TModelERPempresascompra.Setcbestoque_bonificacao(const Value: Boolean);   
begin                
  Fcbestoque_bonificacao := Value;   
end;                 


end.
