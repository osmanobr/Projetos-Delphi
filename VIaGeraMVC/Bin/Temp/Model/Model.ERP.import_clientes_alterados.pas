unit Model.ERP.import_clientes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientes = class(TModelBase)

private
    Fid : Integer;
    Ftipo : WideString;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fdata_ficha : indefinido;
    Frazao_social : WideString;
    Fid_cidade : Integer;
    Fendereco : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcnpj : WideString;
    Fcpf : WideString;
    Finscricao_estadual : WideString;
    Frg_ssp : WideString;
    Frg : WideString;
    Fdata_nascimento : indefinido;
    Fsexo : WideString;
    Fpai : WideString;
    Fmae : WideString;
    Fdependentes : Integer;
    Fconjugue : WideString;
    Ffuncao : WideString;
    Fspc : WideString;
    Flimite : Double;
    Fcompras : Double;
    Fcidade : WideString;
    Fativo : Boolean;
    Fatacado : Boolean;
    Festado_civil : WideString;
    Fobservacao : indefinido;
    Femail : WideString;
    Fbloqueio : Boolean;
    Fcontribuinte_icms : Boolean;
    Falterado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdata_ficha(const Value: indefinido);
    procedure Setrazao_social(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setinscricao_estadual(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setdata_nascimento(const Value: indefinido);
    procedure Setsexo(const Value: WideString);
    procedure Setpai(const Value: WideString);
    procedure Setmae(const Value: WideString);
    procedure Setdependentes(const Value: Integer);
    procedure Setconjugue(const Value: WideString);
    procedure Setfuncao(const Value: WideString);
    procedure Setspc(const Value: WideString);
    procedure Setlimite(const Value: Double);
    procedure Setcompras(const Value: Double);
    procedure Setcidade(const Value: WideString);
    procedure Setativo(const Value: Boolean);
    procedure Setatacado(const Value: Boolean);
    procedure Setestado_civil(const Value: WideString);
    procedure Setobservacao(const Value: indefinido);
    procedure Setemail(const Value: WideString);
    procedure Setbloqueio(const Value: Boolean);
    procedure Setcontribuinte_icms(const Value: Boolean);
    procedure Setalterado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property tipo     : WideString read Ftipo write Settipo;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property data_ficha     : indefinido read Fdata_ficha write Setdata_ficha;
    property razao_social     : WideString read Frazao_social write Setrazao_social;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property uf     : WideString read Fuf write Setuf;
    property cep     : WideString read Fcep write Setcep;
    property telefone     : WideString read Ftelefone write Settelefone;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property cpf     : WideString read Fcpf write Setcpf;
    property inscricao_estadual     : WideString read Finscricao_estadual write Setinscricao_estadual;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property rg     : WideString read Frg write Setrg;
    property data_nascimento     : indefinido read Fdata_nascimento write Setdata_nascimento;
    property sexo     : WideString read Fsexo write Setsexo;
    property pai     : WideString read Fpai write Setpai;
    property mae     : WideString read Fmae write Setmae;
    property dependentes     : Integer read Fdependentes write Setdependentes;
    property conjugue     : WideString read Fconjugue write Setconjugue;
    property funcao     : WideString read Ffuncao write Setfuncao;
    property spc     : WideString read Fspc write Setspc;
    property limite     : Double read Flimite write Setlimite;
    property compras     : Double read Fcompras write Setcompras;
    property cidade     : WideString read Fcidade write Setcidade;
    property ativo     : Boolean read Fativo write Setativo;
    property atacado     : Boolean read Fatacado write Setatacado;
    property estado_civil     : WideString read Festado_civil write Setestado_civil;
    property observacao     : indefinido read Fobservacao write Setobservacao;
    property email     : WideString read Femail write Setemail;
    property bloqueio     : Boolean read Fbloqueio write Setbloqueio;
    property contribuinte_icms     : Boolean read Fcontribuinte_icms write Setcontribuinte_icms;
    property alterado     : indefinido read Falterado write Setalterado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientes(Model).id;
Self.Ftipo         := TModelERPimportclientes(Model).tipo;
Self.Fid_empresa         := TModelERPimportclientes(Model).id_empresa;
Self.Fnome         := TModelERPimportclientes(Model).nome;
Self.Fdata_ficha         := TModelERPimportclientes(Model).data_ficha;
Self.Frazao_social         := TModelERPimportclientes(Model).razao_social;
Self.Fid_cidade         := TModelERPimportclientes(Model).id_cidade;
Self.Fendereco         := TModelERPimportclientes(Model).endereco;
Self.Fbairro         := TModelERPimportclientes(Model).bairro;
Self.Fuf         := TModelERPimportclientes(Model).uf;
Self.Fcep         := TModelERPimportclientes(Model).cep;
Self.Ftelefone         := TModelERPimportclientes(Model).telefone;
Self.Fcnpj         := TModelERPimportclientes(Model).cnpj;
Self.Fcpf         := TModelERPimportclientes(Model).cpf;
Self.Finscricao_estadual         := TModelERPimportclientes(Model).inscricao_estadual;
Self.Frg_ssp         := TModelERPimportclientes(Model).rg_ssp;
Self.Frg         := TModelERPimportclientes(Model).rg;
Self.Fdata_nascimento         := TModelERPimportclientes(Model).data_nascimento;
Self.Fsexo         := TModelERPimportclientes(Model).sexo;
Self.Fpai         := TModelERPimportclientes(Model).pai;
Self.Fmae         := TModelERPimportclientes(Model).mae;
Self.Fdependentes         := TModelERPimportclientes(Model).dependentes;
Self.Fconjugue         := TModelERPimportclientes(Model).conjugue;
Self.Ffuncao         := TModelERPimportclientes(Model).funcao;
Self.Fspc         := TModelERPimportclientes(Model).spc;
Self.Flimite         := TModelERPimportclientes(Model).limite;
Self.Fcompras         := TModelERPimportclientes(Model).compras;
Self.Fcidade         := TModelERPimportclientes(Model).cidade;
Self.Fativo         := TModelERPimportclientes(Model).ativo;
Self.Fatacado         := TModelERPimportclientes(Model).atacado;
Self.Festado_civil         := TModelERPimportclientes(Model).estado_civil;
Self.Fobservacao         := TModelERPimportclientes(Model).observacao;
Self.Femail         := TModelERPimportclientes(Model).email;
Self.Fbloqueio         := TModelERPimportclientes(Model).bloqueio;
Self.Fcontribuinte_icms         := TModelERPimportclientes(Model).contribuinte_icms;
Self.Falterado         := TModelERPimportclientes(Model).alterado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientes.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPimportclientes.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportclientes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportclientes.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPimportclientes.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPimportclientes.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPimportclientes.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPimportclientes.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPimportclientes.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPimportclientes.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPimportclientes.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPimportclientes.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPimportclientes.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPimportclientes.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPimportclientes.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPimportclientes.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPimportclientes.Setdata_nascimento(const Value: Boolean);   
begin                
  Fdata_nascimento := Value;   
end;                 

procedure TModelERPimportclientes.Setsexo(const Value: Boolean);   
begin                
  Fsexo := Value;   
end;                 

procedure TModelERPimportclientes.Setpai(const Value: Boolean);   
begin                
  Fpai := Value;   
end;                 

procedure TModelERPimportclientes.Setmae(const Value: Boolean);   
begin                
  Fmae := Value;   
end;                 

procedure TModelERPimportclientes.Setdependentes(const Value: Boolean);   
begin                
  Fdependentes := Value;   
end;                 

procedure TModelERPimportclientes.Setconjugue(const Value: Boolean);   
begin                
  Fconjugue := Value;   
end;                 

procedure TModelERPimportclientes.Setfuncao(const Value: Boolean);   
begin                
  Ffuncao := Value;   
end;                 

procedure TModelERPimportclientes.Setspc(const Value: Boolean);   
begin                
  Fspc := Value;   
end;                 

procedure TModelERPimportclientes.Setlimite(const Value: Boolean);   
begin                
  Flimite := Value;   
end;                 

procedure TModelERPimportclientes.Setcompras(const Value: Boolean);   
begin                
  Fcompras := Value;   
end;                 

procedure TModelERPimportclientes.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPimportclientes.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPimportclientes.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPimportclientes.Setestado_civil(const Value: Boolean);   
begin                
  Festado_civil := Value;   
end;                 

procedure TModelERPimportclientes.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPimportclientes.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPimportclientes.Setbloqueio(const Value: Boolean);   
begin                
  Fbloqueio := Value;   
end;                 

procedure TModelERPimportclientes.Setcontribuinte_icms(const Value: Boolean);   
begin                
  Fcontribuinte_icms := Value;   
end;                 

procedure TModelERPimportclientes.Setalterado(const Value: Boolean);   
begin                
  Falterado := Value;   
end;                 


end.
