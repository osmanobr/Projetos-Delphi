unit Model.ERP.balanco_uniao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbalancouniao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_balanco_uniao : Integer;
    Fid_balanco : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_balanco_uniao(const Value: Integer);
    procedure Setid_balanco(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_balanco_uniao     : Integer read Fid_balanco_uniao write Setid_balanco_uniao;
    property id_balanco     : Integer read Fid_balanco write Setid_balanco;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbalancouniao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbalancouniao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbalancouniao(Model).id;
Self.Fid_empresa         := TModelERPbalancouniao(Model).id_empresa;
Self.Fid_balanco_uniao         := TModelERPbalancouniao(Model).id_balanco_uniao;
Self.Fid_balanco         := TModelERPbalancouniao(Model).id_balanco;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbalancouniao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbalancouniao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbalancouniao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbalancouniao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbalancouniao.Setid_balanco_uniao(const Value: Boolean);   
begin                
  Fid_balanco_uniao := Value;   
end;                 

procedure TModelERPbalancouniao.Setid_balanco(const Value: Boolean);   
begin                
  Fid_balanco := Value;   
end;                 


end.
