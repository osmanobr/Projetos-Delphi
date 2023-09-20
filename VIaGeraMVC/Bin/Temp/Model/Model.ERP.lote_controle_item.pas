unit Model.ERP.lote_controle;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlotecontrole = class(TModelBase)

private
    Fid : Integer;
    Fid_lote : Integer;
    Fid_venda : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Fdata_fabricacao : TDateTime;
    Fdata_validade : TDateTime;
    Funidade : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fnro_garantia : WideString;
    Fdata_garantia : TDateTime;
    Fid_grupo : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_fornecedor : Integer;
    Fid_vendedor : Integer;
    Fst : WideString;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fdiferido : WideString;
    Fcancelada : WideString;
    Fclick : Boolean;
    Festoque : WideString;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fdevolucao : WideString;
    Fid_planocelular : Integer;
    Fnro_celular : WideString;
    Ftipoplano : WideString;
    Fvalor_plano : Double;
    Fvalor_recarga : Double;
    Fdata_ativacao : TDateTime;
    Fmigracao_prepos : WideString;
    Ftroca_pospago : WideString;
    Fexpedicao : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fid_carga : Integer;
    Fqtd_entregue : Double;
    Fvl_icmsst : Double;
    Fvlbc_icms : Double;
    Fbase_substituicao : Double;
    Fpis : Double;
    Fcofins : Double;
    Flote : WideString;
    Ffpb_posologia : Double;
    Ffpb_dias : Double;
    Fcst : WideString;
    Fvl_custo : Double;
    Fprodutor_ativo : WideString;
    Fbico : WideString;
    Fipi : Double;
    Festoque_saida : WideString;
    Fquantidade_devolucao : Double;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fcfop : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fbc_st : WideString;
    Fid_pedido_alm : Integer;
    Fid_produto_alm : Integer;
    Fvl_fcp_uf_dest : Double;
    Fvl_icms_uf_dest : Double;
    Fvl_icms_uf_rem : Double;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fqdt_devolvida : Integer;
    Fcfop_externo : Integer;
    Funitario_original : Double;
    Fvl_unitario_itens_caixa : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setdata_fabricacao(const Value: TDateTime);
    procedure Setdata_validade(const Value: TDateTime);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setnro_garantia(const Value: WideString);
    procedure Setdata_garantia(const Value: TDateTime);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Seticms_cupom(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_ipi(const Value: Double);
    procedure Setdiferido(const Value: WideString);
    procedure Setcancelada(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setestoque(const Value: WideString);
    procedure Setitem(const Value: Integer);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: WideString);
    procedure Settam_grade(const Value: WideString);
    procedure Setdevolucao(const Value: WideString);
    procedure Setid_planocelular(const Value: Integer);
    procedure Setnro_celular(const Value: WideString);
    procedure Settipoplano(const Value: WideString);
    procedure Setvalor_plano(const Value: Double);
    procedure Setvalor_recarga(const Value: Double);
    procedure Setdata_ativacao(const Value: TDateTime);
    procedure Setmigracao_prepos(const Value: WideString);
    procedure Settroca_pospago(const Value: WideString);
    procedure Setexpedicao(const Value: WideString);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setid_carga(const Value: Integer);
    procedure Setqtd_entregue(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setvlbc_icms(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setlote(const Value: WideString);
    procedure Setfpb_posologia(const Value: Double);
    procedure Setfpb_dias(const Value: Double);
    procedure Setcst(const Value: WideString);
    procedure Setvl_custo(const Value: Double);
    procedure Setprodutor_ativo(const Value: WideString);
    procedure Setbico(const Value: WideString);
    procedure Setipi(const Value: Double);
    procedure Setestoque_saida(const Value: WideString);
    procedure Setquantidade_devolucao(const Value: Double);
    procedure Settaxa_ibpt(const Value: Double);
    procedure Settaxa_valor(const Value: Double);
    procedure Setcfop(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setbc_st(const Value: WideString);
    procedure Setid_pedido_alm(const Value: Integer);
    procedure Setid_produto_alm(const Value: Integer);
    procedure Setvl_fcp_uf_dest(const Value: Double);
    procedure Setvl_icms_uf_dest(const Value: Double);
    procedure Setvl_icms_uf_rem(const Value: Double);
    procedure Settaxa_federal(const Value: Double);
    procedure Settaxa_estadual(const Value: Double);
    procedure Settaxa_municipal(const Value: Double);
    procedure Setvalor_federal(const Value: Double);
    procedure Setvalor_estadual(const Value: Double);
    procedure Setvalor_municipal(const Value: Double);
    procedure Setqdt_devolvida(const Value: Integer);
    procedure Setcfop_externo(const Value: Integer);
    procedure Setunitario_original(const Value: Double);
    procedure Setvl_unitario_itens_caixa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property data     : TDateTime read Fdata write Setdata;
    property data_fabricacao     : TDateTime read Fdata_fabricacao write Setdata_fabricacao;
    property data_validade     : TDateTime read Fdata_validade write Setdata_validade;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property nro_garantia     : WideString read Fnro_garantia write Setnro_garantia;
    property data_garantia     : TDateTime read Fdata_garantia write Setdata_garantia;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property icms_cupom     : Double read Ficms_cupom write Seticms_cupom;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property diferido     : WideString read Fdiferido write Setdiferido;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property click     : Boolean read Fclick write Setclick;
    property estoque     : WideString read Festoque write Setestoque;
    property item     : Integer read Fitem write Setitem;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : WideString read Fcor_grade write Setcor_grade;
    property tam_grade     : WideString read Ftam_grade write Settam_grade;
    property devolucao     : WideString read Fdevolucao write Setdevolucao;
    property id_planocelular     : Integer read Fid_planocelular write Setid_planocelular;
    property nro_celular     : WideString read Fnro_celular write Setnro_celular;
    property tipoplano     : WideString read Ftipoplano write Settipoplano;
    property valor_plano     : Double read Fvalor_plano write Setvalor_plano;
    property valor_recarga     : Double read Fvalor_recarga write Setvalor_recarga;
    property data_ativacao     : TDateTime read Fdata_ativacao write Setdata_ativacao;
    property migracao_prepos     : WideString read Fmigracao_prepos write Setmigracao_prepos;
    property troca_pospago     : WideString read Ftroca_pospago write Settroca_pospago;
    property expedicao     : WideString read Fexpedicao write Setexpedicao;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property id_carga     : Integer read Fid_carga write Setid_carga;
    property qtd_entregue     : Double read Fqtd_entregue write Setqtd_entregue;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property vlbc_icms     : Double read Fvlbc_icms write Setvlbc_icms;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property lote     : WideString read Flote write Setlote;
    property fpb_posologia     : Double read Ffpb_posologia write Setfpb_posologia;
    property fpb_dias     : Double read Ffpb_dias write Setfpb_dias;
    property cst     : WideString read Fcst write Setcst;
    property vl_custo     : Double read Fvl_custo write Setvl_custo;
    property produtor_ativo     : WideString read Fprodutor_ativo write Setprodutor_ativo;
    property bico     : WideString read Fbico write Setbico;
    property ipi     : Double read Fipi write Setipi;
    property estoque_saida     : WideString read Festoque_saida write Setestoque_saida;
    property quantidade_devolucao     : Double read Fquantidade_devolucao write Setquantidade_devolucao;
    property taxa_ibpt     : Double read Ftaxa_ibpt write Settaxa_ibpt;
    property taxa_valor     : Double read Ftaxa_valor write Settaxa_valor;
    property cfop     : Integer read Fcfop write Setcfop;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property bc_st     : WideString read Fbc_st write Setbc_st;
    property id_pedido_alm     : Integer read Fid_pedido_alm write Setid_pedido_alm;
    property id_produto_alm     : Integer read Fid_produto_alm write Setid_produto_alm;
    property vl_fcp_uf_dest     : Double read Fvl_fcp_uf_dest write Setvl_fcp_uf_dest;
    property vl_icms_uf_dest     : Double read Fvl_icms_uf_dest write Setvl_icms_uf_dest;
    property vl_icms_uf_rem     : Double read Fvl_icms_uf_rem write Setvl_icms_uf_rem;
    property taxa_federal     : Double read Ftaxa_federal write Settaxa_federal;
    property taxa_estadual     : Double read Ftaxa_estadual write Settaxa_estadual;
    property taxa_municipal     : Double read Ftaxa_municipal write Settaxa_municipal;
    property valor_federal     : Double read Fvalor_federal write Setvalor_federal;
    property valor_estadual     : Double read Fvalor_estadual write Setvalor_estadual;
    property valor_municipal     : Double read Fvalor_municipal write Setvalor_municipal;
    property qdt_devolvida     : Integer read Fqdt_devolvida write Setqdt_devolvida;
    property cfop_externo     : Integer read Fcfop_externo write Setcfop_externo;
    property unitario_original     : Double read Funitario_original write Setunitario_original;
    property vl_unitario_itens_caixa     : Double read Fvl_unitario_itens_caixa write Setvl_unitario_itens_caixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlotecontrole.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlotecontrole) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlotecontrole(Model).id;
Self.Fid_lote         := TModelERPlotecontrole(Model).id_lote;
Self.Fid_venda         := TModelERPlotecontrole(Model).id_venda;
Self.Fid_empresa         := TModelERPlotecontrole(Model).id_empresa;
Self.Fid_produto         := TModelERPlotecontrole(Model).id_produto;
Self.Fnome_produto         := TModelERPlotecontrole(Model).nome_produto;
Self.Fdata         := TModelERPlotecontrole(Model).data;
Self.Fdata_fabricacao         := TModelERPlotecontrole(Model).data_fabricacao;
Self.Fdata_validade         := TModelERPlotecontrole(Model).data_validade;
Self.Funidade         := TModelERPlotecontrole(Model).unidade;
Self.Fquantidade         := TModelERPlotecontrole(Model).quantidade;
Self.Fvl_unitario         := TModelERPlotecontrole(Model).vl_unitario;
Self.Fvl_desconto         := TModelERPlotecontrole(Model).vl_desconto;
Self.Fvl_total         := TModelERPlotecontrole(Model).vl_total;
Self.Fnro_garantia         := TModelERPlotecontrole(Model).nro_garantia;
Self.Fdata_garantia         := TModelERPlotecontrole(Model).data_garantia;
Self.Fid_grupo         := TModelERPlotecontrole(Model).id_grupo;
Self.Fid_funcionario         := TModelERPlotecontrole(Model).id_funcionario;
Self.Fid_cliente         := TModelERPlotecontrole(Model).id_cliente;
Self.Fid_fornecedor         := TModelERPlotecontrole(Model).id_fornecedor;
Self.Fid_vendedor         := TModelERPlotecontrole(Model).id_vendedor;
Self.Fst         := TModelERPlotecontrole(Model).st;
Self.Ficms         := TModelERPlotecontrole(Model).icms;
Self.Ficms_cupom         := TModelERPlotecontrole(Model).icms_cupom;
Self.Fvl_icms         := TModelERPlotecontrole(Model).vl_icms;
Self.Fvl_ipi         := TModelERPlotecontrole(Model).vl_ipi;
Self.Fdiferido         := TModelERPlotecontrole(Model).diferido;
Self.Fcancelada         := TModelERPlotecontrole(Model).cancelada;
Self.Fclick         := TModelERPlotecontrole(Model).click;
Self.Festoque         := TModelERPlotecontrole(Model).estoque;
Self.Fitem         := TModelERPlotecontrole(Model).item;
Self.Fid_grade         := TModelERPlotecontrole(Model).id_grade;
Self.Fcor_grade         := TModelERPlotecontrole(Model).cor_grade;
Self.Ftam_grade         := TModelERPlotecontrole(Model).tam_grade;
Self.Fdevolucao         := TModelERPlotecontrole(Model).devolucao;
Self.Fid_planocelular         := TModelERPlotecontrole(Model).id_planocelular;
Self.Fnro_celular         := TModelERPlotecontrole(Model).nro_celular;
Self.Ftipoplano         := TModelERPlotecontrole(Model).tipoplano;
Self.Fvalor_plano         := TModelERPlotecontrole(Model).valor_plano;
Self.Fvalor_recarga         := TModelERPlotecontrole(Model).valor_recarga;
Self.Fdata_ativacao         := TModelERPlotecontrole(Model).data_ativacao;
Self.Fmigracao_prepos         := TModelERPlotecontrole(Model).migracao_prepos;
Self.Ftroca_pospago         := TModelERPlotecontrole(Model).troca_pospago;
Self.Fexpedicao         := TModelERPlotecontrole(Model).expedicao;
Self.Fpeso_bruto         := TModelERPlotecontrole(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPlotecontrole(Model).peso_liquido;
Self.Fid_carga         := TModelERPlotecontrole(Model).id_carga;
Self.Fqtd_entregue         := TModelERPlotecontrole(Model).qtd_entregue;
Self.Fvl_icmsst         := TModelERPlotecontrole(Model).vl_icmsst;
Self.Fvlbc_icms         := TModelERPlotecontrole(Model).vlbc_icms;
Self.Fbase_substituicao         := TModelERPlotecontrole(Model).base_substituicao;
Self.Fpis         := TModelERPlotecontrole(Model).pis;
Self.Fcofins         := TModelERPlotecontrole(Model).cofins;
Self.Flote         := TModelERPlotecontrole(Model).lote;
Self.Ffpb_posologia         := TModelERPlotecontrole(Model).fpb_posologia;
Self.Ffpb_dias         := TModelERPlotecontrole(Model).fpb_dias;
Self.Fcst         := TModelERPlotecontrole(Model).cst;
Self.Fvl_custo         := TModelERPlotecontrole(Model).vl_custo;
Self.Fprodutor_ativo         := TModelERPlotecontrole(Model).produtor_ativo;
Self.Fbico         := TModelERPlotecontrole(Model).bico;
Self.Fipi         := TModelERPlotecontrole(Model).ipi;
Self.Festoque_saida         := TModelERPlotecontrole(Model).estoque_saida;
Self.Fquantidade_devolucao         := TModelERPlotecontrole(Model).quantidade_devolucao;
Self.Ftaxa_ibpt         := TModelERPlotecontrole(Model).taxa_ibpt;
Self.Ftaxa_valor         := TModelERPlotecontrole(Model).taxa_valor;
Self.Fcfop         := TModelERPlotecontrole(Model).cfop;
Self.Fid_movimento         := TModelERPlotecontrole(Model).id_movimento;
Self.Fid_cupons         := TModelERPlotecontrole(Model).id_cupons;
Self.Fbc_st         := TModelERPlotecontrole(Model).bc_st;
Self.Fid_pedido_alm         := TModelERPlotecontrole(Model).id_pedido_alm;
Self.Fid_produto_alm         := TModelERPlotecontrole(Model).id_produto_alm;
Self.Fvl_fcp_uf_dest         := TModelERPlotecontrole(Model).vl_fcp_uf_dest;
Self.Fvl_icms_uf_dest         := TModelERPlotecontrole(Model).vl_icms_uf_dest;
Self.Fvl_icms_uf_rem         := TModelERPlotecontrole(Model).vl_icms_uf_rem;
Self.Ftaxa_federal         := TModelERPlotecontrole(Model).taxa_federal;
Self.Ftaxa_estadual         := TModelERPlotecontrole(Model).taxa_estadual;
Self.Ftaxa_municipal         := TModelERPlotecontrole(Model).taxa_municipal;
Self.Fvalor_federal         := TModelERPlotecontrole(Model).valor_federal;
Self.Fvalor_estadual         := TModelERPlotecontrole(Model).valor_estadual;
Self.Fvalor_municipal         := TModelERPlotecontrole(Model).valor_municipal;
Self.Fqdt_devolvida         := TModelERPlotecontrole(Model).qdt_devolvida;
Self.Fcfop_externo         := TModelERPlotecontrole(Model).cfop_externo;
Self.Funitario_original         := TModelERPlotecontrole(Model).unitario_original;
Self.Fvl_unitario_itens_caixa         := TModelERPlotecontrole(Model).vl_unitario_itens_caixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlotecontrole.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlotecontrole.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlotecontrole.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPlotecontrole.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPlotecontrole.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlotecontrole.Setdata_fabricacao(const Value: Boolean);   
begin                
  Fdata_fabricacao := Value;   
end;                 

procedure TModelERPlotecontrole.Setdata_validade(const Value: Boolean);   
begin                
  Fdata_validade := Value;   
end;                 

procedure TModelERPlotecontrole.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPlotecontrole.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPlotecontrole.Setnro_garantia(const Value: Boolean);   
begin                
  Fnro_garantia := Value;   
end;                 

procedure TModelERPlotecontrole.Setdata_garantia(const Value: Boolean);   
begin                
  Fdata_garantia := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPlotecontrole.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPlotecontrole.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPlotecontrole.Seticms_cupom(const Value: Boolean);   
begin                
  Ficms_cupom := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPlotecontrole.Setdiferido(const Value: Boolean);   
begin                
  Fdiferido := Value;   
end;                 

procedure TModelERPlotecontrole.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPlotecontrole.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPlotecontrole.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPlotecontrole.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPlotecontrole.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPlotecontrole.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPlotecontrole.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_planocelular(const Value: Boolean);   
begin                
  Fid_planocelular := Value;   
end;                 

procedure TModelERPlotecontrole.Setnro_celular(const Value: Boolean);   
begin                
  Fnro_celular := Value;   
end;                 

procedure TModelERPlotecontrole.Settipoplano(const Value: Boolean);   
begin                
  Ftipoplano := Value;   
end;                 

procedure TModelERPlotecontrole.Setvalor_plano(const Value: Boolean);   
begin                
  Fvalor_plano := Value;   
end;                 

procedure TModelERPlotecontrole.Setvalor_recarga(const Value: Boolean);   
begin                
  Fvalor_recarga := Value;   
end;                 

procedure TModelERPlotecontrole.Setdata_ativacao(const Value: Boolean);   
begin                
  Fdata_ativacao := Value;   
end;                 

procedure TModelERPlotecontrole.Setmigracao_prepos(const Value: Boolean);   
begin                
  Fmigracao_prepos := Value;   
end;                 

procedure TModelERPlotecontrole.Settroca_pospago(const Value: Boolean);   
begin                
  Ftroca_pospago := Value;   
end;                 

procedure TModelERPlotecontrole.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPlotecontrole.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPlotecontrole.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_carga(const Value: Boolean);   
begin                
  Fid_carga := Value;   
end;                 

procedure TModelERPlotecontrole.Setqtd_entregue(const Value: Boolean);   
begin                
  Fqtd_entregue := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPlotecontrole.Setvlbc_icms(const Value: Boolean);   
begin                
  Fvlbc_icms := Value;   
end;                 

procedure TModelERPlotecontrole.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPlotecontrole.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPlotecontrole.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPlotecontrole.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPlotecontrole.Setfpb_posologia(const Value: Boolean);   
begin                
  Ffpb_posologia := Value;   
end;                 

procedure TModelERPlotecontrole.Setfpb_dias(const Value: Boolean);   
begin                
  Ffpb_dias := Value;   
end;                 

procedure TModelERPlotecontrole.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_custo(const Value: Boolean);   
begin                
  Fvl_custo := Value;   
end;                 

procedure TModelERPlotecontrole.Setprodutor_ativo(const Value: Boolean);   
begin                
  Fprodutor_ativo := Value;   
end;                 

procedure TModelERPlotecontrole.Setbico(const Value: Boolean);   
begin                
  Fbico := Value;   
end;                 

procedure TModelERPlotecontrole.Setipi(const Value: Boolean);   
begin                
  Fipi := Value;   
end;                 

procedure TModelERPlotecontrole.Setestoque_saida(const Value: Boolean);   
begin                
  Festoque_saida := Value;   
end;                 

procedure TModelERPlotecontrole.Setquantidade_devolucao(const Value: Boolean);   
begin                
  Fquantidade_devolucao := Value;   
end;                 

procedure TModelERPlotecontrole.Settaxa_ibpt(const Value: Boolean);   
begin                
  Ftaxa_ibpt := Value;   
end;                 

procedure TModelERPlotecontrole.Settaxa_valor(const Value: Boolean);   
begin                
  Ftaxa_valor := Value;   
end;                 

procedure TModelERPlotecontrole.Setcfop(const Value: Boolean);   
begin                
  Fcfop := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPlotecontrole.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_pedido_alm(const Value: Boolean);   
begin                
  Fid_pedido_alm := Value;   
end;                 

procedure TModelERPlotecontrole.Setid_produto_alm(const Value: Boolean);   
begin                
  Fid_produto_alm := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_fcp_uf_dest(const Value: Boolean);   
begin                
  Fvl_fcp_uf_dest := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_icms_uf_dest(const Value: Boolean);   
begin                
  Fvl_icms_uf_dest := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_icms_uf_rem(const Value: Boolean);   
begin                
  Fvl_icms_uf_rem := Value;   
end;                 

procedure TModelERPlotecontrole.Settaxa_federal(const Value: Boolean);   
begin                
  Ftaxa_federal := Value;   
end;                 

procedure TModelERPlotecontrole.Settaxa_estadual(const Value: Boolean);   
begin                
  Ftaxa_estadual := Value;   
end;                 

procedure TModelERPlotecontrole.Settaxa_municipal(const Value: Boolean);   
begin                
  Ftaxa_municipal := Value;   
end;                 

procedure TModelERPlotecontrole.Setvalor_federal(const Value: Boolean);   
begin                
  Fvalor_federal := Value;   
end;                 

procedure TModelERPlotecontrole.Setvalor_estadual(const Value: Boolean);   
begin                
  Fvalor_estadual := Value;   
end;                 

procedure TModelERPlotecontrole.Setvalor_municipal(const Value: Boolean);   
begin                
  Fvalor_municipal := Value;   
end;                 

procedure TModelERPlotecontrole.Setqdt_devolvida(const Value: Boolean);   
begin                
  Fqdt_devolvida := Value;   
end;                 

procedure TModelERPlotecontrole.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPlotecontrole.Setunitario_original(const Value: Boolean);   
begin                
  Funitario_original := Value;   
end;                 

procedure TModelERPlotecontrole.Setvl_unitario_itens_caixa(const Value: Boolean);   
begin                
  Fvl_unitario_itens_caixa := Value;   
end;                 


end.
