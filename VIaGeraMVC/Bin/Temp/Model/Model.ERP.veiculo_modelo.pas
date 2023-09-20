unit Model.ERP.usuarios_modulos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPusuariosmodulos = class(TModelBase)

private
    Fid : Integer;
    Fid_fabricante : Integer;
    Fmodelo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_fabricante(const Value: Integer);
    procedure Setmodelo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_fabricante     : Integer read Fid_fabricante write Setid_fabricante;
    property modelo     : WideString read Fmodelo write Setmodelo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPusuariosmodulos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPusuariosmodulos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPusuariosmodulos(Model).id;
Self.Fid_fabricante         := TModelERPusuariosmodulos(Model).id_fabricante;
Self.Fmodelo         := TModelERPusuariosmodulos(Model).modelo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPusuariosmodulos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPusuariosmodulos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPusuariosmodulos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPusuariosmodulos.Setid_fabricante(const Value: Boolean);   
begin                
  Fid_fabricante := Value;   
end;                 

procedure TModelERPusuariosmodulos.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 


end.
