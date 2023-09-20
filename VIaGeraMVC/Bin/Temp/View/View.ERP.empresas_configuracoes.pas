
unit View.ERP.empresas_compra;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_compra, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresascompra = class(TForm) 
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
    FController : TControllerERPempresascompra; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setconsulta_estoque(const Value : WideString);
    procedure Setinformar_mes_contas_fixas(const Value : Boolean);
    procedure Setverificar_ociosidade_maquina(const Value : Boolean);
    procedure Settempo_ociosidade(const Value : indefinido);
    procedure Setcst_conversao_sped_tributado(const Value : WideString);
    procedure Setcst_conversao_sped_isento(const Value : WideString);
    procedure Setcst_conversao_sped_tributado_simples(const Value : WideString);
    procedure Setcst_conversao_sped_isento_simples(const Value : WideString);
    procedure Setvisualizar_historico_os(const Value : Boolean);
    procedure Setconverter_cst090_cfop5102(const Value : Boolean);
    procedure Setcst_conversao(const Value : WideString);
    procedure Setcst_conversao_com_cfop6102(const Value : WideString);
    procedure Setconverter_cst090_cfop6102(const Value : Boolean);
    procedure Setcliente_limite(const Value : Double);
    procedure Setcliente_tipo(const Value : WideString);
    procedure Setmenu_estilo(const Value : Integer);
    procedure Setmenu_esquema(const Value : Integer);
    procedure Setmenu_acentuado(const Value : Integer);
    procedure Setultnsubusc(const Value : WideString);
    procedure Setcod_uf(const Value : Integer);
    procedure Setordemcte(const Value : WideString);
    procedure Setpercentual_minimo_entrada(const Value : Double);
    procedure Setimg_relatorio(const Value : indefinido);
    procedure Setimg_fundo_relatorio(const Value : indefinido);
    procedure Setimg_cliente(const Value : indefinido);
    procedure Setbackup_bancos(const Value : indefinido);
    procedure Setdata_manutencao(const Value : TDateTime);
    procedure Setmanutencao_automatica(const Value : Boolean);
    procedure Setmanutencao_pendente(const Value : Boolean);
    procedure Setmanutencao_intervalo(const Value : indefinido);
    procedure Setabrir_plano_contas(const Value : Boolean);
    procedure Setcst_conversao_sped_tributado101e102(const Value : WideString);
    procedure Setcst_conversao_sped_isento203e400(const Value : WideString);
    procedure Setvalidacao_prevenda(const Value : Boolean);
    procedure Setcomplemento_icms(const Value : Double);
    procedure Setval_rel_venda(const Value : Boolean);
    procedure Setpnl_pesquisa(const Value : WideString);
    procedure Setpnl_fonte(const Value : Integer);
    procedure Setpnl_negrito(const Value : Boolean);
    procedure Setcbmarca(const Value : Integer);
    procedure Setchbmarca(const Value : Boolean);
    procedure Setcblocalizacao(const Value : Integer);
    procedure Setchblocalizacao(const Value : Boolean);
    procedure Setcbean(const Value : Integer);
    procedure Setchbean(const Value : Boolean);
    procedure Setcbreferencia(const Value : Integer);
    procedure Setchbreferencia(const Value : Boolean);
    procedure Setcbfabricante(const Value : Integer);
    procedure Setchbfabricante(const Value : Boolean);
    procedure Setcbmarca_modelo(const Value : Integer);
    procedure Setchbmarca_modelo(const Value : Boolean);
    procedure Setpre_venda_inc_qtd(const Value : Boolean);
    procedure Setdesconto_formacao(const Value : Double);
    procedure Setsel_prod(const Value : Boolean);
    procedure Setid_caixa_sangria(const Value : Integer);
    procedure Setmdfe(const Value : Integer);
    procedure Setimpr_cotr(const Value : Boolean);
    procedure Setintervalo(const Value : Integer);
    procedure Setalt_uni(const Value : Boolean);
    procedure Setfinaliza(const Value : Boolean);
    procedure Setbalanco(const Value : Boolean);
    procedure Setsize_relatorio(const Value : indefinido);
    procedure Setsize_fundo_relatorio(const Value : indefinido);
    procedure Setsize_cliente(const Value : indefinido);
    procedure Setcom_vista(const Value : Double);
    procedure Setcom_prazo(const Value : Double);
    procedure Setcontrole_validade(const Value : Boolean);
    procedure Setcontrole_lote(const Value : Boolean);
    procedure Setalerta_validade(const Value : indefinido);
    procedure Setcad_rural(const Value : Boolean);
    procedure Setdata_contabil(const Value : Boolean);
    procedure Setorcamento(const Value : indefinido);
    procedure Setimprimir_cobraca(const Value : Boolean);
    procedure Setdetalhe_produto_entrada_nota(const Value : Boolean);
    procedure Setcbdata_compra(const Value : Integer);
    procedure Setchbdata_compra(const Value : Boolean);
    procedure Setrecebe_forma(const Value : Integer);
    procedure Setomitir_dup(const Value : Boolean);
    procedure Setaliquota_sem_calculo(const Value : Boolean);
    procedure Setqtd_alerta_estque_minimo(const Value : Integer);
    procedure Settipo(const Value : WideString);
    procedure Setnovo_metodo_desconto(const Value : Boolean);
    procedure Setutilizar_limite_valor_nfenfce_para_usuario(const Value : Boolean);
    procedure Setvalidade_orcamento(const Value : Integer);
    procedure Setcontas_fixas_multiplos_clientes_mesmo_lote(const Value : Boolean);
    procedure Setultimo_nsu_incluido(const Value : WideString);
    procedure Setcodigo_ean(const Value : Boolean);
    procedure Setreferencia(const Value : Boolean);
    procedure Setcodigo_fabricante(const Value : Boolean);
    procedure Setimei(const Value : Boolean);
    procedure Setchbestoque_bonificacao(const Value : Boolean);
    procedure Setcbestoque_bonificacao(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property consulta_estoque : WideString         read Fconsulta_estoque    write Fconsulta_estoque;
    property informar_mes_contas_fixas : Boolean         read Finformar_mes_contas_fixas    write Finformar_mes_contas_fixas;
    property verificar_ociosidade_maquina : Boolean         read Fverificar_ociosidade_maquina    write Fverificar_ociosidade_maquina;
    property tempo_ociosidade : indefinido         read Ftempo_ociosidade    write Ftempo_ociosidade;
    property cst_conversao_sped_tributado : WideString         read Fcst_conversao_sped_tributado    write Fcst_conversao_sped_tributado;
    property cst_conversao_sped_isento : WideString         read Fcst_conversao_sped_isento    write Fcst_conversao_sped_isento;
    property cst_conversao_sped_tributado_simples : WideString         read Fcst_conversao_sped_tributado_simples    write Fcst_conversao_sped_tributado_simples;
    property cst_conversao_sped_isento_simples : WideString         read Fcst_conversao_sped_isento_simples    write Fcst_conversao_sped_isento_simples;
    property visualizar_historico_os : Boolean         read Fvisualizar_historico_os    write Fvisualizar_historico_os;
    property converter_cst090_cfop5102 : Boolean         read Fconverter_cst090_cfop5102    write Fconverter_cst090_cfop5102;
    property cst_conversao : WideString         read Fcst_conversao    write Fcst_conversao;
    property cst_conversao_com_cfop6102 : WideString         read Fcst_conversao_com_cfop6102    write Fcst_conversao_com_cfop6102;
    property converter_cst090_cfop6102 : Boolean         read Fconverter_cst090_cfop6102    write Fconverter_cst090_cfop6102;
    property cliente_limite : Double         read Fcliente_limite    write Fcliente_limite;
    property cliente_tipo : WideString         read Fcliente_tipo    write Fcliente_tipo;
    property menu_estilo : Integer         read Fmenu_estilo    write Fmenu_estilo;
    property menu_esquema : Integer         read Fmenu_esquema    write Fmenu_esquema;
    property menu_acentuado : Integer         read Fmenu_acentuado    write Fmenu_acentuado;
    property ultnsubusc : WideString         read Fultnsubusc    write Fultnsubusc;
    property cod_uf : Integer         read Fcod_uf    write Fcod_uf;
    property ordemcte : WideString         read Fordemcte    write Fordemcte;
    property percentual_minimo_entrada : Double         read Fpercentual_minimo_entrada    write Fpercentual_minimo_entrada;
    property img_relatorio : indefinido         read Fimg_relatorio    write Fimg_relatorio;
    property img_fundo_relatorio : indefinido         read Fimg_fundo_relatorio    write Fimg_fundo_relatorio;
    property img_cliente : indefinido         read Fimg_cliente    write Fimg_cliente;
    property backup_bancos : indefinido         read Fbackup_bancos    write Fbackup_bancos;
    property data_manutencao : TDateTime         read Fdata_manutencao    write Fdata_manutencao;
    property manutencao_automatica : Boolean         read Fmanutencao_automatica    write Fmanutencao_automatica;
    property manutencao_pendente : Boolean         read Fmanutencao_pendente    write Fmanutencao_pendente;
    property manutencao_intervalo : indefinido         read Fmanutencao_intervalo    write Fmanutencao_intervalo;
    property abrir_plano_contas : Boolean         read Fabrir_plano_contas    write Fabrir_plano_contas;
    property cst_conversao_sped_tributado101e102 : WideString         read Fcst_conversao_sped_tributado101e102    write Fcst_conversao_sped_tributado101e102;
    property cst_conversao_sped_isento203e400 : WideString         read Fcst_conversao_sped_isento203e400    write Fcst_conversao_sped_isento203e400;
    property validacao_prevenda : Boolean         read Fvalidacao_prevenda    write Fvalidacao_prevenda;
    property complemento_icms : Double         read Fcomplemento_icms    write Fcomplemento_icms;
    property val_rel_venda : Boolean         read Fval_rel_venda    write Fval_rel_venda;
    property pnl_pesquisa : WideString         read Fpnl_pesquisa    write Fpnl_pesquisa;
    property pnl_fonte : Integer         read Fpnl_fonte    write Fpnl_fonte;
    property pnl_negrito : Boolean         read Fpnl_negrito    write Fpnl_negrito;
    property cbmarca : Integer         read Fcbmarca    write Fcbmarca;
    property chbmarca : Boolean         read Fchbmarca    write Fchbmarca;
    property cblocalizacao : Integer         read Fcblocalizacao    write Fcblocalizacao;
    property chblocalizacao : Boolean         read Fchblocalizacao    write Fchblocalizacao;
    property cbean : Integer         read Fcbean    write Fcbean;
    property chbean : Boolean         read Fchbean    write Fchbean;
    property cbreferencia : Integer         read Fcbreferencia    write Fcbreferencia;
    property chbreferencia : Boolean         read Fchbreferencia    write Fchbreferencia;
    property cbfabricante : Integer         read Fcbfabricante    write Fcbfabricante;
    property chbfabricante : Boolean         read Fchbfabricante    write Fchbfabricante;
    property cbmarca_modelo : Integer         read Fcbmarca_modelo    write Fcbmarca_modelo;
    property chbmarca_modelo : Boolean         read Fchbmarca_modelo    write Fchbmarca_modelo;
    property pre_venda_inc_qtd : Boolean         read Fpre_venda_inc_qtd    write Fpre_venda_inc_qtd;
    property desconto_formacao : Double         read Fdesconto_formacao    write Fdesconto_formacao;
    property sel_prod : Boolean         read Fsel_prod    write Fsel_prod;
    property id_caixa_sangria : Integer         read Fid_caixa_sangria    write Fid_caixa_sangria;
    property mdfe : Integer         read Fmdfe    write Fmdfe;
    property impr_cotr : Boolean         read Fimpr_cotr    write Fimpr_cotr;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property alt_uni : Boolean         read Falt_uni    write Falt_uni;
    property finaliza : Boolean         read Ffinaliza    write Ffinaliza;
    property balanco : Boolean         read Fbalanco    write Fbalanco;
    property size_relatorio : indefinido         read Fsize_relatorio    write Fsize_relatorio;
    property size_fundo_relatorio : indefinido         read Fsize_fundo_relatorio    write Fsize_fundo_relatorio;
    property size_cliente : indefinido         read Fsize_cliente    write Fsize_cliente;
    property com_vista : Double         read Fcom_vista    write Fcom_vista;
    property com_prazo : Double         read Fcom_prazo    write Fcom_prazo;
    property controle_validade : Boolean         read Fcontrole_validade    write Fcontrole_validade;
    property controle_lote : Boolean         read Fcontrole_lote    write Fcontrole_lote;
    property alerta_validade : indefinido         read Falerta_validade    write Falerta_validade;
    property cad_rural : Boolean         read Fcad_rural    write Fcad_rural;
    property data_contabil : Boolean         read Fdata_contabil    write Fdata_contabil;
    property orcamento : indefinido         read Forcamento    write Forcamento;
    property imprimir_cobraca : Boolean         read Fimprimir_cobraca    write Fimprimir_cobraca;
    property detalhe_produto_entrada_nota : Boolean         read Fdetalhe_produto_entrada_nota    write Fdetalhe_produto_entrada_nota;
    property cbdata_compra : Integer         read Fcbdata_compra    write Fcbdata_compra;
    property chbdata_compra : Boolean         read Fchbdata_compra    write Fchbdata_compra;
    property recebe_forma : Integer         read Frecebe_forma    write Frecebe_forma;
    property omitir_dup : Boolean         read Fomitir_dup    write Fomitir_dup;
    property aliquota_sem_calculo : Boolean         read Faliquota_sem_calculo    write Faliquota_sem_calculo;
    property qtd_alerta_estque_minimo : Integer         read Fqtd_alerta_estque_minimo    write Fqtd_alerta_estque_minimo;
    property tipo : WideString         read Ftipo    write Ftipo;
    property novo_metodo_desconto : Boolean         read Fnovo_metodo_desconto    write Fnovo_metodo_desconto;
    property utilizar_limite_valor_nfenfce_para_usuario : Boolean         read Futilizar_limite_valor_nfenfce_para_usuario    write Futilizar_limite_valor_nfenfce_para_usuario;
    property validade_orcamento : Integer         read Fvalidade_orcamento    write Fvalidade_orcamento;
    property contas_fixas_multiplos_clientes_mesmo_lote : Boolean         read Fcontas_fixas_multiplos_clientes_mesmo_lote    write Fcontas_fixas_multiplos_clientes_mesmo_lote;
    property ultimo_nsu_incluido : WideString         read Fultimo_nsu_incluido    write Fultimo_nsu_incluido;
    property codigo_ean : Boolean         read Fcodigo_ean    write Fcodigo_ean;
    property referencia : Boolean         read Freferencia    write Freferencia;
    property codigo_fabricante : Boolean         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property imei : Boolean         read Fimei    write Fimei;
    property chbestoque_bonificacao : Boolean         read Fchbestoque_bonificacao    write Fchbestoque_bonificacao;
    property cbestoque_bonificacao : Integer         read Fcbestoque_bonificacao    write Fcbestoque_bonificacao;

  end;

var
  Frm_ViewERPempresascompra : TFrm_ViewERPempresascompra; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 94; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consulta_estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].informar_mes_contas_fixas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].verificar_ociosidade_maquina); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo_ociosidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_tributado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_isento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_tributado_simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_isento_simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].visualizar_historico_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].converter_cst090_cfop5102); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_com_cfop6102); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].converter_cst090_cfop6102); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente_limite); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente_tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].menu_estilo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].menu_esquema); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].menu_acentuado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ultnsubusc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ordemcte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_minimo_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].img_relatorio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].img_fundo_relatorio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].img_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].backup_bancos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_manutencao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].manutencao_automatica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].manutencao_pendente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].manutencao_intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].abrir_plano_contas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_tributado101e102); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_conversao_sped_isento203e400); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validacao_prevenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].complemento_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].val_rel_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pnl_pesquisa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pnl_fonte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pnl_negrito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbmarca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbmarca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cblocalizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chblocalizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbreferencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbreferencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbfabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbfabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbmarca_modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbmarca_modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pre_venda_inc_qtd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_formacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sel_prod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa_sangria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mdfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impr_cotr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alt_uni); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].finaliza); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].size_relatorio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].size_fundo_relatorio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].size_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].com_vista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].com_prazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle_validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alerta_validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cad_rural); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_contabil); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_cobraca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].detalhe_produto_entrada_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbdata_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbdata_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].recebe_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].omitir_dup); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliquota_sem_calculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_alerta_estque_minimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].novo_metodo_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].utilizar_limite_valor_nfenfce_para_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validade_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contas_fixas_multiplos_clientes_mesmo_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ultimo_nsu_incluido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imei); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chbestoque_bonificacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cbestoque_bonificacao); 
    end; 
