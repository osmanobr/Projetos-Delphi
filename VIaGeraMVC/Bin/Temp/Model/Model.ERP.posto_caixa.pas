unit Model.ERP.pmpf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpmpf = class(TModelBase)

private
    Fid : Integer;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fstatus : indefinido;
    Fdata_abre : TDateTime;
    Fhora_abre : indefinido;
    Fdata_fecha : TDateTime;
    Fhora_fecha : indefinido;
    Fvl_abre : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setstatus(const Value: indefinido);
    procedure Setdata_abre(const Value: TDateTime);
    procedure Sethora_abre(const Value: indefinido);
    procedure Setdata_fecha(const Value: TDateTime);
    procedure Sethora_fecha(const Value: indefinido);
    procedure Setvl_abre(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property status     : indefinido read Fstatus write Setstatus;
    property data_abre     : TDateTime read Fdata_abre write Setdata_abre;
    property hora_abre     : indefinido read Fhora_abre write Sethora_abre;
    property data_fecha     : TDateTime read Fdata_fecha write Setdata_fecha;
    property hora_fecha     : indefinido read Fhora_fecha write Sethora_fecha;
    property vl_abre     : Double read Fvl_abre write Setvl_abre;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpmpf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpmpf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpmpf(Model).id;
Self.Fid_caixa         := TModelERPpmpf(Model).id_caixa;
Self.Fid_usuario         := TModelERPpmpf(Model).id_usuario;
Self.Fstatus         := TModelERPpmpf(Model).status;
Self.Fdata_abre         := TModelERPpmpf(Model).data_abre;
Self.Fhora_abre         := TModelERPpmpf(Model).hora_abre;
Self.Fdata_fecha         := TModelERPpmpf(Model).data_fecha;
Self.Fhora_fecha         := TModelERPpmpf(Model).hora_fecha;
Self.Fvl_abre         := TModelERPpmpf(Model).vl_abre;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpmpf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpmpf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpmpf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpmpf.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPpmpf.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpmpf.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPpmpf.Setdata_abre(const Value: Boolean);   
begin                
  Fdata_abre := Value;   
end;                 

procedure TModelERPpmpf.Sethora_abre(const Value: Boolean);   
begin                
  Fhora_abre := Value;   
end;                 

procedure TModelERPpmpf.Setdata_fecha(const Value: Boolean);   
begin                
  Fdata_fecha := Value;   
end;                 

procedure TModelERPpmpf.Sethora_fecha(const Value: Boolean);   
begin                
  Fhora_fecha := Value;   
end;                 

procedure TModelERPpmpf.Setvl_abre(const Value: Boolean);   
begin                
  Fvl_abre := Value;   
end;                 


end.
