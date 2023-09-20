unit Model.ERP.localizacao_parametro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocalizacaoparametro = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fusuario : WideString;
    Ftipo : WideString;
    Fhora : WideString;
    Fhistorico : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setusuario(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Sethora(const Value: WideString);
    procedure Sethistorico(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property usuario     : WideString read Fusuario write Setusuario;
    property tipo     : WideString read Ftipo write Settipo;
    property hora     : WideString read Fhora write Sethora;
    property historico     : indefinido read Fhistorico write Sethistorico;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocalizacaoparametro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocalizacaoparametro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocalizacaoparametro(Model).id;
Self.Fid_empresa         := TModelERPlocalizacaoparametro(Model).id_empresa;
Self.Fdata         := TModelERPlocalizacaoparametro(Model).data;
Self.Fusuario         := TModelERPlocalizacaoparametro(Model).usuario;
Self.Ftipo         := TModelERPlocalizacaoparametro(Model).tipo;
Self.Fhora         := TModelERPlocalizacaoparametro(Model).hora;
Self.Fhistorico         := TModelERPlocalizacaoparametro(Model).historico;
Self.Fclick         := TModelERPlocalizacaoparametro(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocalizacaoparametro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocalizacaoparametro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocalizacaoparametro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Setusuario(const Value: Boolean);   
begin                
  Fusuario := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPlocalizacaoparametro.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
