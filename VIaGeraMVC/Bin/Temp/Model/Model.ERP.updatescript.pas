unit Model.ERP.updatecheck;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPupdatecheck = class(TModelBase)

private
    Fscript : indefinido;
    Fdatascript : indefinido;

    procedure Setscript(const Value: indefinido);
    procedure Setdatascript(const Value: indefinido);

public
    property script     : indefinido read Fscript write Setscript;
    property datascript     : indefinido read Fdatascript write Setdatascript;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPupdatecheck.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPupdatecheck) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fscript         := TModelERPupdatecheck(Model).script;
Self.Fdatascript         := TModelERPupdatecheck(Model).datascript;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPupdatecheck.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPupdatecheck.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPupdatecheck.Setscript(const Value: Boolean);   
begin                
  Fscript := Value;   
end;                 

procedure TModelERPupdatecheck.Setdatascript(const Value: Boolean);   
begin                
  Fdatascript := Value;   
end;                 


end.
