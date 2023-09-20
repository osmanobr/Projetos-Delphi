
unit View.ERP.efd_;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.efd_, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPefd = class(TForm) 
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
    FController : TControllerERPefd; 
    Fid : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fcnpj : WideString;
    Finscricao_estadual : WideString;
    Ffone1 : WideString;
    Ffone2 : WideString;
    Ffax : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fuf : WideString;
    Frepresentante_legal : WideString;
    Ftipo_empresa : WideString;
    Fhostname : WideString;
    Fdatabase : WideString;
    Fporta : WideString;
    Fusuariodbms : WideString;
    Fsenhadbms : WideString;
    Fdata_cadastro : TDateTime;
    Fcta_vendas : WideString;
    Fcta_compra : WideString;
    Fcta_recparcela : WideString;
    Fcta_estparcela : WideString;
    Fcta_pagparcela : WideString;
    Fcta_depbancario : WideString;
    Fcta_emissaocheq : WideString;
    Fcta_estcaixa : WideString;
    Fcta_estbanco : WideString;
    Fcta_jrorecebido : WideString;
    Fcta_jropago : WideString;
    Fcta_descrecebido : WideString;
    Fcta_descpago : WideString;
    Fcta_devolvenda : WideString;
    Fdesc_rateio : WideString;
    Fmensagem_promocional : WideString;
    Fmodelo_duplicata : WideString;
    Fmodelo_recibo : WideString;
    Fmodelo_nota : WideString;
    Fqtd_itensnota : Integer;
    Ftam_pagnota : Integer;
    Fseq_nronota : Integer;
    Fimprime_nota : WideString;
    Fimprime_vendedor : WideString;
    Festoque_negativo : WideString;
    Ftexto_cobranca : indefinido;
    Fcusto_operacional : Double;
    Fcusto_financeiro : Double;
    Fjuro_dia : Double;
    Fcfop_avista : Integer;
    Fcfop_aprazo : Integer;
    Fclick : Boolean;
    Fsalto_nota : Integer;
    Fcaminho_nota : WideString;
    Fcotacao : WideString;
    Fcomissao_decrescente : WideString;
    Fintervalo_a1 : Double;
    Fintervalo_a2 : Double;
    Fintervalo_b1 : Double;
    Fintervalo_b2 : Double;
    Fintervalo_c1 : Double;
    Fintervalo_c2 : Double;
    Fintervalo_d1 : Double;
    Fintervalo_d2 : Double;
    Fintervalo_e1 : Double;
    Fintervalo_f1 : Double;
    Fintervalo_f2 : Double;
    Fintervalo_g1 : Double;
    Fintervalo_g2 : Double;
    Fintervalo_h1 : Double;
    Fintervalo_h2 : Double;
    Fintervalo_i1 : Double;
    Fintervalo_i2 : Double;
    Fintervalo_j1 : Double;
    Fintervalo_j2 : Double;
    Fintervalo_l1 : Double;
    Fintervalo_l2 : Double;
    Fintervalo_m1 : Double;
    Fintervalo_m2 : Double;
    Fcomissao_a : Double;
    Fcomissao_b : Double;
    Fcomissao_c : Double;
    Fcomissao_d : Double;
    Fcomissao_e : Double;
    Fcomissao_f : Double;
    Fcomissao_g : Double;
    Fcomissao_h : Double;
    Fcomissao_i : Double;
    Fcomissao_j : Double;
    Fcomissao_l : Double;
    Fcomissao_m : Double;
    Fintervalo_e2 : Double;
    Fsalto_duplicata : Integer;
    Fimagem : Boolean;
    Farquivo_imagem : WideString;
    Fproduto_conjugado : WideString;
    Frateio_comissao : WideString;
    Fcta_vendas_aprazo : WideString;
    Fformacao_preco : WideString;
    Fnosso_numero : WideString;
    Fidentifica_cupom : WideString;
    Fatividade : WideString;
    Fvenda_rapida : WideString;
    Fgrade : WideString;
    Fdata_analise : TDateTime;
    Fcta_suprimento : WideString;
    Fcta_sangria : WideString;
    Fcta_os : WideString;
    Fbancocodigo : WideString;
    Fbanconome : WideString;
    Fcedentecodigo : WideString;
    Fcedentecodigodigito : WideString;
    Fcarteira : WideString;
    Fagenciacodigo : WideString;
    Fagenciadigito : WideString;
    Fagencianome : WideString;
    Fcontanumero : WideString;
    Fcontanumerodigito : WideString;
    Fproximonossonumero : WideString;
    Fsalto_etiqueta1 : Integer;
    Fsalto_etiqueta2 : Integer;
    Fsalto_etiqueta3 : Integer;
    Fsalto_etiqueta4 : Integer;
    Ffiltro_nome : WideString;
    Fdir_sistema : WideString;
    Fdir_banco : WideString;
    Fvalorreceber_maior : WideString;
    Fcfop_devolucao : Integer;
    Fdevolucao_financeiro : WideString;
    Fvendedor_venda : WideString;
    Finstrucoes : WideString;
    Fforma_boleto : Integer;
    Fcupom_automatico : WideString;
    Fsimples : Double;
    Fvl_enc_federal : Double;
    Fvl_enc_estadual : Double;
    Fconvenio : WideString;
    Ftipo_convenio : WideString;
    Fdir_backup : WideString;
    Fmodelo_carne : WideString;
    Fiss : Double;
    Fqtd_itensnotaservico : Integer;
    Ftexto_aniversario : indefinido;
    Fordemproc_produto : WideString;
    Fextrato_produto : WideString;
    Fboleto : WideString;
    Fsalto_boleto : Integer;
    Fcliente_coringa : Integer;
    Fmostra_conta : WideString;
    Fnumero : WideString;
    Fcep : WideString;
    Fresponsavel : WideString;
    Fst : Boolean;
    Fipi : Boolean;
    Findustria : WideString;
    Flocacao : WideString;
    Fobs_orcamento : WideString;
    Finsc_mun : WideString;
    Fnfe : WideString;
    Fsupervisor : WideString;
    Fsalto_etiqueta5 : Integer;
    Fjuro_carencia : Integer;
    Fbaixa_simples : WideString;
    Fobs_carne1 : WideString;
    Fobs_carne2 : WideString;
    Fobs_carne3 : WideString;
    Fobs_carne4 : WideString;
    Fobs_carne5 : WideString;
    Fobs_carne6 : WideString;
    Fvenda_maior : WideString;
    Fsubstituto_tributario : WideString;
    Fdiretorio_fotos : WideString;
    Fobs_carne7 : WideString;
    Fobs_carne8 : WideString;
    Fmodelo_ficha : WideString;
    Fpis : Double;
    Fcofins : Double;
    Fajusta_fatura : WideString;
    Fsimples_nacional : Boolean;
    Fproduto_consulta : WideString;
    Fmodelo_orcamento : WideString;
    Fmodelo_expedicao : WideString;
    Fdias_backup : Integer;
    Fimprime_notad1 : WideString;
    Ffarmacia_popular : Boolean;
    Ffpb : Integer;
    Firpj : Double;
    Fcont_social : Double;
    Fcasas_decimais : Double;
    Ftipo_desconto : WideString;
    Fcusto_servico : Double;
    Ftipo_juro_venda : WideString;
    Fbloqueio_automatico : WideString;
    Fcontrole_caixa : Boolean;
    Ftipo_juro : WideString;
    Faproveitamento_credito_atacado : Boolean;
    Ficms_saida : Double;
    Fcompras_red_fora : Boolean;
    Fcompras_red_dentro : Boolean;
    Fatacado : Boolean;
    Faprazo : Boolean;
    Fid_tabela_preco : Integer;
    Fmulta : Double;
    Ftributado : WideString;
    Fsubstituicao : WideString;
    Fisento : WideString;
    Freducao : Double;
    Fcredencial : Integer;
    Fcontroleestoquevenda : Boolean;
    Fcta_transf_saida : WideString;
    Fcta_transf_entrada : WideString;
    Fcta_estorno_emissao_cheque : WideString;
    Fcta_custodia : WideString;
    Fcta_estorno_custodia : WideString;
    Fcta_juros_custodia : WideString;
    Fcta_estorno_juros_custodia : WideString;
    Fcta_estorno_pagamento : WideString;
    Fcta_taxa_juros : WideString;
    Frazao_social : WideString;
    Fcelular : WideString;
    Fcontato : WideString;
    Fparceiro : WideString;
    Fcta_recebimento_cartao : WideString;
    Fobs_promissoria : WideString;
    Fboleto_novo : Boolean;
    Fmodelo_contrato_locacao : WideString;
    Felimina_zero : Boolean;
    Feliminar_digito_fabricante : Boolean;
    Fcta_trocaproduto : WideString;
    Fforma_pgto_compras : WideString;
    Fcfop_tributado_interno : Integer;
    Fcfop_tributado_externo : Integer;
    Fcfop_subst_interno : Integer;
    Fcfop_subst_externo : Integer;
    Fcfop_naoincidencia_interno : Integer;
    Fcfop_naoincidencia_externo : Integer;
    Fcfop_isento_interno : Integer;
    Fcfop_isento_externo : Integer;
    Fcfop_tribpautafiscal_interno : Integer;
    Fcfop_tribpautafiscal_externo : Integer;
    Fparametro_troca : WideString;
    Fcliente_consumidor : Integer;
    Fcfop_devolucao_venda : Integer;
    Ftroca_nfe : Boolean;
    Flocalizacao_orcamento : WideString;
    Fproduto_tributado : WideString;
    Fproduto_substituicao : WideString;
    Fproduto_isento : WideString;
    Fproduto_reducao : Double;
    Fhora_reducao_z : WideString;
    Fbuscar_ean_letra : Boolean;
    Fimprimir_cod_fabric_cupom : Boolean;
    Fremessa_antigo : Boolean;
    Fcaixa_baixa_simples : Integer;
    Fvisualizacao_antecipada_locacao : Integer;
    Fantecipar_locacao : Boolean;
    Fsenha_usuario_quitar_contareceber : Boolean;
    Fconta_receber_sem_banco : Boolean;
    Futilizar_caixa_exclusivo : Boolean;
    Fcaixa_exclusivo : Integer;
    Ftipo_entrada_compras : Boolean;
    Fcta_insumos : WideString;
    Fcta_almoxarifado : WideString;
    Fcta_pag_funcionario : WideString;
    Futilizar_controle_financeiro_comissao : Boolean;
    Fcta_cheque_emitido : WideString;
    Fcontrole_fabricante : Boolean;
    Fdesossa_aut : Boolean;
    Fmovimento_food : Boolean;
    Fpesquisa_venda : Integer;
    Fnfce : WideString;
    Ftrabalha_nfce : Boolean;
    Ftolerancia_ponto : Integer;
    Fvenda : WideString;
    Fexpedicao : WideString;
    Fromaneio : WideString;
    Fcotacaop : WideString;
    Fcfop_venda_entrega_futura : Integer;
    Fcfop_entrega_futura : Integer;
    Fcfop_entrega_fut_fora_estado : Integer;
    Fcfop_venda_fut_fora_estado : Integer;
    Frelatorio_gerencia_servico : Boolean;
    Fpasta_xml : WideString;
    Fimagem_fundo : WideString;
    Fpasta_nfe : WideString;
    Fregime_especial_st : Boolean;
    Fconfissao_divida : Boolean;
    Futiliza_duplicata_grande : Boolean;
    Fcontrola_serial_celular : Boolean;
    Fcfop_devolucao_compra_interestadual : Integer;
    Fcfop_devolucao_venda_interestadual : Integer;
    Fnota_promissoria : Boolean;
    Fexplodir_kit : Boolean;
    Festoque_subsequente : Boolean;
    Fvalidar_fornecedor : Boolean;
    Fos_sem_veiculo : Boolean;
    Finformar_cfop_saida : Boolean;
    Fcfop_transferencia : Integer;
    Fcfop_transferencia_interestadual : Integer;
    Fcfop_retorno_mercadoria : Integer;
    Fcfop_retorno_mercadoria_interestadual : Integer;
    Fcfop_entrada_produto : Integer;
    Fcfop_entrada_produto_interestadual : Integer;
    Fvalidar_cliente : Boolean;
    Fimagem_tela_inicial : WideString;
    Fkit_baixar_filhos : Boolean;
    Fpadrao_central_custodia : Boolean;
    Ftipo_balanca : Integer;
    Fpath_balanca : WideString;
    Ffilial_produtos : Boolean;
    Ffilial_clientes : Boolean;
    Ffilial_fornecedor : Boolean;
    Fhost_matriz : WideString;
    Ffaturar_aluguel_locacao : Boolean;
    Fcta_imposto_sindicato : WideString;
    Fcta_imposto_inss : WideString;
    Flancamento_inss_sindicato : Boolean;
    Fparceiro_conta_pagar : Boolean;
    Ftroco_troca : Boolean;
    Fmovimentacao_data_saida : Boolean;
    Fsalto_orcamento : Integer;
    Fsenhas_criptografadas : Boolean;
    Fqtd_produtos_orcamento : Integer;
    Fqtd_servico_orcamento : Integer;
    Fnumero_pag_orcamento : Integer;
    Ficms2016 : Boolean;
    Fplano_conta_13digitos : Boolean;
    Fconsulta_produto_especifico : Boolean;
    Freducao_nfe : Boolean;
    Finforma_venda_em_aberto : Boolean;
    Fconversao_sped_simples_nacional : Boolean;
    Fvisualizar_vendas : Boolean;
    Facrescimo_frete : Boolean;
    Fpasta_retorno : WideString;
    Fdata_hora_nfe : Boolean;
    Femail_nfe : Boolean;
    Fmotorista : Boolean;
    Forcamento_peso_bruto : Boolean;
    Fmensagem_carne : WideString;
    Fbanco_contas_fixas : Boolean;
    Fcpf : WideString;
    Fjuros_mes : Double;
    Fcidade : WideString;
    Fcte : WideString;
    Fsimples_subst : Double;
    Fcta_contas_fixas : WideString;
    Fseq_lote : Integer;
    Fnumero_filial : Integer;
    Fdata_base_matriz : WideString;
    Ffilial_documentos : Boolean;
    Fcta_vendacredito_cliente : WideString;
    Fcta_geracaocredito_cliente : WideString;
    Fcta_recebimento_duplicata_credito_cliente : WideString;
    Fcta_estorno_credito_cliente : WideString;
    Ftimezone : WideString;
    Ftimezone_utc : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setinscricao_estadual(const Value : WideString);
    procedure Setfone1(const Value : WideString);
    procedure Setfone2(const Value : WideString);
    procedure Setfax(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setuf(const Value : WideString);
    procedure Setrepresentante_legal(const Value : WideString);
    procedure Settipo_empresa(const Value : WideString);
    procedure Sethostname(const Value : WideString);
    procedure Setdatabase(const Value : WideString);
    procedure Setporta(const Value : WideString);
    procedure Setusuariodbms(const Value : WideString);
    procedure Setsenhadbms(const Value : WideString);
    procedure Setdata_cadastro(const Value : TDateTime);
    procedure Setcta_vendas(const Value : WideString);
    procedure Setcta_compra(const Value : WideString);
    procedure Setcta_recparcela(const Value : WideString);
    procedure Setcta_estparcela(const Value : WideString);
    procedure Setcta_pagparcela(const Value : WideString);
    procedure Setcta_depbancario(const Value : WideString);
    procedure Setcta_emissaocheq(const Value : WideString);
    procedure Setcta_estcaixa(const Value : WideString);
    procedure Setcta_estbanco(const Value : WideString);
    procedure Setcta_jrorecebido(const Value : WideString);
    procedure Setcta_jropago(const Value : WideString);
    procedure Setcta_descrecebido(const Value : WideString);
    procedure Setcta_descpago(const Value : WideString);
    procedure Setcta_devolvenda(const Value : WideString);
    procedure Setdesc_rateio(const Value : WideString);
    procedure Setmensagem_promocional(const Value : WideString);
    procedure Setmodelo_duplicata(const Value : WideString);
    procedure Setmodelo_recibo(const Value : WideString);
    procedure Setmodelo_nota(const Value : WideString);
    procedure Setqtd_itensnota(const Value : Integer);
    procedure Settam_pagnota(const Value : Integer);
    procedure Setseq_nronota(const Value : Integer);
    procedure Setimprime_nota(const Value : WideString);
    procedure Setimprime_vendedor(const Value : WideString);
    procedure Setestoque_negativo(const Value : WideString);
    procedure Settexto_cobranca(const Value : indefinido);
    procedure Setcusto_operacional(const Value : Double);
    procedure Setcusto_financeiro(const Value : Double);
    procedure Setjuro_dia(const Value : Double);
    procedure Setcfop_avista(const Value : Integer);
    procedure Setcfop_aprazo(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setsalto_nota(const Value : Integer);
    procedure Setcaminho_nota(const Value : WideString);
    procedure Setcotacao(const Value : WideString);
    procedure Setcomissao_decrescente(const Value : WideString);
    procedure Setintervalo_a1(const Value : Double);
    procedure Setintervalo_a2(const Value : Double);
    procedure Setintervalo_b1(const Value : Double);
    procedure Setintervalo_b2(const Value : Double);
    procedure Setintervalo_c1(const Value : Double);
    procedure Setintervalo_c2(const Value : Double);
    procedure Setintervalo_d1(const Value : Double);
    procedure Setintervalo_d2(const Value : Double);
    procedure Setintervalo_e1(const Value : Double);
    procedure Setintervalo_f1(const Value : Double);
    procedure Setintervalo_f2(const Value : Double);
    procedure Setintervalo_g1(const Value : Double);
    procedure Setintervalo_g2(const Value : Double);
    procedure Setintervalo_h1(const Value : Double);
    procedure Setintervalo_h2(const Value : Double);
    procedure Setintervalo_i1(const Value : Double);
    procedure Setintervalo_i2(const Value : Double);
    procedure Setintervalo_j1(const Value : Double);
    procedure Setintervalo_j2(const Value : Double);
    procedure Setintervalo_l1(const Value : Double);
    procedure Setintervalo_l2(const Value : Double);
    procedure Setintervalo_m1(const Value : Double);
    procedure Setintervalo_m2(const Value : Double);
    procedure Setcomissao_a(const Value : Double);
    procedure Setcomissao_b(const Value : Double);
    procedure Setcomissao_c(const Value : Double);
    procedure Setcomissao_d(const Value : Double);
    procedure Setcomissao_e(const Value : Double);
    procedure Setcomissao_f(const Value : Double);
    procedure Setcomissao_g(const Value : Double);
    procedure Setcomissao_h(const Value : Double);
    procedure Setcomissao_i(const Value : Double);
    procedure Setcomissao_j(const Value : Double);
    procedure Setcomissao_l(const Value : Double);
    procedure Setcomissao_m(const Value : Double);
    procedure Setintervalo_e2(const Value : Double);
    procedure Setsalto_duplicata(const Value : Integer);
    procedure Setimagem(const Value : Boolean);
    procedure Setarquivo_imagem(const Value : WideString);
    procedure Setproduto_conjugado(const Value : WideString);
    procedure Setrateio_comissao(const Value : WideString);
    procedure Setcta_vendas_aprazo(const Value : WideString);
    procedure Setformacao_preco(const Value : WideString);
    procedure Setnosso_numero(const Value : WideString);
    procedure Setidentifica_cupom(const Value : WideString);
    procedure Setatividade(const Value : WideString);
    procedure Setvenda_rapida(const Value : WideString);
    procedure Setgrade(const Value : WideString);
    procedure Setdata_analise(const Value : TDateTime);
    procedure Setcta_suprimento(const Value : WideString);
    procedure Setcta_sangria(const Value : WideString);
    procedure Setcta_os(const Value : WideString);
    procedure Setbancocodigo(const Value : WideString);
    procedure Setbanconome(const Value : WideString);
    procedure Setcedentecodigo(const Value : WideString);
    procedure Setcedentecodigodigito(const Value : WideString);
    procedure Setcarteira(const Value : WideString);
    procedure Setagenciacodigo(const Value : WideString);
    procedure Setagenciadigito(const Value : WideString);
    procedure Setagencianome(const Value : WideString);
    procedure Setcontanumero(const Value : WideString);
    procedure Setcontanumerodigito(const Value : WideString);
    procedure Setproximonossonumero(const Value : WideString);
    procedure Setsalto_etiqueta1(const Value : Integer);
    procedure Setsalto_etiqueta2(const Value : Integer);
    procedure Setsalto_etiqueta3(const Value : Integer);
    procedure Setsalto_etiqueta4(const Value : Integer);
    procedure Setfiltro_nome(const Value : WideString);
    procedure Setdir_sistema(const Value : WideString);
    procedure Setdir_banco(const Value : WideString);
    procedure Setvalorreceber_maior(const Value : WideString);
    procedure Setcfop_devolucao(const Value : Integer);
    procedure Setdevolucao_financeiro(const Value : WideString);
    procedure Setvendedor_venda(const Value : WideString);
    procedure Setinstrucoes(const Value : WideString);
    procedure Setforma_boleto(const Value : Integer);
    procedure Setcupom_automatico(const Value : WideString);
    procedure Setsimples(const Value : Double);
    procedure Setvl_enc_federal(const Value : Double);
    procedure Setvl_enc_estadual(const Value : Double);
    procedure Setconvenio(const Value : WideString);
    procedure Settipo_convenio(const Value : WideString);
    procedure Setdir_backup(const Value : WideString);
    procedure Setmodelo_carne(const Value : WideString);
    procedure Setiss(const Value : Double);
    procedure Setqtd_itensnotaservico(const Value : Integer);
    procedure Settexto_aniversario(const Value : indefinido);
    procedure Setordemproc_produto(const Value : WideString);
    procedure Setextrato_produto(const Value : WideString);
    procedure Setboleto(const Value : WideString);
    procedure Setsalto_boleto(const Value : Integer);
    procedure Setcliente_coringa(const Value : Integer);
    procedure Setmostra_conta(const Value : WideString);
    procedure Setnumero(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setresponsavel(const Value : WideString);
    procedure Setst(const Value : Boolean);
    procedure Setipi(const Value : Boolean);
    procedure Setindustria(const Value : WideString);
    procedure Setlocacao(const Value : WideString);
    procedure Setobs_orcamento(const Value : WideString);
    procedure Setinsc_mun(const Value : WideString);
    procedure Setnfe(const Value : WideString);
    procedure Setsupervisor(const Value : WideString);
    procedure Setsalto_etiqueta5(const Value : Integer);
    procedure Setjuro_carencia(const Value : Integer);
    procedure Setbaixa_simples(const Value : WideString);
    procedure Setobs_carne1(const Value : WideString);
    procedure Setobs_carne2(const Value : WideString);
    procedure Setobs_carne3(const Value : WideString);
    procedure Setobs_carne4(const Value : WideString);
    procedure Setobs_carne5(const Value : WideString);
    procedure Setobs_carne6(const Value : WideString);
    procedure Setvenda_maior(const Value : WideString);
    procedure Setsubstituto_tributario(const Value : WideString);
    procedure Setdiretorio_fotos(const Value : WideString);
    procedure Setobs_carne7(const Value : WideString);
    procedure Setobs_carne8(const Value : WideString);
    procedure Setmodelo_ficha(const Value : WideString);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setajusta_fatura(const Value : WideString);
    procedure Setsimples_nacional(const Value : Boolean);
    procedure Setproduto_consulta(const Value : WideString);
    procedure Setmodelo_orcamento(const Value : WideString);
    procedure Setmodelo_expedicao(const Value : WideString);
    procedure Setdias_backup(const Value : Integer);
    procedure Setimprime_notad1(const Value : WideString);
    procedure Setfarmacia_popular(const Value : Boolean);
    procedure Setfpb(const Value : Integer);
    procedure Setirpj(const Value : Double);
    procedure Setcont_social(const Value : Double);
    procedure Setcasas_decimais(const Value : Double);
    procedure Settipo_desconto(const Value : WideString);
    procedure Setcusto_servico(const Value : Double);
    procedure Settipo_juro_venda(const Value : WideString);
    procedure Setbloqueio_automatico(const Value : WideString);
    procedure Setcontrole_caixa(const Value : Boolean);
    procedure Settipo_juro(const Value : WideString);
    procedure Setaproveitamento_credito_atacado(const Value : Boolean);
    procedure Seticms_saida(const Value : Double);
    procedure Setcompras_red_fora(const Value : Boolean);
    procedure Setcompras_red_dentro(const Value : Boolean);
    procedure Setatacado(const Value : Boolean);
    procedure Setaprazo(const Value : Boolean);
    procedure Setid_tabela_preco(const Value : Integer);
    procedure Setmulta(const Value : Double);
    procedure Settributado(const Value : WideString);
    procedure Setsubstituicao(const Value : WideString);
    procedure Setisento(const Value : WideString);
    procedure Setreducao(const Value : Double);
    procedure Setcredencial(const Value : Integer);
    procedure Setcontroleestoquevenda(const Value : Boolean);
    procedure Setcta_transf_saida(const Value : WideString);
    procedure Setcta_transf_entrada(const Value : WideString);
    procedure Setcta_estorno_emissao_cheque(const Value : WideString);
    procedure Setcta_custodia(const Value : WideString);
    procedure Setcta_estorno_custodia(const Value : WideString);
    procedure Setcta_juros_custodia(const Value : WideString);
    procedure Setcta_estorno_juros_custodia(const Value : WideString);
    procedure Setcta_estorno_pagamento(const Value : WideString);
    procedure Setcta_taxa_juros(const Value : WideString);
    procedure Setrazao_social(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setcontato(const Value : WideString);
    procedure Setparceiro(const Value : WideString);
    procedure Setcta_recebimento_cartao(const Value : WideString);
    procedure Setobs_promissoria(const Value : WideString);
    procedure Setboleto_novo(const Value : Boolean);
    procedure Setmodelo_contrato_locacao(const Value : WideString);
    procedure Setelimina_zero(const Value : Boolean);
    procedure Seteliminar_digito_fabricante(const Value : Boolean);
    procedure Setcta_trocaproduto(const Value : WideString);
    procedure Setforma_pgto_compras(const Value : WideString);
    procedure Setcfop_tributado_interno(const Value : Integer);
    procedure Setcfop_tributado_externo(const Value : Integer);
    procedure Setcfop_subst_interno(const Value : Integer);
    procedure Setcfop_subst_externo(const Value : Integer);
    procedure Setcfop_naoincidencia_interno(const Value : Integer);
    procedure Setcfop_naoincidencia_externo(const Value : Integer);
    procedure Setcfop_isento_interno(const Value : Integer);
    procedure Setcfop_isento_externo(const Value : Integer);
    procedure Setcfop_tribpautafiscal_interno(const Value : Integer);
    procedure Setcfop_tribpautafiscal_externo(const Value : Integer);
    procedure Setparametro_troca(const Value : WideString);
    procedure Setcliente_consumidor(const Value : Integer);
    procedure Setcfop_devolucao_venda(const Value : Integer);
    procedure Settroca_nfe(const Value : Boolean);
    procedure Setlocalizacao_orcamento(const Value : WideString);
    procedure Setproduto_tributado(const Value : WideString);
    procedure Setproduto_substituicao(const Value : WideString);
    procedure Setproduto_isento(const Value : WideString);
    procedure Setproduto_reducao(const Value : Double);
    procedure Sethora_reducao_z(const Value : WideString);
    procedure Setbuscar_ean_letra(const Value : Boolean);
    procedure Setimprimir_cod_fabric_cupom(const Value : Boolean);
    procedure Setremessa_antigo(const Value : Boolean);
    procedure Setcaixa_baixa_simples(const Value : Integer);
    procedure Setvisualizacao_antecipada_locacao(const Value : Integer);
    procedure Setantecipar_locacao(const Value : Boolean);
    procedure Setsenha_usuario_quitar_contareceber(const Value : Boolean);
    procedure Setconta_receber_sem_banco(const Value : Boolean);
    procedure Setutilizar_caixa_exclusivo(const Value : Boolean);
    procedure Setcaixa_exclusivo(const Value : Integer);
    procedure Settipo_entrada_compras(const Value : Boolean);
    procedure Setcta_insumos(const Value : WideString);
    procedure Setcta_almoxarifado(const Value : WideString);
    procedure Setcta_pag_funcionario(const Value : WideString);
    procedure Setutilizar_controle_financeiro_comissao(const Value : Boolean);
    procedure Setcta_cheque_emitido(const Value : WideString);
    procedure Setcontrole_fabricante(const Value : Boolean);
    procedure Setdesossa_aut(const Value : Boolean);
    procedure Setmovimento_food(const Value : Boolean);
    procedure Setpesquisa_venda(const Value : Integer);
    procedure Setnfce(const Value : WideString);
    procedure Settrabalha_nfce(const Value : Boolean);
    procedure Settolerancia_ponto(const Value : Integer);
    procedure Setvenda(const Value : WideString);
    procedure Setexpedicao(const Value : WideString);
    procedure Setromaneio(const Value : WideString);
    procedure Setcotacaop(const Value : WideString);
    procedure Setcfop_venda_entrega_futura(const Value : Integer);
    procedure Setcfop_entrega_futura(const Value : Integer);
    procedure Setcfop_entrega_fut_fora_estado(const Value : Integer);
    procedure Setcfop_venda_fut_fora_estado(const Value : Integer);
    procedure Setrelatorio_gerencia_servico(const Value : Boolean);
    procedure Setpasta_xml(const Value : WideString);
    procedure Setimagem_fundo(const Value : WideString);
    procedure Setpasta_nfe(const Value : WideString);
    procedure Setregime_especial_st(const Value : Boolean);
    procedure Setconfissao_divida(const Value : Boolean);
    procedure Setutiliza_duplicata_grande(const Value : Boolean);
    procedure Setcontrola_serial_celular(const Value : Boolean);
    procedure Setcfop_devolucao_compra_interestadual(const Value : Integer);
    procedure Setcfop_devolucao_venda_interestadual(const Value : Integer);
    procedure Setnota_promissoria(const Value : Boolean);
    procedure Setexplodir_kit(const Value : Boolean);
    procedure Setestoque_subsequente(const Value : Boolean);
    procedure Setvalidar_fornecedor(const Value : Boolean);
    procedure Setos_sem_veiculo(const Value : Boolean);
    procedure Setinformar_cfop_saida(const Value : Boolean);
    procedure Setcfop_transferencia(const Value : Integer);
    procedure Setcfop_transferencia_interestadual(const Value : Integer);
    procedure Setcfop_retorno_mercadoria(const Value : Integer);
    procedure Setcfop_retorno_mercadoria_interestadual(const Value : Integer);
    procedure Setcfop_entrada_produto(const Value : Integer);
    procedure Setcfop_entrada_produto_interestadual(const Value : Integer);
    procedure Setvalidar_cliente(const Value : Boolean);
    procedure Setimagem_tela_inicial(const Value : WideString);
    procedure Setkit_baixar_filhos(const Value : Boolean);
    procedure Setpadrao_central_custodia(const Value : Boolean);
    procedure Settipo_balanca(const Value : Integer);
    procedure Setpath_balanca(const Value : WideString);
    procedure Setfilial_produtos(const Value : Boolean);
    procedure Setfilial_clientes(const Value : Boolean);
    procedure Setfilial_fornecedor(const Value : Boolean);
    procedure Sethost_matriz(const Value : WideString);
    procedure Setfaturar_aluguel_locacao(const Value : Boolean);
    procedure Setcta_imposto_sindicato(const Value : WideString);
    procedure Setcta_imposto_inss(const Value : WideString);
    procedure Setlancamento_inss_sindicato(const Value : Boolean);
    procedure Setparceiro_conta_pagar(const Value : Boolean);
    procedure Settroco_troca(const Value : Boolean);
    procedure Setmovimentacao_data_saida(const Value : Boolean);
    procedure Setsalto_orcamento(const Value : Integer);
    procedure Setsenhas_criptografadas(const Value : Boolean);
    procedure Setqtd_produtos_orcamento(const Value : Integer);
    procedure Setqtd_servico_orcamento(const Value : Integer);
    procedure Setnumero_pag_orcamento(const Value : Integer);
    procedure Seticms2016(const Value : Boolean);
    procedure Setplano_conta_13digitos(const Value : Boolean);
    procedure Setconsulta_produto_especifico(const Value : Boolean);
    procedure Setreducao_nfe(const Value : Boolean);
    procedure Setinforma_venda_em_aberto(const Value : Boolean);
    procedure Setconversao_sped_simples_nacional(const Value : Boolean);
    procedure Setvisualizar_vendas(const Value : Boolean);
    procedure Setacrescimo_frete(const Value : Boolean);
    procedure Setpasta_retorno(const Value : WideString);
    procedure Setdata_hora_nfe(const Value : Boolean);
    procedure Setemail_nfe(const Value : Boolean);
    procedure Setmotorista(const Value : Boolean);
    procedure Setorcamento_peso_bruto(const Value : Boolean);
    procedure Setmensagem_carne(const Value : WideString);
    procedure Setbanco_contas_fixas(const Value : Boolean);
    procedure Setcpf(const Value : WideString);
    procedure Setjuros_mes(const Value : Double);
    procedure Setcidade(const Value : WideString);
    procedure Setcte(const Value : WideString);
    procedure Setsimples_subst(const Value : Double);
    procedure Setcta_contas_fixas(const Value : WideString);
    procedure Setseq_lote(const Value : Integer);
    procedure Setnumero_filial(const Value : Integer);
    procedure Setdata_base_matriz(const Value : WideString);
    procedure Setfilial_documentos(const Value : Boolean);
    procedure Setcta_vendacredito_cliente(const Value : WideString);
    procedure Setcta_geracaocredito_cliente(const Value : WideString);
    procedure Setcta_recebimento_duplicata_credito_cliente(const Value : WideString);
    procedure Setcta_estorno_credito_cliente(const Value : WideString);
    procedure Settimezone(const Value : WideString);
    procedure Settimezone_utc(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property endereco : WideString         read Fendereco    write Fendereco;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property inscricao_estadual : WideString         read Finscricao_estadual    write Finscricao_estadual;
    property fone1 : WideString         read Ffone1    write Ffone1;
    property fone2 : WideString         read Ffone2    write Ffone2;
    property fax : WideString         read Ffax    write Ffax;
    property bairro : WideString         read Fbairro    write Fbairro;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property uf : WideString         read Fuf    write Fuf;
    property representante_legal : WideString         read Frepresentante_legal    write Frepresentante_legal;
    property tipo_empresa : WideString         read Ftipo_empresa    write Ftipo_empresa;
    property hostname : WideString         read Fhostname    write Fhostname;
    property database : WideString         read Fdatabase    write Fdatabase;
    property porta : WideString         read Fporta    write Fporta;
    property usuariodbms : WideString         read Fusuariodbms    write Fusuariodbms;
    property senhadbms : WideString         read Fsenhadbms    write Fsenhadbms;
    property data_cadastro : TDateTime         read Fdata_cadastro    write Fdata_cadastro;
    property cta_vendas : WideString         read Fcta_vendas    write Fcta_vendas;
    property cta_compra : WideString         read Fcta_compra    write Fcta_compra;
    property cta_recparcela : WideString         read Fcta_recparcela    write Fcta_recparcela;
    property cta_estparcela : WideString         read Fcta_estparcela    write Fcta_estparcela;
    property cta_pagparcela : WideString         read Fcta_pagparcela    write Fcta_pagparcela;
    property cta_depbancario : WideString         read Fcta_depbancario    write Fcta_depbancario;
    property cta_emissaocheq : WideString         read Fcta_emissaocheq    write Fcta_emissaocheq;
    property cta_estcaixa : WideString         read Fcta_estcaixa    write Fcta_estcaixa;
    property cta_estbanco : WideString         read Fcta_estbanco    write Fcta_estbanco;
    property cta_jrorecebido : WideString         read Fcta_jrorecebido    write Fcta_jrorecebido;
    property cta_jropago : WideString         read Fcta_jropago    write Fcta_jropago;
    property cta_descrecebido : WideString         read Fcta_descrecebido    write Fcta_descrecebido;
    property cta_descpago : WideString         read Fcta_descpago    write Fcta_descpago;
    property cta_devolvenda : WideString         read Fcta_devolvenda    write Fcta_devolvenda;
    property desc_rateio : WideString         read Fdesc_rateio    write Fdesc_rateio;
    property mensagem_promocional : WideString         read Fmensagem_promocional    write Fmensagem_promocional;
    property modelo_duplicata : WideString         read Fmodelo_duplicata    write Fmodelo_duplicata;
    property modelo_recibo : WideString         read Fmodelo_recibo    write Fmodelo_recibo;
    property modelo_nota : WideString         read Fmodelo_nota    write Fmodelo_nota;
    property qtd_itensnota : Integer         read Fqtd_itensnota    write Fqtd_itensnota;
    property tam_pagnota : Integer         read Ftam_pagnota    write Ftam_pagnota;
    property seq_nronota : Integer         read Fseq_nronota    write Fseq_nronota;
    property imprime_nota : WideString         read Fimprime_nota    write Fimprime_nota;
    property imprime_vendedor : WideString         read Fimprime_vendedor    write Fimprime_vendedor;
    property estoque_negativo : WideString         read Festoque_negativo    write Festoque_negativo;
    property texto_cobranca : indefinido         read Ftexto_cobranca    write Ftexto_cobranca;
    property custo_operacional : Double         read Fcusto_operacional    write Fcusto_operacional;
    property custo_financeiro : Double         read Fcusto_financeiro    write Fcusto_financeiro;
    property juro_dia : Double         read Fjuro_dia    write Fjuro_dia;
    property cfop_avista : Integer         read Fcfop_avista    write Fcfop_avista;
    property cfop_aprazo : Integer         read Fcfop_aprazo    write Fcfop_aprazo;
    property click : Boolean         read Fclick    write Fclick;
    property salto_nota : Integer         read Fsalto_nota    write Fsalto_nota;
    property caminho_nota : WideString         read Fcaminho_nota    write Fcaminho_nota;
    property cotacao : WideString         read Fcotacao    write Fcotacao;
    property comissao_decrescente : WideString         read Fcomissao_decrescente    write Fcomissao_decrescente;
    property intervalo_a1 : Double         read Fintervalo_a1    write Fintervalo_a1;
    property intervalo_a2 : Double         read Fintervalo_a2    write Fintervalo_a2;
    property intervalo_b1 : Double         read Fintervalo_b1    write Fintervalo_b1;
    property intervalo_b2 : Double         read Fintervalo_b2    write Fintervalo_b2;
    property intervalo_c1 : Double         read Fintervalo_c1    write Fintervalo_c1;
    property intervalo_c2 : Double         read Fintervalo_c2    write Fintervalo_c2;
    property intervalo_d1 : Double         read Fintervalo_d1    write Fintervalo_d1;
    property intervalo_d2 : Double         read Fintervalo_d2    write Fintervalo_d2;
    property intervalo_e1 : Double         read Fintervalo_e1    write Fintervalo_e1;
    property intervalo_f1 : Double         read Fintervalo_f1    write Fintervalo_f1;
    property intervalo_f2 : Double         read Fintervalo_f2    write Fintervalo_f2;
    property intervalo_g1 : Double         read Fintervalo_g1    write Fintervalo_g1;
    property intervalo_g2 : Double         read Fintervalo_g2    write Fintervalo_g2;
    property intervalo_h1 : Double         read Fintervalo_h1    write Fintervalo_h1;
    property intervalo_h2 : Double         read Fintervalo_h2    write Fintervalo_h2;
    property intervalo_i1 : Double         read Fintervalo_i1    write Fintervalo_i1;
    property intervalo_i2 : Double         read Fintervalo_i2    write Fintervalo_i2;
    property intervalo_j1 : Double         read Fintervalo_j1    write Fintervalo_j1;
    property intervalo_j2 : Double         read Fintervalo_j2    write Fintervalo_j2;
    property intervalo_l1 : Double         read Fintervalo_l1    write Fintervalo_l1;
    property intervalo_l2 : Double         read Fintervalo_l2    write Fintervalo_l2;
    property intervalo_m1 : Double         read Fintervalo_m1    write Fintervalo_m1;
    property intervalo_m2 : Double         read Fintervalo_m2    write Fintervalo_m2;
    property comissao_a : Double         read Fcomissao_a    write Fcomissao_a;
    property comissao_b : Double         read Fcomissao_b    write Fcomissao_b;
    property comissao_c : Double         read Fcomissao_c    write Fcomissao_c;
    property comissao_d : Double         read Fcomissao_d    write Fcomissao_d;
    property comissao_e : Double         read Fcomissao_e    write Fcomissao_e;
    property comissao_f : Double         read Fcomissao_f    write Fcomissao_f;
    property comissao_g : Double         read Fcomissao_g    write Fcomissao_g;
    property comissao_h : Double         read Fcomissao_h    write Fcomissao_h;
    property comissao_i : Double         read Fcomissao_i    write Fcomissao_i;
    property comissao_j : Double         read Fcomissao_j    write Fcomissao_j;
    property comissao_l : Double         read Fcomissao_l    write Fcomissao_l;
    property comissao_m : Double         read Fcomissao_m    write Fcomissao_m;
    property intervalo_e2 : Double         read Fintervalo_e2    write Fintervalo_e2;
    property salto_duplicata : Integer         read Fsalto_duplicata    write Fsalto_duplicata;
    property imagem : Boolean         read Fimagem    write Fimagem;
    property arquivo_imagem : WideString         read Farquivo_imagem    write Farquivo_imagem;
    property produto_conjugado : WideString         read Fproduto_conjugado    write Fproduto_conjugado;
    property rateio_comissao : WideString         read Frateio_comissao    write Frateio_comissao;
    property cta_vendas_aprazo : WideString         read Fcta_vendas_aprazo    write Fcta_vendas_aprazo;
    property formacao_preco : WideString         read Fformacao_preco    write Fformacao_preco;
    property nosso_numero : WideString         read Fnosso_numero    write Fnosso_numero;
    property identifica_cupom : WideString         read Fidentifica_cupom    write Fidentifica_cupom;
    property atividade : WideString         read Fatividade    write Fatividade;
    property venda_rapida : WideString         read Fvenda_rapida    write Fvenda_rapida;
    property grade : WideString         read Fgrade    write Fgrade;
    property data_analise : TDateTime         read Fdata_analise    write Fdata_analise;
    property cta_suprimento : WideString         read Fcta_suprimento    write Fcta_suprimento;
    property cta_sangria : WideString         read Fcta_sangria    write Fcta_sangria;
    property cta_os : WideString         read Fcta_os    write Fcta_os;
    property bancocodigo : WideString         read Fbancocodigo    write Fbancocodigo;
    property banconome : WideString         read Fbanconome    write Fbanconome;
    property cedentecodigo : WideString         read Fcedentecodigo    write Fcedentecodigo;
    property cedentecodigodigito : WideString         read Fcedentecodigodigito    write Fcedentecodigodigito;
    property carteira : WideString         read Fcarteira    write Fcarteira;
    property agenciacodigo : WideString         read Fagenciacodigo    write Fagenciacodigo;
    property agenciadigito : WideString         read Fagenciadigito    write Fagenciadigito;
    property agencianome : WideString         read Fagencianome    write Fagencianome;
    property contanumero : WideString         read Fcontanumero    write Fcontanumero;
    property contanumerodigito : WideString         read Fcontanumerodigito    write Fcontanumerodigito;
    property proximonossonumero : WideString         read Fproximonossonumero    write Fproximonossonumero;
    property salto_etiqueta1 : Integer         read Fsalto_etiqueta1    write Fsalto_etiqueta1;
    property salto_etiqueta2 : Integer         read Fsalto_etiqueta2    write Fsalto_etiqueta2;
    property salto_etiqueta3 : Integer         read Fsalto_etiqueta3    write Fsalto_etiqueta3;
    property salto_etiqueta4 : Integer         read Fsalto_etiqueta4    write Fsalto_etiqueta4;
    property filtro_nome : WideString         read Ffiltro_nome    write Ffiltro_nome;
    property dir_sistema : WideString         read Fdir_sistema    write Fdir_sistema;
    property dir_banco : WideString         read Fdir_banco    write Fdir_banco;
    property valorreceber_maior : WideString         read Fvalorreceber_maior    write Fvalorreceber_maior;
    property cfop_devolucao : Integer         read Fcfop_devolucao    write Fcfop_devolucao;
    property devolucao_financeiro : WideString         read Fdevolucao_financeiro    write Fdevolucao_financeiro;
    property vendedor_venda : WideString         read Fvendedor_venda    write Fvendedor_venda;
    property instrucoes : WideString         read Finstrucoes    write Finstrucoes;
    property forma_boleto : Integer         read Fforma_boleto    write Fforma_boleto;
    property cupom_automatico : WideString         read Fcupom_automatico    write Fcupom_automatico;
    property simples : Double         read Fsimples    write Fsimples;
    property vl_enc_federal : Double         read Fvl_enc_federal    write Fvl_enc_federal;
    property vl_enc_estadual : Double         read Fvl_enc_estadual    write Fvl_enc_estadual;
    property convenio : WideString         read Fconvenio    write Fconvenio;
    property tipo_convenio : WideString         read Ftipo_convenio    write Ftipo_convenio;
    property dir_backup : WideString         read Fdir_backup    write Fdir_backup;
    property modelo_carne : WideString         read Fmodelo_carne    write Fmodelo_carne;
    property iss : Double         read Fiss    write Fiss;
    property qtd_itensnotaservico : Integer         read Fqtd_itensnotaservico    write Fqtd_itensnotaservico;
    property texto_aniversario : indefinido         read Ftexto_aniversario    write Ftexto_aniversario;
    property ordemproc_produto : WideString         read Fordemproc_produto    write Fordemproc_produto;
    property extrato_produto : WideString         read Fextrato_produto    write Fextrato_produto;
    property boleto : WideString         read Fboleto    write Fboleto;
    property salto_boleto : Integer         read Fsalto_boleto    write Fsalto_boleto;
    property cliente_coringa : Integer         read Fcliente_coringa    write Fcliente_coringa;
    property mostra_conta : WideString         read Fmostra_conta    write Fmostra_conta;
    property numero : WideString         read Fnumero    write Fnumero;
    property cep : WideString         read Fcep    write Fcep;
    property responsavel : WideString         read Fresponsavel    write Fresponsavel;
    property st : Boolean         read Fst    write Fst;
    property ipi : Boolean         read Fipi    write Fipi;
    property industria : WideString         read Findustria    write Findustria;
    property locacao : WideString         read Flocacao    write Flocacao;
    property obs_orcamento : WideString         read Fobs_orcamento    write Fobs_orcamento;
    property insc_mun : WideString         read Finsc_mun    write Finsc_mun;
    property nfe : WideString         read Fnfe    write Fnfe;
    property supervisor : WideString         read Fsupervisor    write Fsupervisor;
    property salto_etiqueta5 : Integer         read Fsalto_etiqueta5    write Fsalto_etiqueta5;
    property juro_carencia : Integer         read Fjuro_carencia    write Fjuro_carencia;
    property baixa_simples : WideString         read Fbaixa_simples    write Fbaixa_simples;
    property obs_carne1 : WideString         read Fobs_carne1    write Fobs_carne1;
    property obs_carne2 : WideString         read Fobs_carne2    write Fobs_carne2;
    property obs_carne3 : WideString         read Fobs_carne3    write Fobs_carne3;
    property obs_carne4 : WideString         read Fobs_carne4    write Fobs_carne4;
    property obs_carne5 : WideString         read Fobs_carne5    write Fobs_carne5;
    property obs_carne6 : WideString         read Fobs_carne6    write Fobs_carne6;
    property venda_maior : WideString         read Fvenda_maior    write Fvenda_maior;
    property substituto_tributario : WideString         read Fsubstituto_tributario    write Fsubstituto_tributario;
    property diretorio_fotos : WideString         read Fdiretorio_fotos    write Fdiretorio_fotos;
    property obs_carne7 : WideString         read Fobs_carne7    write Fobs_carne7;
    property obs_carne8 : WideString         read Fobs_carne8    write Fobs_carne8;
    property modelo_ficha : WideString         read Fmodelo_ficha    write Fmodelo_ficha;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property ajusta_fatura : WideString         read Fajusta_fatura    write Fajusta_fatura;
    property simples_nacional : Boolean         read Fsimples_nacional    write Fsimples_nacional;
    property produto_consulta : WideString         read Fproduto_consulta    write Fproduto_consulta;
    property modelo_orcamento : WideString         read Fmodelo_orcamento    write Fmodelo_orcamento;
    property modelo_expedicao : WideString         read Fmodelo_expedicao    write Fmodelo_expedicao;
    property dias_backup : Integer         read Fdias_backup    write Fdias_backup;
    property imprime_notad1 : WideString         read Fimprime_notad1    write Fimprime_notad1;
    property farmacia_popular : Boolean         read Ffarmacia_popular    write Ffarmacia_popular;
    property fpb : Integer         read Ffpb    write Ffpb;
    property irpj : Double         read Firpj    write Firpj;
    property cont_social : Double         read Fcont_social    write Fcont_social;
    property casas_decimais : Double         read Fcasas_decimais    write Fcasas_decimais;
    property tipo_desconto : WideString         read Ftipo_desconto    write Ftipo_desconto;
    property custo_servico : Double         read Fcusto_servico    write Fcusto_servico;
    property tipo_juro_venda : WideString         read Ftipo_juro_venda    write Ftipo_juro_venda;
    property bloqueio_automatico : WideString         read Fbloqueio_automatico    write Fbloqueio_automatico;
    property controle_caixa : Boolean         read Fcontrole_caixa    write Fcontrole_caixa;
    property tipo_juro : WideString         read Ftipo_juro    write Ftipo_juro;
    property aproveitamento_credito_atacado : Boolean         read Faproveitamento_credito_atacado    write Faproveitamento_credito_atacado;
    property icms_saida : Double         read Ficms_saida    write Ficms_saida;
    property compras_red_fora : Boolean         read Fcompras_red_fora    write Fcompras_red_fora;
    property compras_red_dentro : Boolean         read Fcompras_red_dentro    write Fcompras_red_dentro;
    property atacado : Boolean         read Fatacado    write Fatacado;
    property aprazo : Boolean         read Faprazo    write Faprazo;
    property id_tabela_preco : Integer         read Fid_tabela_preco    write Fid_tabela_preco;
    property multa : Double         read Fmulta    write Fmulta;
    property tributado : WideString         read Ftributado    write Ftributado;
    property substituicao : WideString         read Fsubstituicao    write Fsubstituicao;
    property isento : WideString         read Fisento    write Fisento;
    property reducao : Double         read Freducao    write Freducao;
    property credencial : Integer         read Fcredencial    write Fcredencial;
    property controleestoquevenda : Boolean         read Fcontroleestoquevenda    write Fcontroleestoquevenda;
    property cta_transf_saida : WideString         read Fcta_transf_saida    write Fcta_transf_saida;
    property cta_transf_entrada : WideString         read Fcta_transf_entrada    write Fcta_transf_entrada;
    property cta_estorno_emissao_cheque : WideString         read Fcta_estorno_emissao_cheque    write Fcta_estorno_emissao_cheque;
    property cta_custodia : WideString         read Fcta_custodia    write Fcta_custodia;
    property cta_estorno_custodia : WideString         read Fcta_estorno_custodia    write Fcta_estorno_custodia;
    property cta_juros_custodia : WideString         read Fcta_juros_custodia    write Fcta_juros_custodia;
    property cta_estorno_juros_custodia : WideString         read Fcta_estorno_juros_custodia    write Fcta_estorno_juros_custodia;
    property cta_estorno_pagamento : WideString         read Fcta_estorno_pagamento    write Fcta_estorno_pagamento;
    property cta_taxa_juros : WideString         read Fcta_taxa_juros    write Fcta_taxa_juros;
    property razao_social : WideString         read Frazao_social    write Frazao_social;
    property celular : WideString         read Fcelular    write Fcelular;
    property contato : WideString         read Fcontato    write Fcontato;
    property parceiro : WideString         read Fparceiro    write Fparceiro;
    property cta_recebimento_cartao : WideString         read Fcta_recebimento_cartao    write Fcta_recebimento_cartao;
    property obs_promissoria : WideString         read Fobs_promissoria    write Fobs_promissoria;
    property boleto_novo : Boolean         read Fboleto_novo    write Fboleto_novo;
    property modelo_contrato_locacao : WideString         read Fmodelo_contrato_locacao    write Fmodelo_contrato_locacao;
    property elimina_zero : Boolean         read Felimina_zero    write Felimina_zero;
    property eliminar_digito_fabricante : Boolean         read Feliminar_digito_fabricante    write Feliminar_digito_fabricante;
    property cta_trocaproduto : WideString         read Fcta_trocaproduto    write Fcta_trocaproduto;
    property forma_pgto_compras : WideString         read Fforma_pgto_compras    write Fforma_pgto_compras;
    property cfop_tributado_interno : Integer         read Fcfop_tributado_interno    write Fcfop_tributado_interno;
    property cfop_tributado_externo : Integer         read Fcfop_tributado_externo    write Fcfop_tributado_externo;
    property cfop_subst_interno : Integer         read Fcfop_subst_interno    write Fcfop_subst_interno;
    property cfop_subst_externo : Integer         read Fcfop_subst_externo    write Fcfop_subst_externo;
    property cfop_naoincidencia_interno : Integer         read Fcfop_naoincidencia_interno    write Fcfop_naoincidencia_interno;
    property cfop_naoincidencia_externo : Integer         read Fcfop_naoincidencia_externo    write Fcfop_naoincidencia_externo;
    property cfop_isento_interno : Integer         read Fcfop_isento_interno    write Fcfop_isento_interno;
    property cfop_isento_externo : Integer         read Fcfop_isento_externo    write Fcfop_isento_externo;
    property cfop_tribpautafiscal_interno : Integer         read Fcfop_tribpautafiscal_interno    write Fcfop_tribpautafiscal_interno;
    property cfop_tribpautafiscal_externo : Integer         read Fcfop_tribpautafiscal_externo    write Fcfop_tribpautafiscal_externo;
    property parametro_troca : WideString         read Fparametro_troca    write Fparametro_troca;
    property cliente_consumidor : Integer         read Fcliente_consumidor    write Fcliente_consumidor;
    property cfop_devolucao_venda : Integer         read Fcfop_devolucao_venda    write Fcfop_devolucao_venda;
    property troca_nfe : Boolean         read Ftroca_nfe    write Ftroca_nfe;
    property localizacao_orcamento : WideString         read Flocalizacao_orcamento    write Flocalizacao_orcamento;
    property produto_tributado : WideString         read Fproduto_tributado    write Fproduto_tributado;
    property produto_substituicao : WideString         read Fproduto_substituicao    write Fproduto_substituicao;
    property produto_isento : WideString         read Fproduto_isento    write Fproduto_isento;
    property produto_reducao : Double         read Fproduto_reducao    write Fproduto_reducao;
    property hora_reducao_z : WideString         read Fhora_reducao_z    write Fhora_reducao_z;
    property buscar_ean_letra : Boolean         read Fbuscar_ean_letra    write Fbuscar_ean_letra;
    property imprimir_cod_fabric_cupom : Boolean         read Fimprimir_cod_fabric_cupom    write Fimprimir_cod_fabric_cupom;
    property remessa_antigo : Boolean         read Fremessa_antigo    write Fremessa_antigo;
    property caixa_baixa_simples : Integer         read Fcaixa_baixa_simples    write Fcaixa_baixa_simples;
    property visualizacao_antecipada_locacao : Integer         read Fvisualizacao_antecipada_locacao    write Fvisualizacao_antecipada_locacao;
    property antecipar_locacao : Boolean         read Fantecipar_locacao    write Fantecipar_locacao;
    property senha_usuario_quitar_contareceber : Boolean         read Fsenha_usuario_quitar_contareceber    write Fsenha_usuario_quitar_contareceber;
    property conta_receber_sem_banco : Boolean         read Fconta_receber_sem_banco    write Fconta_receber_sem_banco;
    property utilizar_caixa_exclusivo : Boolean         read Futilizar_caixa_exclusivo    write Futilizar_caixa_exclusivo;
    property caixa_exclusivo : Integer         read Fcaixa_exclusivo    write Fcaixa_exclusivo;
    property tipo_entrada_compras : Boolean         read Ftipo_entrada_compras    write Ftipo_entrada_compras;
    property cta_insumos : WideString         read Fcta_insumos    write Fcta_insumos;
    property cta_almoxarifado : WideString         read Fcta_almoxarifado    write Fcta_almoxarifado;
    property cta_pag_funcionario : WideString         read Fcta_pag_funcionario    write Fcta_pag_funcionario;
    property utilizar_controle_financeiro_comissao : Boolean         read Futilizar_controle_financeiro_comissao    write Futilizar_controle_financeiro_comissao;
    property cta_cheque_emitido : WideString         read Fcta_cheque_emitido    write Fcta_cheque_emitido;
    property controle_fabricante : Boolean         read Fcontrole_fabricante    write Fcontrole_fabricante;
    property desossa_aut : Boolean         read Fdesossa_aut    write Fdesossa_aut;
    property movimento_food : Boolean         read Fmovimento_food    write Fmovimento_food;
    property pesquisa_venda : Integer         read Fpesquisa_venda    write Fpesquisa_venda;
    property nfce : WideString         read Fnfce    write Fnfce;
    property trabalha_nfce : Boolean         read Ftrabalha_nfce    write Ftrabalha_nfce;
    property tolerancia_ponto : Integer         read Ftolerancia_ponto    write Ftolerancia_ponto;
    property venda : WideString         read Fvenda    write Fvenda;
    property expedicao : WideString         read Fexpedicao    write Fexpedicao;
    property romaneio : WideString         read Fromaneio    write Fromaneio;
    property cotacaop : WideString         read Fcotacaop    write Fcotacaop;
    property cfop_venda_entrega_futura : Integer         read Fcfop_venda_entrega_futura    write Fcfop_venda_entrega_futura;
    property cfop_entrega_futura : Integer         read Fcfop_entrega_futura    write Fcfop_entrega_futura;
    property cfop_entrega_fut_fora_estado : Integer         read Fcfop_entrega_fut_fora_estado    write Fcfop_entrega_fut_fora_estado;
    property cfop_venda_fut_fora_estado : Integer         read Fcfop_venda_fut_fora_estado    write Fcfop_venda_fut_fora_estado;
    property relatorio_gerencia_servico : Boolean         read Frelatorio_gerencia_servico    write Frelatorio_gerencia_servico;
    property pasta_xml : WideString         read Fpasta_xml    write Fpasta_xml;
    property imagem_fundo : WideString         read Fimagem_fundo    write Fimagem_fundo;
    property pasta_nfe : WideString         read Fpasta_nfe    write Fpasta_nfe;
    property regime_especial_st : Boolean         read Fregime_especial_st    write Fregime_especial_st;
    property confissao_divida : Boolean         read Fconfissao_divida    write Fconfissao_divida;
    property utiliza_duplicata_grande : Boolean         read Futiliza_duplicata_grande    write Futiliza_duplicata_grande;
    property controla_serial_celular : Boolean         read Fcontrola_serial_celular    write Fcontrola_serial_celular;
    property cfop_devolucao_compra_interestadual : Integer         read Fcfop_devolucao_compra_interestadual    write Fcfop_devolucao_compra_interestadual;
    property cfop_devolucao_venda_interestadual : Integer         read Fcfop_devolucao_venda_interestadual    write Fcfop_devolucao_venda_interestadual;
    property nota_promissoria : Boolean         read Fnota_promissoria    write Fnota_promissoria;
    property explodir_kit : Boolean         read Fexplodir_kit    write Fexplodir_kit;
    property estoque_subsequente : Boolean         read Festoque_subsequente    write Festoque_subsequente;
    property validar_fornecedor : Boolean         read Fvalidar_fornecedor    write Fvalidar_fornecedor;
    property os_sem_veiculo : Boolean         read Fos_sem_veiculo    write Fos_sem_veiculo;
    property informar_cfop_saida : Boolean         read Finformar_cfop_saida    write Finformar_cfop_saida;
    property cfop_transferencia : Integer         read Fcfop_transferencia    write Fcfop_transferencia;
    property cfop_transferencia_interestadual : Integer         read Fcfop_transferencia_interestadual    write Fcfop_transferencia_interestadual;
    property cfop_retorno_mercadoria : Integer         read Fcfop_retorno_mercadoria    write Fcfop_retorno_mercadoria;
    property cfop_retorno_mercadoria_interestadual : Integer         read Fcfop_retorno_mercadoria_interestadual    write Fcfop_retorno_mercadoria_interestadual;
    property cfop_entrada_produto : Integer         read Fcfop_entrada_produto    write Fcfop_entrada_produto;
    property cfop_entrada_produto_interestadual : Integer         read Fcfop_entrada_produto_interestadual    write Fcfop_entrada_produto_interestadual;
    property validar_cliente : Boolean         read Fvalidar_cliente    write Fvalidar_cliente;
    property imagem_tela_inicial : WideString         read Fimagem_tela_inicial    write Fimagem_tela_inicial;
    property kit_baixar_filhos : Boolean         read Fkit_baixar_filhos    write Fkit_baixar_filhos;
    property padrao_central_custodia : Boolean         read Fpadrao_central_custodia    write Fpadrao_central_custodia;
    property tipo_balanca : Integer         read Ftipo_balanca    write Ftipo_balanca;
    property path_balanca : WideString         read Fpath_balanca    write Fpath_balanca;
    property filial_produtos : Boolean         read Ffilial_produtos    write Ffilial_produtos;
    property filial_clientes : Boolean         read Ffilial_clientes    write Ffilial_clientes;
    property filial_fornecedor : Boolean         read Ffilial_fornecedor    write Ffilial_fornecedor;
    property host_matriz : WideString         read Fhost_matriz    write Fhost_matriz;
    property faturar_aluguel_locacao : Boolean         read Ffaturar_aluguel_locacao    write Ffaturar_aluguel_locacao;
    property cta_imposto_sindicato : WideString         read Fcta_imposto_sindicato    write Fcta_imposto_sindicato;
    property cta_imposto_inss : WideString         read Fcta_imposto_inss    write Fcta_imposto_inss;
    property lancamento_inss_sindicato : Boolean         read Flancamento_inss_sindicato    write Flancamento_inss_sindicato;
    property parceiro_conta_pagar : Boolean         read Fparceiro_conta_pagar    write Fparceiro_conta_pagar;
    property troco_troca : Boolean         read Ftroco_troca    write Ftroco_troca;
    property movimentacao_data_saida : Boolean         read Fmovimentacao_data_saida    write Fmovimentacao_data_saida;
    property salto_orcamento : Integer         read Fsalto_orcamento    write Fsalto_orcamento;
    property senhas_criptografadas : Boolean         read Fsenhas_criptografadas    write Fsenhas_criptografadas;
    property qtd_produtos_orcamento : Integer         read Fqtd_produtos_orcamento    write Fqtd_produtos_orcamento;
    property qtd_servico_orcamento : Integer         read Fqtd_servico_orcamento    write Fqtd_servico_orcamento;
    property numero_pag_orcamento : Integer         read Fnumero_pag_orcamento    write Fnumero_pag_orcamento;
    property icms2016 : Boolean         read Ficms2016    write Ficms2016;
    property plano_conta_13digitos : Boolean         read Fplano_conta_13digitos    write Fplano_conta_13digitos;
    property consulta_produto_especifico : Boolean         read Fconsulta_produto_especifico    write Fconsulta_produto_especifico;
    property reducao_nfe : Boolean         read Freducao_nfe    write Freducao_nfe;
    property informa_venda_em_aberto : Boolean         read Finforma_venda_em_aberto    write Finforma_venda_em_aberto;
    property conversao_sped_simples_nacional : Boolean         read Fconversao_sped_simples_nacional    write Fconversao_sped_simples_nacional;
    property visualizar_vendas : Boolean         read Fvisualizar_vendas    write Fvisualizar_vendas;
    property acrescimo_frete : Boolean         read Facrescimo_frete    write Facrescimo_frete;
    property pasta_retorno : WideString         read Fpasta_retorno    write Fpasta_retorno;
    property data_hora_nfe : Boolean         read Fdata_hora_nfe    write Fdata_hora_nfe;
    property email_nfe : Boolean         read Femail_nfe    write Femail_nfe;
    property motorista : Boolean         read Fmotorista    write Fmotorista;
    property orcamento_peso_bruto : Boolean         read Forcamento_peso_bruto    write Forcamento_peso_bruto;
    property mensagem_carne : WideString         read Fmensagem_carne    write Fmensagem_carne;
    property banco_contas_fixas : Boolean         read Fbanco_contas_fixas    write Fbanco_contas_fixas;
    property cpf : WideString         read Fcpf    write Fcpf;
    property juros_mes : Double         read Fjuros_mes    write Fjuros_mes;
    property cidade : WideString         read Fcidade    write Fcidade;
    property cte : WideString         read Fcte    write Fcte;
    property simples_subst : Double         read Fsimples_subst    write Fsimples_subst;
    property cta_contas_fixas : WideString         read Fcta_contas_fixas    write Fcta_contas_fixas;
    property seq_lote : Integer         read Fseq_lote    write Fseq_lote;
    property numero_filial : Integer         read Fnumero_filial    write Fnumero_filial;
    property data_base_matriz : WideString         read Fdata_base_matriz    write Fdata_base_matriz;
    property filial_documentos : Boolean         read Ffilial_documentos    write Ffilial_documentos;
    property cta_vendacredito_cliente : WideString         read Fcta_vendacredito_cliente    write Fcta_vendacredito_cliente;
    property cta_geracaocredito_cliente : WideString         read Fcta_geracaocredito_cliente    write Fcta_geracaocredito_cliente;
    property cta_recebimento_duplicata_credito_cliente : WideString         read Fcta_recebimento_duplicata_credito_cliente    write Fcta_recebimento_duplicata_credito_cliente;
    property cta_estorno_credito_cliente : WideString         read Fcta_estorno_credito_cliente    write Fcta_estorno_credito_cliente;
    property timezone : WideString         read Ftimezone    write Ftimezone;
    property timezone_utc : WideString         read Ftimezone_utc    write Ftimezone_utc;

  end;

var
  Frm_ViewERPefd : TFrm_ViewERPefd; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 355; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fax); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_legal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hostname); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].database); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].usuariodbms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senhadbms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_cadastro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_vendas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_recparcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estparcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_pagparcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_depbancario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_emissaocheq); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estcaixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estbanco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_jrorecebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_jropago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_descrecebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_descpago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_devolvenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desc_rateio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagem_promocional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_duplicata); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_recibo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_itensnota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_pagnota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].seq_nronota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprime_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprime_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_negativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].texto_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_operacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juro_dia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_avista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caminho_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cotacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_decrescente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_a1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_a2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_b1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_b2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_c1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_c2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_d1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_d2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_e1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_f1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_f2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_g1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_g2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_h1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_h2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_i1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_i2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_j1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_j2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_l1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_l2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_m1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_m2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_a); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_b); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_c); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_d); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_e); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_f); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_g); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_h); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_i); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_j); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_l); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_m); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_e2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_duplicata); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].arquivo_imagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_conjugado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rateio_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_vendas_aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].formacao_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nosso_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].identifica_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atividade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_rapida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_analise); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_suprimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_sangria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bancocodigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].banconome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cedentecodigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cedentecodigodigito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carteira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agenciacodigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agenciadigito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencianome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contanumero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contanumerodigito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proximonossonumero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_etiqueta1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_etiqueta2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_etiqueta3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_etiqueta4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filtro_nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dir_sistema); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dir_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valorreceber_maior); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vendedor_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].instrucoes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].forma_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom_automatico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_enc_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_enc_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].convenio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_convenio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dir_backup); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_carne); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_itensnotaservico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].texto_aniversario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ordemproc_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].extrato_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente_coringa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mostra_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].industria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].insc_mun); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].supervisor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_etiqueta5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juro_carencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_maior); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].substituto_tributario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].diretorio_fotos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_carne8); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ajusta_fatura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples_nacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_consulta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_backup); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprime_notad1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].farmacia_popular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].irpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cont_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].casas_decimais); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_juro_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueio_automatico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_juro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aproveitamento_credito_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compras_red_fora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compras_red_dentro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tabela_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tributado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].isento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credencial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controleestoquevenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_transf_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_transf_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estorno_emissao_cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estorno_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_juros_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estorno_juros_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estorno_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_taxa_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].razao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_recebimento_cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_promissoria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].boleto_novo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_contrato_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].elimina_zero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].eliminar_digito_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_trocaproduto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].forma_pgto_compras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_tributado_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_tributado_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_subst_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_subst_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_naoincidencia_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_naoincidencia_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_isento_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_isento_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_tribpautafiscal_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_tribpautafiscal_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parametro_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente_consumidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_devolucao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].troca_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].localizacao_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_tributado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_isento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_reducao_z); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].buscar_ean_letra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_cod_fabric_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].remessa_antigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa_baixa_simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].visualizacao_antecipada_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].antecipar_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha_usuario_quitar_contareceber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta_receber_sem_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].utilizar_caixa_exclusivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa_exclusivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_entrada_compras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_insumos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_pag_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].utilizar_controle_financeiro_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_cheque_emitido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desossa_aut); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].movimento_food); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pesquisa_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].trabalha_nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tolerancia_ponto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].romaneio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cotacaop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_venda_entrega_futura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_entrega_futura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_entrega_fut_fora_estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_venda_fut_fora_estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].relatorio_gerencia_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pasta_xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imagem_fundo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pasta_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].regime_especial_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].confissao_divida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].utiliza_duplicata_grande); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controla_serial_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_devolucao_compra_interestadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_devolucao_venda_interestadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota_promissoria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].explodir_kit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_subsequente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validar_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].os_sem_veiculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].informar_cfop_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_transferencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_transferencia_interestadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_retorno_mercadoria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_retorno_mercadoria_interestadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_entrada_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_entrada_produto_interestadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validar_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imagem_tela_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].kit_baixar_filhos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].padrao_central_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_balanca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].path_balanca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial_produtos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial_clientes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].host_matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].faturar_aluguel_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_imposto_sindicato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_imposto_inss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lancamento_inss_sindicato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parceiro_conta_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].troco_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].movimentacao_data_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salto_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senhas_criptografadas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_produtos_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_servico_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_pag_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms2016); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].plano_conta_13digitos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consulta_produto_especifico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].informa_venda_em_aberto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conversao_sped_simples_nacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].visualizar_vendas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acrescimo_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pasta_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_hora_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].orcamento_peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagem_carne); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].banco_contas_fixas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros_mes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples_subst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_contas_fixas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].seq_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_filial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_base_matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial_documentos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_vendacredito_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_geracaocredito_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_recebimento_duplicata_credito_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cta_estorno_credito_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].timezone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].timezone_utc); 
    end; 
