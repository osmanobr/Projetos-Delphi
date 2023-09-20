unit Model.ERP.os_acessorio;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPosacessorio = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fid_funcionario : Integer;
    Ffuncionario : indefinido;
    Fstatus : indefinido;
    Ftempo_gasto : indefinido;
    Fdata_inicio : TDateTime;
    Fdata_final : TDateTime;
    Fencaminhado : indefinido;
    Fservico : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setfuncionario(const Value: indefinido);
    procedure Setstatus(const Value: indefinido);
    procedure Settempo_gasto(const Value: indefinido);
    procedure Setdata_inicio(const Value: TDateTime);
    procedure Setdata_final(const Value: TDateTime);
    procedure Setencaminhado(const Value: indefinido);
    procedure Setservico(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property funcionario     : indefinido read Ffuncionario write Setfuncionario;
    property status     : indefinido read Fstatus write Setstatus;
    property tempo_gasto     : indefinido read Ftempo_gasto write Settempo_gasto;
    property data_inicio     : TDateTime read Fdata_inicio write Setdata_inicio;
    property data_final     : TDateTime read Fdata_final write Setdata_final;
    property encaminhado     : indefinido read Fencaminhado write Setencaminhado;
    property servico     : indefinido read Fservico write Setservico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPosacessorio.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPosacessorio) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPosacessorio(Model).id;
Self.Fid_empresa         := TModelERPosacessorio(Model).id_empresa;
Self.Fid_os         := TModelERPosacessorio(Model).id_os;
Self.Fid_funcionario         := TModelERPosacessorio(Model).id_funcionario;
Self.Ffuncionario         := TModelERPosacessorio(Model).funcionario;
Self.Fstatus         := TModelERPosacessorio(Model).status;
Self.Ftempo_gasto         := TModelERPosacessorio(Model).tempo_gasto;
Self.Fdata_inicio         := TModelERPosacessorio(Model).data_inicio;
Self.Fdata_final         := TModelERPosacessorio(Model).data_final;
Self.Fencaminhado         := TModelERPosacessorio(Model).encaminhado;
Self.Fservico         := TModelERPosacessorio(Model).servico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPosacessorio.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPosacessorio.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPosacessorio.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPosacessorio.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPosacessorio.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPosacessorio.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPosacessorio.Setfuncionario(const Value: Boolean);   
begin                
  Ffuncionario := Value;   
end;                 

procedure TModelERPosacessorio.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPosacessorio.Settempo_gasto(const Value: Boolean);   
begin                
  Ftempo_gasto := Value;   
end;                 

procedure TModelERPosacessorio.Setdata_inicio(const Value: Boolean);   
begin                
  Fdata_inicio := Value;   
end;                 

procedure TModelERPosacessorio.Setdata_final(const Value: Boolean);   
begin                
  Fdata_final := Value;   
end;                 

procedure TModelERPosacessorio.Setencaminhado(const Value: Boolean);   
begin                
  Fencaminhado := Value;   
end;                 

procedure TModelERPosacessorio.Setservico(const Value: Boolean);   
begin                
  Fservico := Value;   
end;                 


end.
