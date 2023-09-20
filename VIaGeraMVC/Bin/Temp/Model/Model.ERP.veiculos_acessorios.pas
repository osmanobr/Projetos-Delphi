unit Model.ERP.veiculos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculos = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPveiculos(Model).id;
Self.Fdescricao         := TModelERPveiculos(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPveiculos.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
