
unit View.ERP.conta_pagar_parceiros;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_pagar_parceiros, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontapagarparceiros = class(TForm) 
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
    FController : TControllerERPcontapagarparceiros; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_pgto : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fnota : WideString;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_forma : Integer;
    Fid_cobrador : Integer;
    Fid_vendedor : Integer;
    Fid_caixa : Integer;
    Fid_conta : WideString;
    Ftx_juros : Double;
    Fvl_juros : Double;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_divida : Double;
    Fvl_geral : Double;
    Fvl_jurospago : Double;
    Fsituacao : WideString;
    Fdata_entrega_cobrador : TDateTime;
    Fdata_prev_pgto : TDateTime;
    Fclick : Boolean;
    Fid_credito : Integer;
    Fcupom : Integer;
    Fnova_conta : WideString;
    Fid_custodia : Integer;
    Fid_usuario : Integer;
    Fobs : indefinido;
    Fdesdobramento : WideString;
    Fativo : WideString;
    Farq_boleto : WideString;
    Fid_uniao : Integer;
    Fid_locacao : Integer;
    Fprotesto : WideString;
    Fdata_protesto : TDateTime;
    Fvalor_protesto : Double;
    Fdesativada : WideString;
    Fvl_apagar : Double;
    Fdata_cobranca : TDateTime;
    Fcontato_cobranca : WideString;
    Fid_cobrador_cobranca : Integer;
    Fid_usuario_desconto : Integer;
    Fpercentual_usuario_desconto : Double;
    Ftaxa_bancaria : Double;
    Fcustodia : Boolean;
    Fid_empresas_boleto : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fidentifica_carteira : Integer;
    Fcodigo_protesto : Integer;
    Fdias_protesto : Integer;
    Fnfe : WideString;
    Fusuario_click : Integer;
    Fnfce : WideString;
    Fid_contacorrente : Integer;
    Fid_dependente : Integer;
    Fboleto_web : Integer;
    Fexcluido : Boolean;
    Fid_fixa : Integer;
    Fenviar_email : Boolean;
    Fdata_boleto_web : TDateTime;
    Focorrencia_bancaria : indefinido;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;
    Fmulta : Double;
    Fnosso_numero : WideString;
    Flancamento_credito_cliente : Boolean;
    Fpercentual_multa : Double;
    Fvl_multa_paga : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Setdata_pgto(const Value : TDateTime);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setnota(const Value : WideString);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_cobrador(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Settx_juros(const Value : Double);
    procedure Setvl_juros(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_divida(const Value : Double);
    procedure Setvl_geral(const Value : Double);
    procedure Setvl_jurospago(const Value : Double);
    procedure Setsituacao(const Value : WideString);
    procedure Setdata_entrega_cobrador(const Value : TDateTime);
    procedure Setdata_prev_pgto(const Value : TDateTime);
    procedure Setclick(const Value : Boolean);
    procedure Setid_credito(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setnova_conta(const Value : WideString);
    procedure Setid_custodia(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setdesdobramento(const Value : WideString);
    procedure Setativo(const Value : WideString);
    procedure Setarq_boleto(const Value : WideString);
    procedure Setid_uniao(const Value : Integer);
    procedure Setid_locacao(const Value : Integer);
    procedure Setprotesto(const Value : WideString);
    procedure Setdata_protesto(const Value : TDateTime);
    procedure Setvalor_protesto(const Value : Double);
    procedure Setdesativada(const Value : WideString);
    procedure Setvl_apagar(const Value : Double);
    procedure Setdata_cobranca(const Value : TDateTime);
    procedure Setcontato_cobranca(const Value : WideString);
    procedure Setid_cobrador_cobranca(const Value : Integer);
    procedure Setid_usuario_desconto(const Value : Integer);
    procedure Setpercentual_usuario_desconto(const Value : Double);
    procedure Settaxa_bancaria(const Value : Double);
    procedure Setcustodia(const Value : Boolean);
    procedure Setid_empresas_boleto(const Value : Integer);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setid_pagamentos(const Value : Integer);
    procedure Setidentifica_carteira(const Value : Integer);
    procedure Setcodigo_protesto(const Value : Integer);
    procedure Setdias_protesto(const Value : Integer);
    procedure Setnfe(const Value : WideString);
    procedure Setusuario_click(const Value : Integer);
    procedure Setnfce(const Value : WideString);
    procedure Setid_contacorrente(const Value : Integer);
    procedure Setid_dependente(const Value : Integer);
    procedure Setboleto_web(const Value : Integer);
    procedure Setexcluido(const Value : Boolean);
    procedure Setid_fixa(const Value : Integer);
    procedure Setenviar_email(const Value : Boolean);
    procedure Setdata_boleto_web(const Value : TDateTime);
    procedure Setocorrencia_bancaria(const Value : indefinido);
    procedure Setid_cliser(const Value : Integer);
    procedure Setfilial(const Value : WideString);
    procedure Setmatriz(const Value : WideString);
    procedure Setmulta(const Value : Double);
    procedure Setnosso_numero(const Value : WideString);
    procedure Setlancamento_credito_cliente(const Value : Boolean);
    procedure Setpercentual_multa(const Value : Double);
    procedure Setvl_multa_paga(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property data_pgto : TDateTime         read Fdata_pgto    write Fdata_pgto;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property nota : WideString         read Fnota    write Fnota;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_cobrador : Integer         read Fid_cobrador    write Fid_cobrador;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property tx_juros : Double         read Ftx_juros    write Ftx_juros;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_divida : Double         read Fvl_divida    write Fvl_divida;
    property vl_geral : Double         read Fvl_geral    write Fvl_geral;
    property vl_jurospago : Double         read Fvl_jurospago    write Fvl_jurospago;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property data_entrega_cobrador : TDateTime         read Fdata_entrega_cobrador    write Fdata_entrega_cobrador;
    property data_prev_pgto : TDateTime         read Fdata_prev_pgto    write Fdata_prev_pgto;
    property click : Boolean         read Fclick    write Fclick;
    property id_credito : Integer         read Fid_credito    write Fid_credito;
    property cupom : Integer         read Fcupom    write Fcupom;
    property nova_conta : WideString         read Fnova_conta    write Fnova_conta;
    property id_custodia : Integer         read Fid_custodia    write Fid_custodia;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property obs : indefinido         read Fobs    write Fobs;
    property desdobramento : WideString         read Fdesdobramento    write Fdesdobramento;
    property ativo : WideString         read Fativo    write Fativo;
    property arq_boleto : WideString         read Farq_boleto    write Farq_boleto;
    property id_uniao : Integer         read Fid_uniao    write Fid_uniao;
    property id_locacao : Integer         read Fid_locacao    write Fid_locacao;
    property protesto : WideString         read Fprotesto    write Fprotesto;
    property data_protesto : TDateTime         read Fdata_protesto    write Fdata_protesto;
    property valor_protesto : Double         read Fvalor_protesto    write Fvalor_protesto;
    property desativada : WideString         read Fdesativada    write Fdesativada;
    property vl_apagar : Double         read Fvl_apagar    write Fvl_apagar;
    property data_cobranca : TDateTime         read Fdata_cobranca    write Fdata_cobranca;
    property contato_cobranca : WideString         read Fcontato_cobranca    write Fcontato_cobranca;
    property id_cobrador_cobranca : Integer         read Fid_cobrador_cobranca    write Fid_cobrador_cobranca;
    property id_usuario_desconto : Integer         read Fid_usuario_desconto    write Fid_usuario_desconto;
    property percentual_usuario_desconto : Double         read Fpercentual_usuario_desconto    write Fpercentual_usuario_desconto;
    property taxa_bancaria : Double         read Ftaxa_bancaria    write Ftaxa_bancaria;
    property custodia : Boolean         read Fcustodia    write Fcustodia;
    property id_empresas_boleto : Integer         read Fid_empresas_boleto    write Fid_empresas_boleto;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property id_pagamentos : Integer         read Fid_pagamentos    write Fid_pagamentos;
    property identifica_carteira : Integer         read Fidentifica_carteira    write Fidentifica_carteira;
    property codigo_protesto : Integer         read Fcodigo_protesto    write Fcodigo_protesto;
    property dias_protesto : Integer         read Fdias_protesto    write Fdias_protesto;
    property nfe : WideString         read Fnfe    write Fnfe;
    property usuario_click : Integer         read Fusuario_click    write Fusuario_click;
    property nfce : WideString         read Fnfce    write Fnfce;
    property id_contacorrente : Integer         read Fid_contacorrente    write Fid_contacorrente;
    property id_dependente : Integer         read Fid_dependente    write Fid_dependente;
    property boleto_web : Integer         read Fboleto_web    write Fboleto_web;
    property excluido : Boolean         read Fexcluido    write Fexcluido;
    property id_fixa : Integer         read Fid_fixa    write Fid_fixa;
    property enviar_email : Boolean         read Fenviar_email    write Fenviar_email;
    property data_boleto_web : TDateTime         read Fdata_boleto_web    write Fdata_boleto_web;
    property ocorrencia_bancaria : indefinido         read Focorrencia_bancaria    write Focorrencia_bancaria;
    property id_cliser : Integer         read Fid_cliser    write Fid_cliser;
    property filial : WideString         read Ffilial    write Ffilial;
    property matriz : WideString         read Fmatriz    write Fmatriz;
    property multa : Double         read Fmulta    write Fmulta;
    property nosso_numero : WideString         read Fnosso_numero    write Fnosso_numero;
    property lancamento_credito_cliente : Boolean         read Flancamento_credito_cliente    write Flancamento_credito_cliente;
    property percentual_multa : Double         read Fpercentual_multa    write Fpercentual_multa;
    property vl_multa_paga : Double         read Fvl_multa_paga    write Fvl_multa_paga;

  end;

var
  Frm_ViewERPcontapagarparceiros : TFrm_ViewERPcontapagarparceiros; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 78; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cobrador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tx_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_divida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_geral); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_jurospago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_entrega_cobrador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_prev_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nova_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desdobramento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].arq_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desativada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_apagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cobrador_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_usuario_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_bancaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresas_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pagamentos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].identifica_carteira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].usuario_click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_dependente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].boleto_web); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].excluido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviar_email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_boleto_web); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ocorrencia_bancaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nosso_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lancamento_credito_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_multa_paga); 
    end; 
