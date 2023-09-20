unit Model.ERP.compra_grade;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcompragrade = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_compra : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Ffracionado : WideString;
    Fitens : Double;
    Flote : WideString;
    Funitario : Double;
    Fdesconto_percentual : Double;
    Fdesconto_valor : Double;
    Ftotal : Double;
    Ficms_percentual : Double;
    Ficms_valor : Double;
    Fipi_percentual : Double;
    Fipi_valor : Double;
    Fid_grade : Integer;
    Fvl_substituicao : Double;
    Fpreco_venda : Double;
    Fbase_icms : Double;
    Freducao : Double;
    Fcfop : WideString;
    Fcst : WideString;
    Fbase_st : Double;
    Fnt_codigo_produto : WideString;
    Fnt_codigo_fabricante : WideString;
    Fnt_unidade : WideString;
    Fnt_ncm : WideString;
    Fnt_vl_frete : Double;
    Fnt_id_fornecedor : Integer;
    Fnt_st : WideString;
    Fnt_cst_cofins : WideString;
    Fnt_vl_cofins : Double;
    Fnt_cst_pis : WideString;
    Fnt_vl_pis : Double;
    Fnt_encontrou : WideString;
    Fitem : Integer;
    Fproduto_insumo : WideString;
    Fnt_cst : WideString;
    Fnt_cfop : WideString;
    Fgrupo : Integer;
    Fsaida_st : WideString;
    Fsaida_icms : Double;
    Funitario_anterior : Double;
    Fcst_pis : WideString;
    Fcst_cofins : WideString;
    Fpicmsst : Double;
    Fcod_associacao : Integer;
    Fcod_fabricante_associacao : WideString;
    Foutras_despesas : Double;
    Fdevolucao : WideString;
    Ftipo : WideString;
    Fformacao_preco : Boolean;
    Fqtd_devol : Double;
    Fqtd_embalagem_itens : Double;
    Fqtd_metro_cubico : Double;
    Fnome_produto_nota : WideString;
    Fcst_sped : WideString;
    Fmargem_lucro_percent : Double;
    Fmargem_lucro : Double;
    Fvl_unitario_fracionado : Double;
    Fean_produto : WideString;
    Fmargem_bruta_percentual : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setfracionado(const Value: WideString);
    procedure Setitens(const Value: Double);
    procedure Setlote(const Value: WideString);
    procedure Setunitario(const Value: Double);
    procedure Setdesconto_percentual(const Value: Double);
    procedure Setdesconto_valor(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Seticms_percentual(const Value: Double);
    procedure Seticms_valor(const Value: Double);
    procedure Setipi_percentual(const Value: Double);
    procedure Setipi_valor(const Value: Double);
    procedure Setid_grade(const Value: Integer);
    procedure Setvl_substituicao(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setcfop(const Value: WideString);
    procedure Setcst(const Value: WideString);
    procedure Setbase_st(const Value: Double);
    procedure Setnt_codigo_produto(const Value: WideString);
    procedure Setnt_codigo_fabricante(const Value: WideString);
    procedure Setnt_unidade(const Value: WideString);
    procedure Setnt_ncm(const Value: WideString);
    procedure Setnt_vl_frete(const Value: Double);
    procedure Setnt_id_fornecedor(const Value: Integer);
    procedure Setnt_st(const Value: WideString);
    procedure Setnt_cst_cofins(const Value: WideString);
    procedure Setnt_vl_cofins(const Value: Double);
    procedure Setnt_cst_pis(const Value: WideString);
    procedure Setnt_vl_pis(const Value: Double);
    procedure Setnt_encontrou(const Value: WideString);
    procedure Setitem(const Value: Integer);
    procedure Setproduto_insumo(const Value: WideString);
    procedure Setnt_cst(const Value: WideString);
    procedure Setnt_cfop(const Value: WideString);
    procedure Setgrupo(const Value: Integer);
    procedure Setsaida_st(const Value: WideString);
    procedure Setsaida_icms(const Value: Double);
    procedure Setunitario_anterior(const Value: Double);
    procedure Setcst_pis(const Value: WideString);
    procedure Setcst_cofins(const Value: WideString);
    procedure Setpicmsst(const Value: Double);
    procedure Setcod_associacao(const Value: Integer);
    procedure Setcod_fabricante_associacao(const Value: WideString);
    procedure Setoutras_despesas(const Value: Double);
    procedure Setdevolucao(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setformacao_preco(const Value: Boolean);
    procedure Setqtd_devol(const Value: Double);
    procedure Setqtd_embalagem_itens(const Value: Double);
    procedure Setqtd_metro_cubico(const Value: Double);
    procedure Setnome_produto_nota(const Value: WideString);
    procedure Setcst_sped(const Value: WideString);
    procedure Setmargem_lucro_percent(const Value: Double);
    procedure Setmargem_lucro(const Value: Double);
    procedure Setvl_unitario_fracionado(const Value: Double);
    procedure Setean_produto(const Value: WideString);
    procedure Setmargem_bruta_percentual(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property fracionado     : WideString read Ffracionado write Setfracionado;
    property itens     : Double read Fitens write Setitens;
    property lote     : WideString read Flote write Setlote;
    property unitario     : Double read Funitario write Setunitario;
    property desconto_percentual     : Double read Fdesconto_percentual write Setdesconto_percentual;
    property desconto_valor     : Double read Fdesconto_valor write Setdesconto_valor;
    property total     : Double read Ftotal write Settotal;
    property icms_percentual     : Double read Ficms_percentual write Seticms_percentual;
    property icms_valor     : Double read Ficms_valor write Seticms_valor;
    property ipi_percentual     : Double read Fipi_percentual write Setipi_percentual;
    property ipi_valor     : Double read Fipi_valor write Setipi_valor;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property vl_substituicao     : Double read Fvl_substituicao write Setvl_substituicao;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property reducao     : Double read Freducao write Setreducao;
    property cfop     : WideString read Fcfop write Setcfop;
    property cst     : WideString read Fcst write Setcst;
    property base_st     : Double read Fbase_st write Setbase_st;
    property nt_codigo_produto     : WideString read Fnt_codigo_produto write Setnt_codigo_produto;
    property nt_codigo_fabricante     : WideString read Fnt_codigo_fabricante write Setnt_codigo_fabricante;
    property nt_unidade     : WideString read Fnt_unidade write Setnt_unidade;
    property nt_ncm     : WideString read Fnt_ncm write Setnt_ncm;
    property nt_vl_frete     : Double read Fnt_vl_frete write Setnt_vl_frete;
    property nt_id_fornecedor     : Integer read Fnt_id_fornecedor write Setnt_id_fornecedor;
    property nt_st     : WideString read Fnt_st write Setnt_st;
    property nt_cst_cofins     : WideString read Fnt_cst_cofins write Setnt_cst_cofins;
    property nt_vl_cofins     : Double read Fnt_vl_cofins write Setnt_vl_cofins;
    property nt_cst_pis     : WideString read Fnt_cst_pis write Setnt_cst_pis;
    property nt_vl_pis     : Double read Fnt_vl_pis write Setnt_vl_pis;
    property nt_encontrou     : WideString read Fnt_encontrou write Setnt_encontrou;
    property item     : Integer read Fitem write Setitem;
    property produto_insumo     : WideString read Fproduto_insumo write Setproduto_insumo;
    property nt_cst     : WideString read Fnt_cst write Setnt_cst;
    property nt_cfop     : WideString read Fnt_cfop write Setnt_cfop;
    property grupo     : Integer read Fgrupo write Setgrupo;
    property saida_st     : WideString read Fsaida_st write Setsaida_st;
    property saida_icms     : Double read Fsaida_icms write Setsaida_icms;
    property unitario_anterior     : Double read Funitario_anterior write Setunitario_anterior;
    property cst_pis     : WideString read Fcst_pis write Setcst_pis;
    property cst_cofins     : WideString read Fcst_cofins write Setcst_cofins;
    property picmsst     : Double read Fpicmsst write Setpicmsst;
    property cod_associacao     : Integer read Fcod_associacao write Setcod_associacao;
    property cod_fabricante_associacao     : WideString read Fcod_fabricante_associacao write Setcod_fabricante_associacao;
    property outras_despesas     : Double read Foutras_despesas write Setoutras_despesas;
    property devolucao     : WideString read Fdevolucao write Setdevolucao;
    property tipo     : WideString read Ftipo write Settipo;
    property formacao_preco     : Boolean read Fformacao_preco write Setformacao_preco;
    property qtd_devol     : Double read Fqtd_devol write Setqtd_devol;
    property qtd_embalagem_itens     : Double read Fqtd_embalagem_itens write Setqtd_embalagem_itens;
    property qtd_metro_cubico     : Double read Fqtd_metro_cubico write Setqtd_metro_cubico;
    property nome_produto_nota     : WideString read Fnome_produto_nota write Setnome_produto_nota;
    property cst_sped     : WideString read Fcst_sped write Setcst_sped;
    property margem_lucro_percent     : Double read Fmargem_lucro_percent write Setmargem_lucro_percent;
    property margem_lucro     : Double read Fmargem_lucro write Setmargem_lucro;
    property vl_unitario_fracionado     : Double read Fvl_unitario_fracionado write Setvl_unitario_fracionado;
    property ean_produto     : WideString read Fean_produto write Setean_produto;
    property margem_bruta_percentual     : Double read Fmargem_bruta_percentual write Setmargem_bruta_percentual;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcompragrade.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcompragrade) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcompragrade(Model).id;
Self.Fid_empresa         := TModelERPcompragrade(Model).id_empresa;
Self.Fid_compra         := TModelERPcompragrade(Model).id_compra;
Self.Fid_produto         := TModelERPcompragrade(Model).id_produto;
Self.Fnome_produto         := TModelERPcompragrade(Model).nome_produto;
Self.Fquantidade         := TModelERPcompragrade(Model).quantidade;
Self.Ffracionado         := TModelERPcompragrade(Model).fracionado;
Self.Fitens         := TModelERPcompragrade(Model).itens;
Self.Flote         := TModelERPcompragrade(Model).lote;
Self.Funitario         := TModelERPcompragrade(Model).unitario;
Self.Fdesconto_percentual         := TModelERPcompragrade(Model).desconto_percentual;
Self.Fdesconto_valor         := TModelERPcompragrade(Model).desconto_valor;
Self.Ftotal         := TModelERPcompragrade(Model).total;
Self.Ficms_percentual         := TModelERPcompragrade(Model).icms_percentual;
Self.Ficms_valor         := TModelERPcompragrade(Model).icms_valor;
Self.Fipi_percentual         := TModelERPcompragrade(Model).ipi_percentual;
Self.Fipi_valor         := TModelERPcompragrade(Model).ipi_valor;
Self.Fid_grade         := TModelERPcompragrade(Model).id_grade;
Self.Fvl_substituicao         := TModelERPcompragrade(Model).vl_substituicao;
Self.Fpreco_venda         := TModelERPcompragrade(Model).preco_venda;
Self.Fbase_icms         := TModelERPcompragrade(Model).base_icms;
Self.Freducao         := TModelERPcompragrade(Model).reducao;
Self.Fcfop         := TModelERPcompragrade(Model).cfop;
Self.Fcst         := TModelERPcompragrade(Model).cst;
Self.Fbase_st         := TModelERPcompragrade(Model).base_st;
Self.Fnt_codigo_produto         := TModelERPcompragrade(Model).nt_codigo_produto;
Self.Fnt_codigo_fabricante         := TModelERPcompragrade(Model).nt_codigo_fabricante;
Self.Fnt_unidade         := TModelERPcompragrade(Model).nt_unidade;
Self.Fnt_ncm         := TModelERPcompragrade(Model).nt_ncm;
Self.Fnt_vl_frete         := TModelERPcompragrade(Model).nt_vl_frete;
Self.Fnt_id_fornecedor         := TModelERPcompragrade(Model).nt_id_fornecedor;
Self.Fnt_st         := TModelERPcompragrade(Model).nt_st;
Self.Fnt_cst_cofins         := TModelERPcompragrade(Model).nt_cst_cofins;
Self.Fnt_vl_cofins         := TModelERPcompragrade(Model).nt_vl_cofins;
Self.Fnt_cst_pis         := TModelERPcompragrade(Model).nt_cst_pis;
Self.Fnt_vl_pis         := TModelERPcompragrade(Model).nt_vl_pis;
Self.Fnt_encontrou         := TModelERPcompragrade(Model).nt_encontrou;
Self.Fitem         := TModelERPcompragrade(Model).item;
Self.Fproduto_insumo         := TModelERPcompragrade(Model).produto_insumo;
Self.Fnt_cst         := TModelERPcompragrade(Model).nt_cst;
Self.Fnt_cfop         := TModelERPcompragrade(Model).nt_cfop;
Self.Fgrupo         := TModelERPcompragrade(Model).grupo;
Self.Fsaida_st         := TModelERPcompragrade(Model).saida_st;
Self.Fsaida_icms         := TModelERPcompragrade(Model).saida_icms;
Self.Funitario_anterior         := TModelERPcompragrade(Model).unitario_anterior;
Self.Fcst_pis         := TModelERPcompragrade(Model).cst_pis;
Self.Fcst_cofins         := TModelERPcompragrade(Model).cst_cofins;
Self.Fpicmsst         := TModelERPcompragrade(Model).picmsst;
Self.Fcod_associacao         := TModelERPcompragrade(Model).cod_associacao;
Self.Fcod_fabricante_associacao         := TModelERPcompragrade(Model).cod_fabricante_associacao;
Self.Foutras_despesas         := TModelERPcompragrade(Model).outras_despesas;
Self.Fdevolucao         := TModelERPcompragrade(Model).devolucao;
Self.Ftipo         := TModelERPcompragrade(Model).tipo;
Self.Fformacao_preco         := TModelERPcompragrade(Model).formacao_preco;
Self.Fqtd_devol         := TModelERPcompragrade(Model).qtd_devol;
Self.Fqtd_embalagem_itens         := TModelERPcompragrade(Model).qtd_embalagem_itens;
Self.Fqtd_metro_cubico         := TModelERPcompragrade(Model).qtd_metro_cubico;
Self.Fnome_produto_nota         := TModelERPcompragrade(Model).nome_produto_nota;
Self.Fcst_sped         := TModelERPcompragrade(Model).cst_sped;
Self.Fmargem_lucro_percent         := TModelERPcompragrade(Model).margem_lucro_percent;
Self.Fmargem_lucro         := TModelERPcompragrade(Model).margem_lucro;
Self.Fvl_unitario_fracionado         := TModelERPcompragrade(Model).vl_unitario_fracionado;
Self.Fean_produto         := TModelERPcompragrade(Model).ean_produto;
Self.Fmargem_bruta_percentual         := TModelERPcompragrade(Model).margem_bruta_percentual;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcompragrade.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcompragrade.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcompragrade.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcompragrade.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcompragrade.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPcompragrade.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcompragrade.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPcompragrade.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcompragrade.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPcompragrade.Setitens(const Value: Boolean);   
begin                
  Fitens := Value;   
end;                 

procedure TModelERPcompragrade.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPcompragrade.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPcompragrade.Setdesconto_percentual(const Value: Boolean);   
begin                
  Fdesconto_percentual := Value;   
end;                 

procedure TModelERPcompragrade.Setdesconto_valor(const Value: Boolean);   
begin                
  Fdesconto_valor := Value;   
end;                 

procedure TModelERPcompragrade.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPcompragrade.Seticms_percentual(const Value: Boolean);   
begin                
  Ficms_percentual := Value;   
end;                 

procedure TModelERPcompragrade.Seticms_valor(const Value: Boolean);   
begin                
  Ficms_valor := Value;   
end;                 

procedure TModelERPcompragrade.Setipi_percentual(const Value: Boolean);   
begin                
  Fipi_percentual := Value;   
end;                 

procedure TModelERPcompragrade.Setipi_valor(const Value: Boolean);   
begin                
  Fipi_valor := Value;   
end;                 

procedure TModelERPcompragrade.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPcompragrade.Setvl_substituicao(const Value: Boolean);   
begin                
  Fvl_substituicao := Value;   
end;                 

procedure TModelERPcompragrade.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPcompragrade.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPcompragrade.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPcompragrade.Setcfop(const Value: Boolean);   
begin                
  Fcfop := Value;   
end;                 

procedure TModelERPcompragrade.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPcompragrade.Setbase_st(const Value: Boolean);   
begin                
  Fbase_st := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_codigo_produto(const Value: Boolean);   
begin                
  Fnt_codigo_produto := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_codigo_fabricante(const Value: Boolean);   
begin                
  Fnt_codigo_fabricante := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_unidade(const Value: Boolean);   
begin                
  Fnt_unidade := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_ncm(const Value: Boolean);   
begin                
  Fnt_ncm := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_vl_frete(const Value: Boolean);   
begin                
  Fnt_vl_frete := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_id_fornecedor(const Value: Boolean);   
begin                
  Fnt_id_fornecedor := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_st(const Value: Boolean);   
begin                
  Fnt_st := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_cst_cofins(const Value: Boolean);   
begin                
  Fnt_cst_cofins := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_vl_cofins(const Value: Boolean);   
begin                
  Fnt_vl_cofins := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_cst_pis(const Value: Boolean);   
begin                
  Fnt_cst_pis := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_vl_pis(const Value: Boolean);   
begin                
  Fnt_vl_pis := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_encontrou(const Value: Boolean);   
begin                
  Fnt_encontrou := Value;   
end;                 

procedure TModelERPcompragrade.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPcompragrade.Setproduto_insumo(const Value: Boolean);   
begin                
  Fproduto_insumo := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_cst(const Value: Boolean);   
begin                
  Fnt_cst := Value;   
end;                 

procedure TModelERPcompragrade.Setnt_cfop(const Value: Boolean);   
begin                
  Fnt_cfop := Value;   
end;                 

procedure TModelERPcompragrade.Setgrupo(const Value: Boolean);   
begin                
  Fgrupo := Value;   
end;                 

procedure TModelERPcompragrade.Setsaida_st(const Value: Boolean);   
begin                
  Fsaida_st := Value;   
end;                 

procedure TModelERPcompragrade.Setsaida_icms(const Value: Boolean);   
begin                
  Fsaida_icms := Value;   
end;                 

procedure TModelERPcompragrade.Setunitario_anterior(const Value: Boolean);   
begin                
  Funitario_anterior := Value;   
end;                 

procedure TModelERPcompragrade.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPcompragrade.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPcompragrade.Setpicmsst(const Value: Boolean);   
begin                
  Fpicmsst := Value;   
end;                 

procedure TModelERPcompragrade.Setcod_associacao(const Value: Boolean);   
begin                
  Fcod_associacao := Value;   
end;                 

procedure TModelERPcompragrade.Setcod_fabricante_associacao(const Value: Boolean);   
begin                
  Fcod_fabricante_associacao := Value;   
end;                 

procedure TModelERPcompragrade.Setoutras_despesas(const Value: Boolean);   
begin                
  Foutras_despesas := Value;   
end;                 

procedure TModelERPcompragrade.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPcompragrade.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPcompragrade.Setformacao_preco(const Value: Boolean);   
begin                
  Fformacao_preco := Value;   
end;                 

procedure TModelERPcompragrade.Setqtd_devol(const Value: Boolean);   
begin                
  Fqtd_devol := Value;   
end;                 

procedure TModelERPcompragrade.Setqtd_embalagem_itens(const Value: Boolean);   
begin                
  Fqtd_embalagem_itens := Value;   
end;                 

procedure TModelERPcompragrade.Setqtd_metro_cubico(const Value: Boolean);   
begin                
  Fqtd_metro_cubico := Value;   
end;                 

procedure TModelERPcompragrade.Setnome_produto_nota(const Value: Boolean);   
begin                
  Fnome_produto_nota := Value;   
end;                 

procedure TModelERPcompragrade.Setcst_sped(const Value: Boolean);   
begin                
  Fcst_sped := Value;   
end;                 

procedure TModelERPcompragrade.Setmargem_lucro_percent(const Value: Boolean);   
begin                
  Fmargem_lucro_percent := Value;   
end;                 

procedure TModelERPcompragrade.Setmargem_lucro(const Value: Boolean);   
begin                
  Fmargem_lucro := Value;   
end;                 

procedure TModelERPcompragrade.Setvl_unitario_fracionado(const Value: Boolean);   
begin                
  Fvl_unitario_fracionado := Value;   
end;                 

procedure TModelERPcompragrade.Setean_produto(const Value: Boolean);   
begin                
  Fean_produto := Value;   
end;                 

procedure TModelERPcompragrade.Setmargem_bruta_percentual(const Value: Boolean);   
begin                
  Fmargem_bruta_percentual := Value;   
end;                 


end.
