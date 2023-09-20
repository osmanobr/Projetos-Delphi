unit Model.ERP.prescritor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprescritor = class(TModelBase)

private
    Fid : Integer;
    Fline : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setline(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property line     : indefinido read Fline write Setline;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprescritor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprescritor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprescritor(Model).id;
Self.Fline         := TModelERPprescritor(Model).line;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprescritor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprescritor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprescritor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprescritor.Setline(const Value: Boolean);   
begin                
  Fline := Value;   
end;                 


end.
