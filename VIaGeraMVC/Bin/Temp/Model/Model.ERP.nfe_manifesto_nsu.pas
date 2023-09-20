unit Model.ERP.nfe_manifesto_eventos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnfemanifestoeventos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnsu : WideString;
    Finclusao : indefinido;
    Fconsumo_indevido : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnsu(const Value: WideString);
    procedure Setinclusao(const Value: indefinido);
    procedure Setconsumo_indevido(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nsu     : WideString read Fnsu write Setnsu;
    property inclusao     : indefinido read Finclusao write Setinclusao;
    property consumo_indevido     : indefinido read Fconsumo_indevido write Setconsumo_indevido;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPnfemanifestoeventos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnfemanifestoeventos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnfemanifestoeventos(Model).id;
Self.Fid_empresa         := TModelERPnfemanifestoeventos(Model).id_empresa;
Self.Fnsu         := TModelERPnfemanifestoeventos(Model).nsu;
Self.Finclusao         := TModelERPnfemanifestoeventos(Model).inclusao;
Self.Fconsumo_indevido         := TModelERPnfemanifestoeventos(Model).consumo_indevido;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnfemanifestoeventos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnfemanifestoeventos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnfemanifestoeventos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnfemanifestoeventos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPnfemanifestoeventos.Setnsu(const Value: Boolean);   
begin                
  Fnsu := Value;   
end;                 

procedure TModelERPnfemanifestoeventos.Setinclusao(const Value: Boolean);   
begin                
  Finclusao := Value;   
end;                 

procedure TModelERPnfemanifestoeventos.Setconsumo_indevido(const Value: Boolean);   
begin                
  Fconsumo_indevido := Value;   
end;                 


end.
