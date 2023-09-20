unit Model.ERP.agro_cultura;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPagrocultura = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPagrocultura.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPagrocultura) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPagrocultura(Model).id;
Self.Fnome         := TModelERPagrocultura(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPagrocultura.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPagrocultura.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPagrocultura.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPagrocultura.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
