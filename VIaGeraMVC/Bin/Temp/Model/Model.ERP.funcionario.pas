unit Model.ERP.fornecedor_produtos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfornecedorprodutos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fuf : WideString;
    Fcep : WideString;
    Fcpf : WideString;
    Ffone : WideString;
    Fcelular : WideString;
    Ffax : WideString;
    Fdesconto : Double;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdata_nasc : TDateTime;
    Fdata_admi : TDateTime;
    Fdata_demi : TDateTime;
    Fsalario : Double;
    Frg : WideString;
    Fcart_trabalho : WideString;
    Ftitulo : WideString;
    Fescolaridade : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Fdata_ferias : TDateTime;
    Finss : Double;
    Fvale_transporte : Double;
    Fcargo : WideString;
    Fid_grupo : Integer;
    Fconta : WideString;
    Fagencia : WideString;
    Fativo : WideString;
    Fop : WideString;
    Fsindicato : Double;
    Fvalor_sindicato : Double;
    Fvalor_inss : Double;
    Fdigital : indefinido;
    Fsenha : WideString;
    Fespecializacao : WideString;
    Fregistro : WideString;
    Fresponsavel_tecnico : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setfone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setfax(const Value: WideString);
    procedure Setdesconto(const Value: Double);
    procedure Setcomissao_avista(const Value: Double);
    procedure Setcomissao_aprazo(const Value: Double);
    procedure Setcomissao_servico(const Value: Double);
    procedure Setdata_nasc(const Value: TDateTime);
    procedure Setdata_admi(const Value: TDateTime);
    procedure Setdata_demi(const Value: TDateTime);
    procedure Setsalario(const Value: Double);
    procedure Setrg(const Value: WideString);
    procedure Setcart_trabalho(const Value: WideString);
    procedure Settitulo(const Value: WideString);
    procedure Setescolaridade(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setdata_ferias(const Value: TDateTime);
    procedure Setinss(const Value: Double);
    procedure Setvale_transporte(const Value: Double);
    procedure Setcargo(const Value: WideString);
    procedure Setid_grupo(const Value: Integer);
    procedure Setconta(const Value: WideString);
    procedure Setagencia(const Value: WideString);
    procedure Setativo(const Value: WideString);
    procedure Setop(const Value: WideString);
    procedure Setsindicato(const Value: Double);
    procedure Setvalor_sindicato(const Value: Double);
    procedure Setvalor_inss(const Value: Double);
    procedure Setdigital(const Value: indefinido);
    procedure Setsenha(const Value: WideString);
    procedure Setespecializacao(const Value: WideString);
    procedure Setregistro(const Value: WideString);
    procedure Setresponsavel_tecnico(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property uf     : WideString read Fuf write Setuf;
    property cep     : WideString read Fcep write Setcep;
    property cpf     : WideString read Fcpf write Setcpf;
    property fone     : WideString read Ffone write Setfone;
    property celular     : WideString read Fcelular write Setcelular;
    property fax     : WideString read Ffax write Setfax;
    property desconto     : Double read Fdesconto write Setdesconto;
    property comissao_avista     : Double read Fcomissao_avista write Setcomissao_avista;
    property comissao_aprazo     : Double read Fcomissao_aprazo write Setcomissao_aprazo;
    property comissao_servico     : Double read Fcomissao_servico write Setcomissao_servico;
    property data_nasc     : TDateTime read Fdata_nasc write Setdata_nasc;
    property data_admi     : TDateTime read Fdata_admi write Setdata_admi;
    property data_demi     : TDateTime read Fdata_demi write Setdata_demi;
    property salario     : Double read Fsalario write Setsalario;
    property rg     : WideString read Frg write Setrg;
    property cart_trabalho     : WideString read Fcart_trabalho write Setcart_trabalho;
    property titulo     : WideString read Ftitulo write Settitulo;
    property escolaridade     : WideString read Fescolaridade write Setescolaridade;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property data_ferias     : TDateTime read Fdata_ferias write Setdata_ferias;
    property inss     : Double read Finss write Setinss;
    property vale_transporte     : Double read Fvale_transporte write Setvale_transporte;
    property cargo     : WideString read Fcargo write Setcargo;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property conta     : WideString read Fconta write Setconta;
    property agencia     : WideString read Fagencia write Setagencia;
    property ativo     : WideString read Fativo write Setativo;
    property op     : WideString read Fop write Setop;
    property sindicato     : Double read Fsindicato write Setsindicato;
    property valor_sindicato     : Double read Fvalor_sindicato write Setvalor_sindicato;
    property valor_inss     : Double read Fvalor_inss write Setvalor_inss;
    property digital     : indefinido read Fdigital write Setdigital;
    property senha     : WideString read Fsenha write Setsenha;
    property especializacao     : WideString read Fespecializacao write Setespecializacao;
    property registro     : WideString read Fregistro write Setregistro;
    property responsavel_tecnico     : Boolean read Fresponsavel_tecnico write Setresponsavel_tecnico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfornecedorprodutos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfornecedorprodutos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfornecedorprodutos(Model).id;
Self.Fid_empresa         := TModelERPfornecedorprodutos(Model).id_empresa;
Self.Fnome         := TModelERPfornecedorprodutos(Model).nome;
Self.Fendereco         := TModelERPfornecedorprodutos(Model).endereco;
Self.Fbairro         := TModelERPfornecedorprodutos(Model).bairro;
Self.Fid_cidade         := TModelERPfornecedorprodutos(Model).id_cidade;
Self.Fuf         := TModelERPfornecedorprodutos(Model).uf;
Self.Fcep         := TModelERPfornecedorprodutos(Model).cep;
Self.Fcpf         := TModelERPfornecedorprodutos(Model).cpf;
Self.Ffone         := TModelERPfornecedorprodutos(Model).fone;
Self.Fcelular         := TModelERPfornecedorprodutos(Model).celular;
Self.Ffax         := TModelERPfornecedorprodutos(Model).fax;
Self.Fdesconto         := TModelERPfornecedorprodutos(Model).desconto;
Self.Fcomissao_avista         := TModelERPfornecedorprodutos(Model).comissao_avista;
Self.Fcomissao_aprazo         := TModelERPfornecedorprodutos(Model).comissao_aprazo;
Self.Fcomissao_servico         := TModelERPfornecedorprodutos(Model).comissao_servico;
Self.Fdata_nasc         := TModelERPfornecedorprodutos(Model).data_nasc;
Self.Fdata_admi         := TModelERPfornecedorprodutos(Model).data_admi;
Self.Fdata_demi         := TModelERPfornecedorprodutos(Model).data_demi;
Self.Fsalario         := TModelERPfornecedorprodutos(Model).salario;
Self.Frg         := TModelERPfornecedorprodutos(Model).rg;
Self.Fcart_trabalho         := TModelERPfornecedorprodutos(Model).cart_trabalho;
Self.Ftitulo         := TModelERPfornecedorprodutos(Model).titulo;
Self.Fescolaridade         := TModelERPfornecedorprodutos(Model).escolaridade;
Self.Fobs         := TModelERPfornecedorprodutos(Model).obs;
Self.Fclick         := TModelERPfornecedorprodutos(Model).click;
Self.Fdata_ferias         := TModelERPfornecedorprodutos(Model).data_ferias;
Self.Finss         := TModelERPfornecedorprodutos(Model).inss;
Self.Fvale_transporte         := TModelERPfornecedorprodutos(Model).vale_transporte;
Self.Fcargo         := TModelERPfornecedorprodutos(Model).cargo;
Self.Fid_grupo         := TModelERPfornecedorprodutos(Model).id_grupo;
Self.Fconta         := TModelERPfornecedorprodutos(Model).conta;
Self.Fagencia         := TModelERPfornecedorprodutos(Model).agencia;
Self.Fativo         := TModelERPfornecedorprodutos(Model).ativo;
Self.Fop         := TModelERPfornecedorprodutos(Model).op;
Self.Fsindicato         := TModelERPfornecedorprodutos(Model).sindicato;
Self.Fvalor_sindicato         := TModelERPfornecedorprodutos(Model).valor_sindicato;
Self.Fvalor_inss         := TModelERPfornecedorprodutos(Model).valor_inss;
Self.Fdigital         := TModelERPfornecedorprodutos(Model).digital;
Self.Fsenha         := TModelERPfornecedorprodutos(Model).senha;
Self.Fespecializacao         := TModelERPfornecedorprodutos(Model).especializacao;
Self.Fregistro         := TModelERPfornecedorprodutos(Model).registro;
Self.Fresponsavel_tecnico         := TModelERPfornecedorprodutos(Model).responsavel_tecnico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfornecedorprodutos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfornecedorprodutos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfornecedorprodutos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setfone(const Value: Boolean);   
begin                
  Ffone := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setfax(const Value: Boolean);   
begin                
  Ffax := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcomissao_avista(const Value: Boolean);   
begin                
  Fcomissao_avista := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcomissao_aprazo(const Value: Boolean);   
begin                
  Fcomissao_aprazo := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdata_nasc(const Value: Boolean);   
begin                
  Fdata_nasc := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdata_admi(const Value: Boolean);   
begin                
  Fdata_admi := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdata_demi(const Value: Boolean);   
begin                
  Fdata_demi := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setsalario(const Value: Boolean);   
begin                
  Fsalario := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcart_trabalho(const Value: Boolean);   
begin                
  Fcart_trabalho := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setescolaridade(const Value: Boolean);   
begin                
  Fescolaridade := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdata_ferias(const Value: Boolean);   
begin                
  Fdata_ferias := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setinss(const Value: Boolean);   
begin                
  Finss := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setvale_transporte(const Value: Boolean);   
begin                
  Fvale_transporte := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setcargo(const Value: Boolean);   
begin                
  Fcargo := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setop(const Value: Boolean);   
begin                
  Fop := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setsindicato(const Value: Boolean);   
begin                
  Fsindicato := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setvalor_sindicato(const Value: Boolean);   
begin                
  Fvalor_sindicato := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setvalor_inss(const Value: Boolean);   
begin                
  Fvalor_inss := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setdigital(const Value: Boolean);   
begin                
  Fdigital := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setespecializacao(const Value: Boolean);   
begin                
  Fespecializacao := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setregistro(const Value: Boolean);   
begin                
  Fregistro := Value;   
end;                 

procedure TModelERPfornecedorprodutos.Setresponsavel_tecnico(const Value: Boolean);   
begin                
  Fresponsavel_tecnico := Value;   
end;                 


end.
