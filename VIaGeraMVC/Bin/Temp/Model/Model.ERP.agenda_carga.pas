unit Model.ERP.advertencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPadvertencia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fid_veiculo : Integer;
    Fdata : TDateTime;
    Finicio : indefinido;
    Ftempo : indefinido;
    Ffinal : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_veiculo(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setinicio(const Value: indefinido);
    procedure Settempo(const Value: indefinido);
    procedure Setfinal(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_veiculo     : Integer read Fid_veiculo write Setid_veiculo;
    property data     : TDateTime read Fdata write Setdata;
    property inicio     : indefinido read Finicio write Setinicio;
    property tempo     : indefinido read Ftempo write Settempo;
    property final     : indefinido read Ffinal write Setfinal;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPadvertencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPadvertencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPadvertencia(Model).id;
Self.Fid_empresa         := TModelERPadvertencia(Model).id_empresa;
Self.Fid_usuario         := TModelERPadvertencia(Model).id_usuario;
Self.Fid_cliente         := TModelERPadvertencia(Model).id_cliente;
Self.Fid_veiculo         := TModelERPadvertencia(Model).id_veiculo;
Self.Fdata         := TModelERPadvertencia(Model).data;
Self.Finicio         := TModelERPadvertencia(Model).inicio;
Self.Ftempo         := TModelERPadvertencia(Model).tempo;
Self.Ffinal         := TModelERPadvertencia(Model).final;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPadvertencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPadvertencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPadvertencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPadvertencia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPadvertencia.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPadvertencia.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPadvertencia.Setid_veiculo(const Value: Boolean);   
begin                
  Fid_veiculo := Value;   
end;                 

procedure TModelERPadvertencia.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPadvertencia.Setinicio(const Value: Boolean);   
begin                
  Finicio := Value;   
end;                 

procedure TModelERPadvertencia.Settempo(const Value: Boolean);   
begin                
  Ftempo := Value;   
end;                 

procedure TModelERPadvertencia.Setfinal(const Value: Boolean);   
begin                
  Ffinal := Value;   
end;                 


end.
