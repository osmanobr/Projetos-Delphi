unit Model.ERP.credencial_anual;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcredencialanual = class(TModelBase)

private
    Fid : Integer;
    Fclasse : WideString;

    procedure Setid(const Value: Integer);
    procedure Setclasse(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property classe     : WideString read Fclasse write Setclasse;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcredencialanual.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcredencialanual) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcredencialanual(Model).id;
Self.Fclasse         := TModelERPcredencialanual(Model).classe;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcredencialanual.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcredencialanual.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcredencialanual.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcredencialanual.Setclasse(const Value: Boolean);   
begin                
  Fclasse := Value;   
end;                 


end.
