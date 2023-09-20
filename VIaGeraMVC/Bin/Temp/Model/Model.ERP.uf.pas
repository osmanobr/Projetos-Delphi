unit Model.ERP.troca_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtrocaitem = class(TModelBase)

private
    Fid : Integer;
    Fuf : indefinido;
    Ficms : Double;
    Ffcp_uf : Double;

    procedure Setid(const Value: Integer);
    procedure Setuf(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Setfcp_uf(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property uf     : indefinido read Fuf write Setuf;
    property icms     : Double read Ficms write Seticms;
    property fcp_uf     : Double read Ffcp_uf write Setfcp_uf;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtrocaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtrocaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtrocaitem(Model).id;
Self.Fuf         := TModelERPtrocaitem(Model).uf;
Self.Ficms         := TModelERPtrocaitem(Model).icms;
Self.Ffcp_uf         := TModelERPtrocaitem(Model).fcp_uf;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtrocaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtrocaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtrocaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtrocaitem.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPtrocaitem.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPtrocaitem.Setfcp_uf(const Value: Boolean);   
begin                
  Ffcp_uf := Value;   
end;                 


end.
