unit Model.ERP.pmpf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpmpf = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fdata : TDateTime;
    Fid_usuario_alteracao : Integer;
    Fhora_entrada_matutino : indefinido;
    Fhora_saida_matutino : indefinido;
    Fhora_entrada_vespertino : indefinido;
    Fhora_saida_vespertino : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario_alteracao(const Value: Integer);
    procedure Sethora_entrada_matutino(const Value: indefinido);
    procedure Sethora_saida_matutino(const Value: indefinido);
    procedure Sethora_entrada_vespertino(const Value: indefinido);
    procedure Sethora_saida_vespertino(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario_alteracao     : Integer read Fid_usuario_alteracao write Setid_usuario_alteracao;
    property hora_entrada_matutino     : indefinido read Fhora_entrada_matutino write Sethora_entrada_matutino;
    property hora_saida_matutino     : indefinido read Fhora_saida_matutino write Sethora_saida_matutino;
    property hora_entrada_vespertino     : indefinido read Fhora_entrada_vespertino write Sethora_entrada_vespertino;
    property hora_saida_vespertino     : indefinido read Fhora_saida_vespertino write Sethora_saida_vespertino;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpmpf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpmpf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpmpf(Model).id;
Self.Fid_empresa         := TModelERPpmpf(Model).id_empresa;
Self.Fid_usuario         := TModelERPpmpf(Model).id_usuario;
Self.Fdata         := TModelERPpmpf(Model).data;
Self.Fid_usuario_alteracao         := TModelERPpmpf(Model).id_usuario_alteracao;
Self.Fhora_entrada_matutino         := TModelERPpmpf(Model).hora_entrada_matutino;
Self.Fhora_saida_matutino         := TModelERPpmpf(Model).hora_saida_matutino;
Self.Fhora_entrada_vespertino         := TModelERPpmpf(Model).hora_entrada_vespertino;
Self.Fhora_saida_vespertino         := TModelERPpmpf(Model).hora_saida_vespertino;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpmpf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpmpf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpmpf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpmpf.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpmpf.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpmpf.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpmpf.Setid_usuario_alteracao(const Value: Boolean);   
begin                
  Fid_usuario_alteracao := Value;   
end;                 

procedure TModelERPpmpf.Sethora_entrada_matutino(const Value: Boolean);   
begin                
  Fhora_entrada_matutino := Value;   
end;                 

procedure TModelERPpmpf.Sethora_saida_matutino(const Value: Boolean);   
begin                
  Fhora_saida_matutino := Value;   
end;                 

procedure TModelERPpmpf.Sethora_entrada_vespertino(const Value: Boolean);   
begin                
  Fhora_entrada_vespertino := Value;   
end;                 

procedure TModelERPpmpf.Sethora_saida_vespertino(const Value: Boolean);   
begin                
  Fhora_saida_vespertino := Value;   
end;                 


end.
