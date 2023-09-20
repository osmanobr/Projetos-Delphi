unit Model.ERP.grade;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPgrade = class(TModelBase)

private
    Fid : Integer;
    Fid_secao : Integer;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_secao(const Value: Integer);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_secao     : Integer read Fid_secao write Setid_secao;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPgrade.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPgrade) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPgrade(Model).id;
Self.Fid_secao         := TModelERPgrade(Model).id_secao;
Self.Fdescricao         := TModelERPgrade(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPgrade.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPgrade.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPgrade.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPgrade.Setid_secao(const Value: Boolean);   
begin                
  Fid_secao := Value;   
end;                 

procedure TModelERPgrade.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
