unit Model.ERP.cfop_import;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcfopimport = class(TModelBase)

private
    Fid : Integer;
    Ftitulo : WideString;
    Fdescricao : indefinido;
    Fdesenvolvedor : indefinido;
    Fproduto : indefinido;
    Fdatahora : indefinido;
    Ftipo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Settitulo(const Value: WideString);
    procedure Setdescricao(const Value: indefinido);
    procedure Setdesenvolvedor(const Value: indefinido);
    procedure Setproduto(const Value: indefinido);
    procedure Setdatahora(const Value: indefinido);
    procedure Settipo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property titulo     : WideString read Ftitulo write Settitulo;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property desenvolvedor     : indefinido read Fdesenvolvedor write Setdesenvolvedor;
    property produto     : indefinido read Fproduto write Setproduto;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property tipo     : indefinido read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcfopimport.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcfopimport) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcfopimport(Model).id;
Self.Ftitulo         := TModelERPcfopimport(Model).titulo;
Self.Fdescricao         := TModelERPcfopimport(Model).descricao;
Self.Fdesenvolvedor         := TModelERPcfopimport(Model).desenvolvedor;
Self.Fproduto         := TModelERPcfopimport(Model).produto;
Self.Fdatahora         := TModelERPcfopimport(Model).datahora;
Self.Ftipo         := TModelERPcfopimport(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcfopimport.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcfopimport.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcfopimport.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcfopimport.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPcfopimport.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPcfopimport.Setdesenvolvedor(const Value: Boolean);   
begin                
  Fdesenvolvedor := Value;   
end;                 

procedure TModelERPcfopimport.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPcfopimport.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPcfopimport.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
