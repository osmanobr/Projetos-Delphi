unit Model.ERP.os_equipamentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPosequipamentos = class(TModelBase)

private
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fnro_garantia : indefinido;
    Fdata_garantia : TDateTime;
    Fid_grupo : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_fornecedor : Integer;
    Fid_vendedor : Integer;
    Fst : indefinido;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fdiferido : indefinido;
    Fcancelada : indefinido;
    Fclick : Boolean;
    Freservado : indefinido;
    Fexpedicao : indefinido;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fcst : indefinido;
    Fvl_icmsst : Double;
    Fvlbc_icms : Double;
    Fbase_substituicao : Double;
    Fpis : Double;
    Fcofins : Double;
    Festoque : Boolean;
    Festoque_saida : indefinido;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fcfop : Integer;
    Fcfop_externo : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setunidade(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setnro_garantia(const Value: indefinido);
    procedure Setdata_garantia(const Value: TDateTime);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setst(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Seticms_cupom(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_ipi(const Value: Double);
    procedure Setdiferido(const Value: indefinido);
    procedure Setcancelada(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setreservado(const Value: indefinido);
    procedure Setexpedicao(const Value: indefinido);
    procedure Settaxa_ibpt(const Value: Double);
    procedure Settaxa_valor(const Value: Double);
    procedure Setcst(const Value: indefinido);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setvlbc_icms(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setestoque(const Value: Boolean);
    procedure Setestoque_saida(const Value: indefinido);
    procedure Settaxa_federal(const Value: Double);
    procedure Settaxa_estadual(const Value: Double);
    procedure Settaxa_municipal(const Value: Double);
    procedure Setvalor_federal(const Value: Double);
    procedure Setvalor_estadual(const Value: Double);
    procedure Setvalor_municipal(const Value: Double);
    procedure Setcfop(const Value: Integer);
    procedure Setcfop_externo(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property data     : TDateTime read Fdata write Setdata;
    property unidade     : indefinido read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property nro_garantia     : indefinido read Fnro_garantia write Setnro_garantia;
    property data_garantia     : TDateTime read Fdata_garantia write Setdata_garantia;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property st     : indefinido read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property icms_cupom     : Double read Ficms_cupom write Seticms_cupom;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property diferido     : indefinido read Fdiferido write Setdiferido;
    property cancelada     : indefinido read Fcancelada write Setcancelada;
    property click     : Boolean read Fclick write Setclick;
    property reservado     : indefinido read Freservado write Setreservado;
    property expedicao     : indefinido read Fexpedicao write Setexpedicao;
    property taxa_ibpt     : Double read Ftaxa_ibpt write Settaxa_ibpt;
    property taxa_valor     : Double read Ftaxa_valor write Settaxa_valor;
    property cst     : indefinido read Fcst write Setcst;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property vlbc_icms     : Double read Fvlbc_icms write Setvlbc_icms;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property estoque     : Boolean read Festoque write Setestoque;
    property estoque_saida     : indefinido read Festoque_saida write Setestoque_saida;
    property taxa_federal     : Double read Ftaxa_federal write Settaxa_federal;
    property taxa_estadual     : Double read Ftaxa_estadual write Settaxa_estadual;
    property taxa_municipal     : Double read Ftaxa_municipal write Settaxa_municipal;
    property valor_federal     : Double read Fvalor_federal write Setvalor_federal;
    property valor_estadual     : Double read Fvalor_estadual write Setvalor_estadual;
    property valor_municipal     : Double read Fvalor_municipal write Setvalor_municipal;
    property cfop     : Integer read Fcfop write Setcfop;
    property cfop_externo     : Integer read Fcfop_externo write Setcfop_externo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPosequipamentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPosequipamentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPosequipamentos(Model).id;
Self.Fid_os         := TModelERPosequipamentos(Model).id_os;
Self.Fid_empresa         := TModelERPosequipamentos(Model).id_empresa;
Self.Fid_produto         := TModelERPosequipamentos(Model).id_produto;
Self.Fnome_produto         := TModelERPosequipamentos(Model).nome_produto;
Self.Fdata         := TModelERPosequipamentos(Model).data;
Self.Funidade         := TModelERPosequipamentos(Model).unidade;
Self.Fquantidade         := TModelERPosequipamentos(Model).quantidade;
Self.Fvl_unitario         := TModelERPosequipamentos(Model).vl_unitario;
Self.Fvl_desconto         := TModelERPosequipamentos(Model).vl_desconto;
Self.Fvl_total         := TModelERPosequipamentos(Model).vl_total;
Self.Fnro_garantia         := TModelERPosequipamentos(Model).nro_garantia;
Self.Fdata_garantia         := TModelERPosequipamentos(Model).data_garantia;
Self.Fid_grupo         := TModelERPosequipamentos(Model).id_grupo;
Self.Fid_funcionario         := TModelERPosequipamentos(Model).id_funcionario;
Self.Fid_cliente         := TModelERPosequipamentos(Model).id_cliente;
Self.Fid_fornecedor         := TModelERPosequipamentos(Model).id_fornecedor;
Self.Fid_vendedor         := TModelERPosequipamentos(Model).id_vendedor;
Self.Fst         := TModelERPosequipamentos(Model).st;
Self.Ficms         := TModelERPosequipamentos(Model).icms;
Self.Ficms_cupom         := TModelERPosequipamentos(Model).icms_cupom;
Self.Fvl_icms         := TModelERPosequipamentos(Model).vl_icms;
Self.Fvl_ipi         := TModelERPosequipamentos(Model).vl_ipi;
Self.Fdiferido         := TModelERPosequipamentos(Model).diferido;
Self.Fcancelada         := TModelERPosequipamentos(Model).cancelada;
Self.Fclick         := TModelERPosequipamentos(Model).click;
Self.Freservado         := TModelERPosequipamentos(Model).reservado;
Self.Fexpedicao         := TModelERPosequipamentos(Model).expedicao;
Self.Ftaxa_ibpt         := TModelERPosequipamentos(Model).taxa_ibpt;
Self.Ftaxa_valor         := TModelERPosequipamentos(Model).taxa_valor;
Self.Fcst         := TModelERPosequipamentos(Model).cst;
Self.Fvl_icmsst         := TModelERPosequipamentos(Model).vl_icmsst;
Self.Fvlbc_icms         := TModelERPosequipamentos(Model).vlbc_icms;
Self.Fbase_substituicao         := TModelERPosequipamentos(Model).base_substituicao;
Self.Fpis         := TModelERPosequipamentos(Model).pis;
Self.Fcofins         := TModelERPosequipamentos(Model).cofins;
Self.Festoque         := TModelERPosequipamentos(Model).estoque;
Self.Festoque_saida         := TModelERPosequipamentos(Model).estoque_saida;
Self.Ftaxa_federal         := TModelERPosequipamentos(Model).taxa_federal;
Self.Ftaxa_estadual         := TModelERPosequipamentos(Model).taxa_estadual;
Self.Ftaxa_municipal         := TModelERPosequipamentos(Model).taxa_municipal;
Self.Fvalor_federal         := TModelERPosequipamentos(Model).valor_federal;
Self.Fvalor_estadual         := TModelERPosequipamentos(Model).valor_estadual;
Self.Fvalor_municipal         := TModelERPosequipamentos(Model).valor_municipal;
Self.Fcfop         := TModelERPosequipamentos(Model).cfop;
Self.Fcfop_externo         := TModelERPosequipamentos(Model).cfop_externo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPosequipamentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPosequipamentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPosequipamentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPosequipamentos.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPosequipamentos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPosequipamentos.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPosequipamentos.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPosequipamentos.Setnro_garantia(const Value: Boolean);   
begin                
  Fnro_garantia := Value;   
end;                 

procedure TModelERPosequipamentos.Setdata_garantia(const Value: Boolean);   
begin                
  Fdata_garantia := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPosequipamentos.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPosequipamentos.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPosequipamentos.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPosequipamentos.Seticms_cupom(const Value: Boolean);   
begin                
  Ficms_cupom := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPosequipamentos.Setdiferido(const Value: Boolean);   
begin                
  Fdiferido := Value;   
end;                 

procedure TModelERPosequipamentos.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPosequipamentos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPosequipamentos.Setreservado(const Value: Boolean);   
begin                
  Freservado := Value;   
end;                 

procedure TModelERPosequipamentos.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPosequipamentos.Settaxa_ibpt(const Value: Boolean);   
begin                
  Ftaxa_ibpt := Value;   
end;                 

procedure TModelERPosequipamentos.Settaxa_valor(const Value: Boolean);   
begin                
  Ftaxa_valor := Value;   
end;                 

procedure TModelERPosequipamentos.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPosequipamentos.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPosequipamentos.Setvlbc_icms(const Value: Boolean);   
begin                
  Fvlbc_icms := Value;   
end;                 

procedure TModelERPosequipamentos.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPosequipamentos.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPosequipamentos.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPosequipamentos.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPosequipamentos.Setestoque_saida(const Value: Boolean);   
begin                
  Festoque_saida := Value;   
end;                 

procedure TModelERPosequipamentos.Settaxa_federal(const Value: Boolean);   
begin                
  Ftaxa_federal := Value;   
end;                 

procedure TModelERPosequipamentos.Settaxa_estadual(const Value: Boolean);   
begin                
  Ftaxa_estadual := Value;   
end;                 

procedure TModelERPosequipamentos.Settaxa_municipal(const Value: Boolean);   
begin                
  Ftaxa_municipal := Value;   
end;                 

procedure TModelERPosequipamentos.Setvalor_federal(const Value: Boolean);   
begin                
  Fvalor_federal := Value;   
end;                 

procedure TModelERPosequipamentos.Setvalor_estadual(const Value: Boolean);   
begin                
  Fvalor_estadual := Value;   
end;                 

procedure TModelERPosequipamentos.Setvalor_municipal(const Value: Boolean);   
begin                
  Fvalor_municipal := Value;   
end;                 

procedure TModelERPosequipamentos.Setcfop(const Value: Boolean);   
begin                
  Fcfop := Value;   
end;                 

procedure TModelERPosequipamentos.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 


end.
