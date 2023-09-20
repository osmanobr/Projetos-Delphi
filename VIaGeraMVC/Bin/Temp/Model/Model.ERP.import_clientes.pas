unit Model.ERP.import_cidades;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportcidades = class(TModelBase)

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

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportcidades.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportcidades) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportcidades(Model).id;
Self.Ftipo         := TModelERPimportcidades(Model).tipo;
Self.Fid_empresa         := TModelERPimportcidades(Model).id_empresa;
Self.Fnome         := TModelERPimportcidades(Model).nome;
Self.Fdata_ficha         := TModelERPimportcidades(Model).data_ficha;
Self.Frazao_social         := TModelERPimportcidades(Model).razao_social;
Self.Fid_cidade         := TModelERPimportcidades(Model).id_cidade;
Self.Fendereco         := TModelERPimportcidades(Model).endereco;
Self.Fbairro         := TModelERPimportcidades(Model).bairro;
Self.Fuf         := TModelERPimportcidades(Model).uf;
Self.Fcep         := TModelERPimportcidades(Model).cep;
Self.Ftelefone         := TModelERPimportcidades(Model).telefone;
Self.Fcnpj         := TModelERPimportcidades(Model).cnpj;
Self.Fcpf         := TModelERPimportcidades(Model).cpf;
Self.Finscricao_estadual         := TModelERPimportcidades(Model).inscricao_estadual;
Self.Frg_ssp         := TModelERPimportcidades(Model).rg_ssp;
Self.Frg         := TModelERPimportcidades(Model).rg;
Self.Fdata_nascimento         := TModelERPimportcidades(Model).data_nascimento;
Self.Fsexo         := TModelERPimportcidades(Model).sexo;
Self.Fpai         := TModelERPimportcidades(Model).pai;
Self.Fmae         := TModelERPimportcidades(Model).mae;
Self.Fdependentes         := TModelERPimportcidades(Model).dependentes;
Self.Fconjugue         := TModelERPimportcidades(Model).conjugue;
Self.Ffuncao         := TModelERPimportcidades(Model).funcao;
Self.Fspc         := TModelERPimportcidades(Model).spc;
Self.Flimite         := TModelERPimportcidades(Model).limite;
Self.Fcompras         := TModelERPimportcidades(Model).compras;
Self.Fcidade         := TModelERPimportcidades(Model).cidade;
Self.Fativo         := TModelERPimportcidades(Model).ativo;
Self.Fatacado         := TModelERPimportcidades(Model).atacado;
Self.Festado_civil         := TModelERPimportcidades(Model).estado_civil;
Self.Fobservacao         := TModelERPimportcidades(Model).observacao;
Self.Femail         := TModelERPimportcidades(Model).email;
Self.Fbloqueio         := TModelERPimportcidades(Model).bloqueio;
Self.Fcontribuinte_icms         := TModelERPimportcidades(Model).contribuinte_icms;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportcidades.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportcidades.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportcidades.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportcidades.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPimportcidades.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportcidades.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportcidades.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPimportcidades.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPimportcidades.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPimportcidades.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPimportcidades.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPimportcidades.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPimportcidades.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPimportcidades.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPimportcidades.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPimportcidades.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPimportcidades.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPimportcidades.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPimportcidades.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPimportcidades.Setdata_nascimento(const Value: Boolean);   
begin                
  Fdata_nascimento := Value;   
end;                 

procedure TModelERPimportcidades.Setsexo(const Value: Boolean);   
begin                
  Fsexo := Value;   
end;                 

procedure TModelERPimportcidades.Setpai(const Value: Boolean);   
begin                
  Fpai := Value;   
end;                 

procedure TModelERPimportcidades.Setmae(const Value: Boolean);   
begin                
  Fmae := Value;   
end;                 

procedure TModelERPimportcidades.Setdependentes(const Value: Boolean);   
begin                
  Fdependentes := Value;   
end;                 

procedure TModelERPimportcidades.Setconjugue(const Value: Boolean);   
begin                
  Fconjugue := Value;   
end;                 

procedure TModelERPimportcidades.Setfuncao(const Value: Boolean);   
begin                
  Ffuncao := Value;   
end;                 

procedure TModelERPimportcidades.Setspc(const Value: Boolean);   
begin                
  Fspc := Value;   
end;                 

procedure TModelERPimportcidades.Setlimite(const Value: Boolean);   
begin                
  Flimite := Value;   
end;                 

procedure TModelERPimportcidades.Setcompras(const Value: Boolean);   
begin                
  Fcompras := Value;   
end;                 

procedure TModelERPimportcidades.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPimportcidades.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPimportcidades.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPimportcidades.Setestado_civil(const Value: Boolean);   
begin                
  Festado_civil := Value;   
end;                 

procedure TModelERPimportcidades.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPimportcidades.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPimportcidades.Setbloqueio(const Value: Boolean);   
begin                
  Fbloqueio := Value;   
end;                 

procedure TModelERPimportcidades.Setcontribuinte_icms(const Value: Boolean);   
begin                
  Fcontribuinte_icms := Value;   
end;                 


end.
