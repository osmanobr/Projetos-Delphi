unit Model.ERP.logerror;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlogerror = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : indefinido;
    Fid_vendedor : Integer;
    Fid_autorizador : Integer;
    Fvl_total : Double;
    Fcancelado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: indefinido);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_autorizador(const Value: Integer);
    procedure Setvl_total(const Value: Double);
    procedure Setcancelado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : indefinido read Fdata write Setdata;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_autorizador     : Integer read Fid_autorizador write Setid_autorizador;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property cancelado     : Boolean read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlogerror.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlogerror) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlogerror(Model).id;
Self.Fid_empresa         := TModelERPlogerror(Model).id_empresa;
Self.Fdata         := TModelERPlogerror(Model).data;
Self.Fid_vendedor         := TModelERPlogerror(Model).id_vendedor;
Self.Fid_autorizador         := TModelERPlogerror(Model).id_autorizador;
Self.Fvl_total         := TModelERPlogerror(Model).vl_total;
Self.Fcancelado         := TModelERPlogerror(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlogerror.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlogerror.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlogerror.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlogerror.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlogerror.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlogerror.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPlogerror.Setid_autorizador(const Value: Boolean);   
begin                
  Fid_autorizador := Value;   
end;                 

procedure TModelERPlogerror.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPlogerror.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
