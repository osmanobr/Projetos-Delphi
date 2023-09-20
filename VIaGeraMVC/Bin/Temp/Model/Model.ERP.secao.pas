unit Model.ERP.rotas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERProtas = class(TModelBase)

private
    Fid : Integer;
    Fid_setor : Integer;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_setor(const Value: Integer);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_setor     : Integer read Fid_setor write Setid_setor;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERProtas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERProtas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERProtas(Model).id;
Self.Fid_setor         := TModelERProtas(Model).id_setor;
Self.Fdescricao         := TModelERProtas(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERProtas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERProtas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERProtas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERProtas.Setid_setor(const Value: Boolean);   
begin                
  Fid_setor := Value;   
end;                 

procedure TModelERProtas.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
