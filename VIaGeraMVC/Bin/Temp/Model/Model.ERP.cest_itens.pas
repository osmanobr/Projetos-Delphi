unit Model.ERP.cest;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcest = class(TModelBase)

private
    Fid : Integer;
    Fcest : WideString;
    Fncm : WideString;
    Fdescricao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setcest(const Value: WideString);
    procedure Setncm(const Value: WideString);
    procedure Setdescricao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property cest     : WideString read Fcest write Setcest;
    property ncm     : WideString read Fncm write Setncm;
    property descricao     : indefinido read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcest.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcest) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcest(Model).id;
Self.Fcest         := TModelERPcest(Model).cest;
Self.Fncm         := TModelERPcest(Model).ncm;
Self.Fdescricao         := TModelERPcest(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcest.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcest.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcest.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcest.Setcest(const Value: Boolean);   
begin                
  Fcest := Value;   
end;                 

procedure TModelERPcest.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPcest.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
