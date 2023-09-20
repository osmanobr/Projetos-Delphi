unit Model.ERP.a;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPa = class(TModelBase)

private
    Fid : Integer;
    Fid_a100 : Integer;
    Fitem : Integer;
    Fid_produto : Integer;
    Fdescricao : indefinido;
    Fvalor : Double;
    Fdesconto : Double;
    Fcod_nt_bc_cred : Integer;
    Fcst_pis : WideString;
    Fvl_bc_pis : Double;
    Faliq_pis : Double;
    Fvl_pis : Double;
    Fcst_cofins : WideString;
    Fvl_bc_cofins : Double;
    Faliq_cofins : Double;
    Fvl_cofins : Double;
    Fquantidade : Integer;
    Funitario : Double;
    Fvl_issqn_p : Double;
    Fvl_issqn : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_a100(const Value: Integer);
    procedure Setitem(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setdescricao(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Setcod_nt_bc_cred(const Value: Integer);
    procedure Setcst_pis(const Value: WideString);
    procedure Setvl_bc_pis(const Value: Double);
    procedure Setaliq_pis(const Value: Double);
    procedure Setvl_pis(const Value: Double);
    procedure Setcst_cofins(const Value: WideString);
    procedure Setvl_bc_cofins(const Value: Double);
    procedure Setaliq_cofins(const Value: Double);
    procedure Setvl_cofins(const Value: Double);
    procedure Setquantidade(const Value: Integer);
    procedure Setunitario(const Value: Double);
    procedure Setvl_issqn_p(const Value: Double);
    procedure Setvl_issqn(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_a100     : Integer read Fid_a100 write Setid_a100;
    property item     : Integer read Fitem write Setitem;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property valor     : Double read Fvalor write Setvalor;
    property desconto     : Double read Fdesconto write Setdesconto;
    property cod_nt_bc_cred     : Integer read Fcod_nt_bc_cred write Setcod_nt_bc_cred;
    property cst_pis     : WideString read Fcst_pis write Setcst_pis;
    property vl_bc_pis     : Double read Fvl_bc_pis write Setvl_bc_pis;
    property aliq_pis     : Double read Faliq_pis write Setaliq_pis;
    property vl_pis     : Double read Fvl_pis write Setvl_pis;
    property cst_cofins     : WideString read Fcst_cofins write Setcst_cofins;
    property vl_bc_cofins     : Double read Fvl_bc_cofins write Setvl_bc_cofins;
    property aliq_cofins     : Double read Faliq_cofins write Setaliq_cofins;
    property vl_cofins     : Double read Fvl_cofins write Setvl_cofins;
    property quantidade     : Integer read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property vl_issqn_p     : Double read Fvl_issqn_p write Setvl_issqn_p;
    property vl_issqn     : Double read Fvl_issqn write Setvl_issqn;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPa(Model).id;
Self.Fid_a100         := TModelERPa(Model).id_a100;
Self.Fitem         := TModelERPa(Model).item;
Self.Fid_produto         := TModelERPa(Model).id_produto;
Self.Fdescricao         := TModelERPa(Model).descricao;
Self.Fvalor         := TModelERPa(Model).valor;
Self.Fdesconto         := TModelERPa(Model).desconto;
Self.Fcod_nt_bc_cred         := TModelERPa(Model).cod_nt_bc_cred;
Self.Fcst_pis         := TModelERPa(Model).cst_pis;
Self.Fvl_bc_pis         := TModelERPa(Model).vl_bc_pis;
Self.Faliq_pis         := TModelERPa(Model).aliq_pis;
Self.Fvl_pis         := TModelERPa(Model).vl_pis;
Self.Fcst_cofins         := TModelERPa(Model).cst_cofins;
Self.Fvl_bc_cofins         := TModelERPa(Model).vl_bc_cofins;
Self.Faliq_cofins         := TModelERPa(Model).aliq_cofins;
Self.Fvl_cofins         := TModelERPa(Model).vl_cofins;
Self.Fquantidade         := TModelERPa(Model).quantidade;
Self.Funitario         := TModelERPa(Model).unitario;
Self.Fvl_issqn_p         := TModelERPa(Model).vl_issqn_p;
Self.Fvl_issqn         := TModelERPa(Model).vl_issqn;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPa.Setid_a100(const Value: Boolean);   
begin                
  Fid_a100 := Value;   
end;                 

procedure TModelERPa.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPa.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPa.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPa.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPa.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPa.Setcod_nt_bc_cred(const Value: Boolean);   
begin                
  Fcod_nt_bc_cred := Value;   
end;                 

procedure TModelERPa.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPa.Setvl_bc_pis(const Value: Boolean);   
begin                
  Fvl_bc_pis := Value;   
end;                 

procedure TModelERPa.Setaliq_pis(const Value: Boolean);   
begin                
  Faliq_pis := Value;   
end;                 

procedure TModelERPa.Setvl_pis(const Value: Boolean);   
begin                
  Fvl_pis := Value;   
end;                 

procedure TModelERPa.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPa.Setvl_bc_cofins(const Value: Boolean);   
begin                
  Fvl_bc_cofins := Value;   
end;                 

procedure TModelERPa.Setaliq_cofins(const Value: Boolean);   
begin                
  Faliq_cofins := Value;   
end;                 

procedure TModelERPa.Setvl_cofins(const Value: Boolean);   
begin                
  Fvl_cofins := Value;   
end;                 

procedure TModelERPa.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPa.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPa.Setvl_issqn_p(const Value: Boolean);   
begin                
  Fvl_issqn_p := Value;   
end;                 

procedure TModelERPa.Setvl_issqn(const Value: Boolean);   
begin                
  Fvl_issqn := Value;   
end;                 


end.
