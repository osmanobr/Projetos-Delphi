unit Model.ERP.orcamento_uniao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPorcamentouniao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Ftipo : indefinido;
    Fnota : Integer;
    Fcupom : Integer;
    Fdata_emissao : TDateTime;
    Fhora : indefinido;
    Fdata_saida : TDateTime;
    Fgerado : indefinido;
    Fhora_fechamento : indefinido;
    Fnumero_serie : indefinido;
    Fmarca : indefinido;
    Fmodelo : indefinido;
    Fnota_produto : indefinido;
    Floja : indefinido;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_vendedor : Integer;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_transportadora : Integer;
    Fid_funcionario : Integer;
    Fid_credito : Integer;
    Fid_contrato : Integer;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_desconto : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fbase_ipi : Double;
    Fbase_substituicao : Double;
    Fqtd_itens : Integer;
    Fpercentual_desconto : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fid_cfop : Integer;
    Frateio : indefinido;
    Fduplicatacheque : indefinido;
    Fparcelas : Integer;
    Fvl_juros : Double;
    Fcomentrada : indefinido;
    Fintervalo : Integer;
    Fdia : Integer;
    Fcotacao : indefinido;
    Fid_usuario_desconto : Integer;
    Fpercentual_usuario_desconto : Double;
    Fid_rota : Integer;
    Fid_tabela_preco : Integer;
    Fobs : indefinido;
    Fjuros : indefinido;
    Fplaca : indefinido;
    Fusa_tabela : indefinido;
    Fdefeito_reclamado : indefinido;
    Fdefeito_constatado : indefinido;
    Fclick : Boolean;
    Fid_coringa : Integer;
    Fuso : indefinido;
    Fcancelada : indefinido;
    Fexpedicao : indefinido;
    Findicacao : indefinido;
    Ffabricacao : indefinido;
    Fecf : indefinido;
    Fpis : Double;
    Fcofins : Double;
    Fvl_icmsst : Double;
    Fstatus : indefinido;
    Fstatus_os : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Settipo(const Value: indefinido);
    procedure Setnota(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Sethora(const Value: indefinido);
    procedure Setdata_saida(const Value: TDateTime);
    procedure Setgerado(const Value: indefinido);
    procedure Sethora_fechamento(const Value: indefinido);
    procedure Setnumero_serie(const Value: indefinido);
    procedure Setmarca(const Value: indefinido);
    procedure Setmodelo(const Value: indefinido);
    procedure Setnota_produto(const Value: indefinido);
    procedure Setloja(const Value: indefinido);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_transportadora(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_credito(const Value: Integer);
    procedure Setid_contrato(const Value: Integer);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_seguro(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_troco(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setbase_ipi(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setqtd_itens(const Value: Integer);
    procedure Setpercentual_desconto(const Value: Double);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setid_cfop(const Value: Integer);
    procedure Setrateio(const Value: indefinido);
    procedure Setduplicatacheque(const Value: indefinido);
    procedure Setparcelas(const Value: Integer);
    procedure Setvl_juros(const Value: Double);
    procedure Setcomentrada(const Value: indefinido);
    procedure Setintervalo(const Value: Integer);
    procedure Setdia(const Value: Integer);
    procedure Setcotacao(const Value: indefinido);
    procedure Setid_usuario_desconto(const Value: Integer);
    procedure Setpercentual_usuario_desconto(const Value: Double);
    procedure Setid_rota(const Value: Integer);
    procedure Setid_tabela_preco(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setjuros(const Value: indefinido);
    procedure Setplaca(const Value: indefinido);
    procedure Setusa_tabela(const Value: indefinido);
    procedure Setdefeito_reclamado(const Value: indefinido);
    procedure Setdefeito_constatado(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setid_coringa(const Value: Integer);
    procedure Setuso(const Value: indefinido);
    procedure Setcancelada(const Value: indefinido);
    procedure Setexpedicao(const Value: indefinido);
    procedure Setindicacao(const Value: indefinido);
    procedure Setfabricacao(const Value: indefinido);
    procedure Setecf(const Value: indefinido);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setstatus(const Value: indefinido);
    procedure Setstatus_os(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property tipo     : indefinido read Ftipo write Settipo;
    property nota     : Integer read Fnota write Setnota;
    property cupom     : Integer read Fcupom write Setcupom;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property hora     : indefinido read Fhora write Sethora;
    property data_saida     : TDateTime read Fdata_saida write Setdata_saida;
    property gerado     : indefinido read Fgerado write Setgerado;
    property hora_fechamento     : indefinido read Fhora_fechamento write Sethora_fechamento;
    property numero_serie     : indefinido read Fnumero_serie write Setnumero_serie;
    property marca     : indefinido read Fmarca write Setmarca;
    property modelo     : indefinido read Fmodelo write Setmodelo;
    property nota_produto     : indefinido read Fnota_produto write Setnota_produto;
    property loja     : indefinido read Floja write Setloja;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_transportadora     : Integer read Fid_transportadora write Setid_transportadora;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_credito     : Integer read Fid_credito write Setid_credito;
    property id_contrato     : Integer read Fid_contrato write Setid_contrato;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_seguro     : Double read Fvl_seguro write Setvl_seguro;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_troco     : Double read Fvl_troco write Setvl_troco;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property base_ipi     : Double read Fbase_ipi write Setbase_ipi;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property qtd_itens     : Integer read Fqtd_itens write Setqtd_itens;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property rateio     : indefinido read Frateio write Setrateio;
    property duplicatacheque     : indefinido read Fduplicatacheque write Setduplicatacheque;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property comentrada     : indefinido read Fcomentrada write Setcomentrada;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property dia     : Integer read Fdia write Setdia;
    property cotacao     : indefinido read Fcotacao write Setcotacao;
    property id_usuario_desconto     : Integer read Fid_usuario_desconto write Setid_usuario_desconto;
    property percentual_usuario_desconto     : Double read Fpercentual_usuario_desconto write Setpercentual_usuario_desconto;
    property id_rota     : Integer read Fid_rota write Setid_rota;
    property id_tabela_preco     : Integer read Fid_tabela_preco write Setid_tabela_preco;
    property obs     : indefinido read Fobs write Setobs;
    property juros     : indefinido read Fjuros write Setjuros;
    property placa     : indefinido read Fplaca write Setplaca;
    property usa_tabela     : indefinido read Fusa_tabela write Setusa_tabela;
    property defeito_reclamado     : indefinido read Fdefeito_reclamado write Setdefeito_reclamado;
    property defeito_constatado     : indefinido read Fdefeito_constatado write Setdefeito_constatado;
    property click     : Boolean read Fclick write Setclick;
    property id_coringa     : Integer read Fid_coringa write Setid_coringa;
    property uso     : indefinido read Fuso write Setuso;
    property cancelada     : indefinido read Fcancelada write Setcancelada;
    property expedicao     : indefinido read Fexpedicao write Setexpedicao;
    property indicacao     : indefinido read Findicacao write Setindicacao;
    property fabricacao     : indefinido read Ffabricacao write Setfabricacao;
    property ecf     : indefinido read Fecf write Setecf;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property status     : indefinido read Fstatus write Setstatus;
    property status_os     : Integer read Fstatus_os write Setstatus_os;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPorcamentouniao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPorcamentouniao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPorcamentouniao(Model).id;
Self.Fid_empresa         := TModelERPorcamentouniao(Model).id_empresa;
Self.Ftipo         := TModelERPorcamentouniao(Model).tipo;
Self.Fnota         := TModelERPorcamentouniao(Model).nota;
Self.Fcupom         := TModelERPorcamentouniao(Model).cupom;
Self.Fdata_emissao         := TModelERPorcamentouniao(Model).data_emissao;
Self.Fhora         := TModelERPorcamentouniao(Model).hora;
Self.Fdata_saida         := TModelERPorcamentouniao(Model).data_saida;
Self.Fgerado         := TModelERPorcamentouniao(Model).gerado;
Self.Fhora_fechamento         := TModelERPorcamentouniao(Model).hora_fechamento;
Self.Fnumero_serie         := TModelERPorcamentouniao(Model).numero_serie;
Self.Fmarca         := TModelERPorcamentouniao(Model).marca;
Self.Fmodelo         := TModelERPorcamentouniao(Model).modelo;
Self.Fnota_produto         := TModelERPorcamentouniao(Model).nota_produto;
Self.Floja         := TModelERPorcamentouniao(Model).loja;
Self.Fid_cliente         := TModelERPorcamentouniao(Model).id_cliente;
Self.Fnome_cliente         := TModelERPorcamentouniao(Model).nome_cliente;
Self.Fid_vendedor         := TModelERPorcamentouniao(Model).id_vendedor;
Self.Fid_forma         := TModelERPorcamentouniao(Model).id_forma;
Self.Fid_conta         := TModelERPorcamentouniao(Model).id_conta;
Self.Fid_caixa         := TModelERPorcamentouniao(Model).id_caixa;
Self.Fid_transportadora         := TModelERPorcamentouniao(Model).id_transportadora;
Self.Fid_funcionario         := TModelERPorcamentouniao(Model).id_funcionario;
Self.Fid_credito         := TModelERPorcamentouniao(Model).id_credito;
Self.Fid_contrato         := TModelERPorcamentouniao(Model).id_contrato;
Self.Fvl_produto         := TModelERPorcamentouniao(Model).vl_produto;
Self.Fvl_servico         := TModelERPorcamentouniao(Model).vl_servico;
Self.Fvl_desconto         := TModelERPorcamentouniao(Model).vl_desconto;
Self.Fvl_frete         := TModelERPorcamentouniao(Model).vl_frete;
Self.Fvl_seguro         := TModelERPorcamentouniao(Model).vl_seguro;
Self.Fvl_outras         := TModelERPorcamentouniao(Model).vl_outras;
Self.Fvl_pago         := TModelERPorcamentouniao(Model).vl_pago;
Self.Fvl_troco         := TModelERPorcamentouniao(Model).vl_troco;
Self.Fvl_total         := TModelERPorcamentouniao(Model).vl_total;
Self.Fvl_icms         := TModelERPorcamentouniao(Model).vl_icms;
Self.Fbase_icms         := TModelERPorcamentouniao(Model).base_icms;
Self.Fbase_ipi         := TModelERPorcamentouniao(Model).base_ipi;
Self.Fbase_substituicao         := TModelERPorcamentouniao(Model).base_substituicao;
Self.Fqtd_itens         := TModelERPorcamentouniao(Model).qtd_itens;
Self.Fpercentual_desconto         := TModelERPorcamentouniao(Model).percentual_desconto;
Self.Fpeso_bruto         := TModelERPorcamentouniao(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPorcamentouniao(Model).peso_liquido;
Self.Fid_cfop         := TModelERPorcamentouniao(Model).id_cfop;
Self.Frateio         := TModelERPorcamentouniao(Model).rateio;
Self.Fduplicatacheque         := TModelERPorcamentouniao(Model).duplicatacheque;
Self.Fparcelas         := TModelERPorcamentouniao(Model).parcelas;
Self.Fvl_juros         := TModelERPorcamentouniao(Model).vl_juros;
Self.Fcomentrada         := TModelERPorcamentouniao(Model).comentrada;
Self.Fintervalo         := TModelERPorcamentouniao(Model).intervalo;
Self.Fdia         := TModelERPorcamentouniao(Model).dia;
Self.Fcotacao         := TModelERPorcamentouniao(Model).cotacao;
Self.Fid_usuario_desconto         := TModelERPorcamentouniao(Model).id_usuario_desconto;
Self.Fpercentual_usuario_desconto         := TModelERPorcamentouniao(Model).percentual_usuario_desconto;
Self.Fid_rota         := TModelERPorcamentouniao(Model).id_rota;
Self.Fid_tabela_preco         := TModelERPorcamentouniao(Model).id_tabela_preco;
Self.Fobs         := TModelERPorcamentouniao(Model).obs;
Self.Fjuros         := TModelERPorcamentouniao(Model).juros;
Self.Fplaca         := TModelERPorcamentouniao(Model).placa;
Self.Fusa_tabela         := TModelERPorcamentouniao(Model).usa_tabela;
Self.Fdefeito_reclamado         := TModelERPorcamentouniao(Model).defeito_reclamado;
Self.Fdefeito_constatado         := TModelERPorcamentouniao(Model).defeito_constatado;
Self.Fclick         := TModelERPorcamentouniao(Model).click;
Self.Fid_coringa         := TModelERPorcamentouniao(Model).id_coringa;
Self.Fuso         := TModelERPorcamentouniao(Model).uso;
Self.Fcancelada         := TModelERPorcamentouniao(Model).cancelada;
Self.Fexpedicao         := TModelERPorcamentouniao(Model).expedicao;
Self.Findicacao         := TModelERPorcamentouniao(Model).indicacao;
Self.Ffabricacao         := TModelERPorcamentouniao(Model).fabricacao;
Self.Fecf         := TModelERPorcamentouniao(Model).ecf;
Self.Fpis         := TModelERPorcamentouniao(Model).pis;
Self.Fcofins         := TModelERPorcamentouniao(Model).cofins;
Self.Fvl_icmsst         := TModelERPorcamentouniao(Model).vl_icmsst;
Self.Fstatus         := TModelERPorcamentouniao(Model).status;
Self.Fstatus_os         := TModelERPorcamentouniao(Model).status_os;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPorcamentouniao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPorcamentouniao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPorcamentouniao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPorcamentouniao.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPorcamentouniao.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPorcamentouniao.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPorcamentouniao.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPorcamentouniao.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPorcamentouniao.Setdata_saida(const Value: Boolean);   
begin                
  Fdata_saida := Value;   
end;                 

procedure TModelERPorcamentouniao.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPorcamentouniao.Sethora_fechamento(const Value: Boolean);   
begin                
  Fhora_fechamento := Value;   
end;                 

procedure TModelERPorcamentouniao.Setnumero_serie(const Value: Boolean);   
begin                
  Fnumero_serie := Value;   
end;                 

procedure TModelERPorcamentouniao.Setmarca(const Value: Boolean);   
begin                
  Fmarca := Value;   
end;                 

procedure TModelERPorcamentouniao.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPorcamentouniao.Setnota_produto(const Value: Boolean);   
begin                
  Fnota_produto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPorcamentouniao.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_transportadora(const Value: Boolean);   
begin                
  Fid_transportadora := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_contrato(const Value: Boolean);   
begin                
  Fid_contrato := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_seguro(const Value: Boolean);   
begin                
  Fvl_seguro := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_troco(const Value: Boolean);   
begin                
  Fvl_troco := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPorcamentouniao.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPorcamentouniao.Setbase_ipi(const Value: Boolean);   
begin                
  Fbase_ipi := Value;   
end;                 

procedure TModelERPorcamentouniao.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPorcamentouniao.Setqtd_itens(const Value: Boolean);   
begin                
  Fqtd_itens := Value;   
end;                 

procedure TModelERPorcamentouniao.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPorcamentouniao.Setrateio(const Value: Boolean);   
begin                
  Frateio := Value;   
end;                 

procedure TModelERPorcamentouniao.Setduplicatacheque(const Value: Boolean);   
begin                
  Fduplicatacheque := Value;   
end;                 

procedure TModelERPorcamentouniao.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPorcamentouniao.Setcomentrada(const Value: Boolean);   
begin                
  Fcomentrada := Value;   
end;                 

procedure TModelERPorcamentouniao.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPorcamentouniao.Setdia(const Value: Boolean);   
begin                
  Fdia := Value;   
end;                 

procedure TModelERPorcamentouniao.Setcotacao(const Value: Boolean);   
begin                
  Fcotacao := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_usuario_desconto(const Value: Boolean);   
begin                
  Fid_usuario_desconto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setpercentual_usuario_desconto(const Value: Boolean);   
begin                
  Fpercentual_usuario_desconto := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_rota(const Value: Boolean);   
begin                
  Fid_rota := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_tabela_preco(const Value: Boolean);   
begin                
  Fid_tabela_preco := Value;   
end;                 

procedure TModelERPorcamentouniao.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPorcamentouniao.Setjuros(const Value: Boolean);   
begin                
  Fjuros := Value;   
end;                 

procedure TModelERPorcamentouniao.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPorcamentouniao.Setusa_tabela(const Value: Boolean);   
begin                
  Fusa_tabela := Value;   
end;                 

procedure TModelERPorcamentouniao.Setdefeito_reclamado(const Value: Boolean);   
begin                
  Fdefeito_reclamado := Value;   
end;                 

procedure TModelERPorcamentouniao.Setdefeito_constatado(const Value: Boolean);   
begin                
  Fdefeito_constatado := Value;   
end;                 

procedure TModelERPorcamentouniao.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPorcamentouniao.Setid_coringa(const Value: Boolean);   
begin                
  Fid_coringa := Value;   
end;                 

procedure TModelERPorcamentouniao.Setuso(const Value: Boolean);   
begin                
  Fuso := Value;   
end;                 

procedure TModelERPorcamentouniao.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPorcamentouniao.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPorcamentouniao.Setindicacao(const Value: Boolean);   
begin                
  Findicacao := Value;   
end;                 

procedure TModelERPorcamentouniao.Setfabricacao(const Value: Boolean);   
begin                
  Ffabricacao := Value;   
end;                 

procedure TModelERPorcamentouniao.Setecf(const Value: Boolean);   
begin                
  Fecf := Value;   
end;                 

procedure TModelERPorcamentouniao.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPorcamentouniao.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPorcamentouniao.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPorcamentouniao.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPorcamentouniao.Setstatus_os(const Value: Boolean);   
begin                
  Fstatus_os := Value;   
end;                 


end.
