unit Model.ERP.monitor_nf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmonitornf = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmonitornf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmonitornf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmonitornf(Model).id;
Self.Fid_venda         := TModelERPmonitornf(Model).id_venda;
Self.Fdatahora         := TModelERPmonitornf(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmonitornf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmonitornf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmonitornf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmonitornf.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPmonitornf.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
