unit Model.ERP.representante;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPrepresentante = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_veiculo_transporte : Integer;
    Fmotorista : indefinido;
    Fcarga_maxima : Double;
    Fcarga_entrega : Double;
    Fdata_emissao : indefinido;
    Fdata_entrega : indefinido;
    Fnumero_entregas : Integer;
    Fvalor_transportado : Double;
    Fclick : Boolean;
    Fclose : indefinido;
    Fcarga_percentual : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_veiculo_transporte(const Value: Integer);
    procedure Setmotorista(const Value: indefinido);
    procedure Setcarga_maxima(const Value: Double);
    procedure Setcarga_entrega(const Value: Double);
    procedure Setdata_emissao(const Value: indefinido);
    procedure Setdata_entrega(const Value: indefinido);
    procedure Setnumero_entregas(const Value: Integer);
    procedure Setvalor_transportado(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setclose(const Value: indefinido);
    procedure Setcarga_percentual(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_veiculo_transporte     : Integer read Fid_veiculo_transporte write Setid_veiculo_transporte;
    property motorista     : indefinido read Fmotorista write Setmotorista;
    property carga_maxima     : Double read Fcarga_maxima write Setcarga_maxima;
    property carga_entrega     : Double read Fcarga_entrega write Setcarga_entrega;
    property data_emissao     : indefinido read Fdata_emissao write Setdata_emissao;
    property data_entrega     : indefinido read Fdata_entrega write Setdata_entrega;
    property numero_entregas     : Integer read Fnumero_entregas write Setnumero_entregas;
    property valor_transportado     : Double read Fvalor_transportado write Setvalor_transportado;
    property click     : Boolean read Fclick write Setclick;
    property close     : indefinido read Fclose write Setclose;
    property carga_percentual     : Double read Fcarga_percentual write Setcarga_percentual;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPrepresentante.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPrepresentante) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPrepresentante(Model).id;
Self.Fid_empresa         := TModelERPrepresentante(Model).id_empresa;
Self.Fid_usuario         := TModelERPrepresentante(Model).id_usuario;
Self.Fid_veiculo_transporte         := TModelERPrepresentante(Model).id_veiculo_transporte;
Self.Fmotorista         := TModelERPrepresentante(Model).motorista;
Self.Fcarga_maxima         := TModelERPrepresentante(Model).carga_maxima;
Self.Fcarga_entrega         := TModelERPrepresentante(Model).carga_entrega;
Self.Fdata_emissao         := TModelERPrepresentante(Model).data_emissao;
Self.Fdata_entrega         := TModelERPrepresentante(Model).data_entrega;
Self.Fnumero_entregas         := TModelERPrepresentante(Model).numero_entregas;
Self.Fvalor_transportado         := TModelERPrepresentante(Model).valor_transportado;
Self.Fclick         := TModelERPrepresentante(Model).click;
Self.Fclose         := TModelERPrepresentante(Model).close;
Self.Fcarga_percentual         := TModelERPrepresentante(Model).carga_percentual;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPrepresentante.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPrepresentante.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPrepresentante.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPrepresentante.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPrepresentante.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPrepresentante.Setid_veiculo_transporte(const Value: Boolean);   
begin                
  Fid_veiculo_transporte := Value;   
end;                 

procedure TModelERPrepresentante.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPrepresentante.Setcarga_maxima(const Value: Boolean);   
begin                
  Fcarga_maxima := Value;   
end;                 

procedure TModelERPrepresentante.Setcarga_entrega(const Value: Boolean);   
begin                
  Fcarga_entrega := Value;   
end;                 

procedure TModelERPrepresentante.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPrepresentante.Setdata_entrega(const Value: Boolean);   
begin                
  Fdata_entrega := Value;   
end;                 

procedure TModelERPrepresentante.Setnumero_entregas(const Value: Boolean);   
begin                
  Fnumero_entregas := Value;   
end;                 

procedure TModelERPrepresentante.Setvalor_transportado(const Value: Boolean);   
begin                
  Fvalor_transportado := Value;   
end;                 

procedure TModelERPrepresentante.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPrepresentante.Setclose(const Value: Boolean);   
begin                
  Fclose := Value;   
end;                 

procedure TModelERPrepresentante.Setcarga_percentual(const Value: Boolean);   
begin                
  Fcarga_percentual := Value;   
end;                 


end.
