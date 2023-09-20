unit Model.ERP.terminal;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPterminal = class(TModelBase)

private
    Fid : Integer;
    Fmsg : indefinido;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setmsg(const Value: indefinido);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property msg     : indefinido read Fmsg write Setmsg;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPterminal.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPterminal) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPterminal(Model).id;
Self.Fmsg         := TModelERPterminal(Model).msg;
Self.Fdatahora         := TModelERPterminal(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPterminal.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPterminal.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPterminal.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPterminal.Setmsg(const Value: Boolean);   
begin                
  Fmsg := Value;   
end;                 

procedure TModelERPterminal.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
