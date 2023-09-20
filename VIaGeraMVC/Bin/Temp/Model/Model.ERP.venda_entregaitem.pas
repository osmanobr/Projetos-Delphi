unit Model.ERP.venda_entrega_lote;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaentregalote = class(TModelBase)

private
    Fid : Integer;
    Fid_venda_entrega : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fst : indefinido;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fvl_ipi : Double;
    Ftipo : indefinido;
    Fvl_frete : Double;
    Fbc_icms : Double;
    Freducao : Double;
    Fp_ipi : Double;
    Fcst : indefinido;
    Fdesconto : Double;
    Fbc_st : Double;
    Ficmsst : Double;
    Fpis : Double;
    Fcofins : Double;
    Fdata_hora_entrega : indefinido;
    Fquantidade_entregue : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_venda_entrega(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setunidade(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setst(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Seticms_cupom(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setitem(const Value: Integer);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: indefinido);
    procedure Settam_grade(const Value: indefinido);
    procedure Setvl_ipi(const Value: Double);
    procedure Settipo(const Value: indefinido);
    procedure Setvl_frete(const Value: Double);
    procedure Setbc_icms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setp_ipi(const Value: Double);
    procedure Setcst(const Value: indefinido);
    procedure Setdesconto(const Value: Double);
    procedure Setbc_st(const Value: Double);
    procedure Seticmsst(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setdata_hora_entrega(const Value: indefinido);
    procedure Setquantidade_entregue(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_venda_entrega     : Integer read Fid_venda_entrega write Setid_venda_entrega;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property unidade     : indefinido read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property st     : indefinido read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property icms_cupom     : Double read Ficms_cupom write Seticms_cupom;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property item     : Integer read Fitem write Setitem;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : indefinido read Fcor_grade write Setcor_grade;
    property tam_grade     : indefinido read Ftam_grade write Settam_grade;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property tipo     : indefinido read Ftipo write Settipo;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property bc_icms     : Double read Fbc_icms write Setbc_icms;
    property reducao     : Double read Freducao write Setreducao;
    property p_ipi     : Double read Fp_ipi write Setp_ipi;
    property cst     : indefinido read Fcst write Setcst;
    property desconto     : Double read Fdesconto write Setdesconto;
    property bc_st     : Double read Fbc_st write Setbc_st;
    property icmsst     : Double read Ficmsst write Seticmsst;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property data_hora_entrega     : indefinido read Fdata_hora_entrega write Setdata_hora_entrega;
    property quantidade_entregue     : Double read Fquantidade_entregue write Setquantidade_entregue;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaentregalote.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaentregalote) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaentregalote(Model).id;
Self.Fid_venda_entrega         := TModelERPvendaentregalote(Model).id_venda_entrega;
Self.Fid_produto         := TModelERPvendaentregalote(Model).id_produto;
Self.Fnome_produto         := TModelERPvendaentregalote(Model).nome_produto;
Self.Funidade         := TModelERPvendaentregalote(Model).unidade;
Self.Fquantidade         := TModelERPvendaentregalote(Model).quantidade;
Self.Fvl_unitario         := TModelERPvendaentregalote(Model).vl_unitario;
Self.Fvl_total         := TModelERPvendaentregalote(Model).vl_total;
Self.Fst         := TModelERPvendaentregalote(Model).st;
Self.Ficms         := TModelERPvendaentregalote(Model).icms;
Self.Ficms_cupom         := TModelERPvendaentregalote(Model).icms_cupom;
Self.Fvl_icms         := TModelERPvendaentregalote(Model).vl_icms;
Self.Fitem         := TModelERPvendaentregalote(Model).item;
Self.Fid_grade         := TModelERPvendaentregalote(Model).id_grade;
Self.Fcor_grade         := TModelERPvendaentregalote(Model).cor_grade;
Self.Ftam_grade         := TModelERPvendaentregalote(Model).tam_grade;
Self.Fvl_ipi         := TModelERPvendaentregalote(Model).vl_ipi;
Self.Ftipo         := TModelERPvendaentregalote(Model).tipo;
Self.Fvl_frete         := TModelERPvendaentregalote(Model).vl_frete;
Self.Fbc_icms         := TModelERPvendaentregalote(Model).bc_icms;
Self.Freducao         := TModelERPvendaentregalote(Model).reducao;
Self.Fp_ipi         := TModelERPvendaentregalote(Model).p_ipi;
Self.Fcst         := TModelERPvendaentregalote(Model).cst;
Self.Fdesconto         := TModelERPvendaentregalote(Model).desconto;
Self.Fbc_st         := TModelERPvendaentregalote(Model).bc_st;
Self.Ficmsst         := TModelERPvendaentregalote(Model).icmsst;
Self.Fpis         := TModelERPvendaentregalote(Model).pis;
Self.Fcofins         := TModelERPvendaentregalote(Model).cofins;
Self.Fdata_hora_entrega         := TModelERPvendaentregalote(Model).data_hora_entrega;
Self.Fquantidade_entregue         := TModelERPvendaentregalote(Model).quantidade_entregue;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaentregalote.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaentregalote.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaentregalote.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaentregalote.Setid_venda_entrega(const Value: Boolean);   
begin                
  Fid_venda_entrega := Value;   
end;                 

procedure TModelERPvendaentregalote.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPvendaentregalote.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPvendaentregalote.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPvendaentregalote.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPvendaentregalote.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPvendaentregalote.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendaentregalote.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPvendaentregalote.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPvendaentregalote.Seticms_cupom(const Value: Boolean);   
begin                
  Ficms_cupom := Value;   
end;                 

procedure TModelERPvendaentregalote.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPvendaentregalote.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPvendaentregalote.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPvendaentregalote.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPvendaentregalote.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPvendaentregalote.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPvendaentregalote.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPvendaentregalote.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPvendaentregalote.Setbc_icms(const Value: Boolean);   
begin                
  Fbc_icms := Value;   
end;                 

procedure TModelERPvendaentregalote.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPvendaentregalote.Setp_ipi(const Value: Boolean);   
begin                
  Fp_ipi := Value;   
end;                 

procedure TModelERPvendaentregalote.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPvendaentregalote.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPvendaentregalote.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPvendaentregalote.Seticmsst(const Value: Boolean);   
begin                
  Ficmsst := Value;   
end;                 

procedure TModelERPvendaentregalote.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPvendaentregalote.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPvendaentregalote.Setdata_hora_entrega(const Value: Boolean);   
begin                
  Fdata_hora_entrega := Value;   
end;                 

procedure TModelERPvendaentregalote.Setquantidade_entregue(const Value: Boolean);   
begin                
  Fquantidade_entregue := Value;   
end;                 


end.
