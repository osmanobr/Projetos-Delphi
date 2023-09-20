unit Model.ERP.efd_;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPefd = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setinscricao_estadual(const Value: WideString);
    procedure Setfone1(const Value: WideString);
    procedure Setfone2(const Value: WideString);
    procedure Setfax(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setrepresentante_legal(const Value: WideString);
    procedure Settipo_empresa(const Value: WideString);
    procedure Sethostname(const Value: WideString);
    procedure Setdatabase(const Value: WideString);
    procedure Setporta(const Value: WideString);
    procedure Setusuariodbms(const Value: WideString);
    procedure Setsenhadbms(const Value: WideString);
    procedure Setdata_cadastro(const Value: TDateTime);
    procedure Setcta_vendas(const Value: WideString);
    procedure Setcta_compra(const Value: WideString);
    procedure Setcta_recparcela(const Value: WideString);
    procedure Setcta_estparcela(const Value: WideString);
    procedure Setcta_pagparcela(const Value: WideString);
    procedure Setcta_depbancario(const Value: WideString);
    procedure Setcta_emissaocheq(const Value: WideString);
    procedure Setcta_estcaixa(const Value: WideString);
    procedure Setcta_estbanco(const Value: WideString);
    procedure Setcta_jrorecebido(const Value: WideString);
    procedure Setcta_jropago(const Value: WideString);
    procedure Setcta_descrecebido(const Value: WideString);
    procedure Setcta_descpago(const Value: WideString);
    procedure Setcta_devolvenda(const Value: WideString);
    procedure Setdesc_rateio(const Value: WideString);
    procedure Setmensagem_promocional(const Value: WideString);
    procedure Setmodelo_duplicata(const Value: WideString);
    procedure Setmodelo_recibo(const Value: WideString);
    procedure Setmodelo_nota(const Value: WideString);
    procedure Setqtd_itensnota(const Value: Integer);
    procedure Settam_pagnota(const Value: Integer);
    procedure Setseq_nronota(const Value: Integer);
    procedure Setimprime_nota(const Value: WideString);
    procedure Setimprime_vendedor(const Value: WideString);
    procedure Setestoque_negativo(const Value: WideString);
    procedure Settexto_cobranca(const Value: indefinido);
    procedure Setcusto_operacional(const Value: Double);
    procedure Setcusto_financeiro(const Value: Double);
    procedure Setjuro_dia(const Value: Double);
    procedure Setcfop_avista(const Value: Integer);
    procedure Setcfop_aprazo(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setsalto_nota(const Value: Integer);
    procedure Setcaminho_nota(const Value: WideString);
    procedure Setcotacao(const Value: WideString);
    procedure Setcomissao_decrescente(const Value: WideString);
    procedure Setintervalo_a1(const Value: Double);
    procedure Setintervalo_a2(const Value: Double);
    procedure Setintervalo_b1(const Value: Double);
    procedure Setintervalo_b2(const Value: Double);
    procedure Setintervalo_c1(const Value: Double);
    procedure Setintervalo_c2(const Value: Double);
    procedure Setintervalo_d1(const Value: Double);
    procedure Setintervalo_d2(const Value: Double);
    procedure Setintervalo_e1(const Value: Double);
    procedure Setintervalo_f1(const Value: Double);
    procedure Setintervalo_f2(const Value: Double);
    procedure Setintervalo_g1(const Value: Double);
    procedure Setintervalo_g2(const Value: Double);
    procedure Setintervalo_h1(const Value: Double);
    procedure Setintervalo_h2(const Value: Double);
    procedure Setintervalo_i1(const Value: Double);
    procedure Setintervalo_i2(const Value: Double);
    procedure Setintervalo_j1(const Value: Double);
    procedure Setintervalo_j2(const Value: Double);
    procedure Setintervalo_l1(const Value: Double);
    procedure Setintervalo_l2(const Value: Double);
    procedure Setintervalo_m1(const Value: Double);
    procedure Setintervalo_m2(const Value: Double);
    procedure Setcomissao_a(const Value: Double);
    procedure Setcomissao_b(const Value: Double);
    procedure Setcomissao_c(const Value: Double);
    procedure Setcomissao_d(const Value: Double);
    procedure Setcomissao_e(const Value: Double);
    procedure Setcomissao_f(const Value: Double);
    procedure Setcomissao_g(const Value: Double);
    procedure Setcomissao_h(const Value: Double);
    procedure Setcomissao_i(const Value: Double);
    procedure Setcomissao_j(const Value: Double);
    procedure Setcomissao_l(const Value: Double);
    procedure Setcomissao_m(const Value: Double);
    procedure Setintervalo_e2(const Value: Double);
    procedure Setsalto_duplicata(const Value: Integer);
    procedure Setimagem(const Value: Boolean);
    procedure Setarquivo_imagem(const Value: WideString);
    procedure Setproduto_conjugado(const Value: WideString);
    procedure Setrateio_comissao(const Value: WideString);
    procedure Setcta_vendas_aprazo(const Value: WideString);
    procedure Setformacao_preco(const Value: WideString);
    procedure Setnosso_numero(const Value: WideString);
    procedure Setidentifica_cupom(const Value: WideString);
    procedure Setatividade(const Value: WideString);
    procedure Setvenda_rapida(const Value: WideString);
    procedure Setgrade(const Value: WideString);
    procedure Setdata_analise(const Value: TDateTime);
    procedure Setcta_suprimento(const Value: WideString);
    procedure Setcta_sangria(const Value: WideString);
    procedure Setcta_os(const Value: WideString);
    procedure Setbancocodigo(const Value: WideString);
    procedure Setbanconome(const Value: WideString);
    procedure Setcedentecodigo(const Value: WideString);
    procedure Setcedentecodigodigito(const Value: WideString);
    procedure Setcarteira(const Value: WideString);
    procedure Setagenciacodigo(const Value: WideString);
    procedure Setagenciadigito(const Value: WideString);
    procedure Setagencianome(const Value: WideString);
    procedure Setcontanumero(const Value: WideString);
    procedure Setcontanumerodigito(const Value: WideString);
    procedure Setproximonossonumero(const Value: WideString);
    procedure Setsalto_etiqueta1(const Value: Integer);
    procedure Setsalto_etiqueta2(const Value: Integer);
    procedure Setsalto_etiqueta3(const Value: Integer);
    procedure Setsalto_etiqueta4(const Value: Integer);
    procedure Setfiltro_nome(const Value: WideString);
    procedure Setdir_sistema(const Value: WideString);
    procedure Setdir_banco(const Value: WideString);
    procedure Setvalorreceber_maior(const Value: WideString);
    procedure Setcfop_devolucao(const Value: Integer);
    procedure Setdevolucao_financeiro(const Value: WideString);
    procedure Setvendedor_venda(const Value: WideString);
    procedure Setinstrucoes(const Value: WideString);
    procedure Setforma_boleto(const Value: Integer);
    procedure Setcupom_automatico(const Value: WideString);
    procedure Setsimples(const Value: Double);
    procedure Setvl_enc_federal(const Value: Double);
    procedure Setvl_enc_estadual(const Value: Double);
    procedure Setconvenio(const Value: WideString);
    procedure Settipo_convenio(const Value: WideString);
    procedure Setdir_backup(const Value: WideString);
    procedure Setmodelo_carne(const Value: WideString);
    procedure Setiss(const Value: Double);
    procedure Setqtd_itensnotaservico(const Value: Integer);
    procedure Settexto_aniversario(const Value: indefinido);
    procedure Setordemproc_produto(const Value: WideString);
    procedure Setextrato_produto(const Value: WideString);
    procedure Setboleto(const Value: WideString);
    procedure Setsalto_boleto(const Value: Integer);
    procedure Setcliente_coringa(const Value: Integer);
    procedure Setmostra_conta(const Value: WideString);
    procedure Setnumero(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setresponsavel(const Value: WideString);
    procedure Setst(const Value: Boolean);
    procedure Setipi(const Value: Boolean);
    procedure Setindustria(const Value: WideString);
    procedure Setlocacao(const Value: WideString);
    procedure Setobs_orcamento(const Value: WideString);
    procedure Setinsc_mun(const Value: WideString);
    procedure Setnfe(const Value: WideString);
    procedure Setsupervisor(const Value: WideString);
    procedure Setsalto_etiqueta5(const Value: Integer);
    procedure Setjuro_carencia(const Value: Integer);
    procedure Setbaixa_simples(const Value: WideString);
    procedure Setobs_carne1(const Value: WideString);
    procedure Setobs_carne2(const Value: WideString);
    procedure Setobs_carne3(const Value: WideString);
    procedure Setobs_carne4(const Value: WideString);
    procedure Setobs_carne5(const Value: WideString);
    procedure Setobs_carne6(const Value: WideString);
    procedure Setvenda_maior(const Value: WideString);
    procedure Setsubstituto_tributario(const Value: WideString);
    procedure Setdiretorio_fotos(const Value: WideString);
    procedure Setobs_carne7(const Value: WideString);
    procedure Setobs_carne8(const Value: WideString);
    procedure Setmodelo_ficha(const Value: WideString);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setajusta_fatura(const Value: WideString);
    procedure Setsimples_nacional(const Value: Boolean);
    procedure Setproduto_consulta(const Value: WideString);
    procedure Setmodelo_orcamento(const Value: WideString);
    procedure Setmodelo_expedicao(const Value: WideString);
    procedure Setdias_backup(const Value: Integer);
    procedure Setimprime_notad1(const Value: WideString);
    procedure Setfarmacia_popular(const Value: Boolean);
    procedure Setfpb(const Value: Integer);
    procedure Setirpj(const Value: Double);
    procedure Setcont_social(const Value: Double);
    procedure Setcasas_decimais(const Value: Double);
    procedure Settipo_desconto(const Value: WideString);
    procedure Setcusto_servico(const Value: Double);
    procedure Settipo_juro_venda(const Value: WideString);
    procedure Setbloqueio_automatico(const Value: WideString);
    procedure Setcontrole_caixa(const Value: Boolean);
    procedure Settipo_juro(const Value: WideString);
    procedure Setaproveitamento_credito_atacado(const Value: Boolean);
    procedure Seticms_saida(const Value: Double);
    procedure Setcompras_red_fora(const Value: Boolean);
    procedure Setcompras_red_dentro(const Value: Boolean);
    procedure Setatacado(const Value: Boolean);
    procedure Setaprazo(const Value: Boolean);
    procedure Setid_tabela_preco(const Value: Integer);
    procedure Setmulta(const Value: Double);
    procedure Settributado(const Value: WideString);
    procedure Setsubstituicao(const Value: WideString);
    procedure Setisento(const Value: WideString);
    procedure Setreducao(const Value: Double);
    procedure Setcredencial(const Value: Integer);
    procedure Setcontroleestoquevenda(const Value: Boolean);
    procedure Setcta_transf_saida(const Value: WideString);
    procedure Setcta_transf_entrada(const Value: WideString);
    procedure Setcta_estorno_emissao_cheque(const Value: WideString);
    procedure Setcta_custodia(const Value: WideString);
    procedure Setcta_estorno_custodia(const Value: WideString);
    procedure Setcta_juros_custodia(const Value: WideString);
    procedure Setcta_estorno_juros_custodia(const Value: WideString);
    procedure Setcta_estorno_pagamento(const Value: WideString);
    procedure Setcta_taxa_juros(const Value: WideString);
    procedure Setrazao_social(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setcontato(const Value: WideString);
    procedure Setparceiro(const Value: WideString);
    procedure Setcta_recebimento_cartao(const Value: WideString);
    procedure Setobs_promissoria(const Value: WideString);
    procedure Setboleto_novo(const Value: Boolean);
    procedure Setmodelo_contrato_locacao(const Value: WideString);
    procedure Setelimina_zero(const Value: Boolean);
    procedure Seteliminar_digito_fabricante(const Value: Boolean);
    procedure Setcta_trocaproduto(const Value: WideString);
    procedure Setforma_pgto_compras(const Value: WideString);
    procedure Setcfop_tributado_interno(const Value: Integer);
    procedure Setcfop_tributado_externo(const Value: Integer);
    procedure Setcfop_subst_interno(const Value: Integer);
    procedure Setcfop_subst_externo(const Value: Integer);
    procedure Setcfop_naoincidencia_interno(const Value: Integer);
    procedure Setcfop_naoincidencia_externo(const Value: Integer);
    procedure Setcfop_isento_interno(const Value: Integer);
    procedure Setcfop_isento_externo(const Value: Integer);
    procedure Setcfop_tribpautafiscal_interno(const Value: Integer);
    procedure Setcfop_tribpautafiscal_externo(const Value: Integer);
    procedure Setparametro_troca(const Value: WideString);
    procedure Setcliente_consumidor(const Value: Integer);
    procedure Setcfop_devolucao_venda(const Value: Integer);
    procedure Settroca_nfe(const Value: Boolean);
    procedure Setlocalizacao_orcamento(const Value: WideString);
    procedure Setproduto_tributado(const Value: WideString);
    procedure Setproduto_substituicao(const Value: WideString);
    procedure Setproduto_isento(const Value: WideString);
    procedure Setproduto_reducao(const Value: Double);
    procedure Sethora_reducao_z(const Value: WideString);
    procedure Setbuscar_ean_letra(const Value: Boolean);
    procedure Setimprimir_cod_fabric_cupom(const Value: Boolean);
    procedure Setremessa_antigo(const Value: Boolean);
    procedure Setcaixa_baixa_simples(const Value: Integer);
    procedure Setvisualizacao_antecipada_locacao(const Value: Integer);
    procedure Setantecipar_locacao(const Value: Boolean);
    procedure Setsenha_usuario_quitar_contareceber(const Value: Boolean);
    procedure Setconta_receber_sem_banco(const Value: Boolean);
    procedure Setutilizar_caixa_exclusivo(const Value: Boolean);
    procedure Setcaixa_exclusivo(const Value: Integer);
    procedure Settipo_entrada_compras(const Value: Boolean);
    procedure Setcta_insumos(const Value: WideString);
    procedure Setcta_almoxarifado(const Value: WideString);
    procedure Setcta_pag_funcionario(const Value: WideString);
    procedure Setutilizar_controle_financeiro_comissao(const Value: Boolean);
    procedure Setcta_cheque_emitido(const Value: WideString);
    procedure Setcontrole_fabricante(const Value: Boolean);
    procedure Setdesossa_aut(const Value: Boolean);
    procedure Setmovimento_food(const Value: Boolean);
    procedure Setpesquisa_venda(const Value: Integer);
    procedure Setnfce(const Value: WideString);
    procedure Settrabalha_nfce(const Value: Boolean);
    procedure Settolerancia_ponto(const Value: Integer);
    procedure Setvenda(const Value: WideString);
    procedure Setexpedicao(const Value: WideString);
    procedure Setromaneio(const Value: WideString);
    procedure Setcotacaop(const Value: WideString);
    procedure Setcfop_venda_entrega_futura(const Value: Integer);
    procedure Setcfop_entrega_futura(const Value: Integer);
    procedure Setcfop_entrega_fut_fora_estado(const Value: Integer);
    procedure Setcfop_venda_fut_fora_estado(const Value: Integer);
    procedure Setrelatorio_gerencia_servico(const Value: Boolean);
    procedure Setpasta_xml(const Value: WideString);
    procedure Setimagem_fundo(const Value: WideString);
    procedure Setpasta_nfe(const Value: WideString);
    procedure Setregime_especial_st(const Value: Boolean);
    procedure Setconfissao_divida(const Value: Boolean);
    procedure Setutiliza_duplicata_grande(const Value: Boolean);
    procedure Setcontrola_serial_celular(const Value: Boolean);
    procedure Setcfop_devolucao_compra_interestadual(const Value: Integer);
    procedure Setcfop_devolucao_venda_interestadual(const Value: Integer);
    procedure Setnota_promissoria(const Value: Boolean);
    procedure Setexplodir_kit(const Value: Boolean);
    procedure Setestoque_subsequente(const Value: Boolean);
    procedure Setvalidar_fornecedor(const Value: Boolean);
    procedure Setos_sem_veiculo(const Value: Boolean);
    procedure Setinformar_cfop_saida(const Value: Boolean);
    procedure Setcfop_transferencia(const Value: Integer);
    procedure Setcfop_transferencia_interestadual(const Value: Integer);
    procedure Setcfop_retorno_mercadoria(const Value: Integer);
    procedure Setcfop_retorno_mercadoria_interestadual(const Value: Integer);
    procedure Setcfop_entrada_produto(const Value: Integer);
    procedure Setcfop_entrada_produto_interestadual(const Value: Integer);
    procedure Setvalidar_cliente(const Value: Boolean);
    procedure Setimagem_tela_inicial(const Value: WideString);
    procedure Setkit_baixar_filhos(const Value: Boolean);
    procedure Setpadrao_central_custodia(const Value: Boolean);
    procedure Settipo_balanca(const Value: Integer);
    procedure Setpath_balanca(const Value: WideString);
    procedure Setfilial_produtos(const Value: Boolean);
    procedure Setfilial_clientes(const Value: Boolean);
    procedure Setfilial_fornecedor(const Value: Boolean);
    procedure Sethost_matriz(const Value: WideString);
    procedure Setfaturar_aluguel_locacao(const Value: Boolean);
    procedure Setcta_imposto_sindicato(const Value: WideString);
    procedure Setcta_imposto_inss(const Value: WideString);
    procedure Setlancamento_inss_sindicato(const Value: Boolean);
    procedure Setparceiro_conta_pagar(const Value: Boolean);
    procedure Settroco_troca(const Value: Boolean);
    procedure Setmovimentacao_data_saida(const Value: Boolean);
    procedure Setsalto_orcamento(const Value: Integer);
    procedure Setsenhas_criptografadas(const Value: Boolean);
    procedure Setqtd_produtos_orcamento(const Value: Integer);
    procedure Setqtd_servico_orcamento(const Value: Integer);
    procedure Setnumero_pag_orcamento(const Value: Integer);
    procedure Seticms2016(const Value: Boolean);
    procedure Setplano_conta_13digitos(const Value: Boolean);
    procedure Setconsulta_produto_especifico(const Value: Boolean);
    procedure Setreducao_nfe(const Value: Boolean);
    procedure Setinforma_venda_em_aberto(const Value: Boolean);
    procedure Setconversao_sped_simples_nacional(const Value: Boolean);
    procedure Setvisualizar_vendas(const Value: Boolean);
    procedure Setacrescimo_frete(const Value: Boolean);
    procedure Setpasta_retorno(const Value: WideString);
    procedure Setdata_hora_nfe(const Value: Boolean);
    procedure Setemail_nfe(const Value: Boolean);
    procedure Setmotorista(const Value: Boolean);
    procedure Setorcamento_peso_bruto(const Value: Boolean);
    procedure Setmensagem_carne(const Value: WideString);
    procedure Setbanco_contas_fixas(const Value: Boolean);
    procedure Setcpf(const Value: WideString);
    procedure Setjuros_mes(const Value: Double);
    procedure Setcidade(const Value: WideString);
    procedure Setcte(const Value: WideString);
    procedure Setsimples_subst(const Value: Double);
    procedure Setcta_contas_fixas(const Value: WideString);
    procedure Setseq_lote(const Value: Integer);
    procedure Setnumero_filial(const Value: Integer);
    procedure Setdata_base_matriz(const Value: WideString);
    procedure Setfilial_documentos(const Value: Boolean);
    procedure Setcta_vendacredito_cliente(const Value: WideString);
    procedure Setcta_geracaocredito_cliente(const Value: WideString);
    procedure Setcta_recebimento_duplicata_credito_cliente(const Value: WideString);
    procedure Setcta_estorno_credito_cliente(const Value: WideString);
    procedure Settimezone(const Value: WideString);
    procedure Settimezone_utc(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property inscricao_estadual     : WideString read Finscricao_estadual write Setinscricao_estadual;
    property fone1     : WideString read Ffone1 write Setfone1;
    property fone2     : WideString read Ffone2 write Setfone2;
    property fax     : WideString read Ffax write Setfax;
    property bairro     : WideString read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property uf     : WideString read Fuf write Setuf;
    property representante_legal     : WideString read Frepresentante_legal write Setrepresentante_legal;
    property tipo_empresa     : WideString read Ftipo_empresa write Settipo_empresa;
    property hostname     : WideString read Fhostname write Sethostname;
    property database     : WideString read Fdatabase write Setdatabase;
    property porta     : WideString read Fporta write Setporta;
    property usuariodbms     : WideString read Fusuariodbms write Setusuariodbms;
    property senhadbms     : WideString read Fsenhadbms write Setsenhadbms;
    property data_cadastro     : TDateTime read Fdata_cadastro write Setdata_cadastro;
    property cta_vendas     : WideString read Fcta_vendas write Setcta_vendas;
    property cta_compra     : WideString read Fcta_compra write Setcta_compra;
    property cta_recparcela     : WideString read Fcta_recparcela write Setcta_recparcela;
    property cta_estparcela     : WideString read Fcta_estparcela write Setcta_estparcela;
    property cta_pagparcela     : WideString read Fcta_pagparcela write Setcta_pagparcela;
    property cta_depbancario     : WideString read Fcta_depbancario write Setcta_depbancario;
    property cta_emissaocheq     : WideString read Fcta_emissaocheq write Setcta_emissaocheq;
    property cta_estcaixa     : WideString read Fcta_estcaixa write Setcta_estcaixa;
    property cta_estbanco     : WideString read Fcta_estbanco write Setcta_estbanco;
    property cta_jrorecebido     : WideString read Fcta_jrorecebido write Setcta_jrorecebido;
    property cta_jropago     : WideString read Fcta_jropago write Setcta_jropago;
    property cta_descrecebido     : WideString read Fcta_descrecebido write Setcta_descrecebido;
    property cta_descpago     : WideString read Fcta_descpago write Setcta_descpago;
    property cta_devolvenda     : WideString read Fcta_devolvenda write Setcta_devolvenda;
    property desc_rateio     : WideString read Fdesc_rateio write Setdesc_rateio;
    property mensagem_promocional     : WideString read Fmensagem_promocional write Setmensagem_promocional;
    property modelo_duplicata     : WideString read Fmodelo_duplicata write Setmodelo_duplicata;
    property modelo_recibo     : WideString read Fmodelo_recibo write Setmodelo_recibo;
    property modelo_nota     : WideString read Fmodelo_nota write Setmodelo_nota;
    property qtd_itensnota     : Integer read Fqtd_itensnota write Setqtd_itensnota;
    property tam_pagnota     : Integer read Ftam_pagnota write Settam_pagnota;
    property seq_nronota     : Integer read Fseq_nronota write Setseq_nronota;
    property imprime_nota     : WideString read Fimprime_nota write Setimprime_nota;
    property imprime_vendedor     : WideString read Fimprime_vendedor write Setimprime_vendedor;
    property estoque_negativo     : WideString read Festoque_negativo write Setestoque_negativo;
    property texto_cobranca     : indefinido read Ftexto_cobranca write Settexto_cobranca;
    property custo_operacional     : Double read Fcusto_operacional write Setcusto_operacional;
    property custo_financeiro     : Double read Fcusto_financeiro write Setcusto_financeiro;
    property juro_dia     : Double read Fjuro_dia write Setjuro_dia;
    property cfop_avista     : Integer read Fcfop_avista write Setcfop_avista;
    property cfop_aprazo     : Integer read Fcfop_aprazo write Setcfop_aprazo;
    property click     : Boolean read Fclick write Setclick;
    property salto_nota     : Integer read Fsalto_nota write Setsalto_nota;
    property caminho_nota     : WideString read Fcaminho_nota write Setcaminho_nota;
    property cotacao     : WideString read Fcotacao write Setcotacao;
    property comissao_decrescente     : WideString read Fcomissao_decrescente write Setcomissao_decrescente;
    property intervalo_a1     : Double read Fintervalo_a1 write Setintervalo_a1;
    property intervalo_a2     : Double read Fintervalo_a2 write Setintervalo_a2;
    property intervalo_b1     : Double read Fintervalo_b1 write Setintervalo_b1;
    property intervalo_b2     : Double read Fintervalo_b2 write Setintervalo_b2;
    property intervalo_c1     : Double read Fintervalo_c1 write Setintervalo_c1;
    property intervalo_c2     : Double read Fintervalo_c2 write Setintervalo_c2;
    property intervalo_d1     : Double read Fintervalo_d1 write Setintervalo_d1;
    property intervalo_d2     : Double read Fintervalo_d2 write Setintervalo_d2;
    property intervalo_e1     : Double read Fintervalo_e1 write Setintervalo_e1;
    property intervalo_f1     : Double read Fintervalo_f1 write Setintervalo_f1;
    property intervalo_f2     : Double read Fintervalo_f2 write Setintervalo_f2;
    property intervalo_g1     : Double read Fintervalo_g1 write Setintervalo_g1;
    property intervalo_g2     : Double read Fintervalo_g2 write Setintervalo_g2;
    property intervalo_h1     : Double read Fintervalo_h1 write Setintervalo_h1;
    property intervalo_h2     : Double read Fintervalo_h2 write Setintervalo_h2;
    property intervalo_i1     : Double read Fintervalo_i1 write Setintervalo_i1;
    property intervalo_i2     : Double read Fintervalo_i2 write Setintervalo_i2;
    property intervalo_j1     : Double read Fintervalo_j1 write Setintervalo_j1;
    property intervalo_j2     : Double read Fintervalo_j2 write Setintervalo_j2;
    property intervalo_l1     : Double read Fintervalo_l1 write Setintervalo_l1;
    property intervalo_l2     : Double read Fintervalo_l2 write Setintervalo_l2;
    property intervalo_m1     : Double read Fintervalo_m1 write Setintervalo_m1;
    property intervalo_m2     : Double read Fintervalo_m2 write Setintervalo_m2;
    property comissao_a     : Double read Fcomissao_a write Setcomissao_a;
    property comissao_b     : Double read Fcomissao_b write Setcomissao_b;
    property comissao_c     : Double read Fcomissao_c write Setcomissao_c;
    property comissao_d     : Double read Fcomissao_d write Setcomissao_d;
    property comissao_e     : Double read Fcomissao_e write Setcomissao_e;
    property comissao_f     : Double read Fcomissao_f write Setcomissao_f;
    property comissao_g     : Double read Fcomissao_g write Setcomissao_g;
    property comissao_h     : Double read Fcomissao_h write Setcomissao_h;
    property comissao_i     : Double read Fcomissao_i write Setcomissao_i;
    property comissao_j     : Double read Fcomissao_j write Setcomissao_j;
    property comissao_l     : Double read Fcomissao_l write Setcomissao_l;
    property comissao_m     : Double read Fcomissao_m write Setcomissao_m;
    property intervalo_e2     : Double read Fintervalo_e2 write Setintervalo_e2;
    property salto_duplicata     : Integer read Fsalto_duplicata write Setsalto_duplicata;
    property imagem     : Boolean read Fimagem write Setimagem;
    property arquivo_imagem     : WideString read Farquivo_imagem write Setarquivo_imagem;
    property produto_conjugado     : WideString read Fproduto_conjugado write Setproduto_conjugado;
    property rateio_comissao     : WideString read Frateio_comissao write Setrateio_comissao;
    property cta_vendas_aprazo     : WideString read Fcta_vendas_aprazo write Setcta_vendas_aprazo;
    property formacao_preco     : WideString read Fformacao_preco write Setformacao_preco;
    property nosso_numero     : WideString read Fnosso_numero write Setnosso_numero;
    property identifica_cupom     : WideString read Fidentifica_cupom write Setidentifica_cupom;
    property atividade     : WideString read Fatividade write Setatividade;
    property venda_rapida     : WideString read Fvenda_rapida write Setvenda_rapida;
    property grade     : WideString read Fgrade write Setgrade;
    property data_analise     : TDateTime read Fdata_analise write Setdata_analise;
    property cta_suprimento     : WideString read Fcta_suprimento write Setcta_suprimento;
    property cta_sangria     : WideString read Fcta_sangria write Setcta_sangria;
    property cta_os     : WideString read Fcta_os write Setcta_os;
    property bancocodigo     : WideString read Fbancocodigo write Setbancocodigo;
    property banconome     : WideString read Fbanconome write Setbanconome;
    property cedentecodigo     : WideString read Fcedentecodigo write Setcedentecodigo;
    property cedentecodigodigito     : WideString read Fcedentecodigodigito write Setcedentecodigodigito;
    property carteira     : WideString read Fcarteira write Setcarteira;
    property agenciacodigo     : WideString read Fagenciacodigo write Setagenciacodigo;
    property agenciadigito     : WideString read Fagenciadigito write Setagenciadigito;
    property agencianome     : WideString read Fagencianome write Setagencianome;
    property contanumero     : WideString read Fcontanumero write Setcontanumero;
    property contanumerodigito     : WideString read Fcontanumerodigito write Setcontanumerodigito;
    property proximonossonumero     : WideString read Fproximonossonumero write Setproximonossonumero;
    property salto_etiqueta1     : Integer read Fsalto_etiqueta1 write Setsalto_etiqueta1;
    property salto_etiqueta2     : Integer read Fsalto_etiqueta2 write Setsalto_etiqueta2;
    property salto_etiqueta3     : Integer read Fsalto_etiqueta3 write Setsalto_etiqueta3;
    property salto_etiqueta4     : Integer read Fsalto_etiqueta4 write Setsalto_etiqueta4;
    property filtro_nome     : WideString read Ffiltro_nome write Setfiltro_nome;
    property dir_sistema     : WideString read Fdir_sistema write Setdir_sistema;
    property dir_banco     : WideString read Fdir_banco write Setdir_banco;
    property valorreceber_maior     : WideString read Fvalorreceber_maior write Setvalorreceber_maior;
    property cfop_devolucao     : Integer read Fcfop_devolucao write Setcfop_devolucao;
    property devolucao_financeiro     : WideString read Fdevolucao_financeiro write Setdevolucao_financeiro;
    property vendedor_venda     : WideString read Fvendedor_venda write Setvendedor_venda;
    property instrucoes     : WideString read Finstrucoes write Setinstrucoes;
    property forma_boleto     : Integer read Fforma_boleto write Setforma_boleto;
    property cupom_automatico     : WideString read Fcupom_automatico write Setcupom_automatico;
    property simples     : Double read Fsimples write Setsimples;
    property vl_enc_federal     : Double read Fvl_enc_federal write Setvl_enc_federal;
    property vl_enc_estadual     : Double read Fvl_enc_estadual write Setvl_enc_estadual;
    property convenio     : WideString read Fconvenio write Setconvenio;
    property tipo_convenio     : WideString read Ftipo_convenio write Settipo_convenio;
    property dir_backup     : WideString read Fdir_backup write Setdir_backup;
    property modelo_carne     : WideString read Fmodelo_carne write Setmodelo_carne;
    property iss     : Double read Fiss write Setiss;
    property qtd_itensnotaservico     : Integer read Fqtd_itensnotaservico write Setqtd_itensnotaservico;
    property texto_aniversario     : indefinido read Ftexto_aniversario write Settexto_aniversario;
    property ordemproc_produto     : WideString read Fordemproc_produto write Setordemproc_produto;
    property extrato_produto     : WideString read Fextrato_produto write Setextrato_produto;
    property boleto     : WideString read Fboleto write Setboleto;
    property salto_boleto     : Integer read Fsalto_boleto write Setsalto_boleto;
    property cliente_coringa     : Integer read Fcliente_coringa write Setcliente_coringa;
    property mostra_conta     : WideString read Fmostra_conta write Setmostra_conta;
    property numero     : WideString read Fnumero write Setnumero;
    property cep     : WideString read Fcep write Setcep;
    property responsavel     : WideString read Fresponsavel write Setresponsavel;
    property st     : Boolean read Fst write Setst;
    property ipi     : Boolean read Fipi write Setipi;
    property industria     : WideString read Findustria write Setindustria;
    property locacao     : WideString read Flocacao write Setlocacao;
    property obs_orcamento     : WideString read Fobs_orcamento write Setobs_orcamento;
    property insc_mun     : WideString read Finsc_mun write Setinsc_mun;
    property nfe     : WideString read Fnfe write Setnfe;
    property supervisor     : WideString read Fsupervisor write Setsupervisor;
    property salto_etiqueta5     : Integer read Fsalto_etiqueta5 write Setsalto_etiqueta5;
    property juro_carencia     : Integer read Fjuro_carencia write Setjuro_carencia;
    property baixa_simples     : WideString read Fbaixa_simples write Setbaixa_simples;
    property obs_carne1     : WideString read Fobs_carne1 write Setobs_carne1;
    property obs_carne2     : WideString read Fobs_carne2 write Setobs_carne2;
    property obs_carne3     : WideString read Fobs_carne3 write Setobs_carne3;
    property obs_carne4     : WideString read Fobs_carne4 write Setobs_carne4;
    property obs_carne5     : WideString read Fobs_carne5 write Setobs_carne5;
    property obs_carne6     : WideString read Fobs_carne6 write Setobs_carne6;
    property venda_maior     : WideString read Fvenda_maior write Setvenda_maior;
    property substituto_tributario     : WideString read Fsubstituto_tributario write Setsubstituto_tributario;
    property diretorio_fotos     : WideString read Fdiretorio_fotos write Setdiretorio_fotos;
    property obs_carne7     : WideString read Fobs_carne7 write Setobs_carne7;
    property obs_carne8     : WideString read Fobs_carne8 write Setobs_carne8;
    property modelo_ficha     : WideString read Fmodelo_ficha write Setmodelo_ficha;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property ajusta_fatura     : WideString read Fajusta_fatura write Setajusta_fatura;
    property simples_nacional     : Boolean read Fsimples_nacional write Setsimples_nacional;
    property produto_consulta     : WideString read Fproduto_consulta write Setproduto_consulta;
    property modelo_orcamento     : WideString read Fmodelo_orcamento write Setmodelo_orcamento;
    property modelo_expedicao     : WideString read Fmodelo_expedicao write Setmodelo_expedicao;
    property dias_backup     : Integer read Fdias_backup write Setdias_backup;
    property imprime_notad1     : WideString read Fimprime_notad1 write Setimprime_notad1;
    property farmacia_popular     : Boolean read Ffarmacia_popular write Setfarmacia_popular;
    property fpb     : Integer read Ffpb write Setfpb;
    property irpj     : Double read Firpj write Setirpj;
    property cont_social     : Double read Fcont_social write Setcont_social;
    property casas_decimais     : Double read Fcasas_decimais write Setcasas_decimais;
    property tipo_desconto     : WideString read Ftipo_desconto write Settipo_desconto;
    property custo_servico     : Double read Fcusto_servico write Setcusto_servico;
    property tipo_juro_venda     : WideString read Ftipo_juro_venda write Settipo_juro_venda;
    property bloqueio_automatico     : WideString read Fbloqueio_automatico write Setbloqueio_automatico;
    property controle_caixa     : Boolean read Fcontrole_caixa write Setcontrole_caixa;
    property tipo_juro     : WideString read Ftipo_juro write Settipo_juro;
    property aproveitamento_credito_atacado     : Boolean read Faproveitamento_credito_atacado write Setaproveitamento_credito_atacado;
    property icms_saida     : Double read Ficms_saida write Seticms_saida;
    property compras_red_fora     : Boolean read Fcompras_red_fora write Setcompras_red_fora;
    property compras_red_dentro     : Boolean read Fcompras_red_dentro write Setcompras_red_dentro;
    property atacado     : Boolean read Fatacado write Setatacado;
    property aprazo     : Boolean read Faprazo write Setaprazo;
    property id_tabela_preco     : Integer read Fid_tabela_preco write Setid_tabela_preco;
    property multa     : Double read Fmulta write Setmulta;
    property tributado     : WideString read Ftributado write Settributado;
    property substituicao     : WideString read Fsubstituicao write Setsubstituicao;
    property isento     : WideString read Fisento write Setisento;
    property reducao     : Double read Freducao write Setreducao;
    property credencial     : Integer read Fcredencial write Setcredencial;
    property controleestoquevenda     : Boolean read Fcontroleestoquevenda write Setcontroleestoquevenda;
    property cta_transf_saida     : WideString read Fcta_transf_saida write Setcta_transf_saida;
    property cta_transf_entrada     : WideString read Fcta_transf_entrada write Setcta_transf_entrada;
    property cta_estorno_emissao_cheque     : WideString read Fcta_estorno_emissao_cheque write Setcta_estorno_emissao_cheque;
    property cta_custodia     : WideString read Fcta_custodia write Setcta_custodia;
    property cta_estorno_custodia     : WideString read Fcta_estorno_custodia write Setcta_estorno_custodia;
    property cta_juros_custodia     : WideString read Fcta_juros_custodia write Setcta_juros_custodia;
    property cta_estorno_juros_custodia     : WideString read Fcta_estorno_juros_custodia write Setcta_estorno_juros_custodia;
    property cta_estorno_pagamento     : WideString read Fcta_estorno_pagamento write Setcta_estorno_pagamento;
    property cta_taxa_juros     : WideString read Fcta_taxa_juros write Setcta_taxa_juros;
    property razao_social     : WideString read Frazao_social write Setrazao_social;
    property celular     : WideString read Fcelular write Setcelular;
    property contato     : WideString read Fcontato write Setcontato;
    property parceiro     : WideString read Fparceiro write Setparceiro;
    property cta_recebimento_cartao     : WideString read Fcta_recebimento_cartao write Setcta_recebimento_cartao;
    property obs_promissoria     : WideString read Fobs_promissoria write Setobs_promissoria;
    property boleto_novo     : Boolean read Fboleto_novo write Setboleto_novo;
    property modelo_contrato_locacao     : WideString read Fmodelo_contrato_locacao write Setmodelo_contrato_locacao;
    property elimina_zero     : Boolean read Felimina_zero write Setelimina_zero;
    property eliminar_digito_fabricante     : Boolean read Feliminar_digito_fabricante write Seteliminar_digito_fabricante;
    property cta_trocaproduto     : WideString read Fcta_trocaproduto write Setcta_trocaproduto;
    property forma_pgto_compras     : WideString read Fforma_pgto_compras write Setforma_pgto_compras;
    property cfop_tributado_interno     : Integer read Fcfop_tributado_interno write Setcfop_tributado_interno;
    property cfop_tributado_externo     : Integer read Fcfop_tributado_externo write Setcfop_tributado_externo;
    property cfop_subst_interno     : Integer read Fcfop_subst_interno write Setcfop_subst_interno;
    property cfop_subst_externo     : Integer read Fcfop_subst_externo write Setcfop_subst_externo;
    property cfop_naoincidencia_interno     : Integer read Fcfop_naoincidencia_interno write Setcfop_naoincidencia_interno;
    property cfop_naoincidencia_externo     : Integer read Fcfop_naoincidencia_externo write Setcfop_naoincidencia_externo;
    property cfop_isento_interno     : Integer read Fcfop_isento_interno write Setcfop_isento_interno;
    property cfop_isento_externo     : Integer read Fcfop_isento_externo write Setcfop_isento_externo;
    property cfop_tribpautafiscal_interno     : Integer read Fcfop_tribpautafiscal_interno write Setcfop_tribpautafiscal_interno;
    property cfop_tribpautafiscal_externo     : Integer read Fcfop_tribpautafiscal_externo write Setcfop_tribpautafiscal_externo;
    property parametro_troca     : WideString read Fparametro_troca write Setparametro_troca;
    property cliente_consumidor     : Integer read Fcliente_consumidor write Setcliente_consumidor;
    property cfop_devolucao_venda     : Integer read Fcfop_devolucao_venda write Setcfop_devolucao_venda;
    property troca_nfe     : Boolean read Ftroca_nfe write Settroca_nfe;
    property localizacao_orcamento     : WideString read Flocalizacao_orcamento write Setlocalizacao_orcamento;
    property produto_tributado     : WideString read Fproduto_tributado write Setproduto_tributado;
    property produto_substituicao     : WideString read Fproduto_substituicao write Setproduto_substituicao;
    property produto_isento     : WideString read Fproduto_isento write Setproduto_isento;
    property produto_reducao     : Double read Fproduto_reducao write Setproduto_reducao;
    property hora_reducao_z     : WideString read Fhora_reducao_z write Sethora_reducao_z;
    property buscar_ean_letra     : Boolean read Fbuscar_ean_letra write Setbuscar_ean_letra;
    property imprimir_cod_fabric_cupom     : Boolean read Fimprimir_cod_fabric_cupom write Setimprimir_cod_fabric_cupom;
    property remessa_antigo     : Boolean read Fremessa_antigo write Setremessa_antigo;
    property caixa_baixa_simples     : Integer read Fcaixa_baixa_simples write Setcaixa_baixa_simples;
    property visualizacao_antecipada_locacao     : Integer read Fvisualizacao_antecipada_locacao write Setvisualizacao_antecipada_locacao;
    property antecipar_locacao     : Boolean read Fantecipar_locacao write Setantecipar_locacao;
    property senha_usuario_quitar_contareceber     : Boolean read Fsenha_usuario_quitar_contareceber write Setsenha_usuario_quitar_contareceber;
    property conta_receber_sem_banco     : Boolean read Fconta_receber_sem_banco write Setconta_receber_sem_banco;
    property utilizar_caixa_exclusivo     : Boolean read Futilizar_caixa_exclusivo write Setutilizar_caixa_exclusivo;
    property caixa_exclusivo     : Integer read Fcaixa_exclusivo write Setcaixa_exclusivo;
    property tipo_entrada_compras     : Boolean read Ftipo_entrada_compras write Settipo_entrada_compras;
    property cta_insumos     : WideString read Fcta_insumos write Setcta_insumos;
    property cta_almoxarifado     : WideString read Fcta_almoxarifado write Setcta_almoxarifado;
    property cta_pag_funcionario     : WideString read Fcta_pag_funcionario write Setcta_pag_funcionario;
    property utilizar_controle_financeiro_comissao     : Boolean read Futilizar_controle_financeiro_comissao write Setutilizar_controle_financeiro_comissao;
    property cta_cheque_emitido     : WideString read Fcta_cheque_emitido write Setcta_cheque_emitido;
    property controle_fabricante     : Boolean read Fcontrole_fabricante write Setcontrole_fabricante;
    property desossa_aut     : Boolean read Fdesossa_aut write Setdesossa_aut;
    property movimento_food     : Boolean read Fmovimento_food write Setmovimento_food;
    property pesquisa_venda     : Integer read Fpesquisa_venda write Setpesquisa_venda;
    property nfce     : WideString read Fnfce write Setnfce;
    property trabalha_nfce     : Boolean read Ftrabalha_nfce write Settrabalha_nfce;
    property tolerancia_ponto     : Integer read Ftolerancia_ponto write Settolerancia_ponto;
    property venda     : WideString read Fvenda write Setvenda;
    property expedicao     : WideString read Fexpedicao write Setexpedicao;
    property romaneio     : WideString read Fromaneio write Setromaneio;
    property cotacaop     : WideString read Fcotacaop write Setcotacaop;
    property cfop_venda_entrega_futura     : Integer read Fcfop_venda_entrega_futura write Setcfop_venda_entrega_futura;
    property cfop_entrega_futura     : Integer read Fcfop_entrega_futura write Setcfop_entrega_futura;
    property cfop_entrega_fut_fora_estado     : Integer read Fcfop_entrega_fut_fora_estado write Setcfop_entrega_fut_fora_estado;
    property cfop_venda_fut_fora_estado     : Integer read Fcfop_venda_fut_fora_estado write Setcfop_venda_fut_fora_estado;
    property relatorio_gerencia_servico     : Boolean read Frelatorio_gerencia_servico write Setrelatorio_gerencia_servico;
    property pasta_xml     : WideString read Fpasta_xml write Setpasta_xml;
    property imagem_fundo     : WideString read Fimagem_fundo write Setimagem_fundo;
    property pasta_nfe     : WideString read Fpasta_nfe write Setpasta_nfe;
    property regime_especial_st     : Boolean read Fregime_especial_st write Setregime_especial_st;
    property confissao_divida     : Boolean read Fconfissao_divida write Setconfissao_divida;
    property utiliza_duplicata_grande     : Boolean read Futiliza_duplicata_grande write Setutiliza_duplicata_grande;
    property controla_serial_celular     : Boolean read Fcontrola_serial_celular write Setcontrola_serial_celular;
    property cfop_devolucao_compra_interestadual     : Integer read Fcfop_devolucao_compra_interestadual write Setcfop_devolucao_compra_interestadual;
    property cfop_devolucao_venda_interestadual     : Integer read Fcfop_devolucao_venda_interestadual write Setcfop_devolucao_venda_interestadual;
    property nota_promissoria     : Boolean read Fnota_promissoria write Setnota_promissoria;
    property explodir_kit     : Boolean read Fexplodir_kit write Setexplodir_kit;
    property estoque_subsequente     : Boolean read Festoque_subsequente write Setestoque_subsequente;
    property validar_fornecedor     : Boolean read Fvalidar_fornecedor write Setvalidar_fornecedor;
    property os_sem_veiculo     : Boolean read Fos_sem_veiculo write Setos_sem_veiculo;
    property informar_cfop_saida     : Boolean read Finformar_cfop_saida write Setinformar_cfop_saida;
    property cfop_transferencia     : Integer read Fcfop_transferencia write Setcfop_transferencia;
    property cfop_transferencia_interestadual     : Integer read Fcfop_transferencia_interestadual write Setcfop_transferencia_interestadual;
    property cfop_retorno_mercadoria     : Integer read Fcfop_retorno_mercadoria write Setcfop_retorno_mercadoria;
    property cfop_retorno_mercadoria_interestadual     : Integer read Fcfop_retorno_mercadoria_interestadual write Setcfop_retorno_mercadoria_interestadual;
    property cfop_entrada_produto     : Integer read Fcfop_entrada_produto write Setcfop_entrada_produto;
    property cfop_entrada_produto_interestadual     : Integer read Fcfop_entrada_produto_interestadual write Setcfop_entrada_produto_interestadual;
    property validar_cliente     : Boolean read Fvalidar_cliente write Setvalidar_cliente;
    property imagem_tela_inicial     : WideString read Fimagem_tela_inicial write Setimagem_tela_inicial;
    property kit_baixar_filhos     : Boolean read Fkit_baixar_filhos write Setkit_baixar_filhos;
    property padrao_central_custodia     : Boolean read Fpadrao_central_custodia write Setpadrao_central_custodia;
    property tipo_balanca     : Integer read Ftipo_balanca write Settipo_balanca;
    property path_balanca     : WideString read Fpath_balanca write Setpath_balanca;
    property filial_produtos     : Boolean read Ffilial_produtos write Setfilial_produtos;
    property filial_clientes     : Boolean read Ffilial_clientes write Setfilial_clientes;
    property filial_fornecedor     : Boolean read Ffilial_fornecedor write Setfilial_fornecedor;
    property host_matriz     : WideString read Fhost_matriz write Sethost_matriz;
    property faturar_aluguel_locacao     : Boolean read Ffaturar_aluguel_locacao write Setfaturar_aluguel_locacao;
    property cta_imposto_sindicato     : WideString read Fcta_imposto_sindicato write Setcta_imposto_sindicato;
    property cta_imposto_inss     : WideString read Fcta_imposto_inss write Setcta_imposto_inss;
    property lancamento_inss_sindicato     : Boolean read Flancamento_inss_sindicato write Setlancamento_inss_sindicato;
    property parceiro_conta_pagar     : Boolean read Fparceiro_conta_pagar write Setparceiro_conta_pagar;
    property troco_troca     : Boolean read Ftroco_troca write Settroco_troca;
    property movimentacao_data_saida     : Boolean read Fmovimentacao_data_saida write Setmovimentacao_data_saida;
    property salto_orcamento     : Integer read Fsalto_orcamento write Setsalto_orcamento;
    property senhas_criptografadas     : Boolean read Fsenhas_criptografadas write Setsenhas_criptografadas;
    property qtd_produtos_orcamento     : Integer read Fqtd_produtos_orcamento write Setqtd_produtos_orcamento;
    property qtd_servico_orcamento     : Integer read Fqtd_servico_orcamento write Setqtd_servico_orcamento;
    property numero_pag_orcamento     : Integer read Fnumero_pag_orcamento write Setnumero_pag_orcamento;
    property icms2016     : Boolean read Ficms2016 write Seticms2016;
    property plano_conta_13digitos     : Boolean read Fplano_conta_13digitos write Setplano_conta_13digitos;
    property consulta_produto_especifico     : Boolean read Fconsulta_produto_especifico write Setconsulta_produto_especifico;
    property reducao_nfe     : Boolean read Freducao_nfe write Setreducao_nfe;
    property informa_venda_em_aberto     : Boolean read Finforma_venda_em_aberto write Setinforma_venda_em_aberto;
    property conversao_sped_simples_nacional     : Boolean read Fconversao_sped_simples_nacional write Setconversao_sped_simples_nacional;
    property visualizar_vendas     : Boolean read Fvisualizar_vendas write Setvisualizar_vendas;
    property acrescimo_frete     : Boolean read Facrescimo_frete write Setacrescimo_frete;
    property pasta_retorno     : WideString read Fpasta_retorno write Setpasta_retorno;
    property data_hora_nfe     : Boolean read Fdata_hora_nfe write Setdata_hora_nfe;
    property email_nfe     : Boolean read Femail_nfe write Setemail_nfe;
    property motorista     : Boolean read Fmotorista write Setmotorista;
    property orcamento_peso_bruto     : Boolean read Forcamento_peso_bruto write Setorcamento_peso_bruto;
    property mensagem_carne     : WideString read Fmensagem_carne write Setmensagem_carne;
    property banco_contas_fixas     : Boolean read Fbanco_contas_fixas write Setbanco_contas_fixas;
    property cpf     : WideString read Fcpf write Setcpf;
    property juros_mes     : Double read Fjuros_mes write Setjuros_mes;
    property cidade     : WideString read Fcidade write Setcidade;
    property cte     : WideString read Fcte write Setcte;
    property simples_subst     : Double read Fsimples_subst write Setsimples_subst;
    property cta_contas_fixas     : WideString read Fcta_contas_fixas write Setcta_contas_fixas;
    property seq_lote     : Integer read Fseq_lote write Setseq_lote;
    property numero_filial     : Integer read Fnumero_filial write Setnumero_filial;
    property data_base_matriz     : WideString read Fdata_base_matriz write Setdata_base_matriz;
    property filial_documentos     : Boolean read Ffilial_documentos write Setfilial_documentos;
    property cta_vendacredito_cliente     : WideString read Fcta_vendacredito_cliente write Setcta_vendacredito_cliente;
    property cta_geracaocredito_cliente     : WideString read Fcta_geracaocredito_cliente write Setcta_geracaocredito_cliente;
    property cta_recebimento_duplicata_credito_cliente     : WideString read Fcta_recebimento_duplicata_credito_cliente write Setcta_recebimento_duplicata_credito_cliente;
    property cta_estorno_credito_cliente     : WideString read Fcta_estorno_credito_cliente write Setcta_estorno_credito_cliente;
    property timezone     : WideString read Ftimezone write Settimezone;
    property timezone_utc     : WideString read Ftimezone_utc write Settimezone_utc;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPefd.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPefd) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPefd(Model).id;
Self.Fnome         := TModelERPefd(Model).nome;
Self.Fendereco         := TModelERPefd(Model).endereco;
Self.Fcnpj         := TModelERPefd(Model).cnpj;
Self.Finscricao_estadual         := TModelERPefd(Model).inscricao_estadual;
Self.Ffone1         := TModelERPefd(Model).fone1;
Self.Ffone2         := TModelERPefd(Model).fone2;
Self.Ffax         := TModelERPefd(Model).fax;
Self.Fbairro         := TModelERPefd(Model).bairro;
Self.Fid_cidade         := TModelERPefd(Model).id_cidade;
Self.Fuf         := TModelERPefd(Model).uf;
Self.Frepresentante_legal         := TModelERPefd(Model).representante_legal;
Self.Ftipo_empresa         := TModelERPefd(Model).tipo_empresa;
Self.Fhostname         := TModelERPefd(Model).hostname;
Self.Fdatabase         := TModelERPefd(Model).database;
Self.Fporta         := TModelERPefd(Model).porta;
Self.Fusuariodbms         := TModelERPefd(Model).usuariodbms;
Self.Fsenhadbms         := TModelERPefd(Model).senhadbms;
Self.Fdata_cadastro         := TModelERPefd(Model).data_cadastro;
Self.Fcta_vendas         := TModelERPefd(Model).cta_vendas;
Self.Fcta_compra         := TModelERPefd(Model).cta_compra;
Self.Fcta_recparcela         := TModelERPefd(Model).cta_recparcela;
Self.Fcta_estparcela         := TModelERPefd(Model).cta_estparcela;
Self.Fcta_pagparcela         := TModelERPefd(Model).cta_pagparcela;
Self.Fcta_depbancario         := TModelERPefd(Model).cta_depbancario;
Self.Fcta_emissaocheq         := TModelERPefd(Model).cta_emissaocheq;
Self.Fcta_estcaixa         := TModelERPefd(Model).cta_estcaixa;
Self.Fcta_estbanco         := TModelERPefd(Model).cta_estbanco;
Self.Fcta_jrorecebido         := TModelERPefd(Model).cta_jrorecebido;
Self.Fcta_jropago         := TModelERPefd(Model).cta_jropago;
Self.Fcta_descrecebido         := TModelERPefd(Model).cta_descrecebido;
Self.Fcta_descpago         := TModelERPefd(Model).cta_descpago;
Self.Fcta_devolvenda         := TModelERPefd(Model).cta_devolvenda;
Self.Fdesc_rateio         := TModelERPefd(Model).desc_rateio;
Self.Fmensagem_promocional         := TModelERPefd(Model).mensagem_promocional;
Self.Fmodelo_duplicata         := TModelERPefd(Model).modelo_duplicata;
Self.Fmodelo_recibo         := TModelERPefd(Model).modelo_recibo;
Self.Fmodelo_nota         := TModelERPefd(Model).modelo_nota;
Self.Fqtd_itensnota         := TModelERPefd(Model).qtd_itensnota;
Self.Ftam_pagnota         := TModelERPefd(Model).tam_pagnota;
Self.Fseq_nronota         := TModelERPefd(Model).seq_nronota;
Self.Fimprime_nota         := TModelERPefd(Model).imprime_nota;
Self.Fimprime_vendedor         := TModelERPefd(Model).imprime_vendedor;
Self.Festoque_negativo         := TModelERPefd(Model).estoque_negativo;
Self.Ftexto_cobranca         := TModelERPefd(Model).texto_cobranca;
Self.Fcusto_operacional         := TModelERPefd(Model).custo_operacional;
Self.Fcusto_financeiro         := TModelERPefd(Model).custo_financeiro;
Self.Fjuro_dia         := TModelERPefd(Model).juro_dia;
Self.Fcfop_avista         := TModelERPefd(Model).cfop_avista;
Self.Fcfop_aprazo         := TModelERPefd(Model).cfop_aprazo;
Self.Fclick         := TModelERPefd(Model).click;
Self.Fsalto_nota         := TModelERPefd(Model).salto_nota;
Self.Fcaminho_nota         := TModelERPefd(Model).caminho_nota;
Self.Fcotacao         := TModelERPefd(Model).cotacao;
Self.Fcomissao_decrescente         := TModelERPefd(Model).comissao_decrescente;
Self.Fintervalo_a1         := TModelERPefd(Model).intervalo_a1;
Self.Fintervalo_a2         := TModelERPefd(Model).intervalo_a2;
Self.Fintervalo_b1         := TModelERPefd(Model).intervalo_b1;
Self.Fintervalo_b2         := TModelERPefd(Model).intervalo_b2;
Self.Fintervalo_c1         := TModelERPefd(Model).intervalo_c1;
Self.Fintervalo_c2         := TModelERPefd(Model).intervalo_c2;
Self.Fintervalo_d1         := TModelERPefd(Model).intervalo_d1;
Self.Fintervalo_d2         := TModelERPefd(Model).intervalo_d2;
Self.Fintervalo_e1         := TModelERPefd(Model).intervalo_e1;
Self.Fintervalo_f1         := TModelERPefd(Model).intervalo_f1;
Self.Fintervalo_f2         := TModelERPefd(Model).intervalo_f2;
Self.Fintervalo_g1         := TModelERPefd(Model).intervalo_g1;
Self.Fintervalo_g2         := TModelERPefd(Model).intervalo_g2;
Self.Fintervalo_h1         := TModelERPefd(Model).intervalo_h1;
Self.Fintervalo_h2         := TModelERPefd(Model).intervalo_h2;
Self.Fintervalo_i1         := TModelERPefd(Model).intervalo_i1;
Self.Fintervalo_i2         := TModelERPefd(Model).intervalo_i2;
Self.Fintervalo_j1         := TModelERPefd(Model).intervalo_j1;
Self.Fintervalo_j2         := TModelERPefd(Model).intervalo_j2;
Self.Fintervalo_l1         := TModelERPefd(Model).intervalo_l1;
Self.Fintervalo_l2         := TModelERPefd(Model).intervalo_l2;
Self.Fintervalo_m1         := TModelERPefd(Model).intervalo_m1;
Self.Fintervalo_m2         := TModelERPefd(Model).intervalo_m2;
Self.Fcomissao_a         := TModelERPefd(Model).comissao_a;
Self.Fcomissao_b         := TModelERPefd(Model).comissao_b;
Self.Fcomissao_c         := TModelERPefd(Model).comissao_c;
Self.Fcomissao_d         := TModelERPefd(Model).comissao_d;
Self.Fcomissao_e         := TModelERPefd(Model).comissao_e;
Self.Fcomissao_f         := TModelERPefd(Model).comissao_f;
Self.Fcomissao_g         := TModelERPefd(Model).comissao_g;
Self.Fcomissao_h         := TModelERPefd(Model).comissao_h;
Self.Fcomissao_i         := TModelERPefd(Model).comissao_i;
Self.Fcomissao_j         := TModelERPefd(Model).comissao_j;
Self.Fcomissao_l         := TModelERPefd(Model).comissao_l;
Self.Fcomissao_m         := TModelERPefd(Model).comissao_m;
Self.Fintervalo_e2         := TModelERPefd(Model).intervalo_e2;
Self.Fsalto_duplicata         := TModelERPefd(Model).salto_duplicata;
Self.Fimagem         := TModelERPefd(Model).imagem;
Self.Farquivo_imagem         := TModelERPefd(Model).arquivo_imagem;
Self.Fproduto_conjugado         := TModelERPefd(Model).produto_conjugado;
Self.Frateio_comissao         := TModelERPefd(Model).rateio_comissao;
Self.Fcta_vendas_aprazo         := TModelERPefd(Model).cta_vendas_aprazo;
Self.Fformacao_preco         := TModelERPefd(Model).formacao_preco;
Self.Fnosso_numero         := TModelERPefd(Model).nosso_numero;
Self.Fidentifica_cupom         := TModelERPefd(Model).identifica_cupom;
Self.Fatividade         := TModelERPefd(Model).atividade;
Self.Fvenda_rapida         := TModelERPefd(Model).venda_rapida;
Self.Fgrade         := TModelERPefd(Model).grade;
Self.Fdata_analise         := TModelERPefd(Model).data_analise;
Self.Fcta_suprimento         := TModelERPefd(Model).cta_suprimento;
Self.Fcta_sangria         := TModelERPefd(Model).cta_sangria;
Self.Fcta_os         := TModelERPefd(Model).cta_os;
Self.Fbancocodigo         := TModelERPefd(Model).bancocodigo;
Self.Fbanconome         := TModelERPefd(Model).banconome;
Self.Fcedentecodigo         := TModelERPefd(Model).cedentecodigo;
Self.Fcedentecodigodigito         := TModelERPefd(Model).cedentecodigodigito;
Self.Fcarteira         := TModelERPefd(Model).carteira;
Self.Fagenciacodigo         := TModelERPefd(Model).agenciacodigo;
Self.Fagenciadigito         := TModelERPefd(Model).agenciadigito;
Self.Fagencianome         := TModelERPefd(Model).agencianome;
Self.Fcontanumero         := TModelERPefd(Model).contanumero;
Self.Fcontanumerodigito         := TModelERPefd(Model).contanumerodigito;
Self.Fproximonossonumero         := TModelERPefd(Model).proximonossonumero;
Self.Fsalto_etiqueta1         := TModelERPefd(Model).salto_etiqueta1;
Self.Fsalto_etiqueta2         := TModelERPefd(Model).salto_etiqueta2;
Self.Fsalto_etiqueta3         := TModelERPefd(Model).salto_etiqueta3;
Self.Fsalto_etiqueta4         := TModelERPefd(Model).salto_etiqueta4;
Self.Ffiltro_nome         := TModelERPefd(Model).filtro_nome;
Self.Fdir_sistema         := TModelERPefd(Model).dir_sistema;
Self.Fdir_banco         := TModelERPefd(Model).dir_banco;
Self.Fvalorreceber_maior         := TModelERPefd(Model).valorreceber_maior;
Self.Fcfop_devolucao         := TModelERPefd(Model).cfop_devolucao;
Self.Fdevolucao_financeiro         := TModelERPefd(Model).devolucao_financeiro;
Self.Fvendedor_venda         := TModelERPefd(Model).vendedor_venda;
Self.Finstrucoes         := TModelERPefd(Model).instrucoes;
Self.Fforma_boleto         := TModelERPefd(Model).forma_boleto;
Self.Fcupom_automatico         := TModelERPefd(Model).cupom_automatico;
Self.Fsimples         := TModelERPefd(Model).simples;
Self.Fvl_enc_federal         := TModelERPefd(Model).vl_enc_federal;
Self.Fvl_enc_estadual         := TModelERPefd(Model).vl_enc_estadual;
Self.Fconvenio         := TModelERPefd(Model).convenio;
Self.Ftipo_convenio         := TModelERPefd(Model).tipo_convenio;
Self.Fdir_backup         := TModelERPefd(Model).dir_backup;
Self.Fmodelo_carne         := TModelERPefd(Model).modelo_carne;
Self.Fiss         := TModelERPefd(Model).iss;
Self.Fqtd_itensnotaservico         := TModelERPefd(Model).qtd_itensnotaservico;
Self.Ftexto_aniversario         := TModelERPefd(Model).texto_aniversario;
Self.Fordemproc_produto         := TModelERPefd(Model).ordemproc_produto;
Self.Fextrato_produto         := TModelERPefd(Model).extrato_produto;
Self.Fboleto         := TModelERPefd(Model).boleto;
Self.Fsalto_boleto         := TModelERPefd(Model).salto_boleto;
Self.Fcliente_coringa         := TModelERPefd(Model).cliente_coringa;
Self.Fmostra_conta         := TModelERPefd(Model).mostra_conta;
Self.Fnumero         := TModelERPefd(Model).numero;
Self.Fcep         := TModelERPefd(Model).cep;
Self.Fresponsavel         := TModelERPefd(Model).responsavel;
Self.Fst         := TModelERPefd(Model).st;
Self.Fipi         := TModelERPefd(Model).ipi;
Self.Findustria         := TModelERPefd(Model).industria;
Self.Flocacao         := TModelERPefd(Model).locacao;
Self.Fobs_orcamento         := TModelERPefd(Model).obs_orcamento;
Self.Finsc_mun         := TModelERPefd(Model).insc_mun;
Self.Fnfe         := TModelERPefd(Model).nfe;
Self.Fsupervisor         := TModelERPefd(Model).supervisor;
Self.Fsalto_etiqueta5         := TModelERPefd(Model).salto_etiqueta5;
Self.Fjuro_carencia         := TModelERPefd(Model).juro_carencia;
Self.Fbaixa_simples         := TModelERPefd(Model).baixa_simples;
Self.Fobs_carne1         := TModelERPefd(Model).obs_carne1;
Self.Fobs_carne2         := TModelERPefd(Model).obs_carne2;
Self.Fobs_carne3         := TModelERPefd(Model).obs_carne3;
Self.Fobs_carne4         := TModelERPefd(Model).obs_carne4;
Self.Fobs_carne5         := TModelERPefd(Model).obs_carne5;
Self.Fobs_carne6         := TModelERPefd(Model).obs_carne6;
Self.Fvenda_maior         := TModelERPefd(Model).venda_maior;
Self.Fsubstituto_tributario         := TModelERPefd(Model).substituto_tributario;
Self.Fdiretorio_fotos         := TModelERPefd(Model).diretorio_fotos;
Self.Fobs_carne7         := TModelERPefd(Model).obs_carne7;
Self.Fobs_carne8         := TModelERPefd(Model).obs_carne8;
Self.Fmodelo_ficha         := TModelERPefd(Model).modelo_ficha;
Self.Fpis         := TModelERPefd(Model).pis;
Self.Fcofins         := TModelERPefd(Model).cofins;
Self.Fajusta_fatura         := TModelERPefd(Model).ajusta_fatura;
Self.Fsimples_nacional         := TModelERPefd(Model).simples_nacional;
Self.Fproduto_consulta         := TModelERPefd(Model).produto_consulta;
Self.Fmodelo_orcamento         := TModelERPefd(Model).modelo_orcamento;
Self.Fmodelo_expedicao         := TModelERPefd(Model).modelo_expedicao;
Self.Fdias_backup         := TModelERPefd(Model).dias_backup;
Self.Fimprime_notad1         := TModelERPefd(Model).imprime_notad1;
Self.Ffarmacia_popular         := TModelERPefd(Model).farmacia_popular;
Self.Ffpb         := TModelERPefd(Model).fpb;
Self.Firpj         := TModelERPefd(Model).irpj;
Self.Fcont_social         := TModelERPefd(Model).cont_social;
Self.Fcasas_decimais         := TModelERPefd(Model).casas_decimais;
Self.Ftipo_desconto         := TModelERPefd(Model).tipo_desconto;
Self.Fcusto_servico         := TModelERPefd(Model).custo_servico;
Self.Ftipo_juro_venda         := TModelERPefd(Model).tipo_juro_venda;
Self.Fbloqueio_automatico         := TModelERPefd(Model).bloqueio_automatico;
Self.Fcontrole_caixa         := TModelERPefd(Model).controle_caixa;
Self.Ftipo_juro         := TModelERPefd(Model).tipo_juro;
Self.Faproveitamento_credito_atacado         := TModelERPefd(Model).aproveitamento_credito_atacado;
Self.Ficms_saida         := TModelERPefd(Model).icms_saida;
Self.Fcompras_red_fora         := TModelERPefd(Model).compras_red_fora;
Self.Fcompras_red_dentro         := TModelERPefd(Model).compras_red_dentro;
Self.Fatacado         := TModelERPefd(Model).atacado;
Self.Faprazo         := TModelERPefd(Model).aprazo;
Self.Fid_tabela_preco         := TModelERPefd(Model).id_tabela_preco;
Self.Fmulta         := TModelERPefd(Model).multa;
Self.Ftributado         := TModelERPefd(Model).tributado;
Self.Fsubstituicao         := TModelERPefd(Model).substituicao;
Self.Fisento         := TModelERPefd(Model).isento;
Self.Freducao         := TModelERPefd(Model).reducao;
Self.Fcredencial         := TModelERPefd(Model).credencial;
Self.Fcontroleestoquevenda         := TModelERPefd(Model).controleestoquevenda;
Self.Fcta_transf_saida         := TModelERPefd(Model).cta_transf_saida;
Self.Fcta_transf_entrada         := TModelERPefd(Model).cta_transf_entrada;
Self.Fcta_estorno_emissao_cheque         := TModelERPefd(Model).cta_estorno_emissao_cheque;
Self.Fcta_custodia         := TModelERPefd(Model).cta_custodia;
Self.Fcta_estorno_custodia         := TModelERPefd(Model).cta_estorno_custodia;
Self.Fcta_juros_custodia         := TModelERPefd(Model).cta_juros_custodia;
Self.Fcta_estorno_juros_custodia         := TModelERPefd(Model).cta_estorno_juros_custodia;
Self.Fcta_estorno_pagamento         := TModelERPefd(Model).cta_estorno_pagamento;
Self.Fcta_taxa_juros         := TModelERPefd(Model).cta_taxa_juros;
Self.Frazao_social         := TModelERPefd(Model).razao_social;
Self.Fcelular         := TModelERPefd(Model).celular;
Self.Fcontato         := TModelERPefd(Model).contato;
Self.Fparceiro         := TModelERPefd(Model).parceiro;
Self.Fcta_recebimento_cartao         := TModelERPefd(Model).cta_recebimento_cartao;
Self.Fobs_promissoria         := TModelERPefd(Model).obs_promissoria;
Self.Fboleto_novo         := TModelERPefd(Model).boleto_novo;
Self.Fmodelo_contrato_locacao         := TModelERPefd(Model).modelo_contrato_locacao;
Self.Felimina_zero         := TModelERPefd(Model).elimina_zero;
Self.Feliminar_digito_fabricante         := TModelERPefd(Model).eliminar_digito_fabricante;
Self.Fcta_trocaproduto         := TModelERPefd(Model).cta_trocaproduto;
Self.Fforma_pgto_compras         := TModelERPefd(Model).forma_pgto_compras;
Self.Fcfop_tributado_interno         := TModelERPefd(Model).cfop_tributado_interno;
Self.Fcfop_tributado_externo         := TModelERPefd(Model).cfop_tributado_externo;
Self.Fcfop_subst_interno         := TModelERPefd(Model).cfop_subst_interno;
Self.Fcfop_subst_externo         := TModelERPefd(Model).cfop_subst_externo;
Self.Fcfop_naoincidencia_interno         := TModelERPefd(Model).cfop_naoincidencia_interno;
Self.Fcfop_naoincidencia_externo         := TModelERPefd(Model).cfop_naoincidencia_externo;
Self.Fcfop_isento_interno         := TModelERPefd(Model).cfop_isento_interno;
Self.Fcfop_isento_externo         := TModelERPefd(Model).cfop_isento_externo;
Self.Fcfop_tribpautafiscal_interno         := TModelERPefd(Model).cfop_tribpautafiscal_interno;
Self.Fcfop_tribpautafiscal_externo         := TModelERPefd(Model).cfop_tribpautafiscal_externo;
Self.Fparametro_troca         := TModelERPefd(Model).parametro_troca;
Self.Fcliente_consumidor         := TModelERPefd(Model).cliente_consumidor;
Self.Fcfop_devolucao_venda         := TModelERPefd(Model).cfop_devolucao_venda;
Self.Ftroca_nfe         := TModelERPefd(Model).troca_nfe;
Self.Flocalizacao_orcamento         := TModelERPefd(Model).localizacao_orcamento;
Self.Fproduto_tributado         := TModelERPefd(Model).produto_tributado;
Self.Fproduto_substituicao         := TModelERPefd(Model).produto_substituicao;
Self.Fproduto_isento         := TModelERPefd(Model).produto_isento;
Self.Fproduto_reducao         := TModelERPefd(Model).produto_reducao;
Self.Fhora_reducao_z         := TModelERPefd(Model).hora_reducao_z;
Self.Fbuscar_ean_letra         := TModelERPefd(Model).buscar_ean_letra;
Self.Fimprimir_cod_fabric_cupom         := TModelERPefd(Model).imprimir_cod_fabric_cupom;
Self.Fremessa_antigo         := TModelERPefd(Model).remessa_antigo;
Self.Fcaixa_baixa_simples         := TModelERPefd(Model).caixa_baixa_simples;
Self.Fvisualizacao_antecipada_locacao         := TModelERPefd(Model).visualizacao_antecipada_locacao;
Self.Fantecipar_locacao         := TModelERPefd(Model).antecipar_locacao;
Self.Fsenha_usuario_quitar_contareceber         := TModelERPefd(Model).senha_usuario_quitar_contareceber;
Self.Fconta_receber_sem_banco         := TModelERPefd(Model).conta_receber_sem_banco;
Self.Futilizar_caixa_exclusivo         := TModelERPefd(Model).utilizar_caixa_exclusivo;
Self.Fcaixa_exclusivo         := TModelERPefd(Model).caixa_exclusivo;
Self.Ftipo_entrada_compras         := TModelERPefd(Model).tipo_entrada_compras;
Self.Fcta_insumos         := TModelERPefd(Model).cta_insumos;
Self.Fcta_almoxarifado         := TModelERPefd(Model).cta_almoxarifado;
Self.Fcta_pag_funcionario         := TModelERPefd(Model).cta_pag_funcionario;
Self.Futilizar_controle_financeiro_comissao         := TModelERPefd(Model).utilizar_controle_financeiro_comissao;
Self.Fcta_cheque_emitido         := TModelERPefd(Model).cta_cheque_emitido;
Self.Fcontrole_fabricante         := TModelERPefd(Model).controle_fabricante;
Self.Fdesossa_aut         := TModelERPefd(Model).desossa_aut;
Self.Fmovimento_food         := TModelERPefd(Model).movimento_food;
Self.Fpesquisa_venda         := TModelERPefd(Model).pesquisa_venda;
Self.Fnfce         := TModelERPefd(Model).nfce;
Self.Ftrabalha_nfce         := TModelERPefd(Model).trabalha_nfce;
Self.Ftolerancia_ponto         := TModelERPefd(Model).tolerancia_ponto;
Self.Fvenda         := TModelERPefd(Model).venda;
Self.Fexpedicao         := TModelERPefd(Model).expedicao;
Self.Fromaneio         := TModelERPefd(Model).romaneio;
Self.Fcotacaop         := TModelERPefd(Model).cotacaop;
Self.Fcfop_venda_entrega_futura         := TModelERPefd(Model).cfop_venda_entrega_futura;
Self.Fcfop_entrega_futura         := TModelERPefd(Model).cfop_entrega_futura;
Self.Fcfop_entrega_fut_fora_estado         := TModelERPefd(Model).cfop_entrega_fut_fora_estado;
Self.Fcfop_venda_fut_fora_estado         := TModelERPefd(Model).cfop_venda_fut_fora_estado;
Self.Frelatorio_gerencia_servico         := TModelERPefd(Model).relatorio_gerencia_servico;
Self.Fpasta_xml         := TModelERPefd(Model).pasta_xml;
Self.Fimagem_fundo         := TModelERPefd(Model).imagem_fundo;
Self.Fpasta_nfe         := TModelERPefd(Model).pasta_nfe;
Self.Fregime_especial_st         := TModelERPefd(Model).regime_especial_st;
Self.Fconfissao_divida         := TModelERPefd(Model).confissao_divida;
Self.Futiliza_duplicata_grande         := TModelERPefd(Model).utiliza_duplicata_grande;
Self.Fcontrola_serial_celular         := TModelERPefd(Model).controla_serial_celular;
Self.Fcfop_devolucao_compra_interestadual         := TModelERPefd(Model).cfop_devolucao_compra_interestadual;
Self.Fcfop_devolucao_venda_interestadual         := TModelERPefd(Model).cfop_devolucao_venda_interestadual;
Self.Fnota_promissoria         := TModelERPefd(Model).nota_promissoria;
Self.Fexplodir_kit         := TModelERPefd(Model).explodir_kit;
Self.Festoque_subsequente         := TModelERPefd(Model).estoque_subsequente;
Self.Fvalidar_fornecedor         := TModelERPefd(Model).validar_fornecedor;
Self.Fos_sem_veiculo         := TModelERPefd(Model).os_sem_veiculo;
Self.Finformar_cfop_saida         := TModelERPefd(Model).informar_cfop_saida;
Self.Fcfop_transferencia         := TModelERPefd(Model).cfop_transferencia;
Self.Fcfop_transferencia_interestadual         := TModelERPefd(Model).cfop_transferencia_interestadual;
Self.Fcfop_retorno_mercadoria         := TModelERPefd(Model).cfop_retorno_mercadoria;
Self.Fcfop_retorno_mercadoria_interestadual         := TModelERPefd(Model).cfop_retorno_mercadoria_interestadual;
Self.Fcfop_entrada_produto         := TModelERPefd(Model).cfop_entrada_produto;
Self.Fcfop_entrada_produto_interestadual         := TModelERPefd(Model).cfop_entrada_produto_interestadual;
Self.Fvalidar_cliente         := TModelERPefd(Model).validar_cliente;
Self.Fimagem_tela_inicial         := TModelERPefd(Model).imagem_tela_inicial;
Self.Fkit_baixar_filhos         := TModelERPefd(Model).kit_baixar_filhos;
Self.Fpadrao_central_custodia         := TModelERPefd(Model).padrao_central_custodia;
Self.Ftipo_balanca         := TModelERPefd(Model).tipo_balanca;
Self.Fpath_balanca         := TModelERPefd(Model).path_balanca;
Self.Ffilial_produtos         := TModelERPefd(Model).filial_produtos;
Self.Ffilial_clientes         := TModelERPefd(Model).filial_clientes;
Self.Ffilial_fornecedor         := TModelERPefd(Model).filial_fornecedor;
Self.Fhost_matriz         := TModelERPefd(Model).host_matriz;
Self.Ffaturar_aluguel_locacao         := TModelERPefd(Model).faturar_aluguel_locacao;
Self.Fcta_imposto_sindicato         := TModelERPefd(Model).cta_imposto_sindicato;
Self.Fcta_imposto_inss         := TModelERPefd(Model).cta_imposto_inss;
Self.Flancamento_inss_sindicato         := TModelERPefd(Model).lancamento_inss_sindicato;
Self.Fparceiro_conta_pagar         := TModelERPefd(Model).parceiro_conta_pagar;
Self.Ftroco_troca         := TModelERPefd(Model).troco_troca;
Self.Fmovimentacao_data_saida         := TModelERPefd(Model).movimentacao_data_saida;
Self.Fsalto_orcamento         := TModelERPefd(Model).salto_orcamento;
Self.Fsenhas_criptografadas         := TModelERPefd(Model).senhas_criptografadas;
Self.Fqtd_produtos_orcamento         := TModelERPefd(Model).qtd_produtos_orcamento;
Self.Fqtd_servico_orcamento         := TModelERPefd(Model).qtd_servico_orcamento;
Self.Fnumero_pag_orcamento         := TModelERPefd(Model).numero_pag_orcamento;
Self.Ficms2016         := TModelERPefd(Model).icms2016;
Self.Fplano_conta_13digitos         := TModelERPefd(Model).plano_conta_13digitos;
Self.Fconsulta_produto_especifico         := TModelERPefd(Model).consulta_produto_especifico;
Self.Freducao_nfe         := TModelERPefd(Model).reducao_nfe;
Self.Finforma_venda_em_aberto         := TModelERPefd(Model).informa_venda_em_aberto;
Self.Fconversao_sped_simples_nacional         := TModelERPefd(Model).conversao_sped_simples_nacional;
Self.Fvisualizar_vendas         := TModelERPefd(Model).visualizar_vendas;
Self.Facrescimo_frete         := TModelERPefd(Model).acrescimo_frete;
Self.Fpasta_retorno         := TModelERPefd(Model).pasta_retorno;
Self.Fdata_hora_nfe         := TModelERPefd(Model).data_hora_nfe;
Self.Femail_nfe         := TModelERPefd(Model).email_nfe;
Self.Fmotorista         := TModelERPefd(Model).motorista;
Self.Forcamento_peso_bruto         := TModelERPefd(Model).orcamento_peso_bruto;
Self.Fmensagem_carne         := TModelERPefd(Model).mensagem_carne;
Self.Fbanco_contas_fixas         := TModelERPefd(Model).banco_contas_fixas;
Self.Fcpf         := TModelERPefd(Model).cpf;
Self.Fjuros_mes         := TModelERPefd(Model).juros_mes;
Self.Fcidade         := TModelERPefd(Model).cidade;
Self.Fcte         := TModelERPefd(Model).cte;
Self.Fsimples_subst         := TModelERPefd(Model).simples_subst;
Self.Fcta_contas_fixas         := TModelERPefd(Model).cta_contas_fixas;
Self.Fseq_lote         := TModelERPefd(Model).seq_lote;
Self.Fnumero_filial         := TModelERPefd(Model).numero_filial;
Self.Fdata_base_matriz         := TModelERPefd(Model).data_base_matriz;
Self.Ffilial_documentos         := TModelERPefd(Model).filial_documentos;
Self.Fcta_vendacredito_cliente         := TModelERPefd(Model).cta_vendacredito_cliente;
Self.Fcta_geracaocredito_cliente         := TModelERPefd(Model).cta_geracaocredito_cliente;
Self.Fcta_recebimento_duplicata_credito_cliente         := TModelERPefd(Model).cta_recebimento_duplicata_credito_cliente;
Self.Fcta_estorno_credito_cliente         := TModelERPefd(Model).cta_estorno_credito_cliente;
Self.Ftimezone         := TModelERPefd(Model).timezone;
Self.Ftimezone_utc         := TModelERPefd(Model).timezone_utc;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPefd.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPefd.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPefd.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPefd.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPefd.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPefd.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPefd.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPefd.Setfone1(const Value: Boolean);   
begin                
  Ffone1 := Value;   
end;                 

procedure TModelERPefd.Setfone2(const Value: Boolean);   
begin                
  Ffone2 := Value;   
end;                 

procedure TModelERPefd.Setfax(const Value: Boolean);   
begin                
  Ffax := Value;   
end;                 

procedure TModelERPefd.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPefd.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPefd.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPefd.Setrepresentante_legal(const Value: Boolean);   
begin                
  Frepresentante_legal := Value;   
end;                 

procedure TModelERPefd.Settipo_empresa(const Value: Boolean);   
begin                
  Ftipo_empresa := Value;   
end;                 

procedure TModelERPefd.Sethostname(const Value: Boolean);   
begin                
  Fhostname := Value;   
end;                 

procedure TModelERPefd.Setdatabase(const Value: Boolean);   
begin                
  Fdatabase := Value;   
end;                 

procedure TModelERPefd.Setporta(const Value: Boolean);   
begin                
  Fporta := Value;   
end;                 

procedure TModelERPefd.Setusuariodbms(const Value: Boolean);   
begin                
  Fusuariodbms := Value;   
end;                 

procedure TModelERPefd.Setsenhadbms(const Value: Boolean);   
begin                
  Fsenhadbms := Value;   
end;                 

procedure TModelERPefd.Setdata_cadastro(const Value: Boolean);   
begin                
  Fdata_cadastro := Value;   
end;                 

procedure TModelERPefd.Setcta_vendas(const Value: Boolean);   
begin                
  Fcta_vendas := Value;   
end;                 

procedure TModelERPefd.Setcta_compra(const Value: Boolean);   
begin                
  Fcta_compra := Value;   
end;                 

procedure TModelERPefd.Setcta_recparcela(const Value: Boolean);   
begin                
  Fcta_recparcela := Value;   
end;                 

procedure TModelERPefd.Setcta_estparcela(const Value: Boolean);   
begin                
  Fcta_estparcela := Value;   
end;                 

procedure TModelERPefd.Setcta_pagparcela(const Value: Boolean);   
begin                
  Fcta_pagparcela := Value;   
end;                 

procedure TModelERPefd.Setcta_depbancario(const Value: Boolean);   
begin                
  Fcta_depbancario := Value;   
end;                 

procedure TModelERPefd.Setcta_emissaocheq(const Value: Boolean);   
begin                
  Fcta_emissaocheq := Value;   
end;                 

procedure TModelERPefd.Setcta_estcaixa(const Value: Boolean);   
begin                
  Fcta_estcaixa := Value;   
end;                 

procedure TModelERPefd.Setcta_estbanco(const Value: Boolean);   
begin                
  Fcta_estbanco := Value;   
end;                 

procedure TModelERPefd.Setcta_jrorecebido(const Value: Boolean);   
begin                
  Fcta_jrorecebido := Value;   
end;                 

procedure TModelERPefd.Setcta_jropago(const Value: Boolean);   
begin                
  Fcta_jropago := Value;   
end;                 

procedure TModelERPefd.Setcta_descrecebido(const Value: Boolean);   
begin                
  Fcta_descrecebido := Value;   
end;                 

procedure TModelERPefd.Setcta_descpago(const Value: Boolean);   
begin                
  Fcta_descpago := Value;   
end;                 

procedure TModelERPefd.Setcta_devolvenda(const Value: Boolean);   
begin                
  Fcta_devolvenda := Value;   
end;                 

procedure TModelERPefd.Setdesc_rateio(const Value: Boolean);   
begin                
  Fdesc_rateio := Value;   
end;                 

procedure TModelERPefd.Setmensagem_promocional(const Value: Boolean);   
begin                
  Fmensagem_promocional := Value;   
end;                 

procedure TModelERPefd.Setmodelo_duplicata(const Value: Boolean);   
begin                
  Fmodelo_duplicata := Value;   
end;                 

procedure TModelERPefd.Setmodelo_recibo(const Value: Boolean);   
begin                
  Fmodelo_recibo := Value;   
end;                 

procedure TModelERPefd.Setmodelo_nota(const Value: Boolean);   
begin                
  Fmodelo_nota := Value;   
end;                 

procedure TModelERPefd.Setqtd_itensnota(const Value: Boolean);   
begin                
  Fqtd_itensnota := Value;   
end;                 

procedure TModelERPefd.Settam_pagnota(const Value: Boolean);   
begin                
  Ftam_pagnota := Value;   
end;                 

procedure TModelERPefd.Setseq_nronota(const Value: Boolean);   
begin                
  Fseq_nronota := Value;   
end;                 

procedure TModelERPefd.Setimprime_nota(const Value: Boolean);   
begin                
  Fimprime_nota := Value;   
end;                 

procedure TModelERPefd.Setimprime_vendedor(const Value: Boolean);   
begin                
  Fimprime_vendedor := Value;   
end;                 

procedure TModelERPefd.Setestoque_negativo(const Value: Boolean);   
begin                
  Festoque_negativo := Value;   
end;                 

procedure TModelERPefd.Settexto_cobranca(const Value: Boolean);   
begin                
  Ftexto_cobranca := Value;   
end;                 

procedure TModelERPefd.Setcusto_operacional(const Value: Boolean);   
begin                
  Fcusto_operacional := Value;   
end;                 

procedure TModelERPefd.Setcusto_financeiro(const Value: Boolean);   
begin                
  Fcusto_financeiro := Value;   
end;                 

procedure TModelERPefd.Setjuro_dia(const Value: Boolean);   
begin                
  Fjuro_dia := Value;   
end;                 

procedure TModelERPefd.Setcfop_avista(const Value: Boolean);   
begin                
  Fcfop_avista := Value;   
end;                 

procedure TModelERPefd.Setcfop_aprazo(const Value: Boolean);   
begin                
  Fcfop_aprazo := Value;   
end;                 

procedure TModelERPefd.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPefd.Setsalto_nota(const Value: Boolean);   
begin                
  Fsalto_nota := Value;   
end;                 

procedure TModelERPefd.Setcaminho_nota(const Value: Boolean);   
begin                
  Fcaminho_nota := Value;   
end;                 

procedure TModelERPefd.Setcotacao(const Value: Boolean);   
begin                
  Fcotacao := Value;   
end;                 

procedure TModelERPefd.Setcomissao_decrescente(const Value: Boolean);   
begin                
  Fcomissao_decrescente := Value;   
end;                 

procedure TModelERPefd.Setintervalo_a1(const Value: Boolean);   
begin                
  Fintervalo_a1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_a2(const Value: Boolean);   
begin                
  Fintervalo_a2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_b1(const Value: Boolean);   
begin                
  Fintervalo_b1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_b2(const Value: Boolean);   
begin                
  Fintervalo_b2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_c1(const Value: Boolean);   
begin                
  Fintervalo_c1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_c2(const Value: Boolean);   
begin                
  Fintervalo_c2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_d1(const Value: Boolean);   
begin                
  Fintervalo_d1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_d2(const Value: Boolean);   
begin                
  Fintervalo_d2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_e1(const Value: Boolean);   
begin                
  Fintervalo_e1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_f1(const Value: Boolean);   
begin                
  Fintervalo_f1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_f2(const Value: Boolean);   
begin                
  Fintervalo_f2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_g1(const Value: Boolean);   
begin                
  Fintervalo_g1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_g2(const Value: Boolean);   
begin                
  Fintervalo_g2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_h1(const Value: Boolean);   
begin                
  Fintervalo_h1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_h2(const Value: Boolean);   
begin                
  Fintervalo_h2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_i1(const Value: Boolean);   
begin                
  Fintervalo_i1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_i2(const Value: Boolean);   
begin                
  Fintervalo_i2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_j1(const Value: Boolean);   
begin                
  Fintervalo_j1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_j2(const Value: Boolean);   
begin                
  Fintervalo_j2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_l1(const Value: Boolean);   
begin                
  Fintervalo_l1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_l2(const Value: Boolean);   
begin                
  Fintervalo_l2 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_m1(const Value: Boolean);   
begin                
  Fintervalo_m1 := Value;   
end;                 

procedure TModelERPefd.Setintervalo_m2(const Value: Boolean);   
begin                
  Fintervalo_m2 := Value;   
end;                 

procedure TModelERPefd.Setcomissao_a(const Value: Boolean);   
begin                
  Fcomissao_a := Value;   
end;                 

procedure TModelERPefd.Setcomissao_b(const Value: Boolean);   
begin                
  Fcomissao_b := Value;   
end;                 

procedure TModelERPefd.Setcomissao_c(const Value: Boolean);   
begin                
  Fcomissao_c := Value;   
end;                 

procedure TModelERPefd.Setcomissao_d(const Value: Boolean);   
begin                
  Fcomissao_d := Value;   
end;                 

procedure TModelERPefd.Setcomissao_e(const Value: Boolean);   
begin                
  Fcomissao_e := Value;   
end;                 

procedure TModelERPefd.Setcomissao_f(const Value: Boolean);   
begin                
  Fcomissao_f := Value;   
end;                 

procedure TModelERPefd.Setcomissao_g(const Value: Boolean);   
begin                
  Fcomissao_g := Value;   
end;                 

procedure TModelERPefd.Setcomissao_h(const Value: Boolean);   
begin                
  Fcomissao_h := Value;   
end;                 

procedure TModelERPefd.Setcomissao_i(const Value: Boolean);   
begin                
  Fcomissao_i := Value;   
end;                 

procedure TModelERPefd.Setcomissao_j(const Value: Boolean);   
begin                
  Fcomissao_j := Value;   
end;                 

procedure TModelERPefd.Setcomissao_l(const Value: Boolean);   
begin                
  Fcomissao_l := Value;   
end;                 

procedure TModelERPefd.Setcomissao_m(const Value: Boolean);   
begin                
  Fcomissao_m := Value;   
end;                 

procedure TModelERPefd.Setintervalo_e2(const Value: Boolean);   
begin                
  Fintervalo_e2 := Value;   
end;                 

procedure TModelERPefd.Setsalto_duplicata(const Value: Boolean);   
begin                
  Fsalto_duplicata := Value;   
end;                 

procedure TModelERPefd.Setimagem(const Value: Boolean);   
begin                
  Fimagem := Value;   
end;                 

procedure TModelERPefd.Setarquivo_imagem(const Value: Boolean);   
begin                
  Farquivo_imagem := Value;   
end;                 

procedure TModelERPefd.Setproduto_conjugado(const Value: Boolean);   
begin                
  Fproduto_conjugado := Value;   
end;                 

procedure TModelERPefd.Setrateio_comissao(const Value: Boolean);   
begin                
  Frateio_comissao := Value;   
end;                 

procedure TModelERPefd.Setcta_vendas_aprazo(const Value: Boolean);   
begin                
  Fcta_vendas_aprazo := Value;   
end;                 

procedure TModelERPefd.Setformacao_preco(const Value: Boolean);   
begin                
  Fformacao_preco := Value;   
end;                 

procedure TModelERPefd.Setnosso_numero(const Value: Boolean);   
begin                
  Fnosso_numero := Value;   
end;                 

procedure TModelERPefd.Setidentifica_cupom(const Value: Boolean);   
begin                
  Fidentifica_cupom := Value;   
end;                 

procedure TModelERPefd.Setatividade(const Value: Boolean);   
begin                
  Fatividade := Value;   
end;                 

procedure TModelERPefd.Setvenda_rapida(const Value: Boolean);   
begin                
  Fvenda_rapida := Value;   
end;                 

procedure TModelERPefd.Setgrade(const Value: Boolean);   
begin                
  Fgrade := Value;   
end;                 

procedure TModelERPefd.Setdata_analise(const Value: Boolean);   
begin                
  Fdata_analise := Value;   
end;                 

procedure TModelERPefd.Setcta_suprimento(const Value: Boolean);   
begin                
  Fcta_suprimento := Value;   
end;                 

procedure TModelERPefd.Setcta_sangria(const Value: Boolean);   
begin                
  Fcta_sangria := Value;   
end;                 

procedure TModelERPefd.Setcta_os(const Value: Boolean);   
begin                
  Fcta_os := Value;   
end;                 

procedure TModelERPefd.Setbancocodigo(const Value: Boolean);   
begin                
  Fbancocodigo := Value;   
end;                 

procedure TModelERPefd.Setbanconome(const Value: Boolean);   
begin                
  Fbanconome := Value;   
end;                 

procedure TModelERPefd.Setcedentecodigo(const Value: Boolean);   
begin                
  Fcedentecodigo := Value;   
end;                 

procedure TModelERPefd.Setcedentecodigodigito(const Value: Boolean);   
begin                
  Fcedentecodigodigito := Value;   
end;                 

procedure TModelERPefd.Setcarteira(const Value: Boolean);   
begin                
  Fcarteira := Value;   
end;                 

procedure TModelERPefd.Setagenciacodigo(const Value: Boolean);   
begin                
  Fagenciacodigo := Value;   
end;                 

procedure TModelERPefd.Setagenciadigito(const Value: Boolean);   
begin                
  Fagenciadigito := Value;   
end;                 

procedure TModelERPefd.Setagencianome(const Value: Boolean);   
begin                
  Fagencianome := Value;   
end;                 

procedure TModelERPefd.Setcontanumero(const Value: Boolean);   
begin                
  Fcontanumero := Value;   
end;                 

procedure TModelERPefd.Setcontanumerodigito(const Value: Boolean);   
begin                
  Fcontanumerodigito := Value;   
end;                 

procedure TModelERPefd.Setproximonossonumero(const Value: Boolean);   
begin                
  Fproximonossonumero := Value;   
end;                 

procedure TModelERPefd.Setsalto_etiqueta1(const Value: Boolean);   
begin                
  Fsalto_etiqueta1 := Value;   
end;                 

procedure TModelERPefd.Setsalto_etiqueta2(const Value: Boolean);   
begin                
  Fsalto_etiqueta2 := Value;   
end;                 

procedure TModelERPefd.Setsalto_etiqueta3(const Value: Boolean);   
begin                
  Fsalto_etiqueta3 := Value;   
end;                 

procedure TModelERPefd.Setsalto_etiqueta4(const Value: Boolean);   
begin                
  Fsalto_etiqueta4 := Value;   
end;                 

procedure TModelERPefd.Setfiltro_nome(const Value: Boolean);   
begin                
  Ffiltro_nome := Value;   
end;                 

procedure TModelERPefd.Setdir_sistema(const Value: Boolean);   
begin                
  Fdir_sistema := Value;   
end;                 

procedure TModelERPefd.Setdir_banco(const Value: Boolean);   
begin                
  Fdir_banco := Value;   
end;                 

procedure TModelERPefd.Setvalorreceber_maior(const Value: Boolean);   
begin                
  Fvalorreceber_maior := Value;   
end;                 

procedure TModelERPefd.Setcfop_devolucao(const Value: Boolean);   
begin                
  Fcfop_devolucao := Value;   
end;                 

procedure TModelERPefd.Setdevolucao_financeiro(const Value: Boolean);   
begin                
  Fdevolucao_financeiro := Value;   
end;                 

procedure TModelERPefd.Setvendedor_venda(const Value: Boolean);   
begin                
  Fvendedor_venda := Value;   
end;                 

procedure TModelERPefd.Setinstrucoes(const Value: Boolean);   
begin                
  Finstrucoes := Value;   
end;                 

procedure TModelERPefd.Setforma_boleto(const Value: Boolean);   
begin                
  Fforma_boleto := Value;   
end;                 

procedure TModelERPefd.Setcupom_automatico(const Value: Boolean);   
begin                
  Fcupom_automatico := Value;   
end;                 

procedure TModelERPefd.Setsimples(const Value: Boolean);   
begin                
  Fsimples := Value;   
end;                 

procedure TModelERPefd.Setvl_enc_federal(const Value: Boolean);   
begin                
  Fvl_enc_federal := Value;   
end;                 

procedure TModelERPefd.Setvl_enc_estadual(const Value: Boolean);   
begin                
  Fvl_enc_estadual := Value;   
end;                 

procedure TModelERPefd.Setconvenio(const Value: Boolean);   
begin                
  Fconvenio := Value;   
end;                 

procedure TModelERPefd.Settipo_convenio(const Value: Boolean);   
begin                
  Ftipo_convenio := Value;   
end;                 

procedure TModelERPefd.Setdir_backup(const Value: Boolean);   
begin                
  Fdir_backup := Value;   
end;                 

procedure TModelERPefd.Setmodelo_carne(const Value: Boolean);   
begin                
  Fmodelo_carne := Value;   
end;                 

procedure TModelERPefd.Setiss(const Value: Boolean);   
begin                
  Fiss := Value;   
end;                 

procedure TModelERPefd.Setqtd_itensnotaservico(const Value: Boolean);   
begin                
  Fqtd_itensnotaservico := Value;   
end;                 

procedure TModelERPefd.Settexto_aniversario(const Value: Boolean);   
begin                
  Ftexto_aniversario := Value;   
end;                 

procedure TModelERPefd.Setordemproc_produto(const Value: Boolean);   
begin                
  Fordemproc_produto := Value;   
end;                 

procedure TModelERPefd.Setextrato_produto(const Value: Boolean);   
begin                
  Fextrato_produto := Value;   
end;                 

procedure TModelERPefd.Setboleto(const Value: Boolean);   
begin                
  Fboleto := Value;   
end;                 

procedure TModelERPefd.Setsalto_boleto(const Value: Boolean);   
begin                
  Fsalto_boleto := Value;   
end;                 

procedure TModelERPefd.Setcliente_coringa(const Value: Boolean);   
begin                
  Fcliente_coringa := Value;   
end;                 

procedure TModelERPefd.Setmostra_conta(const Value: Boolean);   
begin                
  Fmostra_conta := Value;   
end;                 

procedure TModelERPefd.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPefd.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPefd.Setresponsavel(const Value: Boolean);   
begin                
  Fresponsavel := Value;   
end;                 

procedure TModelERPefd.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPefd.Setipi(const Value: Boolean);   
begin                
  Fipi := Value;   
end;                 

procedure TModelERPefd.Setindustria(const Value: Boolean);   
begin                
  Findustria := Value;   
end;                 

procedure TModelERPefd.Setlocacao(const Value: Boolean);   
begin                
  Flocacao := Value;   
end;                 

procedure TModelERPefd.Setobs_orcamento(const Value: Boolean);   
begin                
  Fobs_orcamento := Value;   
end;                 

procedure TModelERPefd.Setinsc_mun(const Value: Boolean);   
begin                
  Finsc_mun := Value;   
end;                 

procedure TModelERPefd.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPefd.Setsupervisor(const Value: Boolean);   
begin                
  Fsupervisor := Value;   
end;                 

procedure TModelERPefd.Setsalto_etiqueta5(const Value: Boolean);   
begin                
  Fsalto_etiqueta5 := Value;   
end;                 

procedure TModelERPefd.Setjuro_carencia(const Value: Boolean);   
begin                
  Fjuro_carencia := Value;   
end;                 

procedure TModelERPefd.Setbaixa_simples(const Value: Boolean);   
begin                
  Fbaixa_simples := Value;   
end;                 

procedure TModelERPefd.Setobs_carne1(const Value: Boolean);   
begin                
  Fobs_carne1 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne2(const Value: Boolean);   
begin                
  Fobs_carne2 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne3(const Value: Boolean);   
begin                
  Fobs_carne3 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne4(const Value: Boolean);   
begin                
  Fobs_carne4 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne5(const Value: Boolean);   
begin                
  Fobs_carne5 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne6(const Value: Boolean);   
begin                
  Fobs_carne6 := Value;   
end;                 

procedure TModelERPefd.Setvenda_maior(const Value: Boolean);   
begin                
  Fvenda_maior := Value;   
end;                 

procedure TModelERPefd.Setsubstituto_tributario(const Value: Boolean);   
begin                
  Fsubstituto_tributario := Value;   
end;                 

procedure TModelERPefd.Setdiretorio_fotos(const Value: Boolean);   
begin                
  Fdiretorio_fotos := Value;   
end;                 

procedure TModelERPefd.Setobs_carne7(const Value: Boolean);   
begin                
  Fobs_carne7 := Value;   
end;                 

procedure TModelERPefd.Setobs_carne8(const Value: Boolean);   
begin                
  Fobs_carne8 := Value;   
end;                 

procedure TModelERPefd.Setmodelo_ficha(const Value: Boolean);   
begin                
  Fmodelo_ficha := Value;   
end;                 

procedure TModelERPefd.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPefd.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPefd.Setajusta_fatura(const Value: Boolean);   
begin                
  Fajusta_fatura := Value;   
end;                 

procedure TModelERPefd.Setsimples_nacional(const Value: Boolean);   
begin                
  Fsimples_nacional := Value;   
end;                 

procedure TModelERPefd.Setproduto_consulta(const Value: Boolean);   
begin                
  Fproduto_consulta := Value;   
end;                 

procedure TModelERPefd.Setmodelo_orcamento(const Value: Boolean);   
begin                
  Fmodelo_orcamento := Value;   
end;                 

procedure TModelERPefd.Setmodelo_expedicao(const Value: Boolean);   
begin                
  Fmodelo_expedicao := Value;   
end;                 

procedure TModelERPefd.Setdias_backup(const Value: Boolean);   
begin                
  Fdias_backup := Value;   
end;                 

procedure TModelERPefd.Setimprime_notad1(const Value: Boolean);   
begin                
  Fimprime_notad1 := Value;   
end;                 

procedure TModelERPefd.Setfarmacia_popular(const Value: Boolean);   
begin                
  Ffarmacia_popular := Value;   
end;                 

procedure TModelERPefd.Setfpb(const Value: Boolean);   
begin                
  Ffpb := Value;   
end;                 

procedure TModelERPefd.Setirpj(const Value: Boolean);   
begin                
  Firpj := Value;   
end;                 

procedure TModelERPefd.Setcont_social(const Value: Boolean);   
begin                
  Fcont_social := Value;   
end;                 

procedure TModelERPefd.Setcasas_decimais(const Value: Boolean);   
begin                
  Fcasas_decimais := Value;   
end;                 

procedure TModelERPefd.Settipo_desconto(const Value: Boolean);   
begin                
  Ftipo_desconto := Value;   
end;                 

procedure TModelERPefd.Setcusto_servico(const Value: Boolean);   
begin                
  Fcusto_servico := Value;   
end;                 

procedure TModelERPefd.Settipo_juro_venda(const Value: Boolean);   
begin                
  Ftipo_juro_venda := Value;   
end;                 

procedure TModelERPefd.Setbloqueio_automatico(const Value: Boolean);   
begin                
  Fbloqueio_automatico := Value;   
end;                 

procedure TModelERPefd.Setcontrole_caixa(const Value: Boolean);   
begin                
  Fcontrole_caixa := Value;   
end;                 

procedure TModelERPefd.Settipo_juro(const Value: Boolean);   
begin                
  Ftipo_juro := Value;   
end;                 

procedure TModelERPefd.Setaproveitamento_credito_atacado(const Value: Boolean);   
begin                
  Faproveitamento_credito_atacado := Value;   
end;                 

procedure TModelERPefd.Seticms_saida(const Value: Boolean);   
begin                
  Ficms_saida := Value;   
end;                 

procedure TModelERPefd.Setcompras_red_fora(const Value: Boolean);   
begin                
  Fcompras_red_fora := Value;   
end;                 

procedure TModelERPefd.Setcompras_red_dentro(const Value: Boolean);   
begin                
  Fcompras_red_dentro := Value;   
end;                 

procedure TModelERPefd.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPefd.Setaprazo(const Value: Boolean);   
begin                
  Faprazo := Value;   
end;                 

procedure TModelERPefd.Setid_tabela_preco(const Value: Boolean);   
begin                
  Fid_tabela_preco := Value;   
end;                 

procedure TModelERPefd.Setmulta(const Value: Boolean);   
begin                
  Fmulta := Value;   
end;                 

procedure TModelERPefd.Settributado(const Value: Boolean);   
begin                
  Ftributado := Value;   
end;                 

procedure TModelERPefd.Setsubstituicao(const Value: Boolean);   
begin                
  Fsubstituicao := Value;   
end;                 

procedure TModelERPefd.Setisento(const Value: Boolean);   
begin                
  Fisento := Value;   
end;                 

procedure TModelERPefd.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPefd.Setcredencial(const Value: Boolean);   
begin                
  Fcredencial := Value;   
end;                 

procedure TModelERPefd.Setcontroleestoquevenda(const Value: Boolean);   
begin                
  Fcontroleestoquevenda := Value;   
end;                 

procedure TModelERPefd.Setcta_transf_saida(const Value: Boolean);   
begin                
  Fcta_transf_saida := Value;   
end;                 

procedure TModelERPefd.Setcta_transf_entrada(const Value: Boolean);   
begin                
  Fcta_transf_entrada := Value;   
end;                 

procedure TModelERPefd.Setcta_estorno_emissao_cheque(const Value: Boolean);   
begin                
  Fcta_estorno_emissao_cheque := Value;   
end;                 

procedure TModelERPefd.Setcta_custodia(const Value: Boolean);   
begin                
  Fcta_custodia := Value;   
end;                 

procedure TModelERPefd.Setcta_estorno_custodia(const Value: Boolean);   
begin                
  Fcta_estorno_custodia := Value;   
end;                 

procedure TModelERPefd.Setcta_juros_custodia(const Value: Boolean);   
begin                
  Fcta_juros_custodia := Value;   
end;                 

procedure TModelERPefd.Setcta_estorno_juros_custodia(const Value: Boolean);   
begin                
  Fcta_estorno_juros_custodia := Value;   
end;                 

procedure TModelERPefd.Setcta_estorno_pagamento(const Value: Boolean);   
begin                
  Fcta_estorno_pagamento := Value;   
end;                 

procedure TModelERPefd.Setcta_taxa_juros(const Value: Boolean);   
begin                
  Fcta_taxa_juros := Value;   
end;                 

procedure TModelERPefd.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPefd.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPefd.Setcontato(const Value: Boolean);   
begin                
  Fcontato := Value;   
end;                 

procedure TModelERPefd.Setparceiro(const Value: Boolean);   
begin                
  Fparceiro := Value;   
end;                 

procedure TModelERPefd.Setcta_recebimento_cartao(const Value: Boolean);   
begin                
  Fcta_recebimento_cartao := Value;   
end;                 

procedure TModelERPefd.Setobs_promissoria(const Value: Boolean);   
begin                
  Fobs_promissoria := Value;   
end;                 

procedure TModelERPefd.Setboleto_novo(const Value: Boolean);   
begin                
  Fboleto_novo := Value;   
end;                 

procedure TModelERPefd.Setmodelo_contrato_locacao(const Value: Boolean);   
begin                
  Fmodelo_contrato_locacao := Value;   
end;                 

procedure TModelERPefd.Setelimina_zero(const Value: Boolean);   
begin                
  Felimina_zero := Value;   
end;                 

procedure TModelERPefd.Seteliminar_digito_fabricante(const Value: Boolean);   
begin                
  Feliminar_digito_fabricante := Value;   
end;                 

procedure TModelERPefd.Setcta_trocaproduto(const Value: Boolean);   
begin                
  Fcta_trocaproduto := Value;   
end;                 

procedure TModelERPefd.Setforma_pgto_compras(const Value: Boolean);   
begin                
  Fforma_pgto_compras := Value;   
end;                 

procedure TModelERPefd.Setcfop_tributado_interno(const Value: Boolean);   
begin                
  Fcfop_tributado_interno := Value;   
end;                 

procedure TModelERPefd.Setcfop_tributado_externo(const Value: Boolean);   
begin                
  Fcfop_tributado_externo := Value;   
end;                 

procedure TModelERPefd.Setcfop_subst_interno(const Value: Boolean);   
begin                
  Fcfop_subst_interno := Value;   
end;                 

procedure TModelERPefd.Setcfop_subst_externo(const Value: Boolean);   
begin                
  Fcfop_subst_externo := Value;   
end;                 

procedure TModelERPefd.Setcfop_naoincidencia_interno(const Value: Boolean);   
begin                
  Fcfop_naoincidencia_interno := Value;   
end;                 

procedure TModelERPefd.Setcfop_naoincidencia_externo(const Value: Boolean);   
begin                
  Fcfop_naoincidencia_externo := Value;   
end;                 

procedure TModelERPefd.Setcfop_isento_interno(const Value: Boolean);   
begin                
  Fcfop_isento_interno := Value;   
end;                 

procedure TModelERPefd.Setcfop_isento_externo(const Value: Boolean);   
begin                
  Fcfop_isento_externo := Value;   
end;                 

procedure TModelERPefd.Setcfop_tribpautafiscal_interno(const Value: Boolean);   
begin                
  Fcfop_tribpautafiscal_interno := Value;   
end;                 

procedure TModelERPefd.Setcfop_tribpautafiscal_externo(const Value: Boolean);   
begin                
  Fcfop_tribpautafiscal_externo := Value;   
end;                 

procedure TModelERPefd.Setparametro_troca(const Value: Boolean);   
begin                
  Fparametro_troca := Value;   
end;                 

procedure TModelERPefd.Setcliente_consumidor(const Value: Boolean);   
begin                
  Fcliente_consumidor := Value;   
end;                 

procedure TModelERPefd.Setcfop_devolucao_venda(const Value: Boolean);   
begin                
  Fcfop_devolucao_venda := Value;   
end;                 

procedure TModelERPefd.Settroca_nfe(const Value: Boolean);   
begin                
  Ftroca_nfe := Value;   
end;                 

procedure TModelERPefd.Setlocalizacao_orcamento(const Value: Boolean);   
begin                
  Flocalizacao_orcamento := Value;   
end;                 

procedure TModelERPefd.Setproduto_tributado(const Value: Boolean);   
begin                
  Fproduto_tributado := Value;   
end;                 

procedure TModelERPefd.Setproduto_substituicao(const Value: Boolean);   
begin                
  Fproduto_substituicao := Value;   
end;                 

procedure TModelERPefd.Setproduto_isento(const Value: Boolean);   
begin                
  Fproduto_isento := Value;   
end;                 

procedure TModelERPefd.Setproduto_reducao(const Value: Boolean);   
begin                
  Fproduto_reducao := Value;   
end;                 

procedure TModelERPefd.Sethora_reducao_z(const Value: Boolean);   
begin                
  Fhora_reducao_z := Value;   
end;                 

procedure TModelERPefd.Setbuscar_ean_letra(const Value: Boolean);   
begin                
  Fbuscar_ean_letra := Value;   
end;                 

procedure TModelERPefd.Setimprimir_cod_fabric_cupom(const Value: Boolean);   
begin                
  Fimprimir_cod_fabric_cupom := Value;   
end;                 

procedure TModelERPefd.Setremessa_antigo(const Value: Boolean);   
begin                
  Fremessa_antigo := Value;   
end;                 

procedure TModelERPefd.Setcaixa_baixa_simples(const Value: Boolean);   
begin                
  Fcaixa_baixa_simples := Value;   
end;                 

procedure TModelERPefd.Setvisualizacao_antecipada_locacao(const Value: Boolean);   
begin                
  Fvisualizacao_antecipada_locacao := Value;   
end;                 

procedure TModelERPefd.Setantecipar_locacao(const Value: Boolean);   
begin                
  Fantecipar_locacao := Value;   
end;                 

procedure TModelERPefd.Setsenha_usuario_quitar_contareceber(const Value: Boolean);   
begin                
  Fsenha_usuario_quitar_contareceber := Value;   
end;                 

procedure TModelERPefd.Setconta_receber_sem_banco(const Value: Boolean);   
begin                
  Fconta_receber_sem_banco := Value;   
end;                 

procedure TModelERPefd.Setutilizar_caixa_exclusivo(const Value: Boolean);   
begin                
  Futilizar_caixa_exclusivo := Value;   
end;                 

procedure TModelERPefd.Setcaixa_exclusivo(const Value: Boolean);   
begin                
  Fcaixa_exclusivo := Value;   
end;                 

procedure TModelERPefd.Settipo_entrada_compras(const Value: Boolean);   
begin                
  Ftipo_entrada_compras := Value;   
end;                 

procedure TModelERPefd.Setcta_insumos(const Value: Boolean);   
begin                
  Fcta_insumos := Value;   
end;                 

procedure TModelERPefd.Setcta_almoxarifado(const Value: Boolean);   
begin                
  Fcta_almoxarifado := Value;   
end;                 

procedure TModelERPefd.Setcta_pag_funcionario(const Value: Boolean);   
begin                
  Fcta_pag_funcionario := Value;   
end;                 

procedure TModelERPefd.Setutilizar_controle_financeiro_comissao(const Value: Boolean);   
begin                
  Futilizar_controle_financeiro_comissao := Value;   
end;                 

procedure TModelERPefd.Setcta_cheque_emitido(const Value: Boolean);   
begin                
  Fcta_cheque_emitido := Value;   
end;                 

procedure TModelERPefd.Setcontrole_fabricante(const Value: Boolean);   
begin                
  Fcontrole_fabricante := Value;   
end;                 

procedure TModelERPefd.Setdesossa_aut(const Value: Boolean);   
begin                
  Fdesossa_aut := Value;   
end;                 

procedure TModelERPefd.Setmovimento_food(const Value: Boolean);   
begin                
  Fmovimento_food := Value;   
end;                 

procedure TModelERPefd.Setpesquisa_venda(const Value: Boolean);   
begin                
  Fpesquisa_venda := Value;   
end;                 

procedure TModelERPefd.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPefd.Settrabalha_nfce(const Value: Boolean);   
begin                
  Ftrabalha_nfce := Value;   
end;                 

procedure TModelERPefd.Settolerancia_ponto(const Value: Boolean);   
begin                
  Ftolerancia_ponto := Value;   
end;                 

procedure TModelERPefd.Setvenda(const Value: Boolean);   
begin                
  Fvenda := Value;   
end;                 

procedure TModelERPefd.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPefd.Setromaneio(const Value: Boolean);   
begin                
  Fromaneio := Value;   
end;                 

procedure TModelERPefd.Setcotacaop(const Value: Boolean);   
begin                
  Fcotacaop := Value;   
end;                 

procedure TModelERPefd.Setcfop_venda_entrega_futura(const Value: Boolean);   
begin                
  Fcfop_venda_entrega_futura := Value;   
end;                 

procedure TModelERPefd.Setcfop_entrega_futura(const Value: Boolean);   
begin                
  Fcfop_entrega_futura := Value;   
end;                 

procedure TModelERPefd.Setcfop_entrega_fut_fora_estado(const Value: Boolean);   
begin                
  Fcfop_entrega_fut_fora_estado := Value;   
end;                 

procedure TModelERPefd.Setcfop_venda_fut_fora_estado(const Value: Boolean);   
begin                
  Fcfop_venda_fut_fora_estado := Value;   
end;                 

procedure TModelERPefd.Setrelatorio_gerencia_servico(const Value: Boolean);   
begin                
  Frelatorio_gerencia_servico := Value;   
end;                 

procedure TModelERPefd.Setpasta_xml(const Value: Boolean);   
begin                
  Fpasta_xml := Value;   
end;                 

procedure TModelERPefd.Setimagem_fundo(const Value: Boolean);   
begin                
  Fimagem_fundo := Value;   
end;                 

procedure TModelERPefd.Setpasta_nfe(const Value: Boolean);   
begin                
  Fpasta_nfe := Value;   
end;                 

procedure TModelERPefd.Setregime_especial_st(const Value: Boolean);   
begin                
  Fregime_especial_st := Value;   
end;                 

procedure TModelERPefd.Setconfissao_divida(const Value: Boolean);   
begin                
  Fconfissao_divida := Value;   
end;                 

procedure TModelERPefd.Setutiliza_duplicata_grande(const Value: Boolean);   
begin                
  Futiliza_duplicata_grande := Value;   
end;                 

procedure TModelERPefd.Setcontrola_serial_celular(const Value: Boolean);   
begin                
  Fcontrola_serial_celular := Value;   
end;                 

procedure TModelERPefd.Setcfop_devolucao_compra_interestadual(const Value: Boolean);   
begin                
  Fcfop_devolucao_compra_interestadual := Value;   
end;                 

procedure TModelERPefd.Setcfop_devolucao_venda_interestadual(const Value: Boolean);   
begin                
  Fcfop_devolucao_venda_interestadual := Value;   
end;                 

procedure TModelERPefd.Setnota_promissoria(const Value: Boolean);   
begin                
  Fnota_promissoria := Value;   
end;                 

procedure TModelERPefd.Setexplodir_kit(const Value: Boolean);   
begin                
  Fexplodir_kit := Value;   
end;                 

procedure TModelERPefd.Setestoque_subsequente(const Value: Boolean);   
begin                
  Festoque_subsequente := Value;   
end;                 

procedure TModelERPefd.Setvalidar_fornecedor(const Value: Boolean);   
begin                
  Fvalidar_fornecedor := Value;   
end;                 

procedure TModelERPefd.Setos_sem_veiculo(const Value: Boolean);   
begin                
  Fos_sem_veiculo := Value;   
end;                 

procedure TModelERPefd.Setinformar_cfop_saida(const Value: Boolean);   
begin                
  Finformar_cfop_saida := Value;   
end;                 

procedure TModelERPefd.Setcfop_transferencia(const Value: Boolean);   
begin                
  Fcfop_transferencia := Value;   
end;                 

procedure TModelERPefd.Setcfop_transferencia_interestadual(const Value: Boolean);   
begin                
  Fcfop_transferencia_interestadual := Value;   
end;                 

procedure TModelERPefd.Setcfop_retorno_mercadoria(const Value: Boolean);   
begin                
  Fcfop_retorno_mercadoria := Value;   
end;                 

procedure TModelERPefd.Setcfop_retorno_mercadoria_interestadual(const Value: Boolean);   
begin                
  Fcfop_retorno_mercadoria_interestadual := Value;   
end;                 

procedure TModelERPefd.Setcfop_entrada_produto(const Value: Boolean);   
begin                
  Fcfop_entrada_produto := Value;   
end;                 

procedure TModelERPefd.Setcfop_entrada_produto_interestadual(const Value: Boolean);   
begin                
  Fcfop_entrada_produto_interestadual := Value;   
end;                 

procedure TModelERPefd.Setvalidar_cliente(const Value: Boolean);   
begin                
  Fvalidar_cliente := Value;   
end;                 

procedure TModelERPefd.Setimagem_tela_inicial(const Value: Boolean);   
begin                
  Fimagem_tela_inicial := Value;   
end;                 

procedure TModelERPefd.Setkit_baixar_filhos(const Value: Boolean);   
begin                
  Fkit_baixar_filhos := Value;   
end;                 

procedure TModelERPefd.Setpadrao_central_custodia(const Value: Boolean);   
begin                
  Fpadrao_central_custodia := Value;   
end;                 

procedure TModelERPefd.Settipo_balanca(const Value: Boolean);   
begin                
  Ftipo_balanca := Value;   
end;                 

procedure TModelERPefd.Setpath_balanca(const Value: Boolean);   
begin                
  Fpath_balanca := Value;   
end;                 

procedure TModelERPefd.Setfilial_produtos(const Value: Boolean);   
begin                
  Ffilial_produtos := Value;   
end;                 

procedure TModelERPefd.Setfilial_clientes(const Value: Boolean);   
begin                
  Ffilial_clientes := Value;   
end;                 

procedure TModelERPefd.Setfilial_fornecedor(const Value: Boolean);   
begin                
  Ffilial_fornecedor := Value;   
end;                 

procedure TModelERPefd.Sethost_matriz(const Value: Boolean);   
begin                
  Fhost_matriz := Value;   
end;                 

procedure TModelERPefd.Setfaturar_aluguel_locacao(const Value: Boolean);   
begin                
  Ffaturar_aluguel_locacao := Value;   
end;                 

procedure TModelERPefd.Setcta_imposto_sindicato(const Value: Boolean);   
begin                
  Fcta_imposto_sindicato := Value;   
end;                 

procedure TModelERPefd.Setcta_imposto_inss(const Value: Boolean);   
begin                
  Fcta_imposto_inss := Value;   
end;                 

procedure TModelERPefd.Setlancamento_inss_sindicato(const Value: Boolean);   
begin                
  Flancamento_inss_sindicato := Value;   
end;                 

procedure TModelERPefd.Setparceiro_conta_pagar(const Value: Boolean);   
begin                
  Fparceiro_conta_pagar := Value;   
end;                 

procedure TModelERPefd.Settroco_troca(const Value: Boolean);   
begin                
  Ftroco_troca := Value;   
end;                 

procedure TModelERPefd.Setmovimentacao_data_saida(const Value: Boolean);   
begin                
  Fmovimentacao_data_saida := Value;   
end;                 

procedure TModelERPefd.Setsalto_orcamento(const Value: Boolean);   
begin                
  Fsalto_orcamento := Value;   
end;                 

procedure TModelERPefd.Setsenhas_criptografadas(const Value: Boolean);   
begin                
  Fsenhas_criptografadas := Value;   
end;                 

procedure TModelERPefd.Setqtd_produtos_orcamento(const Value: Boolean);   
begin                
  Fqtd_produtos_orcamento := Value;   
end;                 

procedure TModelERPefd.Setqtd_servico_orcamento(const Value: Boolean);   
begin                
  Fqtd_servico_orcamento := Value;   
end;                 

procedure TModelERPefd.Setnumero_pag_orcamento(const Value: Boolean);   
begin                
  Fnumero_pag_orcamento := Value;   
end;                 

procedure TModelERPefd.Seticms2016(const Value: Boolean);   
begin                
  Ficms2016 := Value;   
end;                 

procedure TModelERPefd.Setplano_conta_13digitos(const Value: Boolean);   
begin                
  Fplano_conta_13digitos := Value;   
end;                 

procedure TModelERPefd.Setconsulta_produto_especifico(const Value: Boolean);   
begin                
  Fconsulta_produto_especifico := Value;   
end;                 

procedure TModelERPefd.Setreducao_nfe(const Value: Boolean);   
begin                
  Freducao_nfe := Value;   
end;                 

procedure TModelERPefd.Setinforma_venda_em_aberto(const Value: Boolean);   
begin                
  Finforma_venda_em_aberto := Value;   
end;                 

procedure TModelERPefd.Setconversao_sped_simples_nacional(const Value: Boolean);   
begin                
  Fconversao_sped_simples_nacional := Value;   
end;                 

procedure TModelERPefd.Setvisualizar_vendas(const Value: Boolean);   
begin                
  Fvisualizar_vendas := Value;   
end;                 

procedure TModelERPefd.Setacrescimo_frete(const Value: Boolean);   
begin                
  Facrescimo_frete := Value;   
end;                 

procedure TModelERPefd.Setpasta_retorno(const Value: Boolean);   
begin                
  Fpasta_retorno := Value;   
end;                 

procedure TModelERPefd.Setdata_hora_nfe(const Value: Boolean);   
begin                
  Fdata_hora_nfe := Value;   
end;                 

procedure TModelERPefd.Setemail_nfe(const Value: Boolean);   
begin                
  Femail_nfe := Value;   
end;                 

procedure TModelERPefd.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPefd.Setorcamento_peso_bruto(const Value: Boolean);   
begin                
  Forcamento_peso_bruto := Value;   
end;                 

procedure TModelERPefd.Setmensagem_carne(const Value: Boolean);   
begin                
  Fmensagem_carne := Value;   
end;                 

procedure TModelERPefd.Setbanco_contas_fixas(const Value: Boolean);   
begin                
  Fbanco_contas_fixas := Value;   
end;                 

procedure TModelERPefd.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPefd.Setjuros_mes(const Value: Boolean);   
begin                
  Fjuros_mes := Value;   
end;                 

procedure TModelERPefd.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPefd.Setcte(const Value: Boolean);   
begin                
  Fcte := Value;   
end;                 

procedure TModelERPefd.Setsimples_subst(const Value: Boolean);   
begin                
  Fsimples_subst := Value;   
end;                 

procedure TModelERPefd.Setcta_contas_fixas(const Value: Boolean);   
begin                
  Fcta_contas_fixas := Value;   
end;                 

procedure TModelERPefd.Setseq_lote(const Value: Boolean);   
begin                
  Fseq_lote := Value;   
end;                 

procedure TModelERPefd.Setnumero_filial(const Value: Boolean);   
begin                
  Fnumero_filial := Value;   
end;                 

procedure TModelERPefd.Setdata_base_matriz(const Value: Boolean);   
begin                
  Fdata_base_matriz := Value;   
end;                 

procedure TModelERPefd.Setfilial_documentos(const Value: Boolean);   
begin                
  Ffilial_documentos := Value;   
end;                 

procedure TModelERPefd.Setcta_vendacredito_cliente(const Value: Boolean);   
begin                
  Fcta_vendacredito_cliente := Value;   
end;                 

procedure TModelERPefd.Setcta_geracaocredito_cliente(const Value: Boolean);   
begin                
  Fcta_geracaocredito_cliente := Value;   
end;                 

procedure TModelERPefd.Setcta_recebimento_duplicata_credito_cliente(const Value: Boolean);   
begin                
  Fcta_recebimento_duplicata_credito_cliente := Value;   
end;                 

procedure TModelERPefd.Setcta_estorno_credito_cliente(const Value: Boolean);   
begin                
  Fcta_estorno_credito_cliente := Value;   
end;                 

procedure TModelERPefd.Settimezone(const Value: Boolean);   
begin                
  Ftimezone := Value;   
end;                 

procedure TModelERPefd.Settimezone_utc(const Value: Boolean);   
begin                
  Ftimezone_utc := Value;   
end;                 


end.
