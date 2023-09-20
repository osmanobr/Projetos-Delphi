unit Model.ERP.codigo_ibge;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcodigoibge = class(TModelBase)

private
    Fid : Integer;
    Fdias : Integer;
    Fvalor_perc : Double;

    procedure Setid(const Value: Integer);
    procedure Setdias(const Value: Integer);
    procedure Setvalor_perc(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property dias     : Integer read Fdias write Setdias;
    property valor_perc     : Double read Fvalor_perc write Setvalor_perc;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcodigoibge.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcodigoibge) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcodigoibge(Model).id;
Self.Fdias         := TModelERPcodigoibge(Model).dias;
Self.Fvalor_perc         := TModelERPcodigoibge(Model).valor_perc;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcodigoibge.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcodigoibge.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcodigoibge.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcodigoibge.Setdias(const Value: Boolean);   
begin                
  Fdias := Value;   
end;                 

procedure TModelERPcodigoibge.Setvalor_perc(const Value: Boolean);   
begin                
  Fvalor_perc := Value;   
end;                 


end.