end; 

procedure TFrm_ViewERPempresascompra.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.consulta_estoque := Edit_consulta_estoque.text;
      FController.Model.informar_mes_contas_fixas := Edit_informar_mes_contas_fixas.text;
      FController.Model.verificar_ociosidade_maquina := Edit_verificar_ociosidade_maquina.text;
      FController.Model.tempo_ociosidade := Edit_tempo_ociosidade.text;
      FController.Model.cst_conversao_sped_tributado := Edit_cst_conversao_sped_tributado.text;
      FController.Model.cst_conversao_sped_isento := Edit_cst_conversao_sped_isento.text;
      FController.Model.cst_conversao_sped_tributado_simples := Edit_cst_conversao_sped_tributado_simples.text;
      FController.Model.cst_conversao_sped_isento_simples := Edit_cst_conversao_sped_isento_simples.text;
      FController.Model.visualizar_historico_os := Edit_visualizar_historico_os.text;
      FController.Model.converter_cst090_cfop5102 := Edit_converter_cst090_cfop5102.text;
      FController.Model.cst_conversao := Edit_cst_conversao.text;
      FController.Model.cst_conversao_com_cfop6102 := Edit_cst_conversao_com_cfop6102.text;
      FController.Model.converter_cst090_cfop6102 := Edit_converter_cst090_cfop6102.text;
      FController.Model.cliente_limite := Edit_cliente_limite.text;
      FController.Model.cliente_tipo := Edit_cliente_tipo.text;
      FController.Model.menu_estilo := Edit_menu_estilo.text;
      FController.Model.menu_esquema := Edit_menu_esquema.text;
      FController.Model.menu_acentuado := Edit_menu_acentuado.text;
      FController.Model.ultnsubusc := Edit_ultnsubusc.text;
      FController.Model.cod_uf := Edit_cod_uf.text;
      FController.Model.ordemcte := Edit_ordemcte.text;
      FController.Model.percentual_minimo_entrada := Edit_percentual_minimo_entrada.text;
      FController.Model.img_relatorio := Edit_img_relatorio.text;
      FController.Model.img_fundo_relatorio := Edit_img_fundo_relatorio.text;
      FController.Model.img_cliente := Edit_img_cliente.text;
      FController.Model.backup_bancos := Edit_backup_bancos.text;
      FController.Model.data_manutencao := Edit_data_manutencao.text;
      FController.Model.manutencao_automatica := Edit_manutencao_automatica.text;
      FController.Model.manutencao_pendente := Edit_manutencao_pendente.text;
      FController.Model.manutencao_intervalo := Edit_manutencao_intervalo.text;
      FController.Model.abrir_plano_contas := Edit_abrir_plano_contas.text;
      FController.Model.cst_conversao_sped_tributado101e102 := Edit_cst_conversao_sped_tributado101e102.text;
      FController.Model.cst_conversao_sped_isento203e400 := Edit_cst_conversao_sped_isento203e400.text;
      FController.Model.validacao_prevenda := Edit_validacao_prevenda.text;
      FController.Model.complemento_icms := Edit_complemento_icms.text;
      FController.Model.val_rel_venda := Edit_val_rel_venda.text;
      FController.Model.pnl_pesquisa := Edit_pnl_pesquisa.text;
      FController.Model.pnl_fonte := Edit_pnl_fonte.text;
      FController.Model.pnl_negrito := Edit_pnl_negrito.text;
      FController.Model.cbmarca := Edit_cbmarca.text;
      FController.Model.chbmarca := Edit_chbmarca.text;
      FController.Model.cblocalizacao := Edit_cblocalizacao.text;
      FController.Model.chblocalizacao := Edit_chblocalizacao.text;
      FController.Model.cbean := Edit_cbean.text;
      FController.Model.chbean := Edit_chbean.text;
      FController.Model.cbreferencia := Edit_cbreferencia.text;
      FController.Model.chbreferencia := Edit_chbreferencia.text;
      FController.Model.cbfabricante := Edit_cbfabricante.text;
      FController.Model.chbfabricante := Edit_chbfabricante.text;
      FController.Model.cbmarca_modelo := Edit_cbmarca_modelo.text;
      FController.Model.chbmarca_modelo := Edit_chbmarca_modelo.text;
      FController.Model.pre_venda_inc_qtd := Edit_pre_venda_inc_qtd.text;
      FController.Model.desconto_formacao := Edit_desconto_formacao.text;
      FController.Model.sel_prod := Edit_sel_prod.text;
      FController.Model.id_caixa_sangria := Edit_id_caixa_sangria.text;
      FController.Model.mdfe := Edit_mdfe.text;
      FController.Model.impr_cotr := Edit_impr_cotr.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.alt_uni := Edit_alt_uni.text;
      FController.Model.finaliza := Edit_finaliza.text;
      FController.Model.balanco := Edit_balanco.text;
      FController.Model.size_relatorio := Edit_size_relatorio.text;
      FController.Model.size_fundo_relatorio := Edit_size_fundo_relatorio.text;
      FController.Model.size_cliente := Edit_size_cliente.text;
      FController.Model.com_vista := Edit_com_vista.text;
      FController.Model.com_prazo := Edit_com_prazo.text;
      FController.Model.controle_validade := Edit_controle_validade.text;
      FController.Model.controle_lote := Edit_controle_lote.text;
      FController.Model.alerta_validade := Edit_alerta_validade.text;
      FController.Model.cad_rural := Edit_cad_rural.text;
      FController.Model.data_contabil := Edit_data_contabil.text;
      FController.Model.orcamento := Edit_orcamento.text;
      FController.Model.imprimir_cobraca := Edit_imprimir_cobraca.text;
      FController.Model.detalhe_produto_entrada_nota := Edit_detalhe_produto_entrada_nota.text;
      FController.Model.cbdata_compra := Edit_cbdata_compra.text;
      FController.Model.chbdata_compra := Edit_chbdata_compra.text;
      FController.Model.recebe_forma := Edit_recebe_forma.text;
      FController.Model.omitir_dup := Edit_omitir_dup.text;
      FController.Model.aliquota_sem_calculo := Edit_aliquota_sem_calculo.text;
      FController.Model.qtd_alerta_estque_minimo := Edit_qtd_alerta_estque_minimo.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.novo_metodo_desconto := Edit_novo_metodo_desconto.text;
      FController.Model.utilizar_limite_valor_nfenfce_para_usuario := Edit_utilizar_limite_valor_nfenfce_para_usuario.text;
      FController.Model.validade_orcamento := Edit_validade_orcamento.text;
      FController.Model.contas_fixas_multiplos_clientes_mesmo_lote := Edit_contas_fixas_multiplos_clientes_mesmo_lote.text;
      FController.Model.ultimo_nsu_incluido := Edit_ultimo_nsu_incluido.text;
      FController.Model.codigo_ean := Edit_codigo_ean.text;
      FController.Model.referencia := Edit_referencia.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.imei := Edit_imei.text;
      FController.Model.chbestoque_bonificacao := Edit_chbestoque_bonificacao.text;
      FController.Model.cbestoque_bonificacao := Edit_cbestoque_bonificacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresascompra.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresascompra.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresascompra.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresascompra.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresascompra.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresascompra.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresascompra.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 94;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := consulta_estoque;  
     Grid.Cells[inttostr(i),0] := informar_mes_contas_fixas;  
     Grid.Cells[inttostr(i),0] := verificar_ociosidade_maquina;  
     Grid.Cells[inttostr(i),0] := tempo_ociosidade;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_tributado;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_isento;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_tributado_simples;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_isento_simples;  
     Grid.Cells[inttostr(i),0] := visualizar_historico_os;  
     Grid.Cells[inttostr(i),0] := converter_cst090_cfop5102;  
     Grid.Cells[inttostr(i),0] := cst_conversao;  
     Grid.Cells[inttostr(i),0] := cst_conversao_com_cfop6102;  
     Grid.Cells[inttostr(i),0] := converter_cst090_cfop6102;  
     Grid.Cells[inttostr(i),0] := cliente_limite;  
     Grid.Cells[inttostr(i),0] := cliente_tipo;  
     Grid.Cells[inttostr(i),0] := menu_estilo;  
     Grid.Cells[inttostr(i),0] := menu_esquema;  
     Grid.Cells[inttostr(i),0] := menu_acentuado;  
     Grid.Cells[inttostr(i),0] := ultnsubusc;  
     Grid.Cells[inttostr(i),0] := cod_uf;  
     Grid.Cells[inttostr(i),0] := ordemcte;  
     Grid.Cells[inttostr(i),0] := percentual_minimo_entrada;  
     Grid.Cells[inttostr(i),0] := img_relatorio;  
     Grid.Cells[inttostr(i),0] := img_fundo_relatorio;  
     Grid.Cells[inttostr(i),0] := img_cliente;  
     Grid.Cells[inttostr(i),0] := backup_bancos;  
     Grid.Cells[inttostr(i),0] := data_manutencao;  
     Grid.Cells[inttostr(i),0] := manutencao_automatica;  
     Grid.Cells[inttostr(i),0] := manutencao_pendente;  
     Grid.Cells[inttostr(i),0] := manutencao_intervalo;  
     Grid.Cells[inttostr(i),0] := abrir_plano_contas;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_tributado101e102;  
     Grid.Cells[inttostr(i),0] := cst_conversao_sped_isento203e400;  
     Grid.Cells[inttostr(i),0] := validacao_prevenda;  
     Grid.Cells[inttostr(i),0] := complemento_icms;  
     Grid.Cells[inttostr(i),0] := val_rel_venda;  
     Grid.Cells[inttostr(i),0] := pnl_pesquisa;  
     Grid.Cells[inttostr(i),0] := pnl_fonte;  
     Grid.Cells[inttostr(i),0] := pnl_negrito;  
     Grid.Cells[inttostr(i),0] := cbmarca;  
     Grid.Cells[inttostr(i),0] := chbmarca;  
     Grid.Cells[inttostr(i),0] := cblocalizacao;  
     Grid.Cells[inttostr(i),0] := chblocalizacao;  
     Grid.Cells[inttostr(i),0] := cbean;  
     Grid.Cells[inttostr(i),0] := chbean;  
     Grid.Cells[inttostr(i),0] := cbreferencia;  
     Grid.Cells[inttostr(i),0] := chbreferencia;  
     Grid.Cells[inttostr(i),0] := cbfabricante;  
     Grid.Cells[inttostr(i),0] := chbfabricante;  
     Grid.Cells[inttostr(i),0] := cbmarca_modelo;  
     Grid.Cells[inttostr(i),0] := chbmarca_modelo;  
     Grid.Cells[inttostr(i),0] := pre_venda_inc_qtd;  
     Grid.Cells[inttostr(i),0] := desconto_formacao;  
     Grid.Cells[inttostr(i),0] := sel_prod;  
     Grid.Cells[inttostr(i),0] := id_caixa_sangria;  
     Grid.Cells[inttostr(i),0] := mdfe;  
     Grid.Cells[inttostr(i),0] := impr_cotr;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := alt_uni;  
     Grid.Cells[inttostr(i),0] := finaliza;  
     Grid.Cells[inttostr(i),0] := balanco;  
     Grid.Cells[inttostr(i),0] := size_relatorio;  
     Grid.Cells[inttostr(i),0] := size_fundo_relatorio;  
     Grid.Cells[inttostr(i),0] := size_cliente;  
     Grid.Cells[inttostr(i),0] := com_vista;  
     Grid.Cells[inttostr(i),0] := com_prazo;  
     Grid.Cells[inttostr(i),0] := controle_validade;  
     Grid.Cells[inttostr(i),0] := controle_lote;  
     Grid.Cells[inttostr(i),0] := alerta_validade;  
     Grid.Cells[inttostr(i),0] := cad_rural;  
     Grid.Cells[inttostr(i),0] := data_contabil;  
     Grid.Cells[inttostr(i),0] := orcamento;  
     Grid.Cells[inttostr(i),0] := imprimir_cobraca;  
     Grid.Cells[inttostr(i),0] := detalhe_produto_entrada_nota;  
     Grid.Cells[inttostr(i),0] := cbdata_compra;  
     Grid.Cells[inttostr(i),0] := chbdata_compra;  
     Grid.Cells[inttostr(i),0] := recebe_forma;  
     Grid.Cells[inttostr(i),0] := omitir_dup;  
     Grid.Cells[inttostr(i),0] := aliquota_sem_calculo;  
     Grid.Cells[inttostr(i),0] := qtd_alerta_estque_minimo;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := novo_metodo_desconto;  
     Grid.Cells[inttostr(i),0] := utilizar_limite_valor_nfenfce_para_usuario;  
     Grid.Cells[inttostr(i),0] := validade_orcamento;  
     Grid.Cells[inttostr(i),0] := contas_fixas_multiplos_clientes_mesmo_lote;  
     Grid.Cells[inttostr(i),0] := ultimo_nsu_incluido;  
     Grid.Cells[inttostr(i),0] := codigo_ean;  
     Grid.Cells[inttostr(i),0] := referencia;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := imei;  
     Grid.Cells[inttostr(i),0] := chbestoque_bonificacao;  
     Grid.Cells[inttostr(i),0] := cbestoque_bonificacao;  
