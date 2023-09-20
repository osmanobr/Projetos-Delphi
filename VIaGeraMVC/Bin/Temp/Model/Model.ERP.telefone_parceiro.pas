unit Model.ERP.taxa_ibpt;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtaxaibpt = class(TModelBase)

private
    Fid : Integer;
    Fid_parceiro : Integer;
    Ftelefone : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_parceiro(const Value: Integer);
    procedure Settelefone(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_parceiro     : Integer read Fid_parceiro write Setid_parceiro;
    property telefone     : indefinido read Ftelefone write Settelefone;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtaxaibpt.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtaxaibpt) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtaxaibpt(Model).id;
Self.Fid_parceiro         := TModelERPtaxaibpt(Model).id_parceiro;
Self.Ftelefone         := TModelERPtaxaibpt(Model).telefone;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtaxaibpt.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtaxaibpt.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtaxaibpt.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtaxaibpt.Setid_parceiro(const Value: Boolean);   
begin                
  Fid_parceiro := Value;   
end;                 

procedure TModelERPtaxaibpt.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 


end.
