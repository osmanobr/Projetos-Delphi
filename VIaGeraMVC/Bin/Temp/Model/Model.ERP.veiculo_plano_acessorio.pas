unit Model.ERP.veiculo_modelo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculomodelo = class(TModelBase)

private
    Fid_veiculo : Integer;
    Fid_veiculo_plano : Integer;
    Fid_veiculo_acessorio : Integer;

    procedure Setid_veiculo(const Value: Integer);
    procedure Setid_veiculo_plano(const Value: Integer);
    procedure Setid_veiculo_acessorio(const Value: Integer);

public
    property id_veiculo     : Integer read Fid_veiculo write Setid_veiculo;
    property id_veiculo_plano     : Integer read Fid_veiculo_plano write Setid_veiculo_plano;
    property id_veiculo_acessorio     : Integer read Fid_veiculo_acessorio write Setid_veiculo_acessorio;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculomodelo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculomodelo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid_veiculo         := TModelERPveiculomodelo(Model).id_veiculo;
Self.Fid_veiculo_plano         := TModelERPveiculomodelo(Model).id_veiculo_plano;
Self.Fid_veiculo_acessorio         := TModelERPveiculomodelo(Model).id_veiculo_acessorio;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculomodelo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculomodelo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculomodelo.Setid_veiculo(const Value: Boolean);   
begin                
  Fid_veiculo := Value;   
end;                 

procedure TModelERPveiculomodelo.Setid_veiculo_plano(const Value: Boolean);   
begin                
  Fid_veiculo_plano := Value;   
end;                 

procedure TModelERPveiculomodelo.Setid_veiculo_acessorio(const Value: Boolean);   
begin                
  Fid_veiculo_acessorio := Value;   
end;                 


end.
