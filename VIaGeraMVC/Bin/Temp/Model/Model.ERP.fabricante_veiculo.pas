unit Model.ERP.fabricante;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricante = class(TModelBase)

private
    Fid : Integer;
    Ffabricante : WideString;

    procedure Setid(const Value: Integer);
    procedure Setfabricante(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property fabricante     : WideString read Ffabricante write Setfabricante;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricante.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricante) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricante(Model).id;
Self.Ffabricante         := TModelERPfabricante(Model).fabricante;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricante.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricante.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricante.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricante.Setfabricante(const Value: Boolean);   
begin                
  Ffabricante := Value;   
end;                 


end.
