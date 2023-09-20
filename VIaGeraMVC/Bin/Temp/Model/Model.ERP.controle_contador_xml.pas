unit Model.ERP.contratos_escola;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontratosescola = class(TModelBase)

private
    Fid : Integer;
    Fid_controle_envio_email : Integer;
    Fprocessado : indefinido;
    Fmes_referencia : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_controle_envio_email(const Value: Integer);
    procedure Setprocessado(const Value: indefinido);
    procedure Setmes_referencia(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_controle_envio_email     : Integer read Fid_controle_envio_email write Setid_controle_envio_email;
    property processado     : indefinido read Fprocessado write Setprocessado;
    property mes_referencia     : TDateTime read Fmes_referencia write Setmes_referencia;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontratosescola.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontratosescola) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontratosescola(Model).id;
Self.Fid_controle_envio_email         := TModelERPcontratosescola(Model).id_controle_envio_email;
Self.Fprocessado         := TModelERPcontratosescola(Model).processado;
Self.Fmes_referencia         := TModelERPcontratosescola(Model).mes_referencia;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontratosescola.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontratosescola.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontratosescola.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontratosescola.Setid_controle_envio_email(const Value: Boolean);   
begin                
  Fid_controle_envio_email := Value;   
end;                 

procedure TModelERPcontratosescola.Setprocessado(const Value: Boolean);   
begin                
  Fprocessado := Value;   
end;                 

procedure TModelERPcontratosescola.Setmes_referencia(const Value: Boolean);   
begin                
  Fmes_referencia := Value;   
end;                 


end.
