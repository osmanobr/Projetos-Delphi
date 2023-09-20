unit Model.ERP.credencial_entrada;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcredencialentrada = class(TModelBase)

private
    Fid : Integer;
    Fid_credencial : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_credencial(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_credencial     : Integer read Fid_credencial write Setid_credencial;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcredencialentrada.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcredencialentrada) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcredencialentrada(Model).id;
Self.Fid_credencial         := TModelERPcredencialentrada(Model).id_credencial;
Self.Ffoto         := TModelERPcredencialentrada(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcredencialentrada.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcredencialentrada.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcredencialentrada.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcredencialentrada.Setid_credencial(const Value: Boolean);   
begin                
  Fid_credencial := Value;   
end;                 

procedure TModelERPcredencialentrada.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