end;

procedure TFrm_ViewERPempresascompra.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresascompra.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresascompra.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.consulta_estoque := Grid.Cells[2,Grid.row];
    FController.Model.informar_mes_contas_fixas := Grid.Cells[3,Grid.row];
    FController.Model.verificar_ociosidade_maquina := Grid.Cells[4,Grid.row];
    FController.Model.tempo_ociosidade := Grid.Cells[5,Grid.row];
    FController.Model.cst_conversao_sped_tributado := Grid.Cells[6,Grid.row];
    FController.Model.cst_conversao_sped_isento := Grid.Cells[7,Grid.row];
    FController.Model.cst_conversao_sped_tributado_simples := Grid.Cells[8,Grid.row];
    FController.Model.cst_conversao_sped_isento_simples := Grid.Cells[9,Grid.row];
    FController.Model.visualizar_historico_os := Grid.Cells[10,Grid.row];
    FController.Model.converter_cst090_cfop5102 := Grid.Cells[11,Grid.row];
    FController.Model.cst_conversao := Grid.Cells[12,Grid.row];
    FController.Model.cst_conversao_com_cfop6102 := Grid.Cells[13,Grid.row];
    FController.Model.converter_cst090_cfop6102 := Grid.Cells[14,Grid.row];
    FController.Model.cliente_limite := Grid.Cells[15,Grid.row];
    FController.Model.cliente_tipo := Grid.Cells[16,Grid.row];
    FController.Model.menu_estilo := Grid.Cells[17,Grid.row];
    FController.Model.menu_esquema := Grid.Cells[18,Grid.row];
    FController.Model.menu_acentuado := Grid.Cells[19,Grid.row];
    FController.Model.ultnsubusc := Grid.Cells[20,Grid.row];
    FController.Model.cod_uf := Grid.Cells[21,Grid.row];
    FController.Model.ordemcte := Grid.Cells[22,Grid.row];
    FController.Model.percentual_minimo_entrada := Grid.Cells[23,Grid.row];
    FController.Model.img_relatorio := Grid.Cells[24,Grid.row];
    FController.Model.img_fundo_relatorio := Grid.Cells[25,Grid.row];
    FController.Model.img_cliente := Grid.Cells[26,Grid.row];
    FController.Model.backup_bancos := Grid.Cells[27,Grid.row];
    FController.Model.data_manutencao := Grid.Cells[28,Grid.row];
    FController.Model.manutencao_automatica := Grid.Cells[29,Grid.row];
    FController.Model.manutencao_pendente := Grid.Cells[30,Grid.row];
    FController.Model.manutencao_intervalo := Grid.Cells[31,Grid.row];
    FController.Model.abrir_plano_contas := Grid.Cells[32,Grid.row];
    FController.Model.cst_conversao_sped_tributado101e102 := Grid.Cells[33,Grid.row];
    FController.Model.cst_conversao_sped_isento203e400 := Grid.Cells[34,Grid.row];
    FController.Model.validacao_prevenda := Grid.Cells[35,Grid.row];
    FController.Model.complemento_icms := Grid.Cells[36,Grid.row];
    FController.Model.val_rel_venda := Grid.Cells[37,Grid.row];
    FController.Model.pnl_pesquisa := Grid.Cells[38,Grid.row];
    FController.Model.pnl_fonte := Grid.Cells[39,Grid.row];
    FController.Model.pnl_negrito := Grid.Cells[40,Grid.row];
    FController.Model.cbmarca := Grid.Cells[41,Grid.row];
    FController.Model.chbmarca := Grid.Cells[42,Grid.row];
    FController.Model.cblocalizacao := Grid.Cells[43,Grid.row];
    FController.Model.chblocalizacao := Grid.Cells[44,Grid.row];
    FController.Model.cbean := Grid.Cells[45,Grid.row];
    FController.Model.chbean := Grid.Cells[46,Grid.row];
    FController.Model.cbreferencia := Grid.Cells[47,Grid.row];
    FController.Model.chbreferencia := Grid.Cells[48,Grid.row];
    FController.Model.cbfabricante := Grid.Cells[49,Grid.row];
    FController.Model.chbfabricante := Grid.Cells[50,Grid.row];
    FController.Model.cbmarca_modelo := Grid.Cells[51,Grid.row];
    FController.Model.chbmarca_modelo := Grid.Cells[52,Grid.row];
    FController.Model.pre_venda_inc_qtd := Grid.Cells[53,Grid.row];
    FController.Model.desconto_formacao := Grid.Cells[54,Grid.row];
    FController.Model.sel_prod := Grid.Cells[55,Grid.row];
    FController.Model.id_caixa_sangria := Grid.Cells[56,Grid.row];
    FController.Model.mdfe := Grid.Cells[57,Grid.row];
    FController.Model.impr_cotr := Grid.Cells[58,Grid.row];
    FController.Model.intervalo := Grid.Cells[59,Grid.row];
    FController.Model.alt_uni := Grid.Cells[60,Grid.row];
    FController.Model.finaliza := Grid.Cells[61,Grid.row];
    FController.Model.balanco := Grid.Cells[62,Grid.row];
    FController.Model.size_relatorio := Grid.Cells[63,Grid.row];
    FController.Model.size_fundo_relatorio := Grid.Cells[64,Grid.row];
    FController.Model.size_cliente := Grid.Cells[65,Grid.row];
    FController.Model.com_vista := Grid.Cells[66,Grid.row];
    FController.Model.com_prazo := Grid.Cells[67,Grid.row];
    FController.Model.controle_validade := Grid.Cells[68,Grid.row];
    FController.Model.controle_lote := Grid.Cells[69,Grid.row];
    FController.Model.alerta_validade := Grid.Cells[70,Grid.row];
    FController.Model.cad_rural := Grid.Cells[71,Grid.row];
    FController.Model.data_contabil := Grid.Cells[72,Grid.row];
    FController.Model.orcamento := Grid.Cells[73,Grid.row];
    FController.Model.imprimir_cobraca := Grid.Cells[74,Grid.row];
    FController.Model.detalhe_produto_entrada_nota := Grid.Cells[75,Grid.row];
    FController.Model.cbdata_compra := Grid.Cells[76,Grid.row];
    FController.Model.chbdata_compra := Grid.Cells[77,Grid.row];
    FController.Model.recebe_forma := Grid.Cells[78,Grid.row];
    FController.Model.omitir_dup := Grid.Cells[79,Grid.row];
    FController.Model.aliquota_sem_calculo := Grid.Cells[80,Grid.row];
    FController.Model.qtd_alerta_estque_minimo := Grid.Cells[81,Grid.row];
    FController.Model.tipo := Grid.Cells[82,Grid.row];
    FController.Model.novo_metodo_desconto := Grid.Cells[83,Grid.row];
    FController.Model.utilizar_limite_valor_nfenfce_para_usuario := Grid.Cells[84,Grid.row];
    FController.Model.validade_orcamento := Grid.Cells[85,Grid.row];
    FController.Model.contas_fixas_multiplos_clientes_mesmo_lote := Grid.Cells[86,Grid.row];
    FController.Model.ultimo_nsu_incluido := Grid.Cells[87,Grid.row];
    FController.Model.codigo_ean := Grid.Cells[88,Grid.row];
    FController.Model.referencia := Grid.Cells[89,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[90,Grid.row];
    FController.Model.imei := Grid.Cells[91,Grid.row];
    FController.Model.chbestoque_bonificacao := Grid.Cells[92,Grid.row];
    FController.Model.cbestoque_bonificacao := Grid.Cells[93,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresascompra.LimparTela;  
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

procedure TFrm_ViewERPempresascompra.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setconsulta_estoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setinformar_mes_contas_fixas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setverificar_ociosidade_maquina(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Settempo_ociosidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_tributado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_isento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_tributado_simples(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_isento_simples(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setvisualizar_historico_os(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setconverter_cst090_cfop5102(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_com_cfop6102(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setconverter_cst090_cfop6102(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcliente_limite(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcliente_tipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmenu_estilo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmenu_esquema(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmenu_acentuado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setultnsubusc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcod_uf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setordemcte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setpercentual_minimo_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimg_relatorio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimg_fundo_relatorio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimg_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setbackup_bancos(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setdata_manutencao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmanutencao_automatica(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmanutencao_pendente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmanutencao_intervalo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setabrir_plano_contas(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_tributado101e102(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcst_conversao_sped_isento203e400(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setvalidacao_prevenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcomplemento_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setval_rel_venda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setpnl_pesquisa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setpnl_fonte(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setpnl_negrito(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbmarca(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbmarca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcblocalizacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchblocalizacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbean(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbean(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbreferencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbreferencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbfabricante(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbfabricante(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbmarca_modelo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbmarca_modelo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setpre_venda_inc_qtd(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setdesconto_formacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setsel_prod(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setid_caixa_sangria(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setmdfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimpr_cotr(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setalt_uni(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setfinaliza(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setbalanco(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setsize_relatorio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setsize_fundo_relatorio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setsize_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcom_vista(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcom_prazo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcontrole_validade(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcontrole_lote(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setalerta_validade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcad_rural(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setdata_contabil(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setorcamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimprimir_cobraca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setdetalhe_produto_entrada_nota(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbdata_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbdata_compra(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setrecebe_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setomitir_dup(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setaliquota_sem_calculo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setqtd_alerta_estque_minimo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setnovo_metodo_desconto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setutilizar_limite_valor_nfenfce_para_usuario(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setvalidade_orcamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcontas_fixas_multiplos_clientes_mesmo_lote(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setultimo_nsu_incluido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcodigo_ean(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setreferencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcodigo_fabricante(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setimei(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setchbestoque_bonificacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresascompra.Setcbestoque_bonificacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
