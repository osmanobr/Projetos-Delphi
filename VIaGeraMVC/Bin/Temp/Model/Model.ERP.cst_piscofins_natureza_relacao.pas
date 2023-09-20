unit Model.ERP.cst_piscofins_natureza_ncm;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcstpiscofinsnaturezancm = class(TModelBase)

private
    Fid : Integer;
    Fid_cst_piscofins : Integer;
    Fid_cst_piscofins_natureza : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_cst_piscofins(const Value: Integer);
    procedure Setid_cst_piscofins_natureza(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_cst_piscofins     : Integer read Fid_cst_piscofins write Setid_cst_piscofins;
    property id_cst_piscofins_natureza     : Integer read Fid_cst_piscofins_natureza write Setid_cst_piscofins_natureza;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcstpiscofinsnaturezancm.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcstpiscofinsnaturezancm) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcstpiscofinsnaturezancm(Model).id;
Self.Fid_cst_piscofins         := TModelERPcstpiscofinsnaturezancm(Model).id_cst_piscofins;
Self.Fid_cst_piscofins_natureza         := TModelERPcstpiscofinsnaturezancm(Model).id_cst_piscofins_natureza;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcstpiscofinsnaturezancm.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcstpiscofinsnaturezancm.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcstpiscofinsnaturezancm.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezancm.Setid_cst_piscofins(const Value: Boolean);   
begin                
  Fid_cst_piscofins := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezancm.Setid_cst_piscofins_natureza(const Value: Boolean);   
begin                
  Fid_cst_piscofins_natureza := Value;   
end;                 


end.
