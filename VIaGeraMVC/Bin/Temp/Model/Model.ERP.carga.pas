unit Model.ERP.calculo_financeiro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcalculofinanceiro = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fgerado : WideString;
    Fid_rota : Integer;
    Fid_transportadora : Integer;
    Fmotorista : WideString;
    Fplaca : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fkm_inicial : WideString;
    Fkm_final : WideString;
    Ftotal_volumes : Double;
    Ftotal_unidades : Double;
    Ftransporte : WideString;
    Fobs : WideString;
    Fvalor : Double;
    Fid_usuario : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setgerado(const Value: WideString);
    procedure Setid_rota(const Value: Integer);
    procedure Setid_transportadora(const Value: Integer);
    procedure Setmotorista(const Value: WideString);
    procedure Setplaca(const Value: WideString);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setkm_inicial(const Value: WideString);
    procedure Setkm_final(const Value: WideString);
    procedure Settotal_volumes(const Value: Double);
    procedure Settotal_unidades(const Value: Double);
    procedure Settransporte(const Value: WideString);
    procedure Setobs(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property gerado     : WideString read Fgerado write Setgerado;
    property id_rota     : Integer read Fid_rota write Setid_rota;
    property id_transportadora     : Integer read Fid_transportadora write Setid_transportadora;
    property motorista     : WideString read Fmotorista write Setmotorista;
    property placa     : WideString read Fplaca write Setplaca;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property km_inicial     : WideString read Fkm_inicial write Setkm_inicial;
    property km_final     : WideString read Fkm_final write Setkm_final;
    property total_volumes     : Double read Ftotal_volumes write Settotal_volumes;
    property total_unidades     : Double read Ftotal_unidades write Settotal_unidades;
    property transporte     : WideString read Ftransporte write Settransporte;
    property obs     : WideString read Fobs write Setobs;
    property valor     : Double read Fvalor write Setvalor;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcalculofinanceiro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcalculofinanceiro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcalculofinanceiro(Model).id;
Self.Fdata         := TModelERPcalculofinanceiro(Model).data;
Self.Fgerado         := TModelERPcalculofinanceiro(Model).gerado;
Self.Fid_rota         := TModelERPcalculofinanceiro(Model).id_rota;
Self.Fid_transportadora         := TModelERPcalculofinanceiro(Model).id_transportadora;
Self.Fmotorista         := TModelERPcalculofinanceiro(Model).motorista;
Self.Fplaca         := TModelERPcalculofinanceiro(Model).placa;
Self.Fpeso_bruto         := TModelERPcalculofinanceiro(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPcalculofinanceiro(Model).peso_liquido;
Self.Fkm_inicial         := TModelERPcalculofinanceiro(Model).km_inicial;
Self.Fkm_final         := TModelERPcalculofinanceiro(Model).km_final;
Self.Ftotal_volumes         := TModelERPcalculofinanceiro(Model).total_volumes;
Self.Ftotal_unidades         := TModelERPcalculofinanceiro(Model).total_unidades;
Self.Ftransporte         := TModelERPcalculofinanceiro(Model).transporte;
Self.Fobs         := TModelERPcalculofinanceiro(Model).obs;
Self.Fvalor         := TModelERPcalculofinanceiro(Model).valor;
Self.Fid_usuario         := TModelERPcalculofinanceiro(Model).id_usuario;
Self.Fclick         := TModelERPcalculofinanceiro(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcalculofinanceiro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcalculofinanceiro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcalculofinanceiro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setid_rota(const Value: Boolean);   
begin                
  Fid_rota := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setid_transportadora(const Value: Boolean);   
begin                
  Fid_transportadora := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setkm_inicial(const Value: Boolean);   
begin                
  Fkm_inicial := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setkm_final(const Value: Boolean);   
begin                
  Fkm_final := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Settotal_volumes(const Value: Boolean);   
begin                
  Ftotal_volumes := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Settotal_unidades(const Value: Boolean);   
begin                
  Ftotal_unidades := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Settransporte(const Value: Boolean);   
begin                
  Ftransporte := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcalculofinanceiro.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
