unit Model.ERP.c;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPc = class(TModelBase)

private
    Fid : Integer;
    Fid_cfop : Integer;
    Find_oper : WideString;
    Find_emit : WideString;
    Fid_fornecedor : Integer;
    Ffornecedor : WideString;
    Fcod_mod : WideString;
    Fcod_sit : WideString;
    Fser : WideString;
    Fsub : WideString;
    Fcod_cons : WideString;
    Fnum_doc : WideString;
    Fdt_doc : TDateTime;
    Fdt_e_s : TDateTime;
    Fvl_doc : Double;
    Fvl_desc : Double;
    Fvl_forn : Double;
    Fvl_serv_nt : Double;
    Fvl_terc : Double;
    Fvl_da : Double;
    Fvl_bc_icms : Double;
    Fvl_icms : Double;
    Fvl_bc_icms_st : Double;
    Fvl_icms_st : Double;
    Fcod_inf : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Ftp_ligacao : WideString;
    Fcod_grupo_tensao : WideString;
    Fi_cod_item : WideString;
    Fi_cod_class : WideString;
    Fi_qtd : Double;
    Fi_vl_item : Double;
    Fi_aliq_icms : Double;
    Fi_cst_icms : WideString;
    Fcst_pis : WideString;
    Fcst_cofins : WideString;
    Faliq_pis : Double;
    Faliq_cofins : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_cfop(const Value: Integer);
    procedure Setind_oper(const Value: WideString);
    procedure Setind_emit(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setfornecedor(const Value: WideString);
    procedure Setcod_mod(const Value: WideString);
    procedure Setcod_sit(const Value: WideString);
    procedure Setser(const Value: WideString);
    procedure Setsub(const Value: WideString);
    procedure Setcod_cons(const Value: WideString);
    procedure Setnum_doc(const Value: WideString);
    procedure Setdt_doc(const Value: TDateTime);
    procedure Setdt_e_s(const Value: TDateTime);
    procedure Setvl_doc(const Value: Double);
    procedure Setvl_desc(const Value: Double);
    procedure Setvl_forn(const Value: Double);
    procedure Setvl_serv_nt(const Value: Double);
    procedure Setvl_terc(const Value: Double);
    procedure Setvl_da(const Value: Double);
    procedure Setvl_bc_icms(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_bc_icms_st(const Value: Double);
    procedure Setvl_icms_st(const Value: Double);
    procedure Setcod_inf(const Value: WideString);
    procedure Setvl_pis(const Value: Double);
    procedure Setvl_cofins(const Value: Double);
    procedure Settp_ligacao(const Value: WideString);
    procedure Setcod_grupo_tensao(const Value: WideString);
    procedure Seti_cod_item(const Value: WideString);
    procedure Seti_cod_class(const Value: WideString);
    procedure Seti_qtd(const Value: Double);
    procedure Seti_vl_item(const Value: Double);
    procedure Seti_aliq_icms(const Value: Double);
    procedure Seti_cst_icms(const Value: WideString);
    procedure Setcst_pis(const Value: WideString);
    procedure Setcst_cofins(const Value: WideString);
    procedure Setaliq_pis(const Value: Double);
    procedure Setaliq_cofins(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property ind_oper     : WideString read Find_oper write Setind_oper;
    property ind_emit     : WideString read Find_emit write Setind_emit;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property fornecedor     : WideString read Ffornecedor write Setfornecedor;
    property cod_mod     : WideString read Fcod_mod write Setcod_mod;
    property cod_sit     : WideString read Fcod_sit write Setcod_sit;
    property ser     : WideString read Fser write Setser;
    property sub     : WideString read Fsub write Setsub;
    property cod_cons     : WideString read Fcod_cons write Setcod_cons;
    property num_doc     : WideString read Fnum_doc write Setnum_doc;
    property dt_doc     : TDateTime read Fdt_doc write Setdt_doc;
    property dt_e_s     : TDateTime read Fdt_e_s write Setdt_e_s;
    property vl_doc     : Double read Fvl_doc write Setvl_doc;
    property vl_desc     : Double read Fvl_desc write Setvl_desc;
    property vl_forn     : Double read Fvl_forn write Setvl_forn;
    property vl_serv_nt     : Double read Fvl_serv_nt write Setvl_serv_nt;
    property vl_terc     : Double read Fvl_terc write Setvl_terc;
    property vl_da     : Double read Fvl_da write Setvl_da;
    property vl_bc_icms     : Double read Fvl_bc_icms write Setvl_bc_icms;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_bc_icms_st     : Double read Fvl_bc_icms_st write Setvl_bc_icms_st;
    property vl_icms_st     : Double read Fvl_icms_st write Setvl_icms_st;
    property cod_inf     : WideString read Fcod_inf write Setcod_inf;
    property vl_pis     : Double read Fvl_pis write Setvl_pis;
    property vl_cofins     : Double read Fvl_cofins write Setvl_cofins;
    property tp_ligacao     : WideString read Ftp_ligacao write Settp_ligacao;
    property cod_grupo_tensao     : WideString read Fcod_grupo_tensao write Setcod_grupo_tensao;
    property i_cod_item     : WideString read Fi_cod_item write Seti_cod_item;
    property i_cod_class     : WideString read Fi_cod_class write Seti_cod_class;
    property i_qtd     : Double read Fi_qtd write Seti_qtd;
    property i_vl_item     : Double read Fi_vl_item write Seti_vl_item;
    property i_aliq_icms     : Double read Fi_aliq_icms write Seti_aliq_icms;
    property i_cst_icms     : WideString read Fi_cst_icms write Seti_cst_icms;
    property cst_pis     : WideString read Fcst_pis write Setcst_pis;
    property cst_cofins     : WideString read Fcst_cofins write Setcst_cofins;
    property aliq_pis     : Double read Faliq_pis write Setaliq_pis;
    property aliq_cofins     : Double read Faliq_cofins write Setaliq_cofins;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPc.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPc) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPc(Model).id;
Self.Fid_cfop         := TModelERPc(Model).id_cfop;
Self.Find_oper         := TModelERPc(Model).ind_oper;
Self.Find_emit         := TModelERPc(Model).ind_emit;
Self.Fid_fornecedor         := TModelERPc(Model).id_fornecedor;
Self.Ffornecedor         := TModelERPc(Model).fornecedor;
Self.Fcod_mod         := TModelERPc(Model).cod_mod;
Self.Fcod_sit         := TModelERPc(Model).cod_sit;
Self.Fser         := TModelERPc(Model).ser;
Self.Fsub         := TModelERPc(Model).sub;
Self.Fcod_cons         := TModelERPc(Model).cod_cons;
Self.Fnum_doc         := TModelERPc(Model).num_doc;
Self.Fdt_doc         := TModelERPc(Model).dt_doc;
Self.Fdt_e_s         := TModelERPc(Model).dt_e_s;
Self.Fvl_doc         := TModelERPc(Model).vl_doc;
Self.Fvl_desc         := TModelERPc(Model).vl_desc;
Self.Fvl_forn         := TModelERPc(Model).vl_forn;
Self.Fvl_serv_nt         := TModelERPc(Model).vl_serv_nt;
Self.Fvl_terc         := TModelERPc(Model).vl_terc;
Self.Fvl_da         := TModelERPc(Model).vl_da;
Self.Fvl_bc_icms         := TModelERPc(Model).vl_bc_icms;
Self.Fvl_icms         := TModelERPc(Model).vl_icms;
Self.Fvl_bc_icms_st         := TModelERPc(Model).vl_bc_icms_st;
Self.Fvl_icms_st         := TModelERPc(Model).vl_icms_st;
Self.Fcod_inf         := TModelERPc(Model).cod_inf;
Self.Fvl_pis         := TModelERPc(Model).vl_pis;
Self.Fvl_cofins         := TModelERPc(Model).vl_cofins;
Self.Ftp_ligacao         := TModelERPc(Model).tp_ligacao;
Self.Fcod_grupo_tensao         := TModelERPc(Model).cod_grupo_tensao;
Self.Fi_cod_item         := TModelERPc(Model).i_cod_item;
Self.Fi_cod_class         := TModelERPc(Model).i_cod_class;
Self.Fi_qtd         := TModelERPc(Model).i_qtd;
Self.Fi_vl_item         := TModelERPc(Model).i_vl_item;
Self.Fi_aliq_icms         := TModelERPc(Model).i_aliq_icms;
Self.Fi_cst_icms         := TModelERPc(Model).i_cst_icms;
Self.Fcst_pis         := TModelERPc(Model).cst_pis;
Self.Fcst_cofins         := TModelERPc(Model).cst_cofins;
Self.Faliq_pis         := TModelERPc(Model).aliq_pis;
Self.Faliq_cofins         := TModelERPc(Model).aliq_cofins;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPc.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPc.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPc.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPc.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPc.Setind_oper(const Value: Boolean);   
begin                
  Find_oper := Value;   
end;                 

procedure TModelERPc.Setind_emit(const Value: Boolean);   
begin                
  Find_emit := Value;   
end;                 

procedure TModelERPc.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPc.Setfornecedor(const Value: Boolean);   
begin                
  Ffornecedor := Value;   
end;                 

procedure TModelERPc.Setcod_mod(const Value: Boolean);   
begin                
  Fcod_mod := Value;   
end;                 

procedure TModelERPc.Setcod_sit(const Value: Boolean);   
begin                
  Fcod_sit := Value;   
end;                 

procedure TModelERPc.Setser(const Value: Boolean);   
begin                
  Fser := Value;   
end;                 

procedure TModelERPc.Setsub(const Value: Boolean);   
begin                
  Fsub := Value;   
end;                 

procedure TModelERPc.Setcod_cons(const Value: Boolean);   
begin                
  Fcod_cons := Value;   
end;                 

procedure TModelERPc.Setnum_doc(const Value: Boolean);   
begin                
  Fnum_doc := Value;   
end;                 

procedure TModelERPc.Setdt_doc(const Value: Boolean);   
begin                
  Fdt_doc := Value;   
end;                 

procedure TModelERPc.Setdt_e_s(const Value: Boolean);   
begin                
  Fdt_e_s := Value;   
end;                 

procedure TModelERPc.Setvl_doc(const Value: Boolean);   
begin                
  Fvl_doc := Value;   
end;                 

procedure TModelERPc.Setvl_desc(const Value: Boolean);   
begin                
  Fvl_desc := Value;   
end;                 

procedure TModelERPc.Setvl_forn(const Value: Boolean);   
begin                
  Fvl_forn := Value;   
end;                 

procedure TModelERPc.Setvl_serv_nt(const Value: Boolean);   
begin                
  Fvl_serv_nt := Value;   
end;                 

procedure TModelERPc.Setvl_terc(const Value: Boolean);   
begin                
  Fvl_terc := Value;   
end;                 

procedure TModelERPc.Setvl_da(const Value: Boolean);   
begin                
  Fvl_da := Value;   
end;                 

procedure TModelERPc.Setvl_bc_icms(const Value: Boolean);   
begin                
  Fvl_bc_icms := Value;   
end;                 

procedure TModelERPc.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPc.Setvl_bc_icms_st(const Value: Boolean);   
begin                
  Fvl_bc_icms_st := Value;   
end;                 

procedure TModelERPc.Setvl_icms_st(const Value: Boolean);   
begin                
  Fvl_icms_st := Value;   
end;                 

procedure TModelERPc.Setcod_inf(const Value: Boolean);   
begin                
  Fcod_inf := Value;   
end;                 

procedure TModelERPc.Setvl_pis(const Value: Boolean);   
begin                
  Fvl_pis := Value;   
end;                 

procedure TModelERPc.Setvl_cofins(const Value: Boolean);   
begin                
  Fvl_cofins := Value;   
end;                 

procedure TModelERPc.Settp_ligacao(const Value: Boolean);   
begin                
  Ftp_ligacao := Value;   
end;                 

procedure TModelERPc.Setcod_grupo_tensao(const Value: Boolean);   
begin                
  Fcod_grupo_tensao := Value;   
end;                 

procedure TModelERPc.Seti_cod_item(const Value: Boolean);   
begin                
  Fi_cod_item := Value;   
end;                 

procedure TModelERPc.Seti_cod_class(const Value: Boolean);   
begin                
  Fi_cod_class := Value;   
end;                 

procedure TModelERPc.Seti_qtd(const Value: Boolean);   
begin                
  Fi_qtd := Value;   
end;                 

procedure TModelERPc.Seti_vl_item(const Value: Boolean);   
begin                
  Fi_vl_item := Value;   
end;                 

procedure TModelERPc.Seti_aliq_icms(const Value: Boolean);   
begin                
  Fi_aliq_icms := Value;   
end;                 

procedure TModelERPc.Seti_cst_icms(const Value: Boolean);   
begin                
  Fi_cst_icms := Value;   
end;                 

procedure TModelERPc.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPc.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPc.Setaliq_pis(const Value: Boolean);   
begin                
  Faliq_pis := Value;   
end;                 

procedure TModelERPc.Setaliq_cofins(const Value: Boolean);   
begin                
  Faliq_cofins := Value;   
end;                 


end.
