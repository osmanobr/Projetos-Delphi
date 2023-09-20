unit Model.ERP.import_barras;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportbarras = class(TModelBase)

private
    Fid : Integer;
    Fid_caixa : Integer;
    Fget_import : Boolean;
    Fstart_import : indefinido;
    Fend_import : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setget_import(const Value: Boolean);
    procedure Setstart_import(const Value: indefinido);
    procedure Setend_import(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property get_import     : Boolean read Fget_import write Setget_import;
    property start_import     : indefinido read Fstart_import write Setstart_import;
    property end_import     : indefinido read Fend_import write Setend_import;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportbarras.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportbarras) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportbarras(Model).id;
Self.Fid_caixa         := TModelERPimportbarras(Model).id_caixa;
Self.Fget_import         := TModelERPimportbarras(Model).get_import;
Self.Fstart_import         := TModelERPimportbarras(Model).start_import;
Self.Fend_import         := TModelERPimportbarras(Model).end_import;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportbarras.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportbarras.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportbarras.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportbarras.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPimportbarras.Setget_import(const Value: Boolean);   
begin                
  Fget_import := Value;   
end;                 

procedure TModelERPimportbarras.Setstart_import(const Value: Boolean);   
begin                
  Fstart_import := Value;   
end;                 

procedure TModelERPimportbarras.Setend_import(const Value: Boolean);   
begin                
  Fend_import := Value;   
end;                 


end.
