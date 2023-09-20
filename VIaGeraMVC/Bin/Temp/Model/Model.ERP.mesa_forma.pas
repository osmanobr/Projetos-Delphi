unit Model.ERP.mesa_cancelada;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesacancelada = class(TModelBase)

private
    Fid : Integer;
    Fid_mesa : Integer;
    Fid_caixa : Integer;
    Fid_forma : Integer;
    Fnome_forma : WideString;
    Fvalor : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_mesa(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setnome_forma(const Value: WideString);
    procedure Setvalor(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_mesa     : Integer read Fid_mesa write Setid_mesa;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property nome_forma     : WideString read Fnome_forma write Setnome_forma;
    property valor     : Double read Fvalor write Setvalor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesacancelada.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesacancelada) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesacancelada(Model).id;
Self.Fid_mesa         := TModelERPmesacancelada(Model).id_mesa;
Self.Fid_caixa         := TModelERPmesacancelada(Model).id_caixa;
Self.Fid_forma         := TModelERPmesacancelada(Model).id_forma;
Self.Fnome_forma         := TModelERPmesacancelada(Model).nome_forma;
Self.Fvalor         := TModelERPmesacancelada(Model).valor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesacancelada.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesacancelada.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesacancelada.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesacancelada.Setid_mesa(const Value: Boolean);   
begin                
  Fid_mesa := Value;   
end;                 

procedure TModelERPmesacancelada.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmesacancelada.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPmesacancelada.Setnome_forma(const Value: Boolean);   
begin                
  Fnome_forma := Value;   
end;                 

procedure TModelERPmesacancelada.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 


end.
