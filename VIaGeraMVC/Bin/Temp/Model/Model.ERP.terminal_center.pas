unit Model.ERP.terminal_alert;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPterminalalert = class(TModelBase)

private
    Fid_terminal : Integer;
    Floja : Integer;
    Flive : Boolean;
    Fdatahora : indefinido;

    procedure Setid_terminal(const Value: Integer);
    procedure Setloja(const Value: Integer);
    procedure Setlive(const Value: Boolean);
    procedure Setdatahora(const Value: indefinido);

public
    property id_terminal     : Integer read Fid_terminal write Setid_terminal;
    property loja     : Integer read Floja write Setloja;
    property live     : Boolean read Flive write Setlive;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPterminalalert.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPterminalalert) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid_terminal         := TModelERPterminalalert(Model).id_terminal;
Self.Floja         := TModelERPterminalalert(Model).loja;
Self.Flive         := TModelERPterminalalert(Model).live;
Self.Fdatahora         := TModelERPterminalalert(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPterminalalert.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPterminalalert.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPterminalalert.Setid_terminal(const Value: Boolean);   
begin                
  Fid_terminal := Value;   
end;                 

procedure TModelERPterminalalert.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 

procedure TModelERPterminalalert.Setlive(const Value: Boolean);   
begin                
  Flive := Value;   
end;                 

procedure TModelERPterminalalert.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
