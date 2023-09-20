unit Model.ERP.cesta_fabricacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcestafabricacao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fst : WideString;
    Fbase : Double;
    Fe_am : Double;
    Fe_ac : Double;
    Fe_al : Double;
    Fe_ap : Double;
    Fe_ba : Double;
    Fe_ce : Double;
    Fe_df : Double;
    Fe_es : Double;
    Fe_go : Double;
    Fe_ma : Double;
    Fe_mg : Double;
    Fe_mt : Double;
    Fe_ms : Double;
    Fe_pa : Double;
    Fe_pb : Double;
    Fe_pe : Double;
    Fe_pi : Double;
    Fe_pr : Double;
    Fe_rj : Double;
    Fe_rn : Double;
    Fe_ro : Double;
    Fe_rr : Double;
    Fe_rs : Double;
    Fe_sc : Double;
    Fe_se : Double;
    Fe_sp : Double;
    Fe_to : Double;
    Fobs : WideString;
    Fcfop : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Setbase(const Value: Double);
    procedure Sete_am(const Value: Double);
    procedure Sete_ac(const Value: Double);
    procedure Sete_al(const Value: Double);
    procedure Sete_ap(const Value: Double);
    procedure Sete_ba(const Value: Double);
    procedure Sete_ce(const Value: Double);
    procedure Sete_df(const Value: Double);
    procedure Sete_es(const Value: Double);
    procedure Sete_go(const Value: Double);
    procedure Sete_ma(const Value: Double);
    procedure Sete_mg(const Value: Double);
    procedure Sete_mt(const Value: Double);
    procedure Sete_ms(const Value: Double);
    procedure Sete_pa(const Value: Double);
    procedure Sete_pb(const Value: Double);
    procedure Sete_pe(const Value: Double);
    procedure Sete_pi(const Value: Double);
    procedure Sete_pr(const Value: Double);
    procedure Sete_rj(const Value: Double);
    procedure Sete_rn(const Value: Double);
    procedure Sete_ro(const Value: Double);
    procedure Sete_rr(const Value: Double);
    procedure Sete_rs(const Value: Double);
    procedure Sete_sc(const Value: Double);
    procedure Sete_se(const Value: Double);
    procedure Sete_sp(const Value: Double);
    procedure Sete_to(const Value: Double);
    procedure Setobs(const Value: WideString);
    procedure Setcfop(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property st     : WideString read Fst write Setst;
    property base     : Double read Fbase write Setbase;
    property e_am     : Double read Fe_am write Sete_am;
    property e_ac     : Double read Fe_ac write Sete_ac;
    property e_al     : Double read Fe_al write Sete_al;
    property e_ap     : Double read Fe_ap write Sete_ap;
    property e_ba     : Double read Fe_ba write Sete_ba;
    property e_ce     : Double read Fe_ce write Sete_ce;
    property e_df     : Double read Fe_df write Sete_df;
    property e_es     : Double read Fe_es write Sete_es;
    property e_go     : Double read Fe_go write Sete_go;
    property e_ma     : Double read Fe_ma write Sete_ma;
    property e_mg     : Double read Fe_mg write Sete_mg;
    property e_mt     : Double read Fe_mt write Sete_mt;
    property e_ms     : Double read Fe_ms write Sete_ms;
    property e_pa     : Double read Fe_pa write Sete_pa;
    property e_pb     : Double read Fe_pb write Sete_pb;
    property e_pe     : Double read Fe_pe write Sete_pe;
    property e_pi     : Double read Fe_pi write Sete_pi;
    property e_pr     : Double read Fe_pr write Sete_pr;
    property e_rj     : Double read Fe_rj write Sete_rj;
    property e_rn     : Double read Fe_rn write Sete_rn;
    property e_ro     : Double read Fe_ro write Sete_ro;
    property e_rr     : Double read Fe_rr write Sete_rr;
    property e_rs     : Double read Fe_rs write Sete_rs;
    property e_sc     : Double read Fe_sc write Sete_sc;
    property e_se     : Double read Fe_se write Sete_se;
    property e_sp     : Double read Fe_sp write Sete_sp;
    property e_to     : Double read Fe_to write Sete_to;
    property obs     : WideString read Fobs write Setobs;
    property cfop     : WideString read Fcfop write Setcfop;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcestafabricacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcestafabricacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcestafabricacao(Model).id;
Self.Fid_empresa         := TModelERPcestafabricacao(Model).id_empresa;
Self.Fnome         := TModelERPcestafabricacao(Model).nome;
Self.Fst         := TModelERPcestafabricacao(Model).st;
Self.Fbase         := TModelERPcestafabricacao(Model).base;
Self.Fe_am         := TModelERPcestafabricacao(Model).e_am;
Self.Fe_ac         := TModelERPcestafabricacao(Model).e_ac;
Self.Fe_al         := TModelERPcestafabricacao(Model).e_al;
Self.Fe_ap         := TModelERPcestafabricacao(Model).e_ap;
Self.Fe_ba         := TModelERPcestafabricacao(Model).e_ba;
Self.Fe_ce         := TModelERPcestafabricacao(Model).e_ce;
Self.Fe_df         := TModelERPcestafabricacao(Model).e_df;
Self.Fe_es         := TModelERPcestafabricacao(Model).e_es;
Self.Fe_go         := TModelERPcestafabricacao(Model).e_go;
Self.Fe_ma         := TModelERPcestafabricacao(Model).e_ma;
Self.Fe_mg         := TModelERPcestafabricacao(Model).e_mg;
Self.Fe_mt         := TModelERPcestafabricacao(Model).e_mt;
Self.Fe_ms         := TModelERPcestafabricacao(Model).e_ms;
Self.Fe_pa         := TModelERPcestafabricacao(Model).e_pa;
Self.Fe_pb         := TModelERPcestafabricacao(Model).e_pb;
Self.Fe_pe         := TModelERPcestafabricacao(Model).e_pe;
Self.Fe_pi         := TModelERPcestafabricacao(Model).e_pi;
Self.Fe_pr         := TModelERPcestafabricacao(Model).e_pr;
Self.Fe_rj         := TModelERPcestafabricacao(Model).e_rj;
Self.Fe_rn         := TModelERPcestafabricacao(Model).e_rn;
Self.Fe_ro         := TModelERPcestafabricacao(Model).e_ro;
Self.Fe_rr         := TModelERPcestafabricacao(Model).e_rr;
Self.Fe_rs         := TModelERPcestafabricacao(Model).e_rs;
Self.Fe_sc         := TModelERPcestafabricacao(Model).e_sc;
Self.Fe_se         := TModelERPcestafabricacao(Model).e_se;
Self.Fe_sp         := TModelERPcestafabricacao(Model).e_sp;
Self.Fe_to         := TModelERPcestafabricacao(Model).e_to;
Self.Fobs         := TModelERPcestafabricacao(Model).obs;
Self.Fcfop         := TModelERPcestafabricacao(Model).cfop;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcestafabricacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcestafabricacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcestafabricacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcestafabricacao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcestafabricacao.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPcestafabricacao.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPcestafabricacao.Setbase(const Value: Boolean);   
begin                
  Fbase := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_am(const Value: Boolean);   
begin                
  Fe_am := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ac(const Value: Boolean);   
begin                
  Fe_ac := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_al(const Value: Boolean);   
begin                
  Fe_al := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ap(const Value: Boolean);   
begin                
  Fe_ap := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ba(const Value: Boolean);   
begin                
  Fe_ba := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ce(const Value: Boolean);   
begin                
  Fe_ce := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_df(const Value: Boolean);   
begin                
  Fe_df := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_es(const Value: Boolean);   
begin                
  Fe_es := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_go(const Value: Boolean);   
begin                
  Fe_go := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ma(const Value: Boolean);   
begin                
  Fe_ma := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_mg(const Value: Boolean);   
begin                
  Fe_mg := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_mt(const Value: Boolean);   
begin                
  Fe_mt := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ms(const Value: Boolean);   
begin                
  Fe_ms := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_pa(const Value: Boolean);   
begin                
  Fe_pa := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_pb(const Value: Boolean);   
begin                
  Fe_pb := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_pe(const Value: Boolean);   
begin                
  Fe_pe := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_pi(const Value: Boolean);   
begin                
  Fe_pi := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_pr(const Value: Boolean);   
begin                
  Fe_pr := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_rj(const Value: Boolean);   
begin                
  Fe_rj := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_rn(const Value: Boolean);   
begin                
  Fe_rn := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_ro(const Value: Boolean);   
begin                
  Fe_ro := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_rr(const Value: Boolean);   
begin                
  Fe_rr := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_rs(const Value: Boolean);   
begin                
  Fe_rs := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_sc(const Value: Boolean);   
begin                
  Fe_sc := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_se(const Value: Boolean);   
begin                
  Fe_se := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_sp(const Value: Boolean);   
begin                
  Fe_sp := Value;   
end;                 

procedure TModelERPcestafabricacao.Sete_to(const Value: Boolean);   
begin                
  Fe_to := Value;   
end;                 

procedure TModelERPcestafabricacao.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPcestafabricacao.Setcfop(const Value: Boolean);   
begin                
  Fcfop := Value;   
end;                 


end.
