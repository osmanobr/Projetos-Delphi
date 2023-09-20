unit Model.ERP.import_clientes_dependentes_fotos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientesdependentesfotos = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientesdependentesfotos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientesdependentesfotos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientesdependentesfotos(Model).id;
Self.Fid_cliente         := TModelERPimportclientesdependentesfotos(Model).id_cliente;
Self.Ffoto         := TModelERPimportclientesdependentesfotos(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientesdependentesfotos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientesdependentesfotos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientesdependentesfotos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientesdependentesfotos.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPimportclientesdependentesfotos.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
