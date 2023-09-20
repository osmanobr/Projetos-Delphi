unit Model.ERP.devolucao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdevolucao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_devolucao : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Funidade : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fst : WideString;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fvl_ipi : Double;
    Fvl_frete : Double;
    Fbc_icms : Double;
    Freducao : Double;
    Fp_ipi : Double;
    Fcst : WideString;
    Fdesconto : Double;
    Fbc_st : Double;
    Ficmsst : Double;
    Fpis : Double;
    Fcofins : Double;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fvl_outras : Double;
    Fid_referencia : Integer;
    Fid_cfop : Integer;
    Fdevolucao : WideString;
    Fdesconto_porcetagem : Double;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fid_insumo : Integer;
    Fqtd_caixa : Double;
    Funitario_caixa : Double;
    Funidade_tributavel : WideString;
    Fean : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Seticms_cupom(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setitem(const Value: Integer);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: WideString);
    procedure Settam_grade(const Value: WideString);
    procedure Setvl_ipi(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setbc_icms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setp_ipi(const Value: Double);
    procedure Setcst(const Value: WideString);
    procedure Setdesconto(const Value: Double);
    procedure Setbc_st(const Value: Double);
    procedure Seticmsst(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Settaxa_ibpt(const Value: Double);
    procedure Settaxa_valor(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setid_referencia(const Value: Integer);
    procedure Setid_cfop(const Value: Integer);
    procedure Setdevolucao(const Value: WideString);
    procedure Setdesconto_porcetagem(const Value: Double);
    procedure Settaxa_federal(const Value: Double);
    procedure Settaxa_estadual(const Value: Double);
    procedure Settaxa_municipal(const Value: Double);
    procedure Setvalor_federal(const Value: Double);
    procedure Setvalor_estadual(const Value: Double);
    procedure Setvalor_municipal(const Value: Double);
    procedure Setid_insumo(const Value: Integer);
    procedure Setqtd_caixa(const Value: Double);
    procedure Setunitario_caixa(const Value: Double);
    procedure Setunidade_tributavel(const Value: WideString);
    procedure Setean(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property unidade     : WideString read Funidade write Setunidade;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property icms_cupom     : Double read Ficms_cupom write Seticms_cupom;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property item     : Integer read Fitem write Setitem;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : WideString read Fcor_grade write Setcor_grade;
    property tam_grade     : WideString read Ftam_grade write Settam_grade;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property bc_icms     : Double read Fbc_icms write Setbc_icms;
    property reducao     : Double read Freducao write Setreducao;
    property p_ipi     : Double read Fp_ipi write Setp_ipi;
    property cst     : WideString read Fcst write Setcst;
    property desconto     : Double read Fdesconto write Setdesconto;
    property bc_st     : Double read Fbc_st write Setbc_st;
    property icmsst     : Double read Ficmsst write Seticmsst;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property taxa_ibpt     : Double read Ftaxa_ibpt write Settaxa_ibpt;
    property taxa_valor     : Double read Ftaxa_valor write Settaxa_valor;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property id_referencia     : Integer read Fid_referencia write Setid_referencia;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property devolucao     : WideString read Fdevolucao write Setdevolucao;
    property desconto_porcetagem     : Double read Fdesconto_porcetagem write Setdesconto_porcetagem;
    property taxa_federal     : Double read Ftaxa_federal write Settaxa_federal;
    property taxa_estadual     : Double read Ftaxa_estadual write Settaxa_estadual;
    property taxa_municipal     : Double read Ftaxa_municipal write Settaxa_municipal;
    property valor_federal     : Double read Fvalor_federal write Setvalor_federal;
    property valor_estadual     : Double read Fvalor_estadual write Setvalor_estadual;
    property valor_municipal     : Double read Fvalor_municipal write Setvalor_municipal;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property qtd_caixa     : Double read Fqtd_caixa write Setqtd_caixa;
    property unitario_caixa     : Double read Funitario_caixa write Setunitario_caixa;
    property unidade_tributavel     : WideString read Funidade_tributavel write Setunidade_tributavel;
    property ean     : WideString read Fean write Setean;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdevolucao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdevolucao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdevolucao(Model).id;
Self.Fid_empresa         := TModelERPdevolucao(Model).id_empresa;
Self.Fid_devolucao         := TModelERPdevolucao(Model).id_devolucao;
Self.Fid_produto         := TModelERPdevolucao(Model).id_produto;
Self.Fnome_produto         := TModelERPdevolucao(Model).nome_produto;
Self.Funidade         := TModelERPdevolucao(Model).unidade;
Self.Ftipo         := TModelERPdevolucao(Model).tipo;
Self.Fquantidade         := TModelERPdevolucao(Model).quantidade;
Self.Fvl_unitario         := TModelERPdevolucao(Model).vl_unitario;
Self.Fvl_total         := TModelERPdevolucao(Model).vl_total;
Self.Fst         := TModelERPdevolucao(Model).st;
Self.Ficms         := TModelERPdevolucao(Model).icms;
Self.Ficms_cupom         := TModelERPdevolucao(Model).icms_cupom;
Self.Fvl_icms         := TModelERPdevolucao(Model).vl_icms;
Self.Fitem         := TModelERPdevolucao(Model).item;
Self.Fid_grade         := TModelERPdevolucao(Model).id_grade;
Self.Fcor_grade         := TModelERPdevolucao(Model).cor_grade;
Self.Ftam_grade         := TModelERPdevolucao(Model).tam_grade;
Self.Fvl_ipi         := TModelERPdevolucao(Model).vl_ipi;
Self.Fvl_frete         := TModelERPdevolucao(Model).vl_frete;
Self.Fbc_icms         := TModelERPdevolucao(Model).bc_icms;
Self.Freducao         := TModelERPdevolucao(Model).reducao;
Self.Fp_ipi         := TModelERPdevolucao(Model).p_ipi;
Self.Fcst         := TModelERPdevolucao(Model).cst;
Self.Fdesconto         := TModelERPdevolucao(Model).desconto;
Self.Fbc_st         := TModelERPdevolucao(Model).bc_st;
Self.Ficmsst         := TModelERPdevolucao(Model).icmsst;
Self.Fpis         := TModelERPdevolucao(Model).pis;
Self.Fcofins         := TModelERPdevolucao(Model).cofins;
Self.Ftaxa_ibpt         := TModelERPdevolucao(Model).taxa_ibpt;
Self.Ftaxa_valor         := TModelERPdevolucao(Model).taxa_valor;
Self.Fvl_outras         := TModelERPdevolucao(Model).vl_outras;
Self.Fid_referencia         := TModelERPdevolucao(Model).id_referencia;
Self.Fid_cfop         := TModelERPdevolucao(Model).id_cfop;
Self.Fdevolucao         := TModelERPdevolucao(Model).devolucao;
Self.Fdesconto_porcetagem         := TModelERPdevolucao(Model).desconto_porcetagem;
Self.Ftaxa_federal         := TModelERPdevolucao(Model).taxa_federal;
Self.Ftaxa_estadual         := TModelERPdevolucao(Model).taxa_estadual;
Self.Ftaxa_municipal         := TModelERPdevolucao(Model).taxa_municipal;
Self.Fvalor_federal         := TModelERPdevolucao(Model).valor_federal;
Self.Fvalor_estadual         := TModelERPdevolucao(Model).valor_estadual;
Self.Fvalor_municipal         := TModelERPdevolucao(Model).valor_municipal;
Self.Fid_insumo         := TModelERPdevolucao(Model).id_insumo;
Self.Fqtd_caixa         := TModelERPdevolucao(Model).qtd_caixa;
Self.Funitario_caixa         := TModelERPdevolucao(Model).unitario_caixa;
Self.Funidade_tributavel         := TModelERPdevolucao(Model).unidade_tributavel;
Self.Fean         := TModelERPdevolucao(Model).ean;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdevolucao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdevolucao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdevolucao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdevolucao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdevolucao.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPdevolucao.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPdevolucao.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPdevolucao.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPdevolucao.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPdevolucao.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPdevolucao.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPdevolucao.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPdevolucao.Seticms_cupom(const Value: Boolean);   
begin                
  Ficms_cupom := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPdevolucao.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPdevolucao.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPdevolucao.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPdevolucao.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPdevolucao.Setbc_icms(const Value: Boolean);   
begin                
  Fbc_icms := Value;   
end;                 

procedure TModelERPdevolucao.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPdevolucao.Setp_ipi(const Value: Boolean);   
begin                
  Fp_ipi := Value;   
end;                 

procedure TModelERPdevolucao.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPdevolucao.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPdevolucao.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPdevolucao.Seticmsst(const Value: Boolean);   
begin                
  Ficmsst := Value;   
end;                 

procedure TModelERPdevolucao.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPdevolucao.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPdevolucao.Settaxa_ibpt(const Value: Boolean);   
begin                
  Ftaxa_ibpt := Value;   
end;                 

procedure TModelERPdevolucao.Settaxa_valor(const Value: Boolean);   
begin                
  Ftaxa_valor := Value;   
end;                 

procedure TModelERPdevolucao.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPdevolucao.Setid_referencia(const Value: Boolean);   
begin                
  Fid_referencia := Value;   
end;                 

procedure TModelERPdevolucao.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPdevolucao.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPdevolucao.Setdesconto_porcetagem(const Value: Boolean);   
begin                
  Fdesconto_porcetagem := Value;   
end;                 

procedure TModelERPdevolucao.Settaxa_federal(const Value: Boolean);   
begin                
  Ftaxa_federal := Value;   
end;                 

procedure TModelERPdevolucao.Settaxa_estadual(const Value: Boolean);   
begin                
  Ftaxa_estadual := Value;   
end;                 

procedure TModelERPdevolucao.Settaxa_municipal(const Value: Boolean);   
begin                
  Ftaxa_municipal := Value;   
end;                 

procedure TModelERPdevolucao.Setvalor_federal(const Value: Boolean);   
begin                
  Fvalor_federal := Value;   
end;                 

procedure TModelERPdevolucao.Setvalor_estadual(const Value: Boolean);   
begin                
  Fvalor_estadual := Value;   
end;                 

procedure TModelERPdevolucao.Setvalor_municipal(const Value: Boolean);   
begin                
  Fvalor_municipal := Value;   
end;                 

procedure TModelERPdevolucao.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPdevolucao.Setqtd_caixa(const Value: Boolean);   
begin                
  Fqtd_caixa := Value;   
end;                 

procedure TModelERPdevolucao.Setunitario_caixa(const Value: Boolean);   
begin                
  Funitario_caixa := Value;   
end;                 

procedure TModelERPdevolucao.Setunidade_tributavel(const Value: Boolean);   
begin                
  Funidade_tributavel := Value;   
end;                 

procedure TModelERPdevolucao.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 


end.
