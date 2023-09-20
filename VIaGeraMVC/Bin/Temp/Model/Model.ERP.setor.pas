unit Model.ERP.servicos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPservicos = class(TModelBase)

private
    Fid : Integer;
    Fid_departamento : Integer;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_departamento(const Value: Integer);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_departamento     : Integer read Fid_departamento write Setid_departamento;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPservicos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPservicos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPservicos(Model).id;
Self.Fid_departamento         := TModelERPservicos(Model).id_departamento;
Self.Fdescricao         := TModelERPservicos(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPservicos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPservicos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPservicos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPservicos.Setid_departamento(const Value: Boolean);   
begin                
  Fid_departamento := Value;   
end;                 

procedure TModelERPservicos.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