end; 

procedure TFrm_ViewERPcontapagarparceiros.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_pgto := Edit_data_pgto.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_cobrador := Edit_id_cobrador.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.tx_juros := Edit_tx_juros.text;
      FController.Model.vl_juros := Edit_vl_juros.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_divida := Edit_vl_divida.text;
      FController.Model.vl_geral := Edit_vl_geral.text;
      FController.Model.vl_jurospago := Edit_vl_jurospago.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.data_entrega_cobrador := Edit_data_entrega_cobrador.text;
      FController.Model.data_prev_pgto := Edit_data_prev_pgto.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_credito := Edit_id_credito.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.nova_conta := Edit_nova_conta.text;
      FController.Model.id_custodia := Edit_id_custodia.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.desdobramento := Edit_desdobramento.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.arq_boleto := Edit_arq_boleto.text;
      FController.Model.id_uniao := Edit_id_uniao.text;
      FController.Model.id_locacao := Edit_id_locacao.text;
      FController.Model.protesto := Edit_protesto.text;
      FController.Model.data_protesto := Edit_data_protesto.text;
      FController.Model.valor_protesto := Edit_valor_protesto.text;
      FController.Model.desativada := Edit_desativada.text;
      FController.Model.vl_apagar := Edit_vl_apagar.text;
      FController.Model.data_cobranca := Edit_data_cobranca.text;
      FController.Model.contato_cobranca := Edit_contato_cobranca.text;
      FController.Model.id_cobrador_cobranca := Edit_id_cobrador_cobranca.text;
      FController.Model.id_usuario_desconto := Edit_id_usuario_desconto.text;
      FController.Model.percentual_usuario_desconto := Edit_percentual_usuario_desconto.text;
      FController.Model.taxa_bancaria := Edit_taxa_bancaria.text;
      FController.Model.custodia := Edit_custodia.text;
      FController.Model.id_empresas_boleto := Edit_id_empresas_boleto.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.id_pagamentos := Edit_id_pagamentos.text;
      FController.Model.identifica_carteira := Edit_identifica_carteira.text;
      FController.Model.codigo_protesto := Edit_codigo_protesto.text;
      FController.Model.dias_protesto := Edit_dias_protesto.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.usuario_click := Edit_usuario_click.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.id_dependente := Edit_id_dependente.text;
      FController.Model.boleto_web := Edit_boleto_web.text;
      FController.Model.excluido := Edit_excluido.text;
      FController.Model.id_fixa := Edit_id_fixa.text;
      FController.Model.enviar_email := Edit_enviar_email.text;
      FController.Model.data_boleto_web := Edit_data_boleto_web.text;
      FController.Model.ocorrencia_bancaria := Edit_ocorrencia_bancaria.text;
      FController.Model.id_cliser := Edit_id_cliser.text;
      FController.Model.filial := Edit_filial.text;
      FController.Model.matriz := Edit_matriz.text;
      FController.Model.multa := Edit_multa.text;
      FController.Model.nosso_numero := Edit_nosso_numero.text;
      FController.Model.lancamento_credito_cliente := Edit_lancamento_credito_cliente.text;
      FController.Model.percentual_multa := Edit_percentual_multa.text;
      FController.Model.vl_multa_paga := Edit_vl_multa_paga.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontapagarparceiros.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontapagarparceiros.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontapagarparceiros.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontapagarparceiros.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontapagarparceiros.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontapagarparceiros.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontapagarparceiros.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 78;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_pgto;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_cobrador;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := tx_juros;  
     Grid.Cells[inttostr(i),0] := vl_juros;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_divida;  
     Grid.Cells[inttostr(i),0] := vl_geral;  
     Grid.Cells[inttostr(i),0] := vl_jurospago;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := data_entrega_cobrador;  
     Grid.Cells[inttostr(i),0] := data_prev_pgto;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_credito;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := nova_conta;  
     Grid.Cells[inttostr(i),0] := id_custodia;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := desdobramento;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := arq_boleto;  
     Grid.Cells[inttostr(i),0] := id_uniao;  
     Grid.Cells[inttostr(i),0] := id_locacao;  
     Grid.Cells[inttostr(i),0] := protesto;  
     Grid.Cells[inttostr(i),0] := data_protesto;  
     Grid.Cells[inttostr(i),0] := valor_protesto;  
     Grid.Cells[inttostr(i),0] := desativada;  
     Grid.Cells[inttostr(i),0] := vl_apagar;  
     Grid.Cells[inttostr(i),0] := data_cobranca;  
     Grid.Cells[inttostr(i),0] := contato_cobranca;  
     Grid.Cells[inttostr(i),0] := id_cobrador_cobranca;  
     Grid.Cells[inttostr(i),0] := id_usuario_desconto;  
     Grid.Cells[inttostr(i),0] := percentual_usuario_desconto;  
     Grid.Cells[inttostr(i),0] := taxa_bancaria;  
     Grid.Cells[inttostr(i),0] := custodia;  
     Grid.Cells[inttostr(i),0] := id_empresas_boleto;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := id_pagamentos;  
     Grid.Cells[inttostr(i),0] := identifica_carteira;  
     Grid.Cells[inttostr(i),0] := codigo_protesto;  
     Grid.Cells[inttostr(i),0] := dias_protesto;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := usuario_click;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := id_dependente;  
     Grid.Cells[inttostr(i),0] := boleto_web;  
     Grid.Cells[inttostr(i),0] := excluido;  
     Grid.Cells[inttostr(i),0] := id_fixa;  
     Grid.Cells[inttostr(i),0] := enviar_email;  
     Grid.Cells[inttostr(i),0] := data_boleto_web;  
     Grid.Cells[inttostr(i),0] := ocorrencia_bancaria;  
     Grid.Cells[inttostr(i),0] := id_cliser;  
     Grid.Cells[inttostr(i),0] := filial;  
     Grid.Cells[inttostr(i),0] := matriz;  
     Grid.Cells[inttostr(i),0] := multa;  
     Grid.Cells[inttostr(i),0] := nosso_numero;  
     Grid.Cells[inttostr(i),0] := lancamento_credito_cliente;  
     Grid.Cells[inttostr(i),0] := percentual_multa;  
     Grid.Cells[inttostr(i),0] := vl_multa_paga;  
