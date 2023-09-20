unit Model.ERP.remessa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPremessa = class(TModelBase)

private
    Fid : Integer;
    Fid_representante : Integer;
    Fid_fornecedor : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_representante(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_representante     : Integer read Fid_representante write Setid_representante;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPremessa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPremessa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPremessa(Model).id;
Self.Fid_representante         := TModelERPremessa(Model).id_representante;
Self.Fid_fornecedor         := TModelERPremessa(Model).id_fornecedor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPremessa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPremessa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPremessa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPremessa.Setid_representante(const Value: Boolean);   
begin                
  Fid_representante := Value;   
end;                 

procedure TModelERPremessa.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 


end.