end; 

procedure TFrm_ViewERPefd.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.fone1 := Edit_fone1.text;
      FController.Model.fone2 := Edit_fone2.text;
      FController.Model.fax := Edit_fax.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.representante_legal := Edit_representante_legal.text;
      FController.Model.tipo_empresa := Edit_tipo_empresa.text;
      FController.Model.hostname := Edit_hostname.text;
      FController.Model.database := Edit_database.text;
      FController.Model.porta := Edit_porta.text;
      FController.Model.usuariodbms := Edit_usuariodbms.text;
      FController.Model.senhadbms := Edit_senhadbms.text;
      FController.Model.data_cadastro := Edit_data_cadastro.text;
      FController.Model.cta_vendas := Edit_cta_vendas.text;
      FController.Model.cta_compra := Edit_cta_compra.text;
      FController.Model.cta_recparcela := Edit_cta_recparcela.text;
      FController.Model.cta_estparcela := Edit_cta_estparcela.text;
      FController.Model.cta_pagparcela := Edit_cta_pagparcela.text;
      FController.Model.cta_depbancario := Edit_cta_depbancario.text;
      FController.Model.cta_emissaocheq := Edit_cta_emissaocheq.text;
      FController.Model.cta_estcaixa := Edit_cta_estcaixa.text;
      FController.Model.cta_estbanco := Edit_cta_estbanco.text;
      FController.Model.cta_jrorecebido := Edit_cta_jrorecebido.text;
      FController.Model.cta_jropago := Edit_cta_jropago.text;
      FController.Model.cta_descrecebido := Edit_cta_descrecebido.text;
      FController.Model.cta_descpago := Edit_cta_descpago.text;
      FController.Model.cta_devolvenda := Edit_cta_devolvenda.text;
      FController.Model.desc_rateio := Edit_desc_rateio.text;
      FController.Model.mensagem_promocional := Edit_mensagem_promocional.text;
      FController.Model.modelo_duplicata := Edit_modelo_duplicata.text;
      FController.Model.modelo_recibo := Edit_modelo_recibo.text;
      FController.Model.modelo_nota := Edit_modelo_nota.text;
      FController.Model.qtd_itensnota := Edit_qtd_itensnota.text;
      FController.Model.tam_pagnota := Edit_tam_pagnota.text;
      FController.Model.seq_nronota := Edit_seq_nronota.text;
      FController.Model.imprime_nota := Edit_imprime_nota.text;
      FController.Model.imprime_vendedor := Edit_imprime_vendedor.text;
      FController.Model.estoque_negativo := Edit_estoque_negativo.text;
      FController.Model.texto_cobranca := Edit_texto_cobranca.text;
      FController.Model.custo_operacional := Edit_custo_operacional.text;
      FController.Model.custo_financeiro := Edit_custo_financeiro.text;
      FController.Model.juro_dia := Edit_juro_dia.text;
      FController.Model.cfop_avista := Edit_cfop_avista.text;
      FController.Model.cfop_aprazo := Edit_cfop_aprazo.text;
      FController.Model.click := Edit_click.text;
      FController.Model.salto_nota := Edit_salto_nota.text;
      FController.Model.caminho_nota := Edit_caminho_nota.text;
      FController.Model.cotacao := Edit_cotacao.text;
      FController.Model.comissao_decrescente := Edit_comissao_decrescente.text;
      FController.Model.intervalo_a1 := Edit_intervalo_a1.text;
      FController.Model.intervalo_a2 := Edit_intervalo_a2.text;
      FController.Model.intervalo_b1 := Edit_intervalo_b1.text;
      FController.Model.intervalo_b2 := Edit_intervalo_b2.text;
      FController.Model.intervalo_c1 := Edit_intervalo_c1.text;
      FController.Model.intervalo_c2 := Edit_intervalo_c2.text;
      FController.Model.intervalo_d1 := Edit_intervalo_d1.text;
      FController.Model.intervalo_d2 := Edit_intervalo_d2.text;
      FController.Model.intervalo_e1 := Edit_intervalo_e1.text;
      FController.Model.intervalo_f1 := Edit_intervalo_f1.text;
      FController.Model.intervalo_f2 := Edit_intervalo_f2.text;
      FController.Model.intervalo_g1 := Edit_intervalo_g1.text;
      FController.Model.intervalo_g2 := Edit_intervalo_g2.text;
      FController.Model.intervalo_h1 := Edit_intervalo_h1.text;
      FController.Model.intervalo_h2 := Edit_intervalo_h2.text;
      FController.Model.intervalo_i1 := Edit_intervalo_i1.text;
      FController.Model.intervalo_i2 := Edit_intervalo_i2.text;
      FController.Model.intervalo_j1 := Edit_intervalo_j1.text;
      FController.Model.intervalo_j2 := Edit_intervalo_j2.text;
      FController.Model.intervalo_l1 := Edit_intervalo_l1.text;
      FController.Model.intervalo_l2 := Edit_intervalo_l2.text;
      FController.Model.intervalo_m1 := Edit_intervalo_m1.text;
      FController.Model.intervalo_m2 := Edit_intervalo_m2.text;
      FController.Model.comissao_a := Edit_comissao_a.text;
      FController.Model.comissao_b := Edit_comissao_b.text;
      FController.Model.comissao_c := Edit_comissao_c.text;
      FController.Model.comissao_d := Edit_comissao_d.text;
      FController.Model.comissao_e := Edit_comissao_e.text;
      FController.Model.comissao_f := Edit_comissao_f.text;
      FController.Model.comissao_g := Edit_comissao_g.text;
      FController.Model.comissao_h := Edit_comissao_h.text;
      FController.Model.comissao_i := Edit_comissao_i.text;
      FController.Model.comissao_j := Edit_comissao_j.text;
      FController.Model.comissao_l := Edit_comissao_l.text;
      FController.Model.comissao_m := Edit_comissao_m.text;
      FController.Model.intervalo_e2 := Edit_intervalo_e2.text;
      FController.Model.salto_duplicata := Edit_salto_duplicata.text;
      FController.Model.imagem := Edit_imagem.text;
      FController.Model.arquivo_imagem := Edit_arquivo_imagem.text;
      FController.Model.produto_conjugado := Edit_produto_conjugado.text;
      FController.Model.rateio_comissao := Edit_rateio_comissao.text;
      FController.Model.cta_vendas_aprazo := Edit_cta_vendas_aprazo.text;
      FController.Model.formacao_preco := Edit_formacao_preco.text;
      FController.Model.nosso_numero := Edit_nosso_numero.text;
      FController.Model.identifica_cupom := Edit_identifica_cupom.text;
      FController.Model.atividade := Edit_atividade.text;
      FController.Model.venda_rapida := Edit_venda_rapida.text;
      FController.Model.grade := Edit_grade.text;
      FController.Model.data_analise := Edit_data_analise.text;
      FController.Model.cta_suprimento := Edit_cta_suprimento.text;
      FController.Model.cta_sangria := Edit_cta_sangria.text;
      FController.Model.cta_os := Edit_cta_os.text;
      FController.Model.bancocodigo := Edit_bancocodigo.text;
      FController.Model.banconome := Edit_banconome.text;
      FController.Model.cedentecodigo := Edit_cedentecodigo.text;
      FController.Model.cedentecodigodigito := Edit_cedentecodigodigito.text;
      FController.Model.carteira := Edit_carteira.text;
      FController.Model.agenciacodigo := Edit_agenciacodigo.text;
      FController.Model.agenciadigito := Edit_agenciadigito.text;
      FController.Model.agencianome := Edit_agencianome.text;
      FController.Model.contanumero := Edit_contanumero.text;
      FController.Model.contanumerodigito := Edit_contanumerodigito.text;
      FController.Model.proximonossonumero := Edit_proximonossonumero.text;
      FController.Model.salto_etiqueta1 := Edit_salto_etiqueta1.text;
      FController.Model.salto_etiqueta2 := Edit_salto_etiqueta2.text;
      FController.Model.salto_etiqueta3 := Edit_salto_etiqueta3.text;
      FController.Model.salto_etiqueta4 := Edit_salto_etiqueta4.text;
      FController.Model.filtro_nome := Edit_filtro_nome.text;
      FController.Model.dir_sistema := Edit_dir_sistema.text;
      FController.Model.dir_banco := Edit_dir_banco.text;
      FController.Model.valorreceber_maior := Edit_valorreceber_maior.text;
      FController.Model.cfop_devolucao := Edit_cfop_devolucao.text;
      FController.Model.devolucao_financeiro := Edit_devolucao_financeiro.text;
      FController.Model.vendedor_venda := Edit_vendedor_venda.text;
      FController.Model.instrucoes := Edit_instrucoes.text;
      FController.Model.forma_boleto := Edit_forma_boleto.text;
      FController.Model.cupom_automatico := Edit_cupom_automatico.text;
      FController.Model.simples := Edit_simples.text;
      FController.Model.vl_enc_federal := Edit_vl_enc_federal.text;
      FController.Model.vl_enc_estadual := Edit_vl_enc_estadual.text;
      FController.Model.convenio := Edit_convenio.text;
      FController.Model.tipo_convenio := Edit_tipo_convenio.text;
      FController.Model.dir_backup := Edit_dir_backup.text;
      FController.Model.modelo_carne := Edit_modelo_carne.text;
      FController.Model.iss := Edit_iss.text;
      FController.Model.qtd_itensnotaservico := Edit_qtd_itensnotaservico.text;
      FController.Model.texto_aniversario := Edit_texto_aniversario.text;
      FController.Model.ordemproc_produto := Edit_ordemproc_produto.text;
      FController.Model.extrato_produto := Edit_extrato_produto.text;
      FController.Model.boleto := Edit_boleto.text;
      FController.Model.salto_boleto := Edit_salto_boleto.text;
      FController.Model.cliente_coringa := Edit_cliente_coringa.text;
      FController.Model.mostra_conta := Edit_mostra_conta.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.responsavel := Edit_responsavel.text;
      FController.Model.st := Edit_st.text;
      FController.Model.ipi := Edit_ipi.text;
      FController.Model.industria := Edit_industria.text;
      FController.Model.locacao := Edit_locacao.text;
      FController.Model.obs_orcamento := Edit_obs_orcamento.text;
      FController.Model.insc_mun := Edit_insc_mun.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.supervisor := Edit_supervisor.text;
      FController.Model.salto_etiqueta5 := Edit_salto_etiqueta5.text;
      FController.Model.juro_carencia := Edit_juro_carencia.text;
      FController.Model.baixa_simples := Edit_baixa_simples.text;
      FController.Model.obs_carne1 := Edit_obs_carne1.text;
      FController.Model.obs_carne2 := Edit_obs_carne2.text;
      FController.Model.obs_carne3 := Edit_obs_carne3.text;
      FController.Model.obs_carne4 := Edit_obs_carne4.text;
      FController.Model.obs_carne5 := Edit_obs_carne5.text;
      FController.Model.obs_carne6 := Edit_obs_carne6.text;
      FController.Model.venda_maior := Edit_venda_maior.text;
      FController.Model.substituto_tributario := Edit_substituto_tributario.text;
      FController.Model.diretorio_fotos := Edit_diretorio_fotos.text;
      FController.Model.obs_carne7 := Edit_obs_carne7.text;
      FController.Model.obs_carne8 := Edit_obs_carne8.text;
      FController.Model.modelo_ficha := Edit_modelo_ficha.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.ajusta_fatura := Edit_ajusta_fatura.text;
      FController.Model.simples_nacional := Edit_simples_nacional.text;
      FController.Model.produto_consulta := Edit_produto_consulta.text;
      FController.Model.modelo_orcamento := Edit_modelo_orcamento.text;
      FController.Model.modelo_expedicao := Edit_modelo_expedicao.text;
      FController.Model.dias_backup := Edit_dias_backup.text;
      FController.Model.imprime_notad1 := Edit_imprime_notad1.text;
      FController.Model.farmacia_popular := Edit_farmacia_popular.text;
      FController.Model.fpb := Edit_fpb.text;
      FController.Model.irpj := Edit_irpj.text;
      FController.Model.cont_social := Edit_cont_social.text;
      FController.Model.casas_decimais := Edit_casas_decimais.text;
      FController.Model.tipo_desconto := Edit_tipo_desconto.text;
      FController.Model.custo_servico := Edit_custo_servico.text;
      FController.Model.tipo_juro_venda := Edit_tipo_juro_venda.text;
      FController.Model.bloqueio_automatico := Edit_bloqueio_automatico.text;
      FController.Model.controle_caixa := Edit_controle_caixa.text;
      FController.Model.tipo_juro := Edit_tipo_juro.text;
      FController.Model.aproveitamento_credito_atacado := Edit_aproveitamento_credito_atacado.text;
      FController.Model.icms_saida := Edit_icms_saida.text;
      FController.Model.compras_red_fora := Edit_compras_red_fora.text;
      FController.Model.compras_red_dentro := Edit_compras_red_dentro.text;
      FController.Model.atacado := Edit_atacado.text;
      FController.Model.aprazo := Edit_aprazo.text;
      FController.Model.id_tabela_preco := Edit_id_tabela_preco.text;
      FController.Model.multa := Edit_multa.text;
      FController.Model.tributado := Edit_tributado.text;
      FController.Model.substituicao := Edit_substituicao.text;
      FController.Model.isento := Edit_isento.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.credencial := Edit_credencial.text;
      FController.Model.controleestoquevenda := Edit_controleestoquevenda.text;
      FController.Model.cta_transf_saida := Edit_cta_transf_saida.text;
      FController.Model.cta_transf_entrada := Edit_cta_transf_entrada.text;
      FController.Model.cta_estorno_emissao_cheque := Edit_cta_estorno_emissao_cheque.text;
      FController.Model.cta_custodia := Edit_cta_custodia.text;
      FController.Model.cta_estorno_custodia := Edit_cta_estorno_custodia.text;
      FController.Model.cta_juros_custodia := Edit_cta_juros_custodia.text;
      FController.Model.cta_estorno_juros_custodia := Edit_cta_estorno_juros_custodia.text;
      FController.Model.cta_estorno_pagamento := Edit_cta_estorno_pagamento.text;
      FController.Model.cta_taxa_juros := Edit_cta_taxa_juros.text;
      FController.Model.razao_social := Edit_razao_social.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.contato := Edit_contato.text;
      FController.Model.parceiro := Edit_parceiro.text;
      FController.Model.cta_recebimento_cartao := Edit_cta_recebimento_cartao.text;
      FController.Model.obs_promissoria := Edit_obs_promissoria.text;
      FController.Model.boleto_novo := Edit_boleto_novo.text;
      FController.Model.modelo_contrato_locacao := Edit_modelo_contrato_locacao.text;
      FController.Model.elimina_zero := Edit_elimina_zero.text;
      FController.Model.eliminar_digito_fabricante := Edit_eliminar_digito_fabricante.text;
      FController.Model.cta_trocaproduto := Edit_cta_trocaproduto.text;
      FController.Model.forma_pgto_compras := Edit_forma_pgto_compras.text;
      FController.Model.cfop_tributado_interno := Edit_cfop_tributado_interno.text;
      FController.Model.cfop_tributado_externo := Edit_cfop_tributado_externo.text;
      FController.Model.cfop_subst_interno := Edit_cfop_subst_interno.text;
      FController.Model.cfop_subst_externo := Edit_cfop_subst_externo.text;
      FController.Model.cfop_naoincidencia_interno := Edit_cfop_naoincidencia_interno.text;
      FController.Model.cfop_naoincidencia_externo := Edit_cfop_naoincidencia_externo.text;
      FController.Model.cfop_isento_interno := Edit_cfop_isento_interno.text;
      FController.Model.cfop_isento_externo := Edit_cfop_isento_externo.text;
      FController.Model.cfop_tribpautafiscal_interno := Edit_cfop_tribpautafiscal_interno.text;
      FController.Model.cfop_tribpautafiscal_externo := Edit_cfop_tribpautafiscal_externo.text;
      FController.Model.parametro_troca := Edit_parametro_troca.text;
      FController.Model.cliente_consumidor := Edit_cliente_consumidor.text;
      FController.Model.cfop_devolucao_venda := Edit_cfop_devolucao_venda.text;
      FController.Model.troca_nfe := Edit_troca_nfe.text;
      FController.Model.localizacao_orcamento := Edit_localizacao_orcamento.text;
      FController.Model.produto_tributado := Edit_produto_tributado.text;
      FController.Model.produto_substituicao := Edit_produto_substituicao.text;
      FController.Model.produto_isento := Edit_produto_isento.text;
      FController.Model.produto_reducao := Edit_produto_reducao.text;
      FController.Model.hora_reducao_z := Edit_hora_reducao_z.text;
      FController.Model.buscar_ean_letra := Edit_buscar_ean_letra.text;
      FController.Model.imprimir_cod_fabric_cupom := Edit_imprimir_cod_fabric_cupom.text;
      FController.Model.remessa_antigo := Edit_remessa_antigo.text;
      FController.Model.caixa_baixa_simples := Edit_caixa_baixa_simples.text;
      FController.Model.visualizacao_antecipada_locacao := Edit_visualizacao_antecipada_locacao.text;
      FController.Model.antecipar_locacao := Edit_antecipar_locacao.text;
      FController.Model.senha_usuario_quitar_contareceber := Edit_senha_usuario_quitar_contareceber.text;
      FController.Model.conta_receber_sem_banco := Edit_conta_receber_sem_banco.text;
      FController.Model.utilizar_caixa_exclusivo := Edit_utilizar_caixa_exclusivo.text;
      FController.Model.caixa_exclusivo := Edit_caixa_exclusivo.text;
      FController.Model.tipo_entrada_compras := Edit_tipo_entrada_compras.text;
      FController.Model.cta_insumos := Edit_cta_insumos.text;
      FController.Model.cta_almoxarifado := Edit_cta_almoxarifado.text;
      FController.Model.cta_pag_funcionario := Edit_cta_pag_funcionario.text;
      FController.Model.utilizar_controle_financeiro_comissao := Edit_utilizar_controle_financeiro_comissao.text;
      FController.Model.cta_cheque_emitido := Edit_cta_cheque_emitido.text;
      FController.Model.controle_fabricante := Edit_controle_fabricante.text;
      FController.Model.desossa_aut := Edit_desossa_aut.text;
      FController.Model.movimento_food := Edit_movimento_food.text;
      FController.Model.pesquisa_venda := Edit_pesquisa_venda.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.trabalha_nfce := Edit_trabalha_nfce.text;
      FController.Model.tolerancia_ponto := Edit_tolerancia_ponto.text;
      FController.Model.venda := Edit_venda.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.romaneio := Edit_romaneio.text;
      FController.Model.cotacaop := Edit_cotacaop.text;
      FController.Model.cfop_venda_entrega_futura := Edit_cfop_venda_entrega_futura.text;
      FController.Model.cfop_entrega_futura := Edit_cfop_entrega_futura.text;
      FController.Model.cfop_entrega_fut_fora_estado := Edit_cfop_entrega_fut_fora_estado.text;
      FController.Model.cfop_venda_fut_fora_estado := Edit_cfop_venda_fut_fora_estado.text;
      FController.Model.relatorio_gerencia_servico := Edit_relatorio_gerencia_servico.text;
      FController.Model.pasta_xml := Edit_pasta_xml.text;
      FController.Model.imagem_fundo := Edit_imagem_fundo.text;
      FController.Model.pasta_nfe := Edit_pasta_nfe.text;
      FController.Model.regime_especial_st := Edit_regime_especial_st.text;
      FController.Model.confissao_divida := Edit_confissao_divida.text;
      FController.Model.utiliza_duplicata_grande := Edit_utiliza_duplicata_grande.text;
      FController.Model.controla_serial_celular := Edit_controla_serial_celular.text;
      FController.Model.cfop_devolucao_compra_interestadual := Edit_cfop_devolucao_compra_interestadual.text;
      FController.Model.cfop_devolucao_venda_interestadual := Edit_cfop_devolucao_venda_interestadual.text;
      FController.Model.nota_promissoria := Edit_nota_promissoria.text;
      FController.Model.explodir_kit := Edit_explodir_kit.text;
      FController.Model.estoque_subsequente := Edit_estoque_subsequente.text;
      FController.Model.validar_fornecedor := Edit_validar_fornecedor.text;
      FController.Model.os_sem_veiculo := Edit_os_sem_veiculo.text;
      FController.Model.informar_cfop_saida := Edit_informar_cfop_saida.text;
      FController.Model.cfop_transferencia := Edit_cfop_transferencia.text;
      FController.Model.cfop_transferencia_interestadual := Edit_cfop_transferencia_interestadual.text;
      FController.Model.cfop_retorno_mercadoria := Edit_cfop_retorno_mercadoria.text;
      FController.Model.cfop_retorno_mercadoria_interestadual := Edit_cfop_retorno_mercadoria_interestadual.text;
      FController.Model.cfop_entrada_produto := Edit_cfop_entrada_produto.text;
      FController.Model.cfop_entrada_produto_interestadual := Edit_cfop_entrada_produto_interestadual.text;
      FController.Model.validar_cliente := Edit_validar_cliente.text;
      FController.Model.imagem_tela_inicial := Edit_imagem_tela_inicial.text;
      FController.Model.kit_baixar_filhos := Edit_kit_baixar_filhos.text;
      FController.Model.padrao_central_custodia := Edit_padrao_central_custodia.text;
      FController.Model.tipo_balanca := Edit_tipo_balanca.text;
      FController.Model.path_balanca := Edit_path_balanca.text;
      FController.Model.filial_produtos := Edit_filial_produtos.text;
      FController.Model.filial_clientes := Edit_filial_clientes.text;
      FController.Model.filial_fornecedor := Edit_filial_fornecedor.text;
      FController.Model.host_matriz := Edit_host_matriz.text;
      FController.Model.faturar_aluguel_locacao := Edit_faturar_aluguel_locacao.text;
      FController.Model.cta_imposto_sindicato := Edit_cta_imposto_sindicato.text;
      FController.Model.cta_imposto_inss := Edit_cta_imposto_inss.text;
      FController.Model.lancamento_inss_sindicato := Edit_lancamento_inss_sindicato.text;
      FController.Model.parceiro_conta_pagar := Edit_parceiro_conta_pagar.text;
      FController.Model.troco_troca := Edit_troco_troca.text;
      FController.Model.movimentacao_data_saida := Edit_movimentacao_data_saida.text;
      FController.Model.salto_orcamento := Edit_salto_orcamento.text;
      FController.Model.senhas_criptografadas := Edit_senhas_criptografadas.text;
      FController.Model.qtd_produtos_orcamento := Edit_qtd_produtos_orcamento.text;
      FController.Model.qtd_servico_orcamento := Edit_qtd_servico_orcamento.text;
      FController.Model.numero_pag_orcamento := Edit_numero_pag_orcamento.text;
      FController.Model.icms2016 := Edit_icms2016.text;
      FController.Model.plano_conta_13digitos := Edit_plano_conta_13digitos.text;
      FController.Model.consulta_produto_especifico := Edit_consulta_produto_especifico.text;
      FController.Model.reducao_nfe := Edit_reducao_nfe.text;
      FController.Model.informa_venda_em_aberto := Edit_informa_venda_em_aberto.text;
      FController.Model.conversao_sped_simples_nacional := Edit_conversao_sped_simples_nacional.text;
      FController.Model.visualizar_vendas := Edit_visualizar_vendas.text;
      FController.Model.acrescimo_frete := Edit_acrescimo_frete.text;
      FController.Model.pasta_retorno := Edit_pasta_retorno.text;
      FController.Model.data_hora_nfe := Edit_data_hora_nfe.text;
      FController.Model.email_nfe := Edit_email_nfe.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.orcamento_peso_bruto := Edit_orcamento_peso_bruto.text;
      FController.Model.mensagem_carne := Edit_mensagem_carne.text;
      FController.Model.banco_contas_fixas := Edit_banco_contas_fixas.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.juros_mes := Edit_juros_mes.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.cte := Edit_cte.text;
      FController.Model.simples_subst := Edit_simples_subst.text;
      FController.Model.cta_contas_fixas := Edit_cta_contas_fixas.text;
      FController.Model.seq_lote := Edit_seq_lote.text;
      FController.Model.numero_filial := Edit_numero_filial.text;
      FController.Model.data_base_matriz := Edit_data_base_matriz.text;
      FController.Model.filial_documentos := Edit_filial_documentos.text;
      FController.Model.cta_vendacredito_cliente := Edit_cta_vendacredito_cliente.text;
      FController.Model.cta_geracaocredito_cliente := Edit_cta_geracaocredito_cliente.text;
      FController.Model.cta_recebimento_duplicata_credito_cliente := Edit_cta_recebimento_duplicata_credito_cliente.text;
      FController.Model.cta_estorno_credito_cliente := Edit_cta_estorno_credito_cliente.text;
      FController.Model.timezone := Edit_timezone.text;
      FController.Model.timezone_utc := Edit_timezone_utc.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPefd.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPefd.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPefd.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPefd.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPefd.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPefd.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPefd.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 355;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := fone1;  
     Grid.Cells[inttostr(i),0] := fone2;  
     Grid.Cells[inttostr(i),0] := fax;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := representante_legal;  
     Grid.Cells[inttostr(i),0] := tipo_empresa;  
     Grid.Cells[inttostr(i),0] := hostname;  
     Grid.Cells[inttostr(i),0] := database;  
     Grid.Cells[inttostr(i),0] := porta;  
     Grid.Cells[inttostr(i),0] := usuariodbms;  
     Grid.Cells[inttostr(i),0] := senhadbms;  
     Grid.Cells[inttostr(i),0] := data_cadastro;  
     Grid.Cells[inttostr(i),0] := cta_vendas;  
     Grid.Cells[inttostr(i),0] := cta_compra;  
     Grid.Cells[inttostr(i),0] := cta_recparcela;  
     Grid.Cells[inttostr(i),0] := cta_estparcela;  
     Grid.Cells[inttostr(i),0] := cta_pagparcela;  
     Grid.Cells[inttostr(i),0] := cta_depbancario;  
     Grid.Cells[inttostr(i),0] := cta_emissaocheq;  
     Grid.Cells[inttostr(i),0] := cta_estcaixa;  
     Grid.Cells[inttostr(i),0] := cta_estbanco;  
     Grid.Cells[inttostr(i),0] := cta_jrorecebido;  
     Grid.Cells[inttostr(i),0] := cta_jropago;  
     Grid.Cells[inttostr(i),0] := cta_descrecebido;  
     Grid.Cells[inttostr(i),0] := cta_descpago;  
     Grid.Cells[inttostr(i),0] := cta_devolvenda;  
     Grid.Cells[inttostr(i),0] := desc_rateio;  
     Grid.Cells[inttostr(i),0] := mensagem_promocional;  
     Grid.Cells[inttostr(i),0] := modelo_duplicata;  
     Grid.Cells[inttostr(i),0] := modelo_recibo;  
     Grid.Cells[inttostr(i),0] := modelo_nota;  
     Grid.Cells[inttostr(i),0] := qtd_itensnota;  
     Grid.Cells[inttostr(i),0] := tam_pagnota;  
     Grid.Cells[inttostr(i),0] := seq_nronota;  
     Grid.Cells[inttostr(i),0] := imprime_nota;  
     Grid.Cells[inttostr(i),0] := imprime_vendedor;  
     Grid.Cells[inttostr(i),0] := estoque_negativo;  
     Grid.Cells[inttostr(i),0] := texto_cobranca;  
     Grid.Cells[inttostr(i),0] := custo_operacional;  
     Grid.Cells[inttostr(i),0] := custo_financeiro;  
     Grid.Cells[inttostr(i),0] := juro_dia;  
     Grid.Cells[inttostr(i),0] := cfop_avista;  
     Grid.Cells[inttostr(i),0] := cfop_aprazo;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := salto_nota;  
     Grid.Cells[inttostr(i),0] := caminho_nota;  
     Grid.Cells[inttostr(i),0] := cotacao;  
     Grid.Cells[inttostr(i),0] := comissao_decrescente;  
     Grid.Cells[inttostr(i),0] := intervalo_a1;  
     Grid.Cells[inttostr(i),0] := intervalo_a2;  
     Grid.Cells[inttostr(i),0] := intervalo_b1;  
     Grid.Cells[inttostr(i),0] := intervalo_b2;  
     Grid.Cells[inttostr(i),0] := intervalo_c1;  
     Grid.Cells[inttostr(i),0] := intervalo_c2;  
     Grid.Cells[inttostr(i),0] := intervalo_d1;  
     Grid.Cells[inttostr(i),0] := intervalo_d2;  
     Grid.Cells[inttostr(i),0] := intervalo_e1;  
     Grid.Cells[inttostr(i),0] := intervalo_f1;  
     Grid.Cells[inttostr(i),0] := intervalo_f2;  
     Grid.Cells[inttostr(i),0] := intervalo_g1;  
     Grid.Cells[inttostr(i),0] := intervalo_g2;  
     Grid.Cells[inttostr(i),0] := intervalo_h1;  
     Grid.Cells[inttostr(i),0] := intervalo_h2;  
     Grid.Cells[inttostr(i),0] := intervalo_i1;  
     Grid.Cells[inttostr(i),0] := intervalo_i2;  
     Grid.Cells[inttostr(i),0] := intervalo_j1;  
     Grid.Cells[inttostr(i),0] := intervalo_j2;  
     Grid.Cells[inttostr(i),0] := intervalo_l1;  
     Grid.Cells[inttostr(i),0] := intervalo_l2;  
     Grid.Cells[inttostr(i),0] := intervalo_m1;  
     Grid.Cells[inttostr(i),0] := intervalo_m2;  
     Grid.Cells[inttostr(i),0] := comissao_a;  
     Grid.Cells[inttostr(i),0] := comissao_b;  
     Grid.Cells[inttostr(i),0] := comissao_c;  
     Grid.Cells[inttostr(i),0] := comissao_d;  
     Grid.Cells[inttostr(i),0] := comissao_e;  
     Grid.Cells[inttostr(i),0] := comissao_f;  
     Grid.Cells[inttostr(i),0] := comissao_g;  
     Grid.Cells[inttostr(i),0] := comissao_h;  
     Grid.Cells[inttostr(i),0] := comissao_i;  
     Grid.Cells[inttostr(i),0] := comissao_j;  
     Grid.Cells[inttostr(i),0] := comissao_l;  
     Grid.Cells[inttostr(i),0] := comissao_m;  
     Grid.Cells[inttostr(i),0] := intervalo_e2;  
     Grid.Cells[inttostr(i),0] := salto_duplicata;  
     Grid.Cells[inttostr(i),0] := imagem;  
     Grid.Cells[inttostr(i),0] := arquivo_imagem;  
     Grid.Cells[inttostr(i),0] := produto_conjugado;  
     Grid.Cells[inttostr(i),0] := rateio_comissao;  
     Grid.Cells[inttostr(i),0] := cta_vendas_aprazo;  
     Grid.Cells[inttostr(i),0] := formacao_preco;  
     Grid.Cells[inttostr(i),0] := nosso_numero;  
     Grid.Cells[inttostr(i),0] := identifica_cupom;  
     Grid.Cells[inttostr(i),0] := atividade;  
     Grid.Cells[inttostr(i),0] := venda_rapida;  
     Grid.Cells[inttostr(i),0] := grade;  
     Grid.Cells[inttostr(i),0] := data_analise;  
     Grid.Cells[inttostr(i),0] := cta_suprimento;  
     Grid.Cells[inttostr(i),0] := cta_sangria;  
     Grid.Cells[inttostr(i),0] := cta_os;  
     Grid.Cells[inttostr(i),0] := bancocodigo;  
     Grid.Cells[inttostr(i),0] := banconome;  
     Grid.Cells[inttostr(i),0] := cedentecodigo;  
     Grid.Cells[inttostr(i),0] := cedentecodigodigito;  
     Grid.Cells[inttostr(i),0] := carteira;  
     Grid.Cells[inttostr(i),0] := agenciacodigo;  
     Grid.Cells[inttostr(i),0] := agenciadigito;  
     Grid.Cells[inttostr(i),0] := agencianome;  
     Grid.Cells[inttostr(i),0] := contanumero;  
     Grid.Cells[inttostr(i),0] := contanumerodigito;  
     Grid.Cells[inttostr(i),0] := proximonossonumero;  
     Grid.Cells[inttostr(i),0] := salto_etiqueta1;  
     Grid.Cells[inttostr(i),0] := salto_etiqueta2;  
     Grid.Cells[inttostr(i),0] := salto_etiqueta3;  
     Grid.Cells[inttostr(i),0] := salto_etiqueta4;  
     Grid.Cells[inttostr(i),0] := filtro_nome;  
     Grid.Cells[inttostr(i),0] := dir_sistema;  
     Grid.Cells[inttostr(i),0] := dir_banco;  
     Grid.Cells[inttostr(i),0] := valorreceber_maior;  
     Grid.Cells[inttostr(i),0] := cfop_devolucao;  
     Grid.Cells[inttostr(i),0] := devolucao_financeiro;  
     Grid.Cells[inttostr(i),0] := vendedor_venda;  
     Grid.Cells[inttostr(i),0] := instrucoes;  
     Grid.Cells[inttostr(i),0] := forma_boleto;  
     Grid.Cells[inttostr(i),0] := cupom_automatico;  
     Grid.Cells[inttostr(i),0] := simples;  
     Grid.Cells[inttostr(i),0] := vl_enc_federal;  
     Grid.Cells[inttostr(i),0] := vl_enc_estadual;  
     Grid.Cells[inttostr(i),0] := convenio;  
     Grid.Cells[inttostr(i),0] := tipo_convenio;  
     Grid.Cells[inttostr(i),0] := dir_backup;  
     Grid.Cells[inttostr(i),0] := modelo_carne;  
     Grid.Cells[inttostr(i),0] := iss;  
     Grid.Cells[inttostr(i),0] := qtd_itensnotaservico;  
     Grid.Cells[inttostr(i),0] := texto_aniversario;  
     Grid.Cells[inttostr(i),0] := ordemproc_produto;  
     Grid.Cells[inttostr(i),0] := extrato_produto;  
     Grid.Cells[inttostr(i),0] := boleto;  
     Grid.Cells[inttostr(i),0] := salto_boleto;  
     Grid.Cells[inttostr(i),0] := cliente_coringa;  
     Grid.Cells[inttostr(i),0] := mostra_conta;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := responsavel;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := ipi;  
     Grid.Cells[inttostr(i),0] := industria;  
     Grid.Cells[inttostr(i),0] := locacao;  
     Grid.Cells[inttostr(i),0] := obs_orcamento;  
     Grid.Cells[inttostr(i),0] := insc_mun;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := supervisor;  
     Grid.Cells[inttostr(i),0] := salto_etiqueta5;  
     Grid.Cells[inttostr(i),0] := juro_carencia;  
     Grid.Cells[inttostr(i),0] := baixa_simples;  
     Grid.Cells[inttostr(i),0] := obs_carne1;  
     Grid.Cells[inttostr(i),0] := obs_carne2;  
     Grid.Cells[inttostr(i),0] := obs_carne3;  
     Grid.Cells[inttostr(i),0] := obs_carne4;  
     Grid.Cells[inttostr(i),0] := obs_carne5;  
     Grid.Cells[inttostr(i),0] := obs_carne6;  
     Grid.Cells[inttostr(i),0] := venda_maior;  
     Grid.Cells[inttostr(i),0] := substituto_tributario;  
     Grid.Cells[inttostr(i),0] := diretorio_fotos;  
     Grid.Cells[inttostr(i),0] := obs_carne7;  
     Grid.Cells[inttostr(i),0] := obs_carne8;  
     Grid.Cells[inttostr(i),0] := modelo_ficha;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := ajusta_fatura;  
     Grid.Cells[inttostr(i),0] := simples_nacional;  
     Grid.Cells[inttostr(i),0] := produto_consulta;  
     Grid.Cells[inttostr(i),0] := modelo_orcamento;  
     Grid.Cells[inttostr(i),0] := modelo_expedicao;  
     Grid.Cells[inttostr(i),0] := dias_backup;  
     Grid.Cells[inttostr(i),0] := imprime_notad1;  
     Grid.Cells[inttostr(i),0] := farmacia_popular;  
     Grid.Cells[inttostr(i),0] := fpb;  
     Grid.Cells[inttostr(i),0] := irpj;  
     Grid.Cells[inttostr(i),0] := cont_social;  
     Grid.Cells[inttostr(i),0] := casas_decimais;  
     Grid.Cells[inttostr(i),0] := tipo_desconto;  
     Grid.Cells[inttostr(i),0] := custo_servico;  
     Grid.Cells[inttostr(i),0] := tipo_juro_venda;  
     Grid.Cells[inttostr(i),0] := bloqueio_automatico;  
     Grid.Cells[inttostr(i),0] := controle_caixa;  
     Grid.Cells[inttostr(i),0] := tipo_juro;  
     Grid.Cells[inttostr(i),0] := aproveitamento_credito_atacado;  
     Grid.Cells[inttostr(i),0] := icms_saida;  
     Grid.Cells[inttostr(i),0] := compras_red_fora;  
     Grid.Cells[inttostr(i),0] := compras_red_dentro;  
     Grid.Cells[inttostr(i),0] := atacado;  
     Grid.Cells[inttostr(i),0] := aprazo;  
     Grid.Cells[inttostr(i),0] := id_tabela_preco;  
     Grid.Cells[inttostr(i),0] := multa;  
     Grid.Cells[inttostr(i),0] := tributado;  
     Grid.Cells[inttostr(i),0] := substituicao;  
     Grid.Cells[inttostr(i),0] := isento;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := credencial;  
     Grid.Cells[inttostr(i),0] := controleestoquevenda;  
     Grid.Cells[inttostr(i),0] := cta_transf_saida;  
     Grid.Cells[inttostr(i),0] := cta_transf_entrada;  
     Grid.Cells[inttostr(i),0] := cta_estorno_emissao_cheque;  
     Grid.Cells[inttostr(i),0] := cta_custodia;  
     Grid.Cells[inttostr(i),0] := cta_estorno_custodia;  
     Grid.Cells[inttostr(i),0] := cta_juros_custodia;  
     Grid.Cells[inttostr(i),0] := cta_estorno_juros_custodia;  
     Grid.Cells[inttostr(i),0] := cta_estorno_pagamento;  
     Grid.Cells[inttostr(i),0] := cta_taxa_juros;  
     Grid.Cells[inttostr(i),0] := razao_social;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := contato;  
     Grid.Cells[inttostr(i),0] := parceiro;  
     Grid.Cells[inttostr(i),0] := cta_recebimento_cartao;  
     Grid.Cells[inttostr(i),0] := obs_promissoria;  
     Grid.Cells[inttostr(i),0] := boleto_novo;  
     Grid.Cells[inttostr(i),0] := modelo_contrato_locacao;  
     Grid.Cells[inttostr(i),0] := elimina_zero;  
     Grid.Cells[inttostr(i),0] := eliminar_digito_fabricante;  
     Grid.Cells[inttostr(i),0] := cta_trocaproduto;  
     Grid.Cells[inttostr(i),0] := forma_pgto_compras;  
     Grid.Cells[inttostr(i),0] := cfop_tributado_interno;  
     Grid.Cells[inttostr(i),0] := cfop_tributado_externo;  
     Grid.Cells[inttostr(i),0] := cfop_subst_interno;  
     Grid.Cells[inttostr(i),0] := cfop_subst_externo;  
     Grid.Cells[inttostr(i),0] := cfop_naoincidencia_interno;  
     Grid.Cells[inttostr(i),0] := cfop_naoincidencia_externo;  
     Grid.Cells[inttostr(i),0] := cfop_isento_interno;  
     Grid.Cells[inttostr(i),0] := cfop_isento_externo;  
     Grid.Cells[inttostr(i),0] := cfop_tribpautafiscal_interno;  
     Grid.Cells[inttostr(i),0] := cfop_tribpautafiscal_externo;  
     Grid.Cells[inttostr(i),0] := parametro_troca;  
     Grid.Cells[inttostr(i),0] := cliente_consumidor;  
     Grid.Cells[inttostr(i),0] := cfop_devolucao_venda;  
     Grid.Cells[inttostr(i),0] := troca_nfe;  
     Grid.Cells[inttostr(i),0] := localizacao_orcamento;  
     Grid.Cells[inttostr(i),0] := produto_tributado;  
     Grid.Cells[inttostr(i),0] := produto_substituicao;  
     Grid.Cells[inttostr(i),0] := produto_isento;  
     Grid.Cells[inttostr(i),0] := produto_reducao;  
     Grid.Cells[inttostr(i),0] := hora_reducao_z;  
     Grid.Cells[inttostr(i),0] := buscar_ean_letra;  
     Grid.Cells[inttostr(i),0] := imprimir_cod_fabric_cupom;  
     Grid.Cells[inttostr(i),0] := remessa_antigo;  
     Grid.Cells[inttostr(i),0] := caixa_baixa_simples;  
     Grid.Cells[inttostr(i),0] := visualizacao_antecipada_locacao;  
     Grid.Cells[inttostr(i),0] := antecipar_locacao;  
     Grid.Cells[inttostr(i),0] := senha_usuario_quitar_contareceber;  
     Grid.Cells[inttostr(i),0] := conta_receber_sem_banco;  
     Grid.Cells[inttostr(i),0] := utilizar_caixa_exclusivo;  
     Grid.Cells[inttostr(i),0] := caixa_exclusivo;  
     Grid.Cells[inttostr(i),0] := tipo_entrada_compras;  
     Grid.Cells[inttostr(i),0] := cta_insumos;  
     Grid.Cells[inttostr(i),0] := cta_almoxarifado;  
     Grid.Cells[inttostr(i),0] := cta_pag_funcionario;  
     Grid.Cells[inttostr(i),0] := utilizar_controle_financeiro_comissao;  
     Grid.Cells[inttostr(i),0] := cta_cheque_emitido;  
     Grid.Cells[inttostr(i),0] := controle_fabricante;  
     Grid.Cells[inttostr(i),0] := desossa_aut;  
     Grid.Cells[inttostr(i),0] := movimento_food;  
     Grid.Cells[inttostr(i),0] := pesquisa_venda;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := trabalha_nfce;  
     Grid.Cells[inttostr(i),0] := tolerancia_ponto;  
     Grid.Cells[inttostr(i),0] := venda;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := romaneio;  
     Grid.Cells[inttostr(i),0] := cotacaop;  
     Grid.Cells[inttostr(i),0] := cfop_venda_entrega_futura;  
     Grid.Cells[inttostr(i),0] := cfop_entrega_futura;  
     Grid.Cells[inttostr(i),0] := cfop_entrega_fut_fora_estado;  
     Grid.Cells[inttostr(i),0] := cfop_venda_fut_fora_estado;  
     Grid.Cells[inttostr(i),0] := relatorio_gerencia_servico;  
     Grid.Cells[inttostr(i),0] := pasta_xml;  
     Grid.Cells[inttostr(i),0] := imagem_fundo;  
     Grid.Cells[inttostr(i),0] := pasta_nfe;  
     Grid.Cells[inttostr(i),0] := regime_especial_st;  
     Grid.Cells[inttostr(i),0] := confissao_divida;  
     Grid.Cells[inttostr(i),0] := utiliza_duplicata_grande;  
     Grid.Cells[inttostr(i),0] := controla_serial_celular;  
     Grid.Cells[inttostr(i),0] := cfop_devolucao_compra_interestadual;  
     Grid.Cells[inttostr(i),0] := cfop_devolucao_venda_interestadual;  
     Grid.Cells[inttostr(i),0] := nota_promissoria;  
     Grid.Cells[inttostr(i),0] := explodir_kit;  
     Grid.Cells[inttostr(i),0] := estoque_subsequente;  
     Grid.Cells[inttostr(i),0] := validar_fornecedor;  
     Grid.Cells[inttostr(i),0] := os_sem_veiculo;  
     Grid.Cells[inttostr(i),0] := informar_cfop_saida;  
     Grid.Cells[inttostr(i),0] := cfop_transferencia;  
     Grid.Cells[inttostr(i),0] := cfop_transferencia_interestadual;  
     Grid.Cells[inttostr(i),0] := cfop_retorno_mercadoria;  
     Grid.Cells[inttostr(i),0] := cfop_retorno_mercadoria_interestadual;  
     Grid.Cells[inttostr(i),0] := cfop_entrada_produto;  
     Grid.Cells[inttostr(i),0] := cfop_entrada_produto_interestadual;  
     Grid.Cells[inttostr(i),0] := validar_cliente;  
     Grid.Cells[inttostr(i),0] := imagem_tela_inicial;  
     Grid.Cells[inttostr(i),0] := kit_baixar_filhos;  
     Grid.Cells[inttostr(i),0] := padrao_central_custodia;  
     Grid.Cells[inttostr(i),0] := tipo_balanca;  
     Grid.Cells[inttostr(i),0] := path_balanca;  
     Grid.Cells[inttostr(i),0] := filial_produtos;  
     Grid.Cells[inttostr(i),0] := filial_clientes;  
     Grid.Cells[inttostr(i),0] := filial_fornecedor;  
     Grid.Cells[inttostr(i),0] := host_matriz;  
     Grid.Cells[inttostr(i),0] := faturar_aluguel_locacao;  
     Grid.Cells[inttostr(i),0] := cta_imposto_sindicato;  
     Grid.Cells[inttostr(i),0] := cta_imposto_inss;  
     Grid.Cells[inttostr(i),0] := lancamento_inss_sindicato;  
     Grid.Cells[inttostr(i),0] := parceiro_conta_pagar;  
     Grid.Cells[inttostr(i),0] := troco_troca;  
     Grid.Cells[inttostr(i),0] := movimentacao_data_saida;  
     Grid.Cells[inttostr(i),0] := salto_orcamento;  
     Grid.Cells[inttostr(i),0] := senhas_criptografadas;  
     Grid.Cells[inttostr(i),0] := qtd_produtos_orcamento;  
     Grid.Cells[inttostr(i),0] := qtd_servico_orcamento;  
     Grid.Cells[inttostr(i),0] := numero_pag_orcamento;  
     Grid.Cells[inttostr(i),0] := icms2016;  
     Grid.Cells[inttostr(i),0] := plano_conta_13digitos;  
     Grid.Cells[inttostr(i),0] := consulta_produto_especifico;  
     Grid.Cells[inttostr(i),0] := reducao_nfe;  
     Grid.Cells[inttostr(i),0] := informa_venda_em_aberto;  
     Grid.Cells[inttostr(i),0] := conversao_sped_simples_nacional;  
     Grid.Cells[inttostr(i),0] := visualizar_vendas;  
     Grid.Cells[inttostr(i),0] := acrescimo_frete;  
     Grid.Cells[inttostr(i),0] := pasta_retorno;  
     Grid.Cells[inttostr(i),0] := data_hora_nfe;  
     Grid.Cells[inttostr(i),0] := email_nfe;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := orcamento_peso_bruto;  
     Grid.Cells[inttostr(i),0] := mensagem_carne;  
     Grid.Cells[inttostr(i),0] := banco_contas_fixas;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := juros_mes;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := cte;  
     Grid.Cells[inttostr(i),0] := simples_subst;  
     Grid.Cells[inttostr(i),0] := cta_contas_fixas;  
     Grid.Cells[inttostr(i),0] := seq_lote;  
     Grid.Cells[inttostr(i),0] := numero_filial;  
     Grid.Cells[inttostr(i),0] := data_base_matriz;  
     Grid.Cells[inttostr(i),0] := filial_documentos;  
     Grid.Cells[inttostr(i),0] := cta_vendacredito_cliente;  
     Grid.Cells[inttostr(i),0] := cta_geracaocredito_cliente;  
     Grid.Cells[inttostr(i),0] := cta_recebimento_duplicata_credito_cliente;  
     Grid.Cells[inttostr(i),0] := cta_estorno_credito_cliente;  
     Grid.Cells[inttostr(i),0] := timezone;  
     Grid.Cells[inttostr(i),0] := timezone_utc;  
