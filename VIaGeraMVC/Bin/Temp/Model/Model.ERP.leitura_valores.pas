unit Model.ERP.leitura_modelo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituramodelo = class(TModelBase)

private
    Fid : Integer;
    Ffator : Double;
    Fpreco : Double;

    procedure Setid(const Value: Integer);
    procedure Setfator(const Value: Double);
    procedure Setpreco(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property fator     : Double read Ffator write Setfator;
    property preco     : Double read Fpreco write Setpreco;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituramodelo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituramodelo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituramodelo(Model).id;
Self.Ffator         := TModelERPleituramodelo(Model).fator;
Self.Fpreco         := TModelERPleituramodelo(Model).preco;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituramodelo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituramodelo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituramodelo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituramodelo.Setfator(const Value: Boolean);   
begin                
  Ffator := Value;   
end;                 

procedure TModelERPleituramodelo.Setpreco(const Value: Boolean);   
begin                
  Fpreco := Value;   
end;                 


end.
