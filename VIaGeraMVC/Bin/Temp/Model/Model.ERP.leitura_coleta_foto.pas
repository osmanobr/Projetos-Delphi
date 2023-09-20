unit Model.ERP.leitura_coleta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracoleta = class(TModelBase)

private
    Fid : Integer;
    Fid_coleta : Integer;
    Ffoto : indefinido;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_coleta(const Value: Integer);
    procedure Setfoto(const Value: indefinido);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_coleta     : Integer read Fid_coleta write Setid_coleta;
    property foto     : indefinido read Ffoto write Setfoto;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracoleta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracoleta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracoleta(Model).id;
Self.Fid_coleta         := TModelERPleituracoleta(Model).id_coleta;
Self.Ffoto         := TModelERPleituracoleta(Model).foto;
Self.Fdatahora         := TModelERPleituracoleta(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracoleta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracoleta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracoleta.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracoleta.Setid_coleta(const Value: Boolean);   
begin                
  Fid_coleta := Value;   
end;                 

procedure TModelERPleituracoleta.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 

procedure TModelERPleituracoleta.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
