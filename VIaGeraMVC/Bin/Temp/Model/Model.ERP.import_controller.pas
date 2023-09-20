unit Model.ERP.import_clientes_fotos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientesfotos = class(TModelBase)

private
    Fid : Integer;
    Fin_import : Boolean;
    Fstart_import : indefinido;
    Fend_import : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setin_import(const Value: Boolean);
    procedure Setstart_import(const Value: indefinido);
    procedure Setend_import(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property in_import     : Boolean read Fin_import write Setin_import;
    property start_import     : indefinido read Fstart_import write Setstart_import;
    property end_import     : indefinido read Fend_import write Setend_import;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientesfotos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientesfotos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientesfotos(Model).id;
Self.Fin_import         := TModelERPimportclientesfotos(Model).in_import;
Self.Fstart_import         := TModelERPimportclientesfotos(Model).start_import;
Self.Fend_import         := TModelERPimportclientesfotos(Model).end_import;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientesfotos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientesfotos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientesfotos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientesfotos.Setin_import(const Value: Boolean);   
begin                
  Fin_import := Value;   
end;                 

procedure TModelERPimportclientesfotos.Setstart_import(const Value: Boolean);   
begin                
  Fstart_import := Value;   
end;                 

procedure TModelERPimportclientesfotos.Setend_import(const Value: Boolean);   
begin                
  Fend_import := Value;   
end;                 


end.
