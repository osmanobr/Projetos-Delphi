unit Model.ERP.empresas_parametros;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasparametros = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Ftexto_vazamento : indefinido;
    Ftexto_nao_vazamento : indefinido;
    Ftipo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Settexto_vazamento(const Value: indefinido);
    procedure Settexto_nao_vazamento(const Value: indefinido);
    procedure Settipo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property texto_vazamento     : indefinido read Ftexto_vazamento write Settexto_vazamento;
    property texto_nao_vazamento     : indefinido read Ftexto_nao_vazamento write Settexto_nao_vazamento;
    property tipo     : WideString read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasparametros.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasparametros) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasparametros(Model).id;
Self.Fid_empresa         := TModelERPempresasparametros(Model).id_empresa;
Self.Ftexto_vazamento         := TModelERPempresasparametros(Model).texto_vazamento;
Self.Ftexto_nao_vazamento         := TModelERPempresasparametros(Model).texto_nao_vazamento;
Self.Ftipo         := TModelERPempresasparametros(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasparametros.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasparametros.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasparametros.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasparametros.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresasparametros.Settexto_vazamento(const Value: Boolean);   
begin                
  Ftexto_vazamento := Value;   
end;                 

procedure TModelERPempresasparametros.Settexto_nao_vazamento(const Value: Boolean);   
begin                
  Ftexto_nao_vazamento := Value;   
end;                 

procedure TModelERPempresasparametros.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
