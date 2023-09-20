unit Model.ERP.etiqueta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPetiqueta = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : WideString;
    Fordem_code : Integer;
    Fordem_show : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setordem_code(const Value: Integer);
    procedure Setordem_show(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property ordem_code     : Integer read Fordem_code write Setordem_code;
    property ordem_show     : Integer read Fordem_show write Setordem_show;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPetiqueta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPetiqueta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPetiqueta(Model).id;
Self.Fdescricao         := TModelERPetiqueta(Model).descricao;
Self.Fordem_code         := TModelERPetiqueta(Model).ordem_code;
Self.Fordem_show         := TModelERPetiqueta(Model).ordem_show;
Self.Fclick         := TModelERPetiqueta(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPetiqueta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPetiqueta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPetiqueta.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPetiqueta.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPetiqueta.Setordem_code(const Value: Boolean);   
begin                
  Fordem_code := Value;   
end;                 

procedure TModelERPetiqueta.Setordem_show(const Value: Boolean);   
begin                
  Fordem_show := Value;   
end;                 

procedure TModelERPetiqueta.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
