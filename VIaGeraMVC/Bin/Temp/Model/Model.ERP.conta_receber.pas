unit Model.ERP.conta_pagar_parceiros;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontapagarparceiros = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setnota(const Value: WideString);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_cobrador(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Settx_juros(const Value: Double);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_divida(const Value: Double);
    procedure Setvl_geral(const Value: Double);
    procedure Setvl_jurospago(const Value: Double);
    procedure Setsituacao(const Value: WideString);
    procedure Setdata_entrega_cobrador(const Value: TDateTime);
    procedure Setdata_prev_pgto(const Value: TDateTime);
    procedure Setclick(const Value: Boolean);
    procedure Setid_credito(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setnova_conta(const Value: WideString);
    procedure Setid_custodia(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setdesdobramento(const Value: WideString);
    procedure Setativo(const Value: WideString);
    procedure Setarq_boleto(const Value: WideString);
    procedure Setid_uniao(const Value: Integer);
    procedure Setid_locacao(const Value: Integer);
    procedure Setprotesto(const Value: WideString);
    procedure Setdata_protesto(const Value: TDateTime);
    procedure Setvalor_protesto(const Value: Double);
    procedure Setdesativada(const Value: WideString);
    procedure Setvl_apagar(const Value: Double);
    procedure Setdata_cobranca(const Value: TDateTime);
    procedure Setcontato_cobranca(const Value: WideString);
    procedure Setid_cobrador_cobranca(const Value: Integer);
    procedure Setid_usuario_desconto(const Value: Integer);
    procedure Setpercentual_usuario_desconto(const Value: Double);
    procedure Settaxa_bancaria(const Value: Double);
    procedure Setcustodia(const Value: Boolean);
    procedure Setid_empresas_boleto(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setidentifica_carteira(const Value: Integer);
    procedure Setcodigo_protesto(const Value: Integer);
    procedure Setdias_protesto(const Value: Integer);
    procedure Setnfe(const Value: WideString);
    procedure Setusuario_click(const Value: Integer);
    procedure Setnfce(const Value: WideString);
    procedure Setid_contacorrente(const Value: Integer);
    procedure Setid_dependente(const Value: Integer);
    procedure Setboleto_web(const Value: Integer);
    procedure Setexcluido(const Value: Boolean);
    procedure Setid_fixa(const Value: Integer);
    procedure Setenviar_email(const Value: Boolean);
    procedure Setdata_boleto_web(const Value: TDateTime);
    procedure Setocorrencia_bancaria(const Value: indefinido);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: WideString);
    procedure Setmatriz(const Value: WideString);
    procedure Setmulta(const Value: Double);
    procedure Setnosso_numero(const Value: WideString);
    procedure Setlancamento_credito_cliente(const Value: Boolean);
    procedure Setpercentual_multa(const Value: Double);
    procedure Setvl_multa_paga(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property nota     : WideString read Fnota write Setnota;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_cobrador     : Integer read Fid_cobrador write Setid_cobrador;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property tx_juros     : Double read Ftx_juros write Settx_juros;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_divida     : Double read Fvl_divida write Setvl_divida;
    property vl_geral     : Double read Fvl_geral write Setvl_geral;
    property vl_jurospago     : Double read Fvl_jurospago write Setvl_jurospago;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property data_entrega_cobrador     : TDateTime read Fdata_entrega_cobrador write Setdata_entrega_cobrador;
    property data_prev_pgto     : TDateTime read Fdata_prev_pgto write Setdata_prev_pgto;
    property click     : Boolean read Fclick write Setclick;
    property id_credito     : Integer read Fid_credito write Setid_credito;
    property cupom     : Integer read Fcupom write Setcupom;
    property nova_conta     : WideString read Fnova_conta write Setnova_conta;
    property id_custodia     : Integer read Fid_custodia write Setid_custodia;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property obs     : indefinido read Fobs write Setobs;
    property desdobramento     : WideString read Fdesdobramento write Setdesdobramento;
    property ativo     : WideString read Fativo write Setativo;
    property arq_boleto     : WideString read Farq_boleto write Setarq_boleto;
    property id_uniao     : Integer read Fid_uniao write Setid_uniao;
    property id_locacao     : Integer read Fid_locacao write Setid_locacao;
    property protesto     : WideString read Fprotesto write Setprotesto;
    property data_protesto     : TDateTime read Fdata_protesto write Setdata_protesto;
    property valor_protesto     : Double read Fvalor_protesto write Setvalor_protesto;
    property desativada     : WideString read Fdesativada write Setdesativada;
    property vl_apagar     : Double read Fvl_apagar write Setvl_apagar;
    property data_cobranca     : TDateTime read Fdata_cobranca write Setdata_cobranca;
    property contato_cobranca     : WideString read Fcontato_cobranca write Setcontato_cobranca;
    property id_cobrador_cobranca     : Integer read Fid_cobrador_cobranca write Setid_cobrador_cobranca;
    property id_usuario_desconto     : Integer read Fid_usuario_desconto write Setid_usuario_desconto;
    property percentual_usuario_desconto     : Double read Fpercentual_usuario_desconto write Setpercentual_usuario_desconto;
    property taxa_bancaria     : Double read Ftaxa_bancaria write Settaxa_bancaria;
    property custodia     : Boolean read Fcustodia write Setcustodia;
    property id_empresas_boleto     : Integer read Fid_empresas_boleto write Setid_empresas_boleto;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property identifica_carteira     : Integer read Fidentifica_carteira write Setidentifica_carteira;
    property codigo_protesto     : Integer read Fcodigo_protesto write Setcodigo_protesto;
    property dias_protesto     : Integer read Fdias_protesto write Setdias_protesto;
    property nfe     : WideString read Fnfe write Setnfe;
    property usuario_click     : Integer read Fusuario_click write Setusuario_click;
    property nfce     : WideString read Fnfce write Setnfce;
    property id_contacorrente     : Integer read Fid_contacorrente write Setid_contacorrente;
    property id_dependente     : Integer read Fid_dependente write Setid_dependente;
    property boleto_web     : Integer read Fboleto_web write Setboleto_web;
    property excluido     : Boolean read Fexcluido write Setexcluido;
    property id_fixa     : Integer read Fid_fixa write Setid_fixa;
    property enviar_email     : Boolean read Fenviar_email write Setenviar_email;
    property data_boleto_web     : TDateTime read Fdata_boleto_web write Setdata_boleto_web;
    property ocorrencia_bancaria     : indefinido read Focorrencia_bancaria write Setocorrencia_bancaria;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : WideString read Ffilial write Setfilial;
    property matriz     : WideString read Fmatriz write Setmatriz;
    property multa     : Double read Fmulta write Setmulta;
    property nosso_numero     : WideString read Fnosso_numero write Setnosso_numero;
    property lancamento_credito_cliente     : Boolean read Flancamento_credito_cliente write Setlancamento_credito_cliente;
    property percentual_multa     : Double read Fpercentual_multa write Setpercentual_multa;
    property vl_multa_paga     : Double read Fvl_multa_paga write Setvl_multa_paga;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontapagarparceiros.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontapagarparceiros) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontapagarparceiros(Model).id;
Self.Fid_empresa         := TModelERPcontapagarparceiros(Model).id_empresa;
Self.Fdata_emissao         := TModelERPcontapagarparceiros(Model).data_emissao;
Self.Fdata_pgto         := TModelERPcontapagarparceiros(Model).data_pgto;
Self.Fdata_vencto         := TModelERPcontapagarparceiros(Model).data_vencto;
Self.Fdocumento         := TModelERPcontapagarparceiros(Model).documento;
Self.Fparcela         := TModelERPcontapagarparceiros(Model).parcela;
Self.Fnota         := TModelERPcontapagarparceiros(Model).nota;
Self.Fid_pedido         := TModelERPcontapagarparceiros(Model).id_pedido;
Self.Fid_os         := TModelERPcontapagarparceiros(Model).id_os;
Self.Fid_cliente         := TModelERPcontapagarparceiros(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcontapagarparceiros(Model).nome_cliente;
Self.Fid_forma         := TModelERPcontapagarparceiros(Model).id_forma;
Self.Fid_cobrador         := TModelERPcontapagarparceiros(Model).id_cobrador;
Self.Fid_vendedor         := TModelERPcontapagarparceiros(Model).id_vendedor;
Self.Fid_caixa         := TModelERPcontapagarparceiros(Model).id_caixa;
Self.Fid_conta         := TModelERPcontapagarparceiros(Model).id_conta;
Self.Ftx_juros         := TModelERPcontapagarparceiros(Model).tx_juros;
Self.Fvl_juros         := TModelERPcontapagarparceiros(Model).vl_juros;
Self.Fvl_total         := TModelERPcontapagarparceiros(Model).vl_total;
Self.Fvl_desconto         := TModelERPcontapagarparceiros(Model).vl_desconto;
Self.Fvl_pago         := TModelERPcontapagarparceiros(Model).vl_pago;
Self.Fvl_divida         := TModelERPcontapagarparceiros(Model).vl_divida;
Self.Fvl_geral         := TModelERPcontapagarparceiros(Model).vl_geral;
Self.Fvl_jurospago         := TModelERPcontapagarparceiros(Model).vl_jurospago;
Self.Fsituacao         := TModelERPcontapagarparceiros(Model).situacao;
Self.Fdata_entrega_cobrador         := TModelERPcontapagarparceiros(Model).data_entrega_cobrador;
Self.Fdata_prev_pgto         := TModelERPcontapagarparceiros(Model).data_prev_pgto;
Self.Fclick         := TModelERPcontapagarparceiros(Model).click;
Self.Fid_credito         := TModelERPcontapagarparceiros(Model).id_credito;
Self.Fcupom         := TModelERPcontapagarparceiros(Model).cupom;
Self.Fnova_conta         := TModelERPcontapagarparceiros(Model).nova_conta;
Self.Fid_custodia         := TModelERPcontapagarparceiros(Model).id_custodia;
Self.Fid_usuario         := TModelERPcontapagarparceiros(Model).id_usuario;
Self.Fobs         := TModelERPcontapagarparceiros(Model).obs;
Self.Fdesdobramento         := TModelERPcontapagarparceiros(Model).desdobramento;
Self.Fativo         := TModelERPcontapagarparceiros(Model).ativo;
Self.Farq_boleto         := TModelERPcontapagarparceiros(Model).arq_boleto;
Self.Fid_uniao         := TModelERPcontapagarparceiros(Model).id_uniao;
Self.Fid_locacao         := TModelERPcontapagarparceiros(Model).id_locacao;
Self.Fprotesto         := TModelERPcontapagarparceiros(Model).protesto;
Self.Fdata_protesto         := TModelERPcontapagarparceiros(Model).data_protesto;
Self.Fvalor_protesto         := TModelERPcontapagarparceiros(Model).valor_protesto;
Self.Fdesativada         := TModelERPcontapagarparceiros(Model).desativada;
Self.Fvl_apagar         := TModelERPcontapagarparceiros(Model).vl_apagar;
Self.Fdata_cobranca         := TModelERPcontapagarparceiros(Model).data_cobranca;
Self.Fcontato_cobranca         := TModelERPcontapagarparceiros(Model).contato_cobranca;
Self.Fid_cobrador_cobranca         := TModelERPcontapagarparceiros(Model).id_cobrador_cobranca;
Self.Fid_usuario_desconto         := TModelERPcontapagarparceiros(Model).id_usuario_desconto;
Self.Fpercentual_usuario_desconto         := TModelERPcontapagarparceiros(Model).percentual_usuario_desconto;
Self.Ftaxa_bancaria         := TModelERPcontapagarparceiros(Model).taxa_bancaria;
Self.Fcustodia         := TModelERPcontapagarparceiros(Model).custodia;
Self.Fid_empresas_boleto         := TModelERPcontapagarparceiros(Model).id_empresas_boleto;
Self.Fid_movimento         := TModelERPcontapagarparceiros(Model).id_movimento;
Self.Fid_cupons         := TModelERPcontapagarparceiros(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPcontapagarparceiros(Model).id_pagamentos;
Self.Fidentifica_carteira         := TModelERPcontapagarparceiros(Model).identifica_carteira;
Self.Fcodigo_protesto         := TModelERPcontapagarparceiros(Model).codigo_protesto;
Self.Fdias_protesto         := TModelERPcontapagarparceiros(Model).dias_protesto;
Self.Fnfe         := TModelERPcontapagarparceiros(Model).nfe;
Self.Fusuario_click         := TModelERPcontapagarparceiros(Model).usuario_click;
Self.Fnfce         := TModelERPcontapagarparceiros(Model).nfce;
Self.Fid_contacorrente         := TModelERPcontapagarparceiros(Model).id_contacorrente;
Self.Fid_dependente         := TModelERPcontapagarparceiros(Model).id_dependente;
Self.Fboleto_web         := TModelERPcontapagarparceiros(Model).boleto_web;
Self.Fexcluido         := TModelERPcontapagarparceiros(Model).excluido;
Self.Fid_fixa         := TModelERPcontapagarparceiros(Model).id_fixa;
Self.Fenviar_email         := TModelERPcontapagarparceiros(Model).enviar_email;
Self.Fdata_boleto_web         := TModelERPcontapagarparceiros(Model).data_boleto_web;
Self.Focorrencia_bancaria         := TModelERPcontapagarparceiros(Model).ocorrencia_bancaria;
Self.Fid_cliser         := TModelERPcontapagarparceiros(Model).id_cliser;
Self.Ffilial         := TModelERPcontapagarparceiros(Model).filial;
Self.Fmatriz         := TModelERPcontapagarparceiros(Model).matriz;
Self.Fmulta         := TModelERPcontapagarparceiros(Model).multa;
Self.Fnosso_numero         := TModelERPcontapagarparceiros(Model).nosso_numero;
Self.Flancamento_credito_cliente         := TModelERPcontapagarparceiros(Model).lancamento_credito_cliente;
Self.Fpercentual_multa         := TModelERPcontapagarparceiros(Model).percentual_multa;
Self.Fvl_multa_paga         := TModelERPcontapagarparceiros(Model).vl_multa_paga;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontapagarparceiros.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontapagarparceiros.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontapagarparceiros.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_cobrador(const Value: Boolean);   
begin                
  Fid_cobrador := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Settx_juros(const Value: Boolean);   
begin                
  Ftx_juros := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_divida(const Value: Boolean);   
begin                
  Fvl_divida := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_geral(const Value: Boolean);   
begin                
  Fvl_geral := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_jurospago(const Value: Boolean);   
begin                
  Fvl_jurospago := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_entrega_cobrador(const Value: Boolean);   
begin                
  Fdata_entrega_cobrador := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_prev_pgto(const Value: Boolean);   
begin                
  Fdata_prev_pgto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnova_conta(const Value: Boolean);   
begin                
  Fnova_conta := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_custodia(const Value: Boolean);   
begin                
  Fid_custodia := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdesdobramento(const Value: Boolean);   
begin                
  Fdesdobramento := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setarq_boleto(const Value: Boolean);   
begin                
  Farq_boleto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_uniao(const Value: Boolean);   
begin                
  Fid_uniao := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_locacao(const Value: Boolean);   
begin                
  Fid_locacao := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setprotesto(const Value: Boolean);   
begin                
  Fprotesto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_protesto(const Value: Boolean);   
begin                
  Fdata_protesto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvalor_protesto(const Value: Boolean);   
begin                
  Fvalor_protesto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdesativada(const Value: Boolean);   
begin                
  Fdesativada := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_apagar(const Value: Boolean);   
begin                
  Fvl_apagar := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_cobranca(const Value: Boolean);   
begin                
  Fdata_cobranca := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setcontato_cobranca(const Value: Boolean);   
begin                
  Fcontato_cobranca := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_cobrador_cobranca(const Value: Boolean);   
begin                
  Fid_cobrador_cobranca := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_usuario_desconto(const Value: Boolean);   
begin                
  Fid_usuario_desconto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setpercentual_usuario_desconto(const Value: Boolean);   
begin                
  Fpercentual_usuario_desconto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Settaxa_bancaria(const Value: Boolean);   
begin                
  Ftaxa_bancaria := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setcustodia(const Value: Boolean);   
begin                
  Fcustodia := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_empresas_boleto(const Value: Boolean);   
begin                
  Fid_empresas_boleto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setidentifica_carteira(const Value: Boolean);   
begin                
  Fidentifica_carteira := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setcodigo_protesto(const Value: Boolean);   
begin                
  Fcodigo_protesto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdias_protesto(const Value: Boolean);   
begin                
  Fdias_protesto := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setusuario_click(const Value: Boolean);   
begin                
  Fusuario_click := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_dependente(const Value: Boolean);   
begin                
  Fid_dependente := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setboleto_web(const Value: Boolean);   
begin                
  Fboleto_web := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setexcluido(const Value: Boolean);   
begin                
  Fexcluido := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_fixa(const Value: Boolean);   
begin                
  Fid_fixa := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setenviar_email(const Value: Boolean);   
begin                
  Fenviar_email := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setdata_boleto_web(const Value: Boolean);   
begin                
  Fdata_boleto_web := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setocorrencia_bancaria(const Value: Boolean);   
begin                
  Focorrencia_bancaria := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setmulta(const Value: Boolean);   
begin                
  Fmulta := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setnosso_numero(const Value: Boolean);   
begin                
  Fnosso_numero := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setlancamento_credito_cliente(const Value: Boolean);   
begin                
  Flancamento_credito_cliente := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setpercentual_multa(const Value: Boolean);   
begin                
  Fpercentual_multa := Value;   
end;                 

procedure TModelERPcontapagarparceiros.Setvl_multa_paga(const Value: Boolean);   
begin                
  Fvl_multa_paga := Value;   
end;                 


end.
