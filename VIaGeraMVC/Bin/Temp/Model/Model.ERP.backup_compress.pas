unit Model.ERP.backup;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbackup = class(TModelBase)

private
    Fid : Integer;
    Fid_backup : Integer;
    Farquivo : WideString;
    Fpartes : Integer;
    Fdatahora : indefinido;
    Fenviado : Boolean;
    Fcompress_size : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_backup(const Value: Integer);
    procedure Setarquivo(const Value: WideString);
    procedure Setpartes(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);
    procedure Setenviado(const Value: Boolean);
    procedure Setcompress_size(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_backup     : Integer read Fid_backup write Setid_backup;
    property arquivo     : WideString read Farquivo write Setarquivo;
    property partes     : Integer read Fpartes write Setpartes;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property enviado     : Boolean read Fenviado write Setenviado;
    property compress_size     : indefinido read Fcompress_size write Setcompress_size;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbackup.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbackup) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbackup(Model).id;
Self.Fid_backup         := TModelERPbackup(Model).id_backup;
Self.Farquivo         := TModelERPbackup(Model).arquivo;
Self.Fpartes         := TModelERPbackup(Model).partes;
Self.Fdatahora         := TModelERPbackup(Model).datahora;
Self.Fenviado         := TModelERPbackup(Model).enviado;
Self.Fcompress_size         := TModelERPbackup(Model).compress_size;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbackup.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbackup.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbackup.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbackup.Setid_backup(const Value: Boolean);   
begin                
  Fid_backup := Value;   
end;                 

procedure TModelERPbackup.Setarquivo(const Value: Boolean);   
begin                
  Farquivo := Value;   
end;                 

procedure TModelERPbackup.Setpartes(const Value: Boolean);   
begin                
  Fpartes := Value;   
end;                 

procedure TModelERPbackup.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPbackup.Setenviado(const Value: Boolean);   
begin                
  Fenviado := Value;   
end;                 

procedure TModelERPbackup.Setcompress_size(const Value: Boolean);   
begin                
  Fcompress_size := Value;   
end;                 


end.
