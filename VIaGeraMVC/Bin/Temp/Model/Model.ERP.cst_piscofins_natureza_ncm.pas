unit Model.ERP.cst_piscofins_natureza;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcstpiscofinsnatureza = class(TModelBase)

private
    Fid : Integer;
    Fid_cst_piscofins_natureza : Integer;
    Fncm : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cst_piscofins_natureza(const Value: Integer);
    procedure Setncm(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cst_piscofins_natureza     : Integer read Fid_cst_piscofins_natureza write Setid_cst_piscofins_natureza;
    property ncm     : indefinido read Fncm write Setncm;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcstpiscofinsnatureza.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcstpiscofinsnatureza) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcstpiscofinsnatureza(Model).id;
Self.Fid_cst_piscofins_natureza         := TModelERPcstpiscofinsnatureza(Model).id_cst_piscofins_natureza;
Self.Fncm         := TModelERPcstpiscofinsnatureza(Model).ncm;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcstpiscofinsnatureza.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcstpiscofinsnatureza.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcstpiscofinsnatureza.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcstpiscofinsnatureza.Setid_cst_piscofins_natureza(const Value: Boolean);   
begin                
  Fid_cst_piscofins_natureza := Value;   
end;                 

procedure TModelERPcstpiscofinsnatureza.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 


end.
