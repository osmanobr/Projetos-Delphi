unit Model.ERP.terminal_message;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPterminalmessage = class(TModelBase)

private
    Fid : Integer;
    Fid_alert : Integer;
    Fid_terminal : Integer;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_alert(const Value: Integer);
    procedure Setid_terminal(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_alert     : Integer read Fid_alert write Setid_alert;
    property id_terminal     : Integer read Fid_terminal write Setid_terminal;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPterminalmessage.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPterminalmessage) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPterminalmessage(Model).id;
Self.Fid_alert         := TModelERPterminalmessage(Model).id_alert;
Self.Fid_terminal         := TModelERPterminalmessage(Model).id_terminal;
Self.Fdatahora         := TModelERPterminalmessage(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPterminalmessage.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPterminalmessage.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPterminalmessage.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPterminalmessage.Setid_alert(const Value: Boolean);   
begin                
  Fid_alert := Value;   
end;                 

procedure TModelERPterminalmessage.Setid_terminal(const Value: Boolean);   
begin                
  Fid_terminal := Value;   
end;                 

procedure TModelERPterminalmessage.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
