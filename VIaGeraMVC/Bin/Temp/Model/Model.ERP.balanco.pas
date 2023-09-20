unit Model.ERP.backup_compress;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbackupcompress = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Ftipo : WideString;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fgerado : WideString;
    Festoque : WideString;
    Funiao : Boolean;
    Fid_uniao : Integer;
    Fconsulta_rapida : Boolean;
    Flancar_inventario : Boolean;
    Flanca_acerto : Boolean;
    Fid_grupo : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Settipo(const Value: WideString);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setgerado(const Value: WideString);
    procedure Setestoque(const Value: WideString);
    procedure Setuniao(const Value: Boolean);
    procedure Setid_uniao(const Value: Integer);
    procedure Setconsulta_rapida(const Value: Boolean);
    procedure Setlancar_inventario(const Value: Boolean);
    procedure Setlanca_acerto(const Value: Boolean);
    procedure Setid_grupo(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property tipo     : WideString read Ftipo write Settipo;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;
    property gerado     : WideString read Fgerado write Setgerado;
    property estoque     : WideString read Festoque write Setestoque;
    property uniao     : Boolean read Funiao write Setuniao;
    property id_uniao     : Integer read Fid_uniao write Setid_uniao;
    property consulta_rapida     : Boolean read Fconsulta_rapida write Setconsulta_rapida;
    property lancar_inventario     : Boolean read Flancar_inventario write Setlancar_inventario;
    property lanca_acerto     : Boolean read Flanca_acerto write Setlanca_acerto;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbackupcompress.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbackupcompress) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbackupcompress(Model).id;
Self.Fid_empresa         := TModelERPbackupcompress(Model).id_empresa;
Self.Fdata         := TModelERPbackupcompress(Model).data;
Self.Ftipo         := TModelERPbackupcompress(Model).tipo;
Self.Fmotivo         := TModelERPbackupcompress(Model).motivo;
Self.Fid_usuario         := TModelERPbackupcompress(Model).id_usuario;
Self.Fclick         := TModelERPbackupcompress(Model).click;
Self.Fgerado         := TModelERPbackupcompress(Model).gerado;
Self.Festoque         := TModelERPbackupcompress(Model).estoque;
Self.Funiao         := TModelERPbackupcompress(Model).uniao;
Self.Fid_uniao         := TModelERPbackupcompress(Model).id_uniao;
Self.Fconsulta_rapida         := TModelERPbackupcompress(Model).consulta_rapida;
Self.Flancar_inventario         := TModelERPbackupcompress(Model).lancar_inventario;
Self.Flanca_acerto         := TModelERPbackupcompress(Model).lanca_acerto;
Self.Fid_grupo         := TModelERPbackupcompress(Model).id_grupo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbackupcompress.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbackupcompress.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbackupcompress.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbackupcompress.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbackupcompress.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPbackupcompress.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPbackupcompress.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPbackupcompress.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPbackupcompress.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPbackupcompress.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPbackupcompress.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPbackupcompress.Setuniao(const Value: Boolean);   
begin                
  Funiao := Value;   
end;                 

procedure TModelERPbackupcompress.Setid_uniao(const Value: Boolean);   
begin                
  Fid_uniao := Value;   
end;                 

procedure TModelERPbackupcompress.Setconsulta_rapida(const Value: Boolean);   
begin                
  Fconsulta_rapida := Value;   
end;                 

procedure TModelERPbackupcompress.Setlancar_inventario(const Value: Boolean);   
begin                
  Flancar_inventario := Value;   
end;                 

procedure TModelERPbackupcompress.Setlanca_acerto(const Value: Boolean);   
begin                
  Flanca_acerto := Value;   
end;                 

procedure TModelERPbackupcompress.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 


end.
