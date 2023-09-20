unit Model.ERP.agenda_carga;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPagendacarga = class(TModelBase)

private
    Fid : Integer;
    Fcadastro : indefinido;
    Fnome : WideString;
    Ftelefone : WideString;
    Fcpf : WideString;
    Femail : WideString;
    Fdata_agenda : TDateTime;
    Fhora_agenda : WideString;
    Fcondominio_apto : WideString;
    Fvalor : Double;
    Fforma_pag : WideString;
    Fservicos : WideString;
    Ffuncionario : WideString;
    Fobs : indefinido;
    Ftipo_servico : Integer;
    Ftipo_estado : Integer;
    Ftipo_nf : Integer;
    Fpagou : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setcadastro(const Value: indefinido);
    procedure Setnome(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setemail(const Value: WideString);
    procedure Setdata_agenda(const Value: TDateTime);
    procedure Sethora_agenda(const Value: WideString);
    procedure Setcondominio_apto(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setforma_pag(const Value: WideString);
    procedure Setservicos(const Value: WideString);
    procedure Setfuncionario(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Settipo_servico(const Value: Integer);
    procedure Settipo_estado(const Value: Integer);
    procedure Settipo_nf(const Value: Integer);
    procedure Setpagou(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property cadastro     : indefinido read Fcadastro write Setcadastro;
    property nome     : WideString read Fnome write Setnome;
    property telefone     : WideString read Ftelefone write Settelefone;
    property cpf     : WideString read Fcpf write Setcpf;
    property email     : WideString read Femail write Setemail;
    property data_agenda     : TDateTime read Fdata_agenda write Setdata_agenda;
    property hora_agenda     : WideString read Fhora_agenda write Sethora_agenda;
    property condominio_apto     : WideString read Fcondominio_apto write Setcondominio_apto;
    property valor     : Double read Fvalor write Setvalor;
    property forma_pag     : WideString read Fforma_pag write Setforma_pag;
    property servicos     : WideString read Fservicos write Setservicos;
    property funcionario     : WideString read Ffuncionario write Setfuncionario;
    property obs     : indefinido read Fobs write Setobs;
    property tipo_servico     : Integer read Ftipo_servico write Settipo_servico;
    property tipo_estado     : Integer read Ftipo_estado write Settipo_estado;
    property tipo_nf     : Integer read Ftipo_nf write Settipo_nf;
    property pagou     : Boolean read Fpagou write Setpagou;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPagendacarga.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPagendacarga) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPagendacarga(Model).id;
Self.Fcadastro         := TModelERPagendacarga(Model).cadastro;
Self.Fnome         := TModelERPagendacarga(Model).nome;
Self.Ftelefone         := TModelERPagendacarga(Model).telefone;
Self.Fcpf         := TModelERPagendacarga(Model).cpf;
Self.Femail         := TModelERPagendacarga(Model).email;
Self.Fdata_agenda         := TModelERPagendacarga(Model).data_agenda;
Self.Fhora_agenda         := TModelERPagendacarga(Model).hora_agenda;
Self.Fcondominio_apto         := TModelERPagendacarga(Model).condominio_apto;
Self.Fvalor         := TModelERPagendacarga(Model).valor;
Self.Fforma_pag         := TModelERPagendacarga(Model).forma_pag;
Self.Fservicos         := TModelERPagendacarga(Model).servicos;
Self.Ffuncionario         := TModelERPagendacarga(Model).funcionario;
Self.Fobs         := TModelERPagendacarga(Model).obs;
Self.Ftipo_servico         := TModelERPagendacarga(Model).tipo_servico;
Self.Ftipo_estado         := TModelERPagendacarga(Model).tipo_estado;
Self.Ftipo_nf         := TModelERPagendacarga(Model).tipo_nf;
Self.Fpagou         := TModelERPagendacarga(Model).pagou;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPagendacarga.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPagendacarga.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPagendacarga.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPagendacarga.Setcadastro(const Value: Boolean);   
begin                
  Fcadastro := Value;   
end;                 

procedure TModelERPagendacarga.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPagendacarga.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPagendacarga.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPagendacarga.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPagendacarga.Setdata_agenda(const Value: Boolean);   
begin                
  Fdata_agenda := Value;   
end;                 

procedure TModelERPagendacarga.Sethora_agenda(const Value: Boolean);   
begin                
  Fhora_agenda := Value;   
end;                 

procedure TModelERPagendacarga.Setcondominio_apto(const Value: Boolean);   
begin                
  Fcondominio_apto := Value;   
end;                 

procedure TModelERPagendacarga.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPagendacarga.Setforma_pag(const Value: Boolean);   
begin                
  Fforma_pag := Value;   
end;                 

procedure TModelERPagendacarga.Setservicos(const Value: Boolean);   
begin                
  Fservicos := Value;   
end;                 

procedure TModelERPagendacarga.Setfuncionario(const Value: Boolean);   
begin                
  Ffuncionario := Value;   
end;                 

procedure TModelERPagendacarga.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPagendacarga.Settipo_servico(const Value: Boolean);   
begin                
  Ftipo_servico := Value;   
end;                 

procedure TModelERPagendacarga.Settipo_estado(const Value: Boolean);   
begin                
  Ftipo_estado := Value;   
end;                 

procedure TModelERPagendacarga.Settipo_nf(const Value: Boolean);   
begin                
  Ftipo_nf := Value;   
end;                 

procedure TModelERPagendacarga.Setpagou(const Value: Boolean);   
begin                
  Fpagou := Value;   
end;                 


end.
