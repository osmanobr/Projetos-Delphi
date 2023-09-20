unit Model.ERP.parametro_modelo_orcamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPparametromodeloorcamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcpf : indefinido;
    Fcnpj : indefinido;
    Fendereco : indefinido;
    Fuf : indefinido;
    Fid_cidade : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setcpf(const Value: indefinido);
    procedure Setcnpj(const Value: indefinido);
    procedure Setendereco(const Value: indefinido);
    procedure Setuf(const Value: indefinido);
    procedure Setid_cidade(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property cpf     : indefinido read Fcpf write Setcpf;
    property cnpj     : indefinido read Fcnpj write Setcnpj;
    property endereco     : indefinido read Fendereco write Setendereco;
    property uf     : indefinido read Fuf write Setuf;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPparametromodeloorcamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPparametromodeloorcamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPparametromodeloorcamento(Model).id;
Self.Fid_empresa         := TModelERPparametromodeloorcamento(Model).id_empresa;
Self.Fnome         := TModelERPparametromodeloorcamento(Model).nome;
Self.Fcpf         := TModelERPparametromodeloorcamento(Model).cpf;
Self.Fcnpj         := TModelERPparametromodeloorcamento(Model).cnpj;
Self.Fendereco         := TModelERPparametromodeloorcamento(Model).endereco;
Self.Fuf         := TModelERPparametromodeloorcamento(Model).uf;
Self.Fid_cidade         := TModelERPparametromodeloorcamento(Model).id_cidade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPparametromodeloorcamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPparametromodeloorcamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPparametromodeloorcamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPparametromodeloorcamento.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 


end.
