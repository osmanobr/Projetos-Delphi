unit Model.ERP.clientes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientes = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Falterado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setalterado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property alterado     : indefinido read Falterado write Setalterado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientes(Model).id;
Self.Fid_cliente         := TModelERPclientes(Model).id_cliente;
Self.Falterado         := TModelERPclientes(Model).alterado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientes.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientes.Setalterado(const Value: Boolean);   
begin                
  Falterado := Value;   
end;                 


end.
