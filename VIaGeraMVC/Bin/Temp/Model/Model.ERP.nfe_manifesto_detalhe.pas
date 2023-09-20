unit Model.ERP.nfe_manifesto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnfemanifesto = class(TModelBase)

private
    Fid : Integer;
    Fid_nfe_manifesto : Integer;
    Fprotocolo : indefinido;
    Fdata_envio : indefinido;
    Fevento : indefinido;
    Fsequencia : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_nfe_manifesto(const Value: Integer);
    procedure Setprotocolo(const Value: indefinido);
    procedure Setdata_envio(const Value: indefinido);
    procedure Setevento(const Value: indefinido);
    procedure Setsequencia(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_nfe_manifesto     : Integer read Fid_nfe_manifesto write Setid_nfe_manifesto;
    property protocolo     : indefinido read Fprotocolo write Setprotocolo;
    property data_envio     : indefinido read Fdata_envio write Setdata_envio;
    property evento     : indefinido read Fevento write Setevento;
    property sequencia     : Integer read Fsequencia write Setsequencia;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPnfemanifesto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnfemanifesto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnfemanifesto(Model).id;
Self.Fid_nfe_manifesto         := TModelERPnfemanifesto(Model).id_nfe_manifesto;
Self.Fprotocolo         := TModelERPnfemanifesto(Model).protocolo;
Self.Fdata_envio         := TModelERPnfemanifesto(Model).data_envio;
Self.Fevento         := TModelERPnfemanifesto(Model).evento;
Self.Fsequencia         := TModelERPnfemanifesto(Model).sequencia;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnfemanifesto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnfemanifesto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnfemanifesto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnfemanifesto.Setid_nfe_manifesto(const Value: Boolean);   
begin                
  Fid_nfe_manifesto := Value;   
end;                 

procedure TModelERPnfemanifesto.Setprotocolo(const Value: Boolean);   
begin                
  Fprotocolo := Value;   
end;                 

procedure TModelERPnfemanifesto.Setdata_envio(const Value: Boolean);   
begin                
  Fdata_envio := Value;   
end;                 

procedure TModelERPnfemanifesto.Setevento(const Value: Boolean);   
begin                
  Fevento := Value;   
end;                 

procedure TModelERPnfemanifesto.Setsequencia(const Value: Boolean);   
begin                
  Fsequencia := Value;   
end;                 


end.
