unit Model.ERP.romaneio;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPromaneio = class(TModelBase)

private
    Fid : Integer;
    Fid_romaneio : Integer;
    Fid_venda : Integer;
    Fdata : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_romaneio(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setdata(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_romaneio     : Integer read Fid_romaneio write Setid_romaneio;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property data     : indefinido read Fdata write Setdata;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPromaneio.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPromaneio) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPromaneio(Model).id;
Self.Fid_romaneio         := TModelERPromaneio(Model).id_romaneio;
Self.Fid_venda         := TModelERPromaneio(Model).id_venda;
Self.Fdata         := TModelERPromaneio(Model).data;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPromaneio.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPromaneio.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPromaneio.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPromaneio.Setid_romaneio(const Value: Boolean);   
begin                
  Fid_romaneio := Value;   
end;                 

procedure TModelERPromaneio.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPromaneio.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 


end.
