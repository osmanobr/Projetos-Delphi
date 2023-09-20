unit Model.ERP.d;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPd = class(TModelBase)

private
    Fid : Integer;
    Find_oper : WideString;
    Find_emit : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fcod_mod : WideString;
    Fcod_sit : WideString;
    Fser : WideString;
    Fsub : WideString;
    Fnum_doc : WideString;
    Fdt_doc : TDateTime;
    Fdt_a_p : TDateTime;
    Fvl_doc : Double;
    Fvl_desc : Double;
    Fvl_serv : Double;
    Fvl_serv_nt : Double;
    Fvl_terc : Double;
    Fvl_da : Double;
    Fvl_bc_icms : Double;
    Fvl_icms : Double;
    Fvl_bc_icmsst : Double;
    Fvl_icmsst : Double;
    Fcod_inf : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Fcod_cta : WideString;
    Ftp_assinante : WideString;
    Fcst_icms : WideString;
    Faliq_icms : Double;
    Fid_cfop : Integer;

    procedure Setid(const Value: Integer);
    procedure Setind_oper(const Value: WideString);
    procedure Setind_emit(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setcod_mod(const Value: WideString);
    procedure Setcod_sit(const Value: WideString);
    procedure Setser(const Value: WideString);
    procedure Setsub(const Value: WideString);
    procedure Setnum_doc(const Value: WideString);
    procedure Setdt_doc(const Value: TDateTime);
    procedure Setdt_a_p(const Value: TDateTime);
    procedure Setvl_doc(const Value: Double);
    procedure Setvl_desc(const Value: Double);
    procedure Setvl_serv(const Value: Double);
    procedure Setvl_serv_nt(const Value: Double);
    procedure Setvl_terc(const Value: Double);
    procedure Setvl_da(const Value: Double);
    procedure Setvl_bc_icms(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_bc_icmsst(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setcod_inf(const Value: WideString);
    procedure Setvl_pis(const Value: Double);
    procedure Setvl_cofins(const Value: Double);
    procedure Setcod_cta(const Value: WideString);
    procedure Settp_assinante(const Value: WideString);
    procedure Setcst_icms(const Value: WideString);
    procedure Setaliq_icms(const Value: Double);
    procedure Setid_cfop(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property ind_oper     : WideString read Find_oper write Setind_oper;
    property ind_emit     : WideString read Find_emit write Setind_emit;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property cod_mod     : WideString read Fcod_mod write Setcod_mod;
    property cod_sit     : WideString read Fcod_sit write Setcod_sit;
    property ser     : WideString read Fser write Setser;
    property sub     : WideString read Fsub write Setsub;
    property num_doc     : WideString read Fnum_doc write Setnum_doc;
    property dt_doc     : TDateTime read Fdt_doc write Setdt_doc;
    property dt_a_p     : TDateTime read Fdt_a_p write Setdt_a_p;
    property vl_doc     : Double read Fvl_doc write Setvl_doc;
    property vl_desc     : Double read Fvl_desc write Setvl_desc;
    property vl_serv     : Double read Fvl_serv write Setvl_serv;
    property vl_serv_nt     : Double read Fvl_serv_nt write Setvl_serv_nt;
    property vl_terc     : Double read Fvl_terc write Setvl_terc;
    property vl_da     : Double read Fvl_da write Setvl_da;
    property vl_bc_icms     : Double read Fvl_bc_icms write Setvl_bc_icms;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_bc_icmsst     : Double read Fvl_bc_icmsst write Setvl_bc_icmsst;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property cod_inf     : WideString read Fcod_inf write Setcod_inf;
    property vl_pis     : Double read Fvl_pis write Setvl_pis;
    property vl_cofins     : Double read Fvl_cofins write Setvl_cofins;
    property cod_cta     : WideString read Fcod_cta write Setcod_cta;
    property tp_assinante     : WideString read Ftp_assinante write Settp_assinante;
    property cst_icms     : WideString read Fcst_icms write Setcst_icms;
    property aliq_icms     : Double read Faliq_icms write Setaliq_icms;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPd.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPd) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPd(Model).id;
Self.Find_oper         := TModelERPd(Model).ind_oper;
Self.Find_emit         := TModelERPd(Model).ind_emit;
Self.Fid_fornecedor         := TModelERPd(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPd(Model).nome_fornecedor;
Self.Fcod_mod         := TModelERPd(Model).cod_mod;
Self.Fcod_sit         := TModelERPd(Model).cod_sit;
Self.Fser         := TModelERPd(Model).ser;
Self.Fsub         := TModelERPd(Model).sub;
Self.Fnum_doc         := TModelERPd(Model).num_doc;
Self.Fdt_doc         := TModelERPd(Model).dt_doc;
Self.Fdt_a_p         := TModelERPd(Model).dt_a_p;
Self.Fvl_doc         := TModelERPd(Model).vl_doc;
Self.Fvl_desc         := TModelERPd(Model).vl_desc;
Self.Fvl_serv         := TModelERPd(Model).vl_serv;
Self.Fvl_serv_nt         := TModelERPd(Model).vl_serv_nt;
Self.Fvl_terc         := TModelERPd(Model).vl_terc;
Self.Fvl_da         := TModelERPd(Model).vl_da;
Self.Fvl_bc_icms         := TModelERPd(Model).vl_bc_icms;
Self.Fvl_icms         := TModelERPd(Model).vl_icms;
Self.Fvl_bc_icmsst         := TModelERPd(Model).vl_bc_icmsst;
Self.Fvl_icmsst         := TModelERPd(Model).vl_icmsst;
Self.Fcod_inf         := TModelERPd(Model).cod_inf;
Self.Fvl_pis         := TModelERPd(Model).vl_pis;
Self.Fvl_cofins         := TModelERPd(Model).vl_cofins;
Self.Fcod_cta         := TModelERPd(Model).cod_cta;
Self.Ftp_assinante         := TModelERPd(Model).tp_assinante;
Self.Fcst_icms         := TModelERPd(Model).cst_icms;
Self.Faliq_icms         := TModelERPd(Model).aliq_icms;
Self.Fid_cfop         := TModelERPd(Model).id_cfop;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPd.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPd.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPd.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPd.Setind_oper(const Value: Boolean);   
begin                
  Find_oper := Value;   
end;                 

procedure TModelERPd.Setind_emit(const Value: Boolean);   
begin                
  Find_emit := Value;   
end;                 

procedure TModelERPd.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPd.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPd.Setcod_mod(const Value: Boolean);   
begin                
  Fcod_mod := Value;   
end;                 

procedure TModelERPd.Setcod_sit(const Value: Boolean);   
begin                
  Fcod_sit := Value;   
end;                 

procedure TModelERPd.Setser(const Value: Boolean);   
begin                
  Fser := Value;   
end;                 

procedure TModelERPd.Setsub(const Value: Boolean);   
begin                
  Fsub := Value;   
end;                 

procedure TModelERPd.Setnum_doc(const Value: Boolean);   
begin                
  Fnum_doc := Value;   
end;                 

procedure TModelERPd.Setdt_doc(const Value: Boolean);   
begin                
  Fdt_doc := Value;   
end;                 

procedure TModelERPd.Setdt_a_p(const Value: Boolean);   
begin                
  Fdt_a_p := Value;   
end;                 

procedure TModelERPd.Setvl_doc(const Value: Boolean);   
begin                
  Fvl_doc := Value;   
end;                 

procedure TModelERPd.Setvl_desc(const Value: Boolean);   
begin                
  Fvl_desc := Value;   
end;                 

procedure TModelERPd.Setvl_serv(const Value: Boolean);   
begin                
  Fvl_serv := Value;   
end;                 

procedure TModelERPd.Setvl_serv_nt(const Value: Boolean);   
begin                
  Fvl_serv_nt := Value;   
end;                 

procedure TModelERPd.Setvl_terc(const Value: Boolean);   
begin                
  Fvl_terc := Value;   
end;                 

procedure TModelERPd.Setvl_da(const Value: Boolean);   
begin                
  Fvl_da := Value;   
end;                 

procedure TModelERPd.Setvl_bc_icms(const Value: Boolean);   
begin                
  Fvl_bc_icms := Value;   
end;                 

procedure TModelERPd.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPd.Setvl_bc_icmsst(const Value: Boolean);   
begin                
  Fvl_bc_icmsst := Value;   
end;                 

procedure TModelERPd.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPd.Setcod_inf(const Value: Boolean);   
begin                
  Fcod_inf := Value;   
end;                 

procedure TModelERPd.Setvl_pis(const Value: Boolean);   
begin                
  Fvl_pis := Value;   
end;                 

procedure TModelERPd.Setvl_cofins(const Value: Boolean);   
begin                
  Fvl_cofins := Value;   
end;                 

procedure TModelERPd.Setcod_cta(const Value: Boolean);   
begin                
  Fcod_cta := Value;   
end;                 

procedure TModelERPd.Settp_assinante(const Value: Boolean);   
begin                
  Ftp_assinante := Value;   
end;                 

procedure TModelERPd.Setcst_icms(const Value: Boolean);   
begin                
  Fcst_icms := Value;   
end;                 

procedure TModelERPd.Setaliq_icms(const Value: Boolean);   
begin                
  Faliq_icms := Value;   
end;                 

procedure TModelERPd.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 


end.
