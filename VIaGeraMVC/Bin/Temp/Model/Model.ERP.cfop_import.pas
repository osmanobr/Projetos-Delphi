unit Model.ERP.cfop;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcfop = class(TModelBase)

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
 function TModelERPcfop.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcfop) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcfop(Model).id;
Self.Fdescricao         := TModelERPcfop(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcfop.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcfop.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcfop.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcfop.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
