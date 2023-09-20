unit Model.ERP.leitura_condominio;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracondominio = class(TModelBase)

private
    Fid : Integer;
    Fmodelo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setmodelo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property modelo     : WideString read Fmodelo write Setmodelo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracondominio.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracondominio) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracondominio(Model).id;
Self.Fmodelo         := TModelERPleituracondominio(Model).modelo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracondominio.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracondominio.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracondominio.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracondominio.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 


end.
