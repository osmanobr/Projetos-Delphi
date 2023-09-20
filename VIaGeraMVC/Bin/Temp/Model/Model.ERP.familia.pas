unit Model.ERP.fabricante_veiculo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricanteveiculo = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricanteveiculo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricanteveiculo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricanteveiculo(Model).id;
Self.Fnome         := TModelERPfabricanteveiculo(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricanteveiculo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricanteveiculo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricanteveiculo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricanteveiculo.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.