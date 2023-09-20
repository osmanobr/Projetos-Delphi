unit Model.ERP.mesa_forma;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesaforma = class(TModelBase)

private
    Fid : Integer;
    Fid_mesa : Integer;
    Fmesa : WideString;
    Fvalor : Double;
    Fobs : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_mesa(const Value: Integer);
    procedure Setmesa(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setobs(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_mesa     : Integer read Fid_mesa write Setid_mesa;
    property mesa     : WideString read Fmesa write Setmesa;
    property valor     : Double read Fvalor write Setvalor;
    property obs     : WideString read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesaforma.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesaforma) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesaforma(Model).id;
Self.Fid_mesa         := TModelERPmesaforma(Model).id_mesa;
Self.Fmesa         := TModelERPmesaforma(Model).mesa;
Self.Fvalor         := TModelERPmesaforma(Model).valor;
Self.Fobs         := TModelERPmesaforma(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesaforma.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesaforma.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesaforma.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesaforma.Setid_mesa(const Value: Boolean);   
begin                
  Fid_mesa := Value;   
end;                 

procedure TModelERPmesaforma.Setmesa(const Value: Boolean);   
begin                
  Fmesa := Value;   
end;                 

procedure TModelERPmesaforma.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmesaforma.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
