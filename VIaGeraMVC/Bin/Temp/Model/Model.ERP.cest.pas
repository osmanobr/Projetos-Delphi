unit Model.ERP.central_custodia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcentralcustodia = class(TModelBase)

private
    Fid : Integer;
    Fitem : WideString;
    Fcest : WideString;
    Fdescricao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setitem(const Value: WideString);
    procedure Setcest(const Value: WideString);
    procedure Setdescricao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property item     : WideString read Fitem write Setitem;
    property cest     : WideString read Fcest write Setcest;
    property descricao     : WideString read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcentralcustodia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcentralcustodia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcentralcustodia(Model).id;
Self.Fitem         := TModelERPcentralcustodia(Model).item;
Self.Fcest         := TModelERPcentralcustodia(Model).cest;
Self.Fdescricao         := TModelERPcentralcustodia(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcentralcustodia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcentralcustodia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcentralcustodia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcentralcustodia.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPcentralcustodia.Setcest(const Value: Boolean);   
begin                
  Fcest := Value;   
end;                 

procedure TModelERPcentralcustodia.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
