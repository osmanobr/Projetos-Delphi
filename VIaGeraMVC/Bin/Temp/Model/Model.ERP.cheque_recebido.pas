unit Model.ERP.cheque_emitido_custodia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchequeemitidocustodia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_contacorrente : WideString;
    Fid_vendedor : Integer;
    Fagencia : WideString;
    Fcheque : WideString;
    Fvalor : Double;
    Fstatus : WideString;
    Fdata_deposito : TDateTime;
    Femitente : WideString;
    Fcustodiado_para : WideString;
    Fdata_custodia : TDateTime;
    Fid_devolucao : Integer;
    Fdata_devolucao : TDateTime;
    Fid_forma : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_conta_baixa : WideString;
    Fid_forma_baixa : Integer;
    Fclick : Boolean;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;
    Fvl_pago : Double;
    Fdata_protesto : TDateTime;
    Fativo : WideString;
    Fid_cobrador : Integer;
    Fdata_entrega_cobrador : TDateTime;
    Fdata_prev_pgto : TDateTime;
    Fcustodia : Boolean;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fid_cheques : Integer;
    Fconta_corrente : WideString;
    Fdocumento_cheque : WideString;
    Fid_uniao : Integer;
    Fid_usuario : Integer;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;
    Fid_credito : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setid_contacorrente(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setagencia(const Value: WideString);
    procedure Setcheque(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setstatus(const Value: WideString);
    procedure Setdata_deposito(const Value: TDateTime);
    procedure Setemitente(const Value: WideString);
    procedure Setcustodiado_para(const Value: WideString);
    procedure Setdata_custodia(const Value: TDateTime);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setdata_devolucao(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_conta_baixa(const Value: WideString);
    procedure Setid_forma_baixa(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setid_parcela_receber(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setvl_pago(const Value: Double);
    procedure Setdata_protesto(const Value: TDateTime);
    procedure Setativo(const Value: WideString);
    procedure Setid_cobrador(const Value: Integer);
    procedure Setdata_entrega_cobrador(const Value: TDateTime);
    procedure Setdata_prev_pgto(const Value: TDateTime);
    procedure Setcustodia(const Value: Boolean);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setid_cheques(const Value: Integer);
    procedure Setconta_corrente(const Value: WideString);
    procedure Setdocumento_cheque(const Value: WideString);
    procedure Setid_uniao(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: WideString);
    procedure Setmatriz(const Value: WideString);
    procedure Setid_credito(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property id_contacorrente     : WideString read Fid_contacorrente write Setid_contacorrente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property agencia     : WideString read Fagencia write Setagencia;
    property cheque     : WideString read Fcheque write Setcheque;
    property valor     : Double read Fvalor write Setvalor;
    property status     : WideString read Fstatus write Setstatus;
    property data_deposito     : TDateTime read Fdata_deposito write Setdata_deposito;
    property emitente     : WideString read Femitente write Setemitente;
    property custodiado_para     : WideString read Fcustodiado_para write Setcustodiado_para;
    property data_custodia     : TDateTime read Fdata_custodia write Setdata_custodia;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property data_devolucao     : TDateTime read Fdata_devolucao write Setdata_devolucao;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_conta_baixa     : WideString read Fid_conta_baixa write Setid_conta_baixa;
    property id_forma_baixa     : Integer read Fid_forma_baixa write Setid_forma_baixa;
    property click     : Boolean read Fclick write Setclick;
    property id_parcela_receber     : Integer read Fid_parcela_receber write Setid_parcela_receber;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property data_protesto     : TDateTime read Fdata_protesto write Setdata_protesto;
    property ativo     : WideString read Fativo write Setativo;
    property id_cobrador     : Integer read Fid_cobrador write Setid_cobrador;
    property data_entrega_cobrador     : TDateTime read Fdata_entrega_cobrador write Setdata_entrega_cobrador;
    property data_prev_pgto     : TDateTime read Fdata_prev_pgto write Setdata_prev_pgto;
    property custodia     : Boolean read Fcustodia write Setcustodia;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property id_cheques     : Integer read Fid_cheques write Setid_cheques;
    property conta_corrente     : WideString read Fconta_corrente write Setconta_corrente;
    property documento_cheque     : WideString read Fdocumento_cheque write Setdocumento_cheque;
    property id_uniao     : Integer read Fid_uniao write Setid_uniao;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : WideString read Ffilial write Setfilial;
    property matriz     : WideString read Fmatriz write Setmatriz;
    property id_credito     : Integer read Fid_credito write Setid_credito;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchequeemitidocustodia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchequeemitidocustodia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchequeemitidocustodia(Model).id;
Self.Fid_empresa         := TModelERPchequeemitidocustodia(Model).id_empresa;
Self.Fdata_emissao         := TModelERPchequeemitidocustodia(Model).data_emissao;
Self.Fdata_vencto         := TModelERPchequeemitidocustodia(Model).data_vencto;
Self.Fdocumento         := TModelERPchequeemitidocustodia(Model).documento;
Self.Fparcela         := TModelERPchequeemitidocustodia(Model).parcela;
Self.Fid_cliente         := TModelERPchequeemitidocustodia(Model).id_cliente;
Self.Fnome_cliente         := TModelERPchequeemitidocustodia(Model).nome_cliente;
Self.Fid_conta         := TModelERPchequeemitidocustodia(Model).id_conta;
Self.Fid_caixa         := TModelERPchequeemitidocustodia(Model).id_caixa;
Self.Fid_banco         := TModelERPchequeemitidocustodia(Model).id_banco;
Self.Fid_contacorrente         := TModelERPchequeemitidocustodia(Model).id_contacorrente;
Self.Fid_vendedor         := TModelERPchequeemitidocustodia(Model).id_vendedor;
Self.Fagencia         := TModelERPchequeemitidocustodia(Model).agencia;
Self.Fcheque         := TModelERPchequeemitidocustodia(Model).cheque;
Self.Fvalor         := TModelERPchequeemitidocustodia(Model).valor;
Self.Fstatus         := TModelERPchequeemitidocustodia(Model).status;
Self.Fdata_deposito         := TModelERPchequeemitidocustodia(Model).data_deposito;
Self.Femitente         := TModelERPchequeemitidocustodia(Model).emitente;
Self.Fcustodiado_para         := TModelERPchequeemitidocustodia(Model).custodiado_para;
Self.Fdata_custodia         := TModelERPchequeemitidocustodia(Model).data_custodia;
Self.Fid_devolucao         := TModelERPchequeemitidocustodia(Model).id_devolucao;
Self.Fdata_devolucao         := TModelERPchequeemitidocustodia(Model).data_devolucao;
Self.Fid_forma         := TModelERPchequeemitidocustodia(Model).id_forma;
Self.Fid_pedido         := TModelERPchequeemitidocustodia(Model).id_pedido;
Self.Fid_os         := TModelERPchequeemitidocustodia(Model).id_os;
Self.Fid_conta_baixa         := TModelERPchequeemitidocustodia(Model).id_conta_baixa;
Self.Fid_forma_baixa         := TModelERPchequeemitidocustodia(Model).id_forma_baixa;
Self.Fclick         := TModelERPchequeemitidocustodia(Model).click;
Self.Fid_parcela_receber         := TModelERPchequeemitidocustodia(Model).id_parcela_receber;
Self.Fid_conta_receber         := TModelERPchequeemitidocustodia(Model).id_conta_receber;
Self.Fvl_pago         := TModelERPchequeemitidocustodia(Model).vl_pago;
Self.Fdata_protesto         := TModelERPchequeemitidocustodia(Model).data_protesto;
Self.Fativo         := TModelERPchequeemitidocustodia(Model).ativo;
Self.Fid_cobrador         := TModelERPchequeemitidocustodia(Model).id_cobrador;
Self.Fdata_entrega_cobrador         := TModelERPchequeemitidocustodia(Model).data_entrega_cobrador;
Self.Fdata_prev_pgto         := TModelERPchequeemitidocustodia(Model).data_prev_pgto;
Self.Fcustodia         := TModelERPchequeemitidocustodia(Model).custodia;
Self.Fid_movimento         := TModelERPchequeemitidocustodia(Model).id_movimento;
Self.Fid_cupons         := TModelERPchequeemitidocustodia(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPchequeemitidocustodia(Model).id_pagamentos;
Self.Fid_cheques         := TModelERPchequeemitidocustodia(Model).id_cheques;
Self.Fconta_corrente         := TModelERPchequeemitidocustodia(Model).conta_corrente;
Self.Fdocumento_cheque         := TModelERPchequeemitidocustodia(Model).documento_cheque;
Self.Fid_uniao         := TModelERPchequeemitidocustodia(Model).id_uniao;
Self.Fid_usuario         := TModelERPchequeemitidocustodia(Model).id_usuario;
Self.Fid_cliser         := TModelERPchequeemitidocustodia(Model).id_cliser;
Self.Ffilial         := TModelERPchequeemitidocustodia(Model).filial;
Self.Fmatriz         := TModelERPchequeemitidocustodia(Model).matriz;
Self.Fid_credito         := TModelERPchequeemitidocustodia(Model).id_credito;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchequeemitidocustodia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchequeemitidocustodia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchequeemitidocustodia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setcheque(const Value: Boolean);   
begin                
  Fcheque := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_deposito(const Value: Boolean);   
begin                
  Fdata_deposito := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setemitente(const Value: Boolean);   
begin                
  Femitente := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setcustodiado_para(const Value: Boolean);   
begin                
  Fcustodiado_para := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_custodia(const Value: Boolean);   
begin                
  Fdata_custodia := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_conta_baixa(const Value: Boolean);   
begin                
  Fid_conta_baixa := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_forma_baixa(const Value: Boolean);   
begin                
  Fid_forma_baixa := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_parcela_receber(const Value: Boolean);   
begin                
  Fid_parcela_receber := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_protesto(const Value: Boolean);   
begin                
  Fdata_protesto := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_cobrador(const Value: Boolean);   
begin                
  Fid_cobrador := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_entrega_cobrador(const Value: Boolean);   
begin                
  Fdata_entrega_cobrador := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdata_prev_pgto(const Value: Boolean);   
begin                
  Fdata_prev_pgto := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setcustodia(const Value: Boolean);   
begin                
  Fcustodia := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_cheques(const Value: Boolean);   
begin                
  Fid_cheques := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setconta_corrente(const Value: Boolean);   
begin                
  Fconta_corrente := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setdocumento_cheque(const Value: Boolean);   
begin                
  Fdocumento_cheque := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_uniao(const Value: Boolean);   
begin                
  Fid_uniao := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 

procedure TModelERPchequeemitidocustodia.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 


end.
