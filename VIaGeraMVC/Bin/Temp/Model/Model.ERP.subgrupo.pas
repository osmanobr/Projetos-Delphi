unit Model.ERP.sistemas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPsistemas = class(TModelBase)

private
    Fid : Integer;
    Fid_grupo : Integer;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_grupo(const Value: Integer);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPsistemas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPsistemas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPsistemas(Model).id;
Self.Fid_grupo         := TModelERPsistemas(Model).id_grupo;
Self.Fdescricao         := TModelERPsistemas(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPsistemas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPsistemas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPsistemas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPsistemas.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPsistemas.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
