unit Model.ERP.terminal_public;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPterminalpublic = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fid_usuario : Integer;
    Fgerado : indefinido;
    Fclick : Boolean;
    Festoque_origem : indefinido;
    Festoque_destino : indefinido;
    Fid_func_responsavel_origem : Integer;
    Fid_func_responsavel_destino : Integer;
    Fcancelado : indefinido;
    Fid_empresa : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setmotivo(const Value: indefinido);
    procedure Setid_usuario(const Value: Integer);
    procedure Setgerado(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setestoque_origem(const Value: indefinido);
    procedure Setestoque_destino(const Value: indefinido);
    procedure Setid_func_responsavel_origem(const Value: Integer);
    procedure Setid_func_responsavel_destino(const Value: Integer);
    procedure Setcancelado(const Value: indefinido);
    procedure Setid_empresa(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property motivo     : indefinido read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property gerado     : indefinido read Fgerado write Setgerado;
    property click     : Boolean read Fclick write Setclick;
    property estoque_origem     : indefinido read Festoque_origem write Setestoque_origem;
    property estoque_destino     : indefinido read Festoque_destino write Setestoque_destino;
    property id_func_responsavel_origem     : Integer read Fid_func_responsavel_origem write Setid_func_responsavel_origem;
    property id_func_responsavel_destino     : Integer read Fid_func_responsavel_destino write Setid_func_responsavel_destino;
    property cancelado     : indefinido read Fcancelado write Setcancelado;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPterminalpublic.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPterminalpublic) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPterminalpublic(Model).id;
Self.Fdata         := TModelERPterminalpublic(Model).data;
Self.Fmotivo         := TModelERPterminalpublic(Model).motivo;
Self.Fid_usuario         := TModelERPterminalpublic(Model).id_usuario;
Self.Fgerado         := TModelERPterminalpublic(Model).gerado;
Self.Fclick         := TModelERPterminalpublic(Model).click;
Self.Festoque_origem         := TModelERPterminalpublic(Model).estoque_origem;
Self.Festoque_destino         := TModelERPterminalpublic(Model).estoque_destino;
Self.Fid_func_responsavel_origem         := TModelERPterminalpublic(Model).id_func_responsavel_origem;
Self.Fid_func_responsavel_destino         := TModelERPterminalpublic(Model).id_func_responsavel_destino;
Self.Fcancelado         := TModelERPterminalpublic(Model).cancelado;
Self.Fid_empresa         := TModelERPterminalpublic(Model).id_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPterminalpublic.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPterminalpublic.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPterminalpublic.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPterminalpublic.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPterminalpublic.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPterminalpublic.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPterminalpublic.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPterminalpublic.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPterminalpublic.Setestoque_origem(const Value: Boolean);   
begin                
  Festoque_origem := Value;   
end;                 

procedure TModelERPterminalpublic.Setestoque_destino(const Value: Boolean);   
begin                
  Festoque_destino := Value;   
end;                 

procedure TModelERPterminalpublic.Setid_func_responsavel_origem(const Value: Boolean);   
begin                
  Fid_func_responsavel_origem := Value;   
end;                 

procedure TModelERPterminalpublic.Setid_func_responsavel_destino(const Value: Boolean);   
begin                
  Fid_func_responsavel_destino := Value;   
end;                 

procedure TModelERPterminalpublic.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPterminalpublic.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 


end.
