unit Model.ERP.usuarios;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPusuarios = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_modulo : Integer;
    Facesso : Boolean;
    Finclusao : Boolean;
    Fexclusao : Boolean;
    Falteracao : Boolean;
    Fimpressao : Boolean;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_modulo(const Value: Integer);
    procedure Setacesso(const Value: Boolean);
    procedure Setinclusao(const Value: Boolean);
    procedure Setexclusao(const Value: Boolean);
    procedure Setalteracao(const Value: Boolean);
    procedure Setimpressao(const Value: Boolean);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_modulo     : Integer read Fid_modulo write Setid_modulo;
    property acesso     : Boolean read Facesso write Setacesso;
    property inclusao     : Boolean read Finclusao write Setinclusao;
    property exclusao     : Boolean read Fexclusao write Setexclusao;
    property alteracao     : Boolean read Falteracao write Setalteracao;
    property impressao     : Boolean read Fimpressao write Setimpressao;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPusuarios.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPusuarios) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPusuarios(Model).id;
Self.Fid_empresa         := TModelERPusuarios(Model).id_empresa;
Self.Fid_modulo         := TModelERPusuarios(Model).id_modulo;
Self.Facesso         := TModelERPusuarios(Model).acesso;
Self.Finclusao         := TModelERPusuarios(Model).inclusao;
Self.Fexclusao         := TModelERPusuarios(Model).exclusao;
Self.Falteracao         := TModelERPusuarios(Model).alteracao;
Self.Fimpressao         := TModelERPusuarios(Model).impressao;
Self.Fid_usuario         := TModelERPusuarios(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPusuarios.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPusuarios.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPusuarios.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPusuarios.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPusuarios.Setid_modulo(const Value: Boolean);   
begin                
  Fid_modulo := Value;   
end;                 

procedure TModelERPusuarios.Setacesso(const Value: Boolean);   
begin                
  Facesso := Value;   
end;                 

procedure TModelERPusuarios.Setinclusao(const Value: Boolean);   
begin                
  Finclusao := Value;   
end;                 

procedure TModelERPusuarios.Setexclusao(const Value: Boolean);   
begin                
  Fexclusao := Value;   
end;                 

procedure TModelERPusuarios.Setalteracao(const Value: Boolean);   
begin                
  Falteracao := Value;   
end;                 

procedure TModelERPusuarios.Setimpressao(const Value: Boolean);   
begin                
  Fimpressao := Value;   
end;                 

procedure TModelERPusuarios.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
