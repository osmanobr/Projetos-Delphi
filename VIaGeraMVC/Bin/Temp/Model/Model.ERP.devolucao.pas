unit Model.ERP.desdobramento_conta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdesdobramentoconta = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fgerado : WideString;
    Ftipo : WideString;
    Fdata : TDateTime;
    Fhora : WideString;
    Fid_cfop : Integer;
    Fnota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_vendedor : Integer;
    Fid_caixa : Integer;
    Fid_transportadora : Integer;
    Fmotorista : WideString;
    Fqtd_itens : Integer;
    Fvl_icms : Double;
    Fvl_desconto : Double;
    Fbase_icms : Double;
    Fbase_substituicao : Double;
    Fvl_produto : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fbase_ipi : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvl_total : Double;
    Fid_pedido : Integer;
    Fobs : WideString;
    Fclick : Boolean;
    Fvl_servico : Double;
    Fvl_icmsst : Double;
    Fnfe_chave : WideString;
    Fnfe : WideString;
    Fplaca : WideString;
    Fnfe_protocolo : WideString;
    Ftipo_frete : Integer;
    Fespecie : WideString;
    Fqtd_volume : Double;
    Fnro_volume : Double;
    Fpis : Double;
    Fcofins : Double;
    Fserie : WideString;
    Fnfe_placa : WideString;
    Fid_compra : Integer;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fdesconto_porcentagem : Double;
    Fnfe_protocolo_cancelada : WideString;
    Fbase_pis : Double;
    Fbase_cofins : Double;
    Fvalor_pis : Double;
    Fvalor_cofins : Double;
    Fsiscomex : Double;
    Fdeclaracao_importacao : WideString;
    Fimposto_importacao : Double;
    Fpercentual_icms : Double;
    Fid_fabricacao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setgerado(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Sethora(const Value: WideString);
    procedure Setid_cfop(const Value: Integer);
    procedure Setnota(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_transportadora(const Value: Integer);
    procedure Setmotorista(const Value: WideString);
    procedure Setqtd_itens(const Value: Integer);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_seguro(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setbase_ipi(const Value: Double);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_pedido(const Value: Integer);
    procedure Setobs(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setnfe(const Value: WideString);
    procedure Setplaca(const Value: WideString);
    procedure Setnfe_protocolo(const Value: WideString);
    procedure Settipo_frete(const Value: Integer);
    procedure Setespecie(const Value: WideString);
    procedure Setqtd_volume(const Value: Double);
    procedure Setnro_volume(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setserie(const Value: WideString);
    procedure Setnfe_placa(const Value: WideString);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setdesconto_porcentagem(const Value: Double);
    procedure Setnfe_protocolo_cancelada(const Value: WideString);
    procedure Setbase_pis(const Value: Double);
    procedure Setbase_cofins(const Value: Double);
    procedure Setvalor_pis(const Value: Double);
    procedure Setvalor_cofins(const Value: Double);
    procedure Setsiscomex(const Value: Double);
    procedure Setdeclaracao_importacao(const Value: WideString);
    procedure Setimposto_importacao(const Value: Double);
    procedure Setpercentual_icms(const Value: Double);
    procedure Setid_fabricacao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property gerado     : WideString read Fgerado write Setgerado;
    property tipo     : WideString read Ftipo write Settipo;
    property data     : TDateTime read Fdata write Setdata;
    property hora     : WideString read Fhora write Sethora;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property nota     : Integer read Fnota write Setnota;
    property cupom     : Integer read Fcupom write Setcupom;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_transportadora     : Integer read Fid_transportadora write Setid_transportadora;
    property motorista     : WideString read Fmotorista write Setmotorista;
    property qtd_itens     : Integer read Fqtd_itens write Setqtd_itens;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_seguro     : Double read Fvl_seguro write Setvl_seguro;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property base_ipi     : Double read Fbase_ipi write Setbase_ipi;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property obs     : WideString read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property nfe     : WideString read Fnfe write Setnfe;
    property placa     : WideString read Fplaca write Setplaca;
    property nfe_protocolo     : WideString read Fnfe_protocolo write Setnfe_protocolo;
    property tipo_frete     : Integer read Ftipo_frete write Settipo_frete;
    property especie     : WideString read Fespecie write Setespecie;
    property qtd_volume     : Double read Fqtd_volume write Setqtd_volume;
    property nro_volume     : Double read Fnro_volume write Setnro_volume;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property serie     : WideString read Fserie write Setserie;
    property nfe_placa     : WideString read Fnfe_placa write Setnfe_placa;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property desconto_porcentagem     : Double read Fdesconto_porcentagem write Setdesconto_porcentagem;
    property nfe_protocolo_cancelada     : WideString read Fnfe_protocolo_cancelada write Setnfe_protocolo_cancelada;
    property base_pis     : Double read Fbase_pis write Setbase_pis;
    property base_cofins     : Double read Fbase_cofins write Setbase_cofins;
    property valor_pis     : Double read Fvalor_pis write Setvalor_pis;
    property valor_cofins     : Double read Fvalor_cofins write Setvalor_cofins;
    property siscomex     : Double read Fsiscomex write Setsiscomex;
    property declaracao_importacao     : WideString read Fdeclaracao_importacao write Setdeclaracao_importacao;
    property imposto_importacao     : Double read Fimposto_importacao write Setimposto_importacao;
    property percentual_icms     : Double read Fpercentual_icms write Setpercentual_icms;
    property id_fabricacao     : Integer read Fid_fabricacao write Setid_fabricacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdesdobramentoconta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdesdobramentoconta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdesdobramentoconta(Model).id;
Self.Fid_empresa         := TModelERPdesdobramentoconta(Model).id_empresa;
Self.Fgerado         := TModelERPdesdobramentoconta(Model).gerado;
Self.Ftipo         := TModelERPdesdobramentoconta(Model).tipo;
Self.Fdata         := TModelERPdesdobramentoconta(Model).data;
Self.Fhora         := TModelERPdesdobramentoconta(Model).hora;
Self.Fid_cfop         := TModelERPdesdobramentoconta(Model).id_cfop;
Self.Fnota         := TModelERPdesdobramentoconta(Model).nota;
Self.Fcupom         := TModelERPdesdobramentoconta(Model).cupom;
Self.Fid_cliente         := TModelERPdesdobramentoconta(Model).id_cliente;
Self.Fnome_cliente         := TModelERPdesdobramentoconta(Model).nome_cliente;
Self.Fid_vendedor         := TModelERPdesdobramentoconta(Model).id_vendedor;
Self.Fid_caixa         := TModelERPdesdobramentoconta(Model).id_caixa;
Self.Fid_transportadora         := TModelERPdesdobramentoconta(Model).id_transportadora;
Self.Fmotorista         := TModelERPdesdobramentoconta(Model).motorista;
Self.Fqtd_itens         := TModelERPdesdobramentoconta(Model).qtd_itens;
Self.Fvl_icms         := TModelERPdesdobramentoconta(Model).vl_icms;
Self.Fvl_desconto         := TModelERPdesdobramentoconta(Model).vl_desconto;
Self.Fbase_icms         := TModelERPdesdobramentoconta(Model).base_icms;
Self.Fbase_substituicao         := TModelERPdesdobramentoconta(Model).base_substituicao;
Self.Fvl_produto         := TModelERPdesdobramentoconta(Model).vl_produto;
Self.Fvl_frete         := TModelERPdesdobramentoconta(Model).vl_frete;
Self.Fvl_seguro         := TModelERPdesdobramentoconta(Model).vl_seguro;
Self.Fvl_outras         := TModelERPdesdobramentoconta(Model).vl_outras;
Self.Fbase_ipi         := TModelERPdesdobramentoconta(Model).base_ipi;
Self.Fpeso_bruto         := TModelERPdesdobramentoconta(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPdesdobramentoconta(Model).peso_liquido;
Self.Fvl_total         := TModelERPdesdobramentoconta(Model).vl_total;
Self.Fid_pedido         := TModelERPdesdobramentoconta(Model).id_pedido;
Self.Fobs         := TModelERPdesdobramentoconta(Model).obs;
Self.Fclick         := TModelERPdesdobramentoconta(Model).click;
Self.Fvl_servico         := TModelERPdesdobramentoconta(Model).vl_servico;
Self.Fvl_icmsst         := TModelERPdesdobramentoconta(Model).vl_icmsst;
Self.Fnfe_chave         := TModelERPdesdobramentoconta(Model).nfe_chave;
Self.Fnfe         := TModelERPdesdobramentoconta(Model).nfe;
Self.Fplaca         := TModelERPdesdobramentoconta(Model).placa;
Self.Fnfe_protocolo         := TModelERPdesdobramentoconta(Model).nfe_protocolo;
Self.Ftipo_frete         := TModelERPdesdobramentoconta(Model).tipo_frete;
Self.Fespecie         := TModelERPdesdobramentoconta(Model).especie;
Self.Fqtd_volume         := TModelERPdesdobramentoconta(Model).qtd_volume;
Self.Fnro_volume         := TModelERPdesdobramentoconta(Model).nro_volume;
Self.Fpis         := TModelERPdesdobramentoconta(Model).pis;
Self.Fcofins         := TModelERPdesdobramentoconta(Model).cofins;
Self.Fserie         := TModelERPdesdobramentoconta(Model).serie;
Self.Fnfe_placa         := TModelERPdesdobramentoconta(Model).nfe_placa;
Self.Fid_compra         := TModelERPdesdobramentoconta(Model).id_compra;
Self.Fid_fornecedor         := TModelERPdesdobramentoconta(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPdesdobramentoconta(Model).nome_fornecedor;
Self.Fdesconto_porcentagem         := TModelERPdesdobramentoconta(Model).desconto_porcentagem;
Self.Fnfe_protocolo_cancelada         := TModelERPdesdobramentoconta(Model).nfe_protocolo_cancelada;
Self.Fbase_pis         := TModelERPdesdobramentoconta(Model).base_pis;
Self.Fbase_cofins         := TModelERPdesdobramentoconta(Model).base_cofins;
Self.Fvalor_pis         := TModelERPdesdobramentoconta(Model).valor_pis;
Self.Fvalor_cofins         := TModelERPdesdobramentoconta(Model).valor_cofins;
Self.Fsiscomex         := TModelERPdesdobramentoconta(Model).siscomex;
Self.Fdeclaracao_importacao         := TModelERPdesdobramentoconta(Model).declaracao_importacao;
Self.Fimposto_importacao         := TModelERPdesdobramentoconta(Model).imposto_importacao;
Self.Fpercentual_icms         := TModelERPdesdobramentoconta(Model).percentual_icms;
Self.Fid_fabricacao         := TModelERPdesdobramentoconta(Model).id_fabricacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdesdobramentoconta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdesdobramentoconta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdesdobramentoconta.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_transportadora(const Value: Boolean);   
begin                
  Fid_transportadora := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setqtd_itens(const Value: Boolean);   
begin                
  Fqtd_itens := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_seguro(const Value: Boolean);   
begin                
  Fvl_seguro := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setbase_ipi(const Value: Boolean);   
begin                
  Fbase_ipi := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnfe_protocolo(const Value: Boolean);   
begin                
  Fnfe_protocolo := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Settipo_frete(const Value: Boolean);   
begin                
  Ftipo_frete := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setespecie(const Value: Boolean);   
begin                
  Fespecie := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setqtd_volume(const Value: Boolean);   
begin                
  Fqtd_volume := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnro_volume(const Value: Boolean);   
begin                
  Fnro_volume := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnfe_placa(const Value: Boolean);   
begin                
  Fnfe_placa := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setdesconto_porcentagem(const Value: Boolean);   
begin                
  Fdesconto_porcentagem := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setnfe_protocolo_cancelada(const Value: Boolean);   
begin                
  Fnfe_protocolo_cancelada := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setbase_pis(const Value: Boolean);   
begin                
  Fbase_pis := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setbase_cofins(const Value: Boolean);   
begin                
  Fbase_cofins := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvalor_pis(const Value: Boolean);   
begin                
  Fvalor_pis := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setvalor_cofins(const Value: Boolean);   
begin                
  Fvalor_cofins := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setsiscomex(const Value: Boolean);   
begin                
  Fsiscomex := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setdeclaracao_importacao(const Value: Boolean);   
begin                
  Fdeclaracao_importacao := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setimposto_importacao(const Value: Boolean);   
begin                
  Fimposto_importacao := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setpercentual_icms(const Value: Boolean);   
begin                
  Fpercentual_icms := Value;   
end;                 

procedure TModelERPdesdobramentoconta.Setid_fabricacao(const Value: Boolean);   
begin                
  Fid_fabricacao := Value;   
end;                 


end.
