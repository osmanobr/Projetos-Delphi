unit Model.ERP.acerto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacerto = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_acerto : TDateTime;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fgerado : WideString;
    Festoque : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_acerto(const Value: TDateTime);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setgerado(const Value: WideString);
    procedure Setestoque(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_acerto     : TDateTime read Fdata_acerto write Setdata_acerto;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;
    property gerado     : WideString read Fgerado write Setgerado;
    property estoque     : WideString read Festoque write Setestoque;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPacerto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacerto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacerto(Model).id;
Self.Fid_empresa         := TModelERPacerto(Model).id_empresa;
Self.Fdata_acerto         := TModelERPacerto(Model).data_acerto;
Self.Fmotivo         := TModelERPacerto(Model).motivo;
Self.Fid_usuario         := TModelERPacerto(Model).id_usuario;
Self.Fclick         := TModelERPacerto(Model).click;
Self.Fgerado         := TModelERPacerto(Model).gerado;
Self.Festoque         := TModelERPacerto(Model).estoque;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacerto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacerto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacerto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacerto.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPacerto.Setdata_acerto(const Value: Boolean);   
begin                
  Fdata_acerto := Value;   
end;                 

procedure TModelERPacerto.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPacerto.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPacerto.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPacerto.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPacerto.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 


end.