end;

procedure TFrm_ViewERPcontapagarparceiros.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontapagarparceiros.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontapagarparceiros.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_emissao := Grid.Cells[2,Grid.row];
    FController.Model.data_pgto := Grid.Cells[3,Grid.row];
    FController.Model.data_vencto := Grid.Cells[4,Grid.row];
    FController.Model.documento := Grid.Cells[5,Grid.row];
    FController.Model.parcela := Grid.Cells[6,Grid.row];
    FController.Model.nota := Grid.Cells[7,Grid.row];
    FController.Model.id_pedido := Grid.Cells[8,Grid.row];
    FController.Model.id_os := Grid.Cells[9,Grid.row];
    FController.Model.id_cliente := Grid.Cells[10,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[11,Grid.row];
    FController.Model.id_forma := Grid.Cells[12,Grid.row];
    FController.Model.id_cobrador := Grid.Cells[13,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[14,Grid.row];
    FController.Model.id_caixa := Grid.Cells[15,Grid.row];
    FController.Model.id_conta := Grid.Cells[16,Grid.row];
    FController.Model.tx_juros := Grid.Cells[17,Grid.row];
    FController.Model.vl_juros := Grid.Cells[18,Grid.row];
    FController.Model.vl_total := Grid.Cells[19,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[20,Grid.row];
    FController.Model.vl_pago := Grid.Cells[21,Grid.row];
    FController.Model.vl_divida := Grid.Cells[22,Grid.row];
    FController.Model.vl_geral := Grid.Cells[23,Grid.row];
    FController.Model.vl_jurospago := Grid.Cells[24,Grid.row];
    FController.Model.situacao := Grid.Cells[25,Grid.row];
    FController.Model.data_entrega_cobrador := Grid.Cells[26,Grid.row];
    FController.Model.data_prev_pgto := Grid.Cells[27,Grid.row];
    FController.Model.click := Grid.Cells[28,Grid.row];
    FController.Model.id_credito := Grid.Cells[29,Grid.row];
    FController.Model.cupom := Grid.Cells[30,Grid.row];
    FController.Model.nova_conta := Grid.Cells[31,Grid.row];
    FController.Model.id_custodia := Grid.Cells[32,Grid.row];
    FController.Model.id_usuario := Grid.Cells[33,Grid.row];
    FController.Model.obs := Grid.Cells[34,Grid.row];
    FController.Model.desdobramento := Grid.Cells[35,Grid.row];
    FController.Model.ativo := Grid.Cells[36,Grid.row];
    FController.Model.arq_boleto := Grid.Cells[37,Grid.row];
    FController.Model.id_uniao := Grid.Cells[38,Grid.row];
    FController.Model.id_locacao := Grid.Cells[39,Grid.row];
    FController.Model.protesto := Grid.Cells[40,Grid.row];
    FController.Model.data_protesto := Grid.Cells[41,Grid.row];
    FController.Model.valor_protesto := Grid.Cells[42,Grid.row];
    FController.Model.desativada := Grid.Cells[43,Grid.row];
    FController.Model.vl_apagar := Grid.Cells[44,Grid.row];
    FController.Model.data_cobranca := Grid.Cells[45,Grid.row];
    FController.Model.contato_cobranca := Grid.Cells[46,Grid.row];
    FController.Model.id_cobrador_cobranca := Grid.Cells[47,Grid.row];
    FController.Model.id_usuario_desconto := Grid.Cells[48,Grid.row];
    FController.Model.percentual_usuario_desconto := Grid.Cells[49,Grid.row];
    FController.Model.taxa_bancaria := Grid.Cells[50,Grid.row];
    FController.Model.custodia := Grid.Cells[51,Grid.row];
    FController.Model.id_empresas_boleto := Grid.Cells[52,Grid.row];
    FController.Model.id_movimento := Grid.Cells[53,Grid.row];
    FController.Model.id_cupons := Grid.Cells[54,Grid.row];
    FController.Model.id_pagamentos := Grid.Cells[55,Grid.row];
    FController.Model.identifica_carteira := Grid.Cells[56,Grid.row];
    FController.Model.codigo_protesto := Grid.Cells[57,Grid.row];
    FController.Model.dias_protesto := Grid.Cells[58,Grid.row];
    FController.Model.nfe := Grid.Cells[59,Grid.row];
    FController.Model.usuario_click := Grid.Cells[60,Grid.row];
    FController.Model.nfce := Grid.Cells[61,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[62,Grid.row];
    FController.Model.id_dependente := Grid.Cells[63,Grid.row];
    FController.Model.boleto_web := Grid.Cells[64,Grid.row];
    FController.Model.excluido := Grid.Cells[65,Grid.row];
    FController.Model.id_fixa := Grid.Cells[66,Grid.row];
    FController.Model.enviar_email := Grid.Cells[67,Grid.row];
    FController.Model.data_boleto_web := Grid.Cells[68,Grid.row];
    FController.Model.ocorrencia_bancaria := Grid.Cells[69,Grid.row];
    FController.Model.id_cliser := Grid.Cells[70,Grid.row];
    FController.Model.filial := Grid.Cells[71,Grid.row];
    FController.Model.matriz := Grid.Cells[72,Grid.row];
    FController.Model.multa := Grid.Cells[73,Grid.row];
    FController.Model.nosso_numero := Grid.Cells[74,Grid.row];
    FController.Model.lancamento_credito_cliente := Grid.Cells[75,Grid.row];
    FController.Model.percentual_multa := Grid.Cells[76,Grid.row];
    FController.Model.vl_multa_paga := Grid.Cells[77,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontapagarparceiros.LimparTela;  
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

procedure TFrm_ViewERPcontapagarparceiros.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_pgto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_cobrador(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Settx_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_divida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_geral(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_jurospago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_entrega_cobrador(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_prev_pgto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnova_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_custodia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdesdobramento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setarq_boleto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_locacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setprotesto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_protesto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvalor_protesto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdesativada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_apagar(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_cobranca(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setcontato_cobranca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_cobrador_cobranca(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_usuario_desconto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setpercentual_usuario_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Settaxa_bancaria(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setcustodia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_empresas_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_pagamentos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setidentifica_carteira(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setcodigo_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdias_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setusuario_click(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_contacorrente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_dependente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setboleto_web(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setexcluido(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_fixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setenviar_email(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setdata_boleto_web(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setocorrencia_bancaria(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setid_cliser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setfilial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setmatriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setmulta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setnosso_numero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setlancamento_credito_cliente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setpercentual_multa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagarparceiros.Setvl_multa_paga(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