end;

procedure TFrm_ViewERPefd.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPefd.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPefd.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.endereco := Grid.Cells[2,Grid.row];
    FController.Model.cnpj := Grid.Cells[3,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[4,Grid.row];
    FController.Model.fone1 := Grid.Cells[5,Grid.row];
    FController.Model.fone2 := Grid.Cells[6,Grid.row];
    FController.Model.fax := Grid.Cells[7,Grid.row];
    FController.Model.bairro := Grid.Cells[8,Grid.row];
    FController.Model.id_cidade := Grid.Cells[9,Grid.row];
    FController.Model.uf := Grid.Cells[10,Grid.row];
    FController.Model.representante_legal := Grid.Cells[11,Grid.row];
    FController.Model.tipo_empresa := Grid.Cells[12,Grid.row];
    FController.Model.hostname := Grid.Cells[13,Grid.row];
    FController.Model.database := Grid.Cells[14,Grid.row];
    FController.Model.porta := Grid.Cells[15,Grid.row];
    FController.Model.usuariodbms := Grid.Cells[16,Grid.row];
    FController.Model.senhadbms := Grid.Cells[17,Grid.row];
    FController.Model.data_cadastro := Grid.Cells[18,Grid.row];
    FController.Model.cta_vendas := Grid.Cells[19,Grid.row];
    FController.Model.cta_compra := Grid.Cells[20,Grid.row];
    FController.Model.cta_recparcela := Grid.Cells[21,Grid.row];
    FController.Model.cta_estparcela := Grid.Cells[22,Grid.row];
    FController.Model.cta_pagparcela := Grid.Cells[23,Grid.row];
    FController.Model.cta_depbancario := Grid.Cells[24,Grid.row];
    FController.Model.cta_emissaocheq := Grid.Cells[25,Grid.row];
    FController.Model.cta_estcaixa := Grid.Cells[26,Grid.row];
    FController.Model.cta_estbanco := Grid.Cells[27,Grid.row];
    FController.Model.cta_jrorecebido := Grid.Cells[28,Grid.row];
    FController.Model.cta_jropago := Grid.Cells[29,Grid.row];
    FController.Model.cta_descrecebido := Grid.Cells[30,Grid.row];
    FController.Model.cta_descpago := Grid.Cells[31,Grid.row];
    FController.Model.cta_devolvenda := Grid.Cells[32,Grid.row];
    FController.Model.desc_rateio := Grid.Cells[33,Grid.row];
    FController.Model.mensagem_promocional := Grid.Cells[34,Grid.row];
    FController.Model.modelo_duplicata := Grid.Cells[35,Grid.row];
    FController.Model.modelo_recibo := Grid.Cells[36,Grid.row];
    FController.Model.modelo_nota := Grid.Cells[37,Grid.row];
    FController.Model.qtd_itensnota := Grid.Cells[38,Grid.row];
    FController.Model.tam_pagnota := Grid.Cells[39,Grid.row];
    FController.Model.seq_nronota := Grid.Cells[40,Grid.row];
    FController.Model.imprime_nota := Grid.Cells[41,Grid.row];
    FController.Model.imprime_vendedor := Grid.Cells[42,Grid.row];
    FController.Model.estoque_negativo := Grid.Cells[43,Grid.row];
    FController.Model.texto_cobranca := Grid.Cells[44,Grid.row];
    FController.Model.custo_operacional := Grid.Cells[45,Grid.row];
    FController.Model.custo_financeiro := Grid.Cells[46,Grid.row];
    FController.Model.juro_dia := Grid.Cells[47,Grid.row];
    FController.Model.cfop_avista := Grid.Cells[48,Grid.row];
    FController.Model.cfop_aprazo := Grid.Cells[49,Grid.row];
    FController.Model.click := Grid.Cells[50,Grid.row];
    FController.Model.salto_nota := Grid.Cells[51,Grid.row];
    FController.Model.caminho_nota := Grid.Cells[52,Grid.row];
    FController.Model.cotacao := Grid.Cells[53,Grid.row];
    FController.Model.comissao_decrescente := Grid.Cells[54,Grid.row];
    FController.Model.intervalo_a1 := Grid.Cells[55,Grid.row];
    FController.Model.intervalo_a2 := Grid.Cells[56,Grid.row];
    FController.Model.intervalo_b1 := Grid.Cells[57,Grid.row];
    FController.Model.intervalo_b2 := Grid.Cells[58,Grid.row];
    FController.Model.intervalo_c1 := Grid.Cells[59,Grid.row];
    FController.Model.intervalo_c2 := Grid.Cells[60,Grid.row];
    FController.Model.intervalo_d1 := Grid.Cells[61,Grid.row];
    FController.Model.intervalo_d2 := Grid.Cells[62,Grid.row];
    FController.Model.intervalo_e1 := Grid.Cells[63,Grid.row];
    FController.Model.intervalo_f1 := Grid.Cells[64,Grid.row];
    FController.Model.intervalo_f2 := Grid.Cells[65,Grid.row];
    FController.Model.intervalo_g1 := Grid.Cells[66,Grid.row];
    FController.Model.intervalo_g2 := Grid.Cells[67,Grid.row];
    FController.Model.intervalo_h1 := Grid.Cells[68,Grid.row];
    FController.Model.intervalo_h2 := Grid.Cells[69,Grid.row];
    FController.Model.intervalo_i1 := Grid.Cells[70,Grid.row];
    FController.Model.intervalo_i2 := Grid.Cells[71,Grid.row];
    FController.Model.intervalo_j1 := Grid.Cells[72,Grid.row];
    FController.Model.intervalo_j2 := Grid.Cells[73,Grid.row];
    FController.Model.intervalo_l1 := Grid.Cells[74,Grid.row];
    FController.Model.intervalo_l2 := Grid.Cells[75,Grid.row];
    FController.Model.intervalo_m1 := Grid.Cells[76,Grid.row];
    FController.Model.intervalo_m2 := Grid.Cells[77,Grid.row];
    FController.Model.comissao_a := Grid.Cells[78,Grid.row];
    FController.Model.comissao_b := Grid.Cells[79,Grid.row];
    FController.Model.comissao_c := Grid.Cells[80,Grid.row];
    FController.Model.comissao_d := Grid.Cells[81,Grid.row];
    FController.Model.comissao_e := Grid.Cells[82,Grid.row];
    FController.Model.comissao_f := Grid.Cells[83,Grid.row];
    FController.Model.comissao_g := Grid.Cells[84,Grid.row];
    FController.Model.comissao_h := Grid.Cells[85,Grid.row];
    FController.Model.comissao_i := Grid.Cells[86,Grid.row];
    FController.Model.comissao_j := Grid.Cells[87,Grid.row];
    FController.Model.comissao_l := Grid.Cells[88,Grid.row];
    FController.Model.comissao_m := Grid.Cells[89,Grid.row];
    FController.Model.intervalo_e2 := Grid.Cells[90,Grid.row];
    FController.Model.salto_duplicata := Grid.Cells[91,Grid.row];
    FController.Model.imagem := Grid.Cells[92,Grid.row];
    FController.Model.arquivo_imagem := Grid.Cells[93,Grid.row];
    FController.Model.produto_conjugado := Grid.Cells[94,Grid.row];
    FController.Model.rateio_comissao := Grid.Cells[95,Grid.row];
    FController.Model.cta_vendas_aprazo := Grid.Cells[96,Grid.row];
    FController.Model.formacao_preco := Grid.Cells[97,Grid.row];
    FController.Model.nosso_numero := Grid.Cells[98,Grid.row];
    FController.Model.identifica_cupom := Grid.Cells[99,Grid.row];
    FController.Model.atividade := Grid.Cells[100,Grid.row];
    FController.Model.venda_rapida := Grid.Cells[101,Grid.row];
    FController.Model.grade := Grid.Cells[102,Grid.row];
    FController.Model.data_analise := Grid.Cells[103,Grid.row];
    FController.Model.cta_suprimento := Grid.Cells[104,Grid.row];
    FController.Model.cta_sangria := Grid.Cells[105,Grid.row];
    FController.Model.cta_os := Grid.Cells[106,Grid.row];
    FController.Model.bancocodigo := Grid.Cells[107,Grid.row];
    FController.Model.banconome := Grid.Cells[108,Grid.row];
    FController.Model.cedentecodigo := Grid.Cells[109,Grid.row];
    FController.Model.cedentecodigodigito := Grid.Cells[110,Grid.row];
    FController.Model.carteira := Grid.Cells[111,Grid.row];
    FController.Model.agenciacodigo := Grid.Cells[112,Grid.row];
    FController.Model.agenciadigito := Grid.Cells[113,Grid.row];
    FController.Model.agencianome := Grid.Cells[114,Grid.row];
    FController.Model.contanumero := Grid.Cells[115,Grid.row];
    FController.Model.contanumerodigito := Grid.Cells[116,Grid.row];
    FController.Model.proximonossonumero := Grid.Cells[117,Grid.row];
    FController.Model.salto_etiqueta1 := Grid.Cells[118,Grid.row];
    FController.Model.salto_etiqueta2 := Grid.Cells[119,Grid.row];
    FController.Model.salto_etiqueta3 := Grid.Cells[120,Grid.row];
    FController.Model.salto_etiqueta4 := Grid.Cells[121,Grid.row];
    FController.Model.filtro_nome := Grid.Cells[122,Grid.row];
    FController.Model.dir_sistema := Grid.Cells[123,Grid.row];
    FController.Model.dir_banco := Grid.Cells[124,Grid.row];
    FController.Model.valorreceber_maior := Grid.Cells[125,Grid.row];
    FController.Model.cfop_devolucao := Grid.Cells[126,Grid.row];
    FController.Model.devolucao_financeiro := Grid.Cells[127,Grid.row];
    FController.Model.vendedor_venda := Grid.Cells[128,Grid.row];
    FController.Model.instrucoes := Grid.Cells[129,Grid.row];
    FController.Model.forma_boleto := Grid.Cells[130,Grid.row];
    FController.Model.cupom_automatico := Grid.Cells[131,Grid.row];
    FController.Model.simples := Grid.Cells[132,Grid.row];
    FController.Model.vl_enc_federal := Grid.Cells[133,Grid.row];
    FController.Model.vl_enc_estadual := Grid.Cells[134,Grid.row];
    FController.Model.convenio := Grid.Cells[135,Grid.row];
    FController.Model.tipo_convenio := Grid.Cells[136,Grid.row];
    FController.Model.dir_backup := Grid.Cells[137,Grid.row];
    FController.Model.modelo_carne := Grid.Cells[138,Grid.row];
    FController.Model.iss := Grid.Cells[139,Grid.row];
    FController.Model.qtd_itensnotaservico := Grid.Cells[140,Grid.row];
    FController.Model.texto_aniversario := Grid.Cells[141,Grid.row];
    FController.Model.ordemproc_produto := Grid.Cells[142,Grid.row];
    FController.Model.extrato_produto := Grid.Cells[143,Grid.row];
    FController.Model.boleto := Grid.Cells[144,Grid.row];
    FController.Model.salto_boleto := Grid.Cells[145,Grid.row];
    FController.Model.cliente_coringa := Grid.Cells[146,Grid.row];
    FController.Model.mostra_conta := Grid.Cells[147,Grid.row];
    FController.Model.numero := Grid.Cells[148,Grid.row];
    FController.Model.cep := Grid.Cells[149,Grid.row];
    FController.Model.responsavel := Grid.Cells[150,Grid.row];
    FController.Model.st := Grid.Cells[151,Grid.row];
    FController.Model.ipi := Grid.Cells[152,Grid.row];
    FController.Model.industria := Grid.Cells[153,Grid.row];
    FController.Model.locacao := Grid.Cells[154,Grid.row];
    FController.Model.obs_orcamento := Grid.Cells[155,Grid.row];
    FController.Model.insc_mun := Grid.Cells[156,Grid.row];
    FController.Model.nfe := Grid.Cells[157,Grid.row];
    FController.Model.supervisor := Grid.Cells[158,Grid.row];
    FController.Model.salto_etiqueta5 := Grid.Cells[159,Grid.row];
    FController.Model.juro_carencia := Grid.Cells[160,Grid.row];
    FController.Model.baixa_simples := Grid.Cells[161,Grid.row];
    FController.Model.obs_carne1 := Grid.Cells[162,Grid.row];
    FController.Model.obs_carne2 := Grid.Cells[163,Grid.row];
    FController.Model.obs_carne3 := Grid.Cells[164,Grid.row];
    FController.Model.obs_carne4 := Grid.Cells[165,Grid.row];
    FController.Model.obs_carne5 := Grid.Cells[166,Grid.row];
    FController.Model.obs_carne6 := Grid.Cells[167,Grid.row];
    FController.Model.venda_maior := Grid.Cells[168,Grid.row];
    FController.Model.substituto_tributario := Grid.Cells[169,Grid.row];
    FController.Model.diretorio_fotos := Grid.Cells[170,Grid.row];
    FController.Model.obs_carne7 := Grid.Cells[171,Grid.row];
    FController.Model.obs_carne8 := Grid.Cells[172,Grid.row];
    FController.Model.modelo_ficha := Grid.Cells[173,Grid.row];
    FController.Model.pis := Grid.Cells[174,Grid.row];
    FController.Model.cofins := Grid.Cells[175,Grid.row];
    FController.Model.ajusta_fatura := Grid.Cells[176,Grid.row];
    FController.Model.simples_nacional := Grid.Cells[177,Grid.row];
    FController.Model.produto_consulta := Grid.Cells[178,Grid.row];
    FController.Model.modelo_orcamento := Grid.Cells[179,Grid.row];
    FController.Model.modelo_expedicao := Grid.Cells[180,Grid.row];
    FController.Model.dias_backup := Grid.Cells[181,Grid.row];
    FController.Model.imprime_notad1 := Grid.Cells[182,Grid.row];
    FController.Model.farmacia_popular := Grid.Cells[183,Grid.row];
    FController.Model.fpb := Grid.Cells[184,Grid.row];
    FController.Model.irpj := Grid.Cells[185,Grid.row];
    FController.Model.cont_social := Grid.Cells[186,Grid.row];
    FController.Model.casas_decimais := Grid.Cells[187,Grid.row];
    FController.Model.tipo_desconto := Grid.Cells[188,Grid.row];
    FController.Model.custo_servico := Grid.Cells[189,Grid.row];
    FController.Model.tipo_juro_venda := Grid.Cells[190,Grid.row];
    FController.Model.bloqueio_automatico := Grid.Cells[191,Grid.row];
    FController.Model.controle_caixa := Grid.Cells[192,Grid.row];
    FController.Model.tipo_juro := Grid.Cells[193,Grid.row];
    FController.Model.aproveitamento_credito_atacado := Grid.Cells[194,Grid.row];
    FController.Model.icms_saida := Grid.Cells[195,Grid.row];
    FController.Model.compras_red_fora := Grid.Cells[196,Grid.row];
    FController.Model.compras_red_dentro := Grid.Cells[197,Grid.row];
    FController.Model.atacado := Grid.Cells[198,Grid.row];
    FController.Model.aprazo := Grid.Cells[199,Grid.row];
    FController.Model.id_tabela_preco := Grid.Cells[200,Grid.row];
    FController.Model.multa := Grid.Cells[201,Grid.row];
    FController.Model.tributado := Grid.Cells[202,Grid.row];
    FController.Model.substituicao := Grid.Cells[203,Grid.row];
    FController.Model.isento := Grid.Cells[204,Grid.row];
    FController.Model.reducao := Grid.Cells[205,Grid.row];
    FController.Model.credencial := Grid.Cells[206,Grid.row];
    FController.Model.controleestoquevenda := Grid.Cells[207,Grid.row];
    FController.Model.cta_transf_saida := Grid.Cells[208,Grid.row];
    FController.Model.cta_transf_entrada := Grid.Cells[209,Grid.row];
    FController.Model.cta_estorno_emissao_cheque := Grid.Cells[210,Grid.row];
    FController.Model.cta_custodia := Grid.Cells[211,Grid.row];
    FController.Model.cta_estorno_custodia := Grid.Cells[212,Grid.row];
    FController.Model.cta_juros_custodia := Grid.Cells[213,Grid.row];
    FController.Model.cta_estorno_juros_custodia := Grid.Cells[214,Grid.row];
    FController.Model.cta_estorno_pagamento := Grid.Cells[215,Grid.row];
    FController.Model.cta_taxa_juros := Grid.Cells[216,Grid.row];
    FController.Model.razao_social := Grid.Cells[217,Grid.row];
    FController.Model.celular := Grid.Cells[218,Grid.row];
    FController.Model.contato := Grid.Cells[219,Grid.row];
    FController.Model.parceiro := Grid.Cells[220,Grid.row];
    FController.Model.cta_recebimento_cartao := Grid.Cells[221,Grid.row];
    FController.Model.obs_promissoria := Grid.Cells[222,Grid.row];
    FController.Model.boleto_novo := Grid.Cells[223,Grid.row];
    FController.Model.modelo_contrato_locacao := Grid.Cells[224,Grid.row];
    FController.Model.elimina_zero := Grid.Cells[225,Grid.row];
    FController.Model.eliminar_digito_fabricante := Grid.Cells[226,Grid.row];
    FController.Model.cta_trocaproduto := Grid.Cells[227,Grid.row];
    FController.Model.forma_pgto_compras := Grid.Cells[228,Grid.row];
    FController.Model.cfop_tributado_interno := Grid.Cells[229,Grid.row];
    FController.Model.cfop_tributado_externo := Grid.Cells[230,Grid.row];
    FController.Model.cfop_subst_interno := Grid.Cells[231,Grid.row];
    FController.Model.cfop_subst_externo := Grid.Cells[232,Grid.row];
    FController.Model.cfop_naoincidencia_interno := Grid.Cells[233,Grid.row];
    FController.Model.cfop_naoincidencia_externo := Grid.Cells[234,Grid.row];
    FController.Model.cfop_isento_interno := Grid.Cells[235,Grid.row];
    FController.Model.cfop_isento_externo := Grid.Cells[236,Grid.row];
    FController.Model.cfop_tribpautafiscal_interno := Grid.Cells[237,Grid.row];
    FController.Model.cfop_tribpautafiscal_externo := Grid.Cells[238,Grid.row];
    FController.Model.parametro_troca := Grid.Cells[239,Grid.row];
    FController.Model.cliente_consumidor := Grid.Cells[240,Grid.row];
    FController.Model.cfop_devolucao_venda := Grid.Cells[241,Grid.row];
    FController.Model.troca_nfe := Grid.Cells[242,Grid.row];
    FController.Model.localizacao_orcamento := Grid.Cells[243,Grid.row];
    FController.Model.produto_tributado := Grid.Cells[244,Grid.row];
    FController.Model.produto_substituicao := Grid.Cells[245,Grid.row];
    FController.Model.produto_isento := Grid.Cells[246,Grid.row];
    FController.Model.produto_reducao := Grid.Cells[247,Grid.row];
    FController.Model.hora_reducao_z := Grid.Cells[248,Grid.row];
    FController.Model.buscar_ean_letra := Grid.Cells[249,Grid.row];
    FController.Model.imprimir_cod_fabric_cupom := Grid.Cells[250,Grid.row];
    FController.Model.remessa_antigo := Grid.Cells[251,Grid.row];
    FController.Model.caixa_baixa_simples := Grid.Cells[252,Grid.row];
    FController.Model.visualizacao_antecipada_locacao := Grid.Cells[253,Grid.row];
    FController.Model.antecipar_locacao := Grid.Cells[254,Grid.row];
    FController.Model.senha_usuario_quitar_contareceber := Grid.Cells[255,Grid.row];
    FController.Model.conta_receber_sem_banco := Grid.Cells[256,Grid.row];
    FController.Model.utilizar_caixa_exclusivo := Grid.Cells[257,Grid.row];
    FController.Model.caixa_exclusivo := Grid.Cells[258,Grid.row];
    FController.Model.tipo_entrada_compras := Grid.Cells[259,Grid.row];
    FController.Model.cta_insumos := Grid.Cells[260,Grid.row];
    FController.Model.cta_almoxarifado := Grid.Cells[261,Grid.row];
    FController.Model.cta_pag_funcionario := Grid.Cells[262,Grid.row];
    FController.Model.utilizar_controle_financeiro_comissao := Grid.Cells[263,Grid.row];
    FController.Model.cta_cheque_emitido := Grid.Cells[264,Grid.row];
    FController.Model.controle_fabricante := Grid.Cells[265,Grid.row];
    FController.Model.desossa_aut := Grid.Cells[266,Grid.row];
    FController.Model.movimento_food := Grid.Cells[267,Grid.row];
    FController.Model.pesquisa_venda := Grid.Cells[268,Grid.row];
    FController.Model.nfce := Grid.Cells[269,Grid.row];
    FController.Model.trabalha_nfce := Grid.Cells[270,Grid.row];
    FController.Model.tolerancia_ponto := Grid.Cells[271,Grid.row];
    FController.Model.venda := Grid.Cells[272,Grid.row];
    FController.Model.expedicao := Grid.Cells[273,Grid.row];
    FController.Model.romaneio := Grid.Cells[274,Grid.row];
    FController.Model.cotacaop := Grid.Cells[275,Grid.row];
    FController.Model.cfop_venda_entrega_futura := Grid.Cells[276,Grid.row];
    FController.Model.cfop_entrega_futura := Grid.Cells[277,Grid.row];
    FController.Model.cfop_entrega_fut_fora_estado := Grid.Cells[278,Grid.row];
    FController.Model.cfop_venda_fut_fora_estado := Grid.Cells[279,Grid.row];
    FController.Model.relatorio_gerencia_servico := Grid.Cells[280,Grid.row];
    FController.Model.pasta_xml := Grid.Cells[281,Grid.row];
    FController.Model.imagem_fundo := Grid.Cells[282,Grid.row];
    FController.Model.pasta_nfe := Grid.Cells[283,Grid.row];
    FController.Model.regime_especial_st := Grid.Cells[284,Grid.row];
    FController.Model.confissao_divida := Grid.Cells[285,Grid.row];
    FController.Model.utiliza_duplicata_grande := Grid.Cells[286,Grid.row];
    FController.Model.controla_serial_celular := Grid.Cells[287,Grid.row];
    FController.Model.cfop_devolucao_compra_interestadual := Grid.Cells[288,Grid.row];
    FController.Model.cfop_devolucao_venda_interestadual := Grid.Cells[289,Grid.row];
    FController.Model.nota_promissoria := Grid.Cells[290,Grid.row];
    FController.Model.explodir_kit := Grid.Cells[291,Grid.row];
    FController.Model.estoque_subsequente := Grid.Cells[292,Grid.row];
    FController.Model.validar_fornecedor := Grid.Cells[293,Grid.row];
    FController.Model.os_sem_veiculo := Grid.Cells[294,Grid.row];
    FController.Model.informar_cfop_saida := Grid.Cells[295,Grid.row];
    FController.Model.cfop_transferencia := Grid.Cells[296,Grid.row];
    FController.Model.cfop_transferencia_interestadual := Grid.Cells[297,Grid.row];
    FController.Model.cfop_retorno_mercadoria := Grid.Cells[298,Grid.row];
    FController.Model.cfop_retorno_mercadoria_interestadual := Grid.Cells[299,Grid.row];
    FController.Model.cfop_entrada_produto := Grid.Cells[300,Grid.row];
    FController.Model.cfop_entrada_produto_interestadual := Grid.Cells[301,Grid.row];
    FController.Model.validar_cliente := Grid.Cells[302,Grid.row];
    FController.Model.imagem_tela_inicial := Grid.Cells[303,Grid.row];
    FController.Model.kit_baixar_filhos := Grid.Cells[304,Grid.row];
    FController.Model.padrao_central_custodia := Grid.Cells[305,Grid.row];
    FController.Model.tipo_balanca := Grid.Cells[306,Grid.row];
    FController.Model.path_balanca := Grid.Cells[307,Grid.row];
    FController.Model.filial_produtos := Grid.Cells[308,Grid.row];
    FController.Model.filial_clientes := Grid.Cells[309,Grid.row];
    FController.Model.filial_fornecedor := Grid.Cells[310,Grid.row];
    FController.Model.host_matriz := Grid.Cells[311,Grid.row];
    FController.Model.faturar_aluguel_locacao := Grid.Cells[312,Grid.row];
    FController.Model.cta_imposto_sindicato := Grid.Cells[313,Grid.row];
    FController.Model.cta_imposto_inss := Grid.Cells[314,Grid.row];
    FController.Model.lancamento_inss_sindicato := Grid.Cells[315,Grid.row];
    FController.Model.parceiro_conta_pagar := Grid.Cells[316,Grid.row];
    FController.Model.troco_troca := Grid.Cells[317,Grid.row];
    FController.Model.movimentacao_data_saida := Grid.Cells[318,Grid.row];
    FController.Model.salto_orcamento := Grid.Cells[319,Grid.row];
    FController.Model.senhas_criptografadas := Grid.Cells[320,Grid.row];
    FController.Model.qtd_produtos_orcamento := Grid.Cells[321,Grid.row];
    FController.Model.qtd_servico_orcamento := Grid.Cells[322,Grid.row];
    FController.Model.numero_pag_orcamento := Grid.Cells[323,Grid.row];
    FController.Model.icms2016 := Grid.Cells[324,Grid.row];
    FController.Model.plano_conta_13digitos := Grid.Cells[325,Grid.row];
    FController.Model.consulta_produto_especifico := Grid.Cells[326,Grid.row];
    FController.Model.reducao_nfe := Grid.Cells[327,Grid.row];
    FController.Model.informa_venda_em_aberto := Grid.Cells[328,Grid.row];
    FController.Model.conversao_sped_simples_nacional := Grid.Cells[329,Grid.row];
    FController.Model.visualizar_vendas := Grid.Cells[330,Grid.row];
    FController.Model.acrescimo_frete := Grid.Cells[331,Grid.row];
    FController.Model.pasta_retorno := Grid.Cells[332,Grid.row];
    FController.Model.data_hora_nfe := Grid.Cells[333,Grid.row];
    FController.Model.email_nfe := Grid.Cells[334,Grid.row];
    FController.Model.motorista := Grid.Cells[335,Grid.row];
    FController.Model.orcamento_peso_bruto := Grid.Cells[336,Grid.row];
    FController.Model.mensagem_carne := Grid.Cells[337,Grid.row];
    FController.Model.banco_contas_fixas := Grid.Cells[338,Grid.row];
    FController.Model.cpf := Grid.Cells[339,Grid.row];
    FController.Model.juros_mes := Grid.Cells[340,Grid.row];
    FController.Model.cidade := Grid.Cells[341,Grid.row];
    FController.Model.cte := Grid.Cells[342,Grid.row];
    FController.Model.simples_subst := Grid.Cells[343,Grid.row];
    FController.Model.cta_contas_fixas := Grid.Cells[344,Grid.row];
    FController.Model.seq_lote := Grid.Cells[345,Grid.row];
    FController.Model.numero_filial := Grid.Cells[346,Grid.row];
    FController.Model.data_base_matriz := Grid.Cells[347,Grid.row];
    FController.Model.filial_documentos := Grid.Cells[348,Grid.row];
    FController.Model.cta_vendacredito_cliente := Grid.Cells[349,Grid.row];
    FController.Model.cta_geracaocredito_cliente := Grid.Cells[350,Grid.row];
    FController.Model.cta_recebimento_duplicata_credito_cliente := Grid.Cells[351,Grid.row];
    FController.Model.cta_estorno_credito_cliente := Grid.Cells[352,Grid.row];
    FController.Model.timezone := Grid.Cells[353,Grid.row];
    FController.Model.timezone_utc := Grid.Cells[354,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPefd.LimparTela;  
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

procedure TFrm_ViewERPefd.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setinscricao_estadual(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfone1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfone2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfax(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setrepresentante_legal(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_empresa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Sethostname(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdatabase(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setporta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setusuariodbms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsenhadbms(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdata_cadastro(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_vendas(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_compra(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_recparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_pagparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_depbancario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_emissaocheq(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estcaixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estbanco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_jrorecebido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_jropago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_descrecebido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_descpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_devolvenda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdesc_rateio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmensagem_promocional(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_duplicata(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_recibo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_nota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setqtd_itensnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settam_pagnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setseq_nronota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimprime_nota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimprime_vendedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setestoque_negativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settexto_cobranca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcusto_operacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcusto_financeiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setjuro_dia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_avista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_aprazo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_nota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcaminho_nota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcotacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_decrescente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_a1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_a2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_b1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_b2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_c1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_c2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_d1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_d2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_e1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_f1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_f2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_g1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_g2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_h1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_h2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_i1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_i2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_j1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_j2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_l1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_l2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_m1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_m2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_a(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_b(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_c(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_d(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_e(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_f(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_g(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_h(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_i(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_j(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_l(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcomissao_m(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setintervalo_e2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_duplicata(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimagem(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setarquivo_imagem(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_conjugado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setrateio_comissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_vendas_aprazo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setformacao_preco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnosso_numero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setidentifica_cupom(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setatividade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvenda_rapida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setgrade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdata_analise(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_suprimento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_sangria(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_os(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbancocodigo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbanconome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcedentecodigo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcedentecodigodigito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcarteira(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setagenciacodigo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setagenciadigito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setagencianome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontanumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontanumerodigito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproximonossonumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_etiqueta1(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_etiqueta2(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_etiqueta3(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_etiqueta4(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfiltro_nome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdir_sistema(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdir_banco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvalorreceber_maior(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdevolucao_financeiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvendedor_venda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setinstrucoes(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setforma_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcupom_automatico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsimples(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvl_enc_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvl_enc_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setconvenio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_convenio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdir_backup(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_carne(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setiss(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setqtd_itensnotaservico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settexto_aniversario(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setordemproc_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setextrato_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setboleto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcliente_coringa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmostra_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setresponsavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setst(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setipi(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setindustria(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setlocacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_orcamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setinsc_mun(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsupervisor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_etiqueta5(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setjuro_carencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbaixa_simples(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne4(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne6(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvenda_maior(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsubstituto_tributario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdiretorio_fotos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne7(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_carne8(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_ficha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setajusta_fatura(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsimples_nacional(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_consulta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_orcamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_expedicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdias_backup(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimprime_notad1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfarmacia_popular(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfpb(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setirpj(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcont_social(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcasas_decimais(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_desconto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcusto_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_juro_venda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbloqueio_automatico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontrole_caixa(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_juro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setaproveitamento_credito_atacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Seticms_saida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcompras_red_fora(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcompras_red_dentro(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setatacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setaprazo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setid_tabela_preco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmulta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settributado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsubstituicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setisento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcredencial(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontroleestoquevenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_transf_saida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_transf_entrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estorno_emissao_cheque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_custodia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estorno_custodia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_juros_custodia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estorno_juros_custodia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estorno_pagamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_taxa_juros(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setrazao_social(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setparceiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_recebimento_cartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setobs_promissoria(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setboleto_novo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmodelo_contrato_locacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setelimina_zero(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Seteliminar_digito_fabricante(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_trocaproduto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setforma_pgto_compras(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_tributado_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_tributado_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_subst_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_subst_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_naoincidencia_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_naoincidencia_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_isento_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_isento_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_tribpautafiscal_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_tribpautafiscal_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setparametro_troca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcliente_consumidor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_devolucao_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settroca_nfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setlocalizacao_orcamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_tributado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_substituicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_isento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setproduto_reducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Sethora_reducao_z(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbuscar_ean_letra(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimprimir_cod_fabric_cupom(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setremessa_antigo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcaixa_baixa_simples(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvisualizacao_antecipada_locacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setantecipar_locacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsenha_usuario_quitar_contareceber(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setconta_receber_sem_banco(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setutilizar_caixa_exclusivo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcaixa_exclusivo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_entrada_compras(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_insumos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_almoxarifado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_pag_funcionario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setutilizar_controle_financeiro_comissao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_cheque_emitido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontrole_fabricante(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdesossa_aut(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmovimento_food(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpesquisa_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settrabalha_nfce(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settolerancia_ponto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvenda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setexpedicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setromaneio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcotacaop(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_venda_entrega_futura(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_entrega_futura(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_entrega_fut_fora_estado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_venda_fut_fora_estado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setrelatorio_gerencia_servico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpasta_xml(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimagem_fundo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpasta_nfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setregime_especial_st(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setconfissao_divida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setutiliza_duplicata_grande(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcontrola_serial_celular(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_devolucao_compra_interestadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_devolucao_venda_interestadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnota_promissoria(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setexplodir_kit(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setestoque_subsequente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvalidar_fornecedor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setos_sem_veiculo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setinformar_cfop_saida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_transferencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_transferencia_interestadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_retorno_mercadoria(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_retorno_mercadoria_interestadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_entrada_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcfop_entrada_produto_interestadual(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvalidar_cliente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setimagem_tela_inicial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setkit_baixar_filhos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpadrao_central_custodia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settipo_balanca(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpath_balanca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfilial_produtos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfilial_clientes(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfilial_fornecedor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Sethost_matriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfaturar_aluguel_locacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_imposto_sindicato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_imposto_inss(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setlancamento_inss_sindicato(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setparceiro_conta_pagar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settroco_troca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmovimentacao_data_saida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsalto_orcamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsenhas_criptografadas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setqtd_produtos_orcamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setqtd_servico_orcamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnumero_pag_orcamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Seticms2016(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setplano_conta_13digitos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setconsulta_produto_especifico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setreducao_nfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setinforma_venda_em_aberto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setconversao_sped_simples_nacional(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setvisualizar_vendas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setacrescimo_frete(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setpasta_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdata_hora_nfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setemail_nfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmotorista(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setorcamento_peso_bruto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setmensagem_carne(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setbanco_contas_fixas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setjuros_mes(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setsimples_subst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_contas_fixas(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setseq_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setnumero_filial(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setdata_base_matriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setfilial_documentos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_vendacredito_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_geracaocredito_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_recebimento_duplicata_credito_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Setcta_estorno_credito_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settimezone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPefd.Settimezone_utc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
