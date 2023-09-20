unit Model.ERP.contrato;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrato = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fcontrato : WideString;
    Fid_cliente : Integer;
    Fvalor : Double;
    Fdata : TDateTime;
    Fid_sistema : Integer;
    Fcancelado : WideString;
    Fdata_cancelado : TDateTime;
    Fmotivo_cancelado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setcontrato(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_sistema(const Value: Integer);
    procedure Setcancelado(const Value: WideString);
    procedure Setdata_cancelado(const Value: TDateTime);
    procedure Setmotivo_cancelado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property contrato     : WideString read Fcontrato write Setcontrato;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property valor     : Double read Fvalor write Setvalor;
    property data     : TDateTime read Fdata write Setdata;
    property id_sistema     : Integer read Fid_sistema write Setid_sistema;
    property cancelado     : WideString read Fcancelado write Setcancelado;
    property data_cancelado     : TDateTime read Fdata_cancelado write Setdata_cancelado;
    property motivo_cancelado     : indefinido read Fmotivo_cancelado write Setmotivo_cancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrato.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrato) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrato(Model).id;
Self.Fid_empresa         := TModelERPcontrato(Model).id_empresa;
Self.Fcontrato         := TModelERPcontrato(Model).contrato;
Self.Fid_cliente         := TModelERPcontrato(Model).id_cliente;
Self.Fvalor         := TModelERPcontrato(Model).valor;
Self.Fdata         := TModelERPcontrato(Model).data;
Self.Fid_sistema         := TModelERPcontrato(Model).id_sistema;
Self.Fcancelado         := TModelERPcontrato(Model).cancelado;
Self.Fdata_cancelado         := TModelERPcontrato(Model).data_cancelado;
Self.Fmotivo_cancelado         := TModelERPcontrato(Model).motivo_cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrato.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrato.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrato.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrato.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontrato.Setcontrato(const Value: Boolean);   
begin                
  Fcontrato := Value;   
end;                 

procedure TModelERPcontrato.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontrato.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontrato.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcontrato.Setid_sistema(const Value: Boolean);   
begin                
  Fid_sistema := Value;   
end;                 

procedure TModelERPcontrato.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPcontrato.Setdata_cancelado(const Value: Boolean);   
begin                
  Fdata_cancelado := Value;   
end;                 

procedure TModelERPcontrato.Setmotivo_cancelado(const Value: Boolean);   
begin                
  Fmotivo_cancelado := Value;   
end;                 


end.
