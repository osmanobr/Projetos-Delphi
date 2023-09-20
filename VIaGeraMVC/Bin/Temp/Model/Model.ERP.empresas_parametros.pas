unit Model.ERP.empresas_email;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasemail = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fparametro : WideString;
    Fativo : Boolean;
    Fdescricao : indefinido;
    Fvalor_integer : indefinido;
    Ftipo : indefinido;
    Fvalor_decimal : Double;
    Fid_localizacao : Integer;
    Fvalor_string : indefinido;
    Fmd5 : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setparametro(const Value: WideString);
    procedure Setativo(const Value: Boolean);
    procedure Setdescricao(const Value: indefinido);
    procedure Setvalor_integer(const Value: indefinido);
    procedure Settipo(const Value: indefinido);
    procedure Setvalor_decimal(const Value: Double);
    procedure Setid_localizacao(const Value: Integer);
    procedure Setvalor_string(const Value: indefinido);
    procedure Setmd5(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property parametro     : WideString read Fparametro write Setparametro;
    property ativo     : Boolean read Fativo write Setativo;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property valor_integer     : indefinido read Fvalor_integer write Setvalor_integer;
    property tipo     : indefinido read Ftipo write Settipo;
    property valor_decimal     : Double read Fvalor_decimal write Setvalor_decimal;
    property id_localizacao     : Integer read Fid_localizacao write Setid_localizacao;
    property valor_string     : indefinido read Fvalor_string write Setvalor_string;
    property md5     : WideString read Fmd5 write Setmd5;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasemail.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasemail) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasemail(Model).id;
Self.Fid_empresa         := TModelERPempresasemail(Model).id_empresa;
Self.Fparametro         := TModelERPempresasemail(Model).parametro;
Self.Fativo         := TModelERPempresasemail(Model).ativo;
Self.Fdescricao         := TModelERPempresasemail(Model).descricao;
Self.Fvalor_integer         := TModelERPempresasemail(Model).valor_integer;
Self.Ftipo         := TModelERPempresasemail(Model).tipo;
Self.Fvalor_decimal         := TModelERPempresasemail(Model).valor_decimal;
Self.Fid_localizacao         := TModelERPempresasemail(Model).id_localizacao;
Self.Fvalor_string         := TModelERPempresasemail(Model).valor_string;
Self.Fmd5         := TModelERPempresasemail(Model).md5;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasemail.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasemail.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasemail.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasemail.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresasemail.Setparametro(const Value: Boolean);   
begin                
  Fparametro := Value;   
end;                 

procedure TModelERPempresasemail.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPempresasemail.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPempresasemail.Setvalor_integer(const Value: Boolean);   
begin                
  Fvalor_integer := Value;   
end;                 

procedure TModelERPempresasemail.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPempresasemail.Setvalor_decimal(const Value: Boolean);   
begin                
  Fvalor_decimal := Value;   
end;                 

procedure TModelERPempresasemail.Setid_localizacao(const Value: Boolean);   
begin                
  Fid_localizacao := Value;   
end;                 

procedure TModelERPempresasemail.Setvalor_string(const Value: Boolean);   
begin                
  Fvalor_string := Value;   
end;                 

procedure TModelERPempresasemail.Setmd5(const Value: Boolean);   
begin                
  Fmd5 := Value;   
end;                 


end.
