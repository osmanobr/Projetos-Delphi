unit Model.ERP.controle_log_helper;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontroleloghelper = class(TModelBase)

private
    Fid : Integer;
    Fid_venda_item : Integer;
    Fn_lote : WideString;
    Fq_lote : Double;
    Fd_fab : TDateTime;
    Fd_val : TDateTime;
    Fc_prod_anvisa : WideString;
    Fx_motivo_isencao : indefinido;
    Fv_pmc : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setn_lote(const Value: WideString);
    procedure Setq_lote(const Value: Double);
    procedure Setd_fab(const Value: TDateTime);
    procedure Setd_val(const Value: TDateTime);
    procedure Setc_prod_anvisa(const Value: WideString);
    procedure Setx_motivo_isencao(const Value: indefinido);
    procedure Setv_pmc(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property n_lote     : WideString read Fn_lote write Setn_lote;
    property q_lote     : Double read Fq_lote write Setq_lote;
    property d_fab     : TDateTime read Fd_fab write Setd_fab;
    property d_val     : TDateTime read Fd_val write Setd_val;
    property c_prod_anvisa     : WideString read Fc_prod_anvisa write Setc_prod_anvisa;
    property x_motivo_isencao     : indefinido read Fx_motivo_isencao write Setx_motivo_isencao;
    property v_pmc     : Double read Fv_pmc write Setv_pmc;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontroleloghelper.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontroleloghelper) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontroleloghelper(Model).id;
Self.Fid_venda_item         := TModelERPcontroleloghelper(Model).id_venda_item;
Self.Fn_lote         := TModelERPcontroleloghelper(Model).n_lote;
Self.Fq_lote         := TModelERPcontroleloghelper(Model).q_lote;
Self.Fd_fab         := TModelERPcontroleloghelper(Model).d_fab;
Self.Fd_val         := TModelERPcontroleloghelper(Model).d_val;
Self.Fc_prod_anvisa         := TModelERPcontroleloghelper(Model).c_prod_anvisa;
Self.Fx_motivo_isencao         := TModelERPcontroleloghelper(Model).x_motivo_isencao;
Self.Fv_pmc         := TModelERPcontroleloghelper(Model).v_pmc;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontroleloghelper.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontroleloghelper.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontroleloghelper.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setn_lote(const Value: Boolean);   
begin                
  Fn_lote := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setq_lote(const Value: Boolean);   
begin                
  Fq_lote := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setd_fab(const Value: Boolean);   
begin                
  Fd_fab := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setd_val(const Value: Boolean);   
begin                
  Fd_val := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setc_prod_anvisa(const Value: Boolean);   
begin                
  Fc_prod_anvisa := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setx_motivo_isencao(const Value: Boolean);   
begin                
  Fx_motivo_isencao := Value;   
end;                 

procedure TModelERPcontroleloghelper.Setv_pmc(const Value: Boolean);   
begin                
  Fv_pmc := Value;   
end;                 


end.
