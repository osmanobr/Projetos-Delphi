unit Model.ERP.cliente_inscricao_estadual;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclienteinscricaoestadual = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fpessoa : WideString;
    Fdata_ficha : TDateTime;
    Fnome : WideString;
    Fid_cidade : Integer;
    Frazao_social : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fcep : WideString;
    Fcaixa_postal : WideString;
    Ffone1 : WideString;
    Ffone2 : WideString;
    Fcelular1 : WideString;
    Fcnpj : WideString;
    Finscricao_estadual : WideString;
    Frg_ssp : WideString;
    Frg : WideString;
    Fcpf : WideString;
    Ftitulo : WideString;
    Fdata_nasc : TDateTime;
    Fsexo : WideString;
    Fid_natural : Integer;
    Fpai : WideString;
    Fmae : WideString;
    Fqtd_filhos : Integer;
    Fconjugue : WideString;
    Fdata_nasc_conj : TDateTime;
    Faluguel : WideString;
    Fvalor_aluguel : Double;
    Ftemp_resid : WideString;
    Fsalario : Double;
    Fempresa : WideString;
    Ffone_empresa : WideString;
    Fdata_admissao : TDateTime;
    Fcidade_empresa : Integer;
    Fuf_empresa : WideString;
    Ffuncao : WideString;
    Freferencia_comercial : indefinido;
    Freferencia_bancaria : indefinido;
    Fdata_consulta_spc : TDateTime;
    Fobs_spc : indefinido;
    Fvalor_limite : Double;
    Ftipo : WideString;
    Fe_mail : WideString;
    Fhome_page : WideString;
    Fendereco_entrega : WideString;
    Fbairro_entrega : WideString;
    Fcidade_entrega : Integer;
    Fuf_entrega : WideString;
    Freferencia_entrega : WideString;
    Fid_vendedor : Integer;
    Ficm_ipi : Double;
    Fcep_entrega : WideString;
    Fobs_geral : indefinido;
    Festado_civil : WideString;
    Fficha : WideString;
    Ftemp_empre : WideString;
    Fcidade : WideString;
    Fid_rota : Integer;
    Fclick : Boolean;
    Fcod_anterior : WideString;
    Fid_atividade : Integer;
    Fativo : WideString;
    Fcapital_social : Double;
    Fsocio1 : WideString;
    Fsocio2 : WideString;
    Fsocio3 : WideString;
    Fsocio1valor : Double;
    Fsocio2valor : Double;
    Fsocio3valor : Double;
    Ffoto : indefinido;
    Fdia_vencimento : WideString;
    Fprodutor_ativo : WideString;
    Fapelido : WideString;
    Ftam_meia : WideString;
    Ftam_calcado : WideString;
    Ftam_cinto : WideString;
    Ftam_calca : WideString;
    Ftam_camisa : WideString;
    Ftam_sutia : WideString;
    Fatacado : Boolean;
    Fuf_naturalidade : WideString;
    Fsistema : indefinido;
    Frota_ordem : Integer;
    Femail1 : WideString;
    Femail2 : WideString;
    Ftelefone1 : WideString;
    Ftelefone2 : WideString;
    Falergias_medicamentos : WideString;
    Fdificuldades_disturbios : WideString;
    Fobservacoes_necessarias : WideString;
    Fpagamento : WideString;
    Fdia_mensalidade : WideString;
    Fid_tabela_preco : Integer;
    Fviacentral : Boolean;
    Fnao_revenda : Boolean;
    Fcontribuinte_icms : Boolean;
    Fid_servidor : Integer;
    Fhash_local : WideString;
    Fhash_matriz : WideString;
    Festoque_terceiro : Boolean;
    Frg_data_emissao : TDateTime;
    Fcnh : indefinido;
    Fcnh_data_emissao : TDateTime;
    Fpercentual_desconto : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setpessoa(const Value: WideString);
    procedure Setdata_ficha(const Value: TDateTime);
    procedure Setnome(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setrazao_social(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcaixa_postal(const Value: WideString);
    procedure Setfone1(const Value: WideString);
    procedure Setfone2(const Value: WideString);
    procedure Setcelular1(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setinscricao_estadual(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Settitulo(const Value: WideString);
    procedure Setdata_nasc(const Value: TDateTime);
    procedure Setsexo(const Value: WideString);
    procedure Setid_natural(const Value: Integer);
    procedure Setpai(const Value: WideString);
    procedure Setmae(const Value: WideString);
    procedure Setqtd_filhos(const Value: Integer);
    procedure Setconjugue(const Value: WideString);
    procedure Setdata_nasc_conj(const Value: TDateTime);
    procedure Setaluguel(const Value: WideString);
    procedure Setvalor_aluguel(const Value: Double);
    procedure Settemp_resid(const Value: WideString);
    procedure Setsalario(const Value: Double);
    procedure Setempresa(const Value: WideString);
    procedure Setfone_empresa(const Value: WideString);
    procedure Setdata_admissao(const Value: TDateTime);
    procedure Setcidade_empresa(const Value: Integer);
    procedure Setuf_empresa(const Value: WideString);
    procedure Setfuncao(const Value: WideString);
    procedure Setreferencia_comercial(const Value: indefinido);
    procedure Setreferencia_bancaria(const Value: indefinido);
    procedure Setdata_consulta_spc(const Value: TDateTime);
    procedure Setobs_spc(const Value: indefinido);
    procedure Setvalor_limite(const Value: Double);
    procedure Settipo(const Value: WideString);
    procedure Sete_mail(const Value: WideString);
    procedure Sethome_page(const Value: WideString);
    procedure Setendereco_entrega(const Value: WideString);
    procedure Setbairro_entrega(const Value: WideString);
    procedure Setcidade_entrega(const Value: Integer);
    procedure Setuf_entrega(const Value: WideString);
    procedure Setreferencia_entrega(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Seticm_ipi(const Value: Double);
    procedure Setcep_entrega(const Value: WideString);
    procedure Setobs_geral(const Value: indefinido);
    procedure Setestado_civil(const Value: WideString);
    procedure Setficha(const Value: WideString);
    procedure Settemp_empre(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setid_rota(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setcod_anterior(const Value: WideString);
    procedure Setid_atividade(const Value: Integer);
    procedure Setativo(const Value: WideString);
    procedure Setcapital_social(const Value: Double);
    procedure Setsocio1(const Value: WideString);
    procedure Setsocio2(const Value: WideString);
    procedure Setsocio3(const Value: WideString);
    procedure Setsocio1valor(const Value: Double);
    procedure Setsocio2valor(const Value: Double);
    procedure Setsocio3valor(const Value: Double);
    procedure Setfoto(const Value: indefinido);
    procedure Setdia_vencimento(const Value: WideString);
    procedure Setprodutor_ativo(const Value: WideString);
    procedure Setapelido(const Value: WideString);
    procedure Settam_meia(const Value: WideString);
    procedure Settam_calcado(const Value: WideString);
    procedure Settam_cinto(const Value: WideString);
    procedure Settam_calca(const Value: WideString);
    procedure Settam_camisa(const Value: WideString);
    procedure Settam_sutia(const Value: WideString);
    procedure Setatacado(const Value: Boolean);
    procedure Setuf_naturalidade(const Value: WideString);
    procedure Setsistema(const Value: indefinido);
    procedure Setrota_ordem(const Value: Integer);
    procedure Setemail1(const Value: WideString);
    procedure Setemail2(const Value: WideString);
    procedure Settelefone1(const Value: WideString);
    procedure Settelefone2(const Value: WideString);
    procedure Setalergias_medicamentos(const Value: WideString);
    procedure Setdificuldades_disturbios(const Value: WideString);
    procedure Setobservacoes_necessarias(const Value: WideString);
    procedure Setpagamento(const Value: WideString);
    procedure Setdia_mensalidade(const Value: WideString);
    procedure Setid_tabela_preco(const Value: Integer);
    procedure Setviacentral(const Value: Boolean);
    procedure Setnao_revenda(const Value: Boolean);
    procedure Setcontribuinte_icms(const Value: Boolean);
    procedure Setid_servidor(const Value: Integer);
    procedure Sethash_local(const Value: WideString);
    procedure Sethash_matriz(const Value: WideString);
    procedure Setestoque_terceiro(const Value: Boolean);
    procedure Setrg_data_emissao(const Value: TDateTime);
    procedure Setcnh(const Value: indefinido);
    procedure Setcnh_data_emissao(const Value: TDateTime);
    procedure Setpercentual_desconto(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property pessoa     : WideString read Fpessoa write Setpessoa;
    property data_ficha     : TDateTime read Fdata_ficha write Setdata_ficha;
    property nome     : WideString read Fnome write Setnome;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property razao_social     : WideString read Frazao_social write Setrazao_social;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property uf     : WideString read Fuf write Setuf;
    property cep     : WideString read Fcep write Setcep;
    property caixa_postal     : WideString read Fcaixa_postal write Setcaixa_postal;
    property fone1     : WideString read Ffone1 write Setfone1;
    property fone2     : WideString read Ffone2 write Setfone2;
    property celular1     : WideString read Fcelular1 write Setcelular1;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property inscricao_estadual     : WideString read Finscricao_estadual write Setinscricao_estadual;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property rg     : WideString read Frg write Setrg;
    property cpf     : WideString read Fcpf write Setcpf;
    property titulo     : WideString read Ftitulo write Settitulo;
    property data_nasc     : TDateTime read Fdata_nasc write Setdata_nasc;
    property sexo     : WideString read Fsexo write Setsexo;
    property id_natural     : Integer read Fid_natural write Setid_natural;
    property pai     : WideString read Fpai write Setpai;
    property mae     : WideString read Fmae write Setmae;
    property qtd_filhos     : Integer read Fqtd_filhos write Setqtd_filhos;
    property conjugue     : WideString read Fconjugue write Setconjugue;
    property data_nasc_conj     : TDateTime read Fdata_nasc_conj write Setdata_nasc_conj;
    property aluguel     : WideString read Faluguel write Setaluguel;
    property valor_aluguel     : Double read Fvalor_aluguel write Setvalor_aluguel;
    property temp_resid     : WideString read Ftemp_resid write Settemp_resid;
    property salario     : Double read Fsalario write Setsalario;
    property empresa     : WideString read Fempresa write Setempresa;
    property fone_empresa     : WideString read Ffone_empresa write Setfone_empresa;
    property data_admissao     : TDateTime read Fdata_admissao write Setdata_admissao;
    property cidade_empresa     : Integer read Fcidade_empresa write Setcidade_empresa;
    property uf_empresa     : WideString read Fuf_empresa write Setuf_empresa;
    property funcao     : WideString read Ffuncao write Setfuncao;
    property referencia_comercial     : indefinido read Freferencia_comercial write Setreferencia_comercial;
    property referencia_bancaria     : indefinido read Freferencia_bancaria write Setreferencia_bancaria;
    property data_consulta_spc     : TDateTime read Fdata_consulta_spc write Setdata_consulta_spc;
    property obs_spc     : indefinido read Fobs_spc write Setobs_spc;
    property valor_limite     : Double read Fvalor_limite write Setvalor_limite;
    property tipo     : WideString read Ftipo write Settipo;
    property e_mail     : WideString read Fe_mail write Sete_mail;
    property home_page     : WideString read Fhome_page write Sethome_page;
    property endereco_entrega     : WideString read Fendereco_entrega write Setendereco_entrega;
    property bairro_entrega     : WideString read Fbairro_entrega write Setbairro_entrega;
    property cidade_entrega     : Integer read Fcidade_entrega write Setcidade_entrega;
    property uf_entrega     : WideString read Fuf_entrega write Setuf_entrega;
    property referencia_entrega     : WideString read Freferencia_entrega write Setreferencia_entrega;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property icm_ipi     : Double read Ficm_ipi write Seticm_ipi;
    property cep_entrega     : WideString read Fcep_entrega write Setcep_entrega;
    property obs_geral     : indefinido read Fobs_geral write Setobs_geral;
    property estado_civil     : WideString read Festado_civil write Setestado_civil;
    property ficha     : WideString read Fficha write Setficha;
    property temp_empre     : WideString read Ftemp_empre write Settemp_empre;
    property cidade     : WideString read Fcidade write Setcidade;
    property id_rota     : Integer read Fid_rota write Setid_rota;
    property click     : Boolean read Fclick write Setclick;
    property cod_anterior     : WideString read Fcod_anterior write Setcod_anterior;
    property id_atividade     : Integer read Fid_atividade write Setid_atividade;
    property ativo     : WideString read Fativo write Setativo;
    property capital_social     : Double read Fcapital_social write Setcapital_social;
    property socio1     : WideString read Fsocio1 write Setsocio1;
    property socio2     : WideString read Fsocio2 write Setsocio2;
    property socio3     : WideString read Fsocio3 write Setsocio3;
    property socio1valor     : Double read Fsocio1valor write Setsocio1valor;
    property socio2valor     : Double read Fsocio2valor write Setsocio2valor;
    property socio3valor     : Double read Fsocio3valor write Setsocio3valor;
    property foto     : indefinido read Ffoto write Setfoto;
    property dia_vencimento     : WideString read Fdia_vencimento write Setdia_vencimento;
    property produtor_ativo     : WideString read Fprodutor_ativo write Setprodutor_ativo;
    property apelido     : WideString read Fapelido write Setapelido;
    property tam_meia     : WideString read Ftam_meia write Settam_meia;
    property tam_calcado     : WideString read Ftam_calcado write Settam_calcado;
    property tam_cinto     : WideString read Ftam_cinto write Settam_cinto;
    property tam_calca     : WideString read Ftam_calca write Settam_calca;
    property tam_camisa     : WideString read Ftam_camisa write Settam_camisa;
    property tam_sutia     : WideString read Ftam_sutia write Settam_sutia;
    property atacado     : Boolean read Fatacado write Setatacado;
    property uf_naturalidade     : WideString read Fuf_naturalidade write Setuf_naturalidade;
    property sistema     : indefinido read Fsistema write Setsistema;
    property rota_ordem     : Integer read Frota_ordem write Setrota_ordem;
    property email1     : WideString read Femail1 write Setemail1;
    property email2     : WideString read Femail2 write Setemail2;
    property telefone1     : WideString read Ftelefone1 write Settelefone1;
    property telefone2     : WideString read Ftelefone2 write Settelefone2;
    property alergias_medicamentos     : WideString read Falergias_medicamentos write Setalergias_medicamentos;
    property dificuldades_disturbios     : WideString read Fdificuldades_disturbios write Setdificuldades_disturbios;
    property observacoes_necessarias     : WideString read Fobservacoes_necessarias write Setobservacoes_necessarias;
    property pagamento     : WideString read Fpagamento write Setpagamento;
    property dia_mensalidade     : WideString read Fdia_mensalidade write Setdia_mensalidade;
    property id_tabela_preco     : Integer read Fid_tabela_preco write Setid_tabela_preco;
    property viacentral     : Boolean read Fviacentral write Setviacentral;
    property nao_revenda     : Boolean read Fnao_revenda write Setnao_revenda;
    property contribuinte_icms     : Boolean read Fcontribuinte_icms write Setcontribuinte_icms;
    property id_servidor     : Integer read Fid_servidor write Setid_servidor;
    property hash_local     : WideString read Fhash_local write Sethash_local;
    property hash_matriz     : WideString read Fhash_matriz write Sethash_matriz;
    property estoque_terceiro     : Boolean read Festoque_terceiro write Setestoque_terceiro;
    property rg_data_emissao     : TDateTime read Frg_data_emissao write Setrg_data_emissao;
    property cnh     : indefinido read Fcnh write Setcnh;
    property cnh_data_emissao     : TDateTime read Fcnh_data_emissao write Setcnh_data_emissao;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclienteinscricaoestadual.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclienteinscricaoestadual) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclienteinscricaoestadual(Model).id;
Self.Fid_empresa         := TModelERPclienteinscricaoestadual(Model).id_empresa;
Self.Fpessoa         := TModelERPclienteinscricaoestadual(Model).pessoa;
Self.Fdata_ficha         := TModelERPclienteinscricaoestadual(Model).data_ficha;
Self.Fnome         := TModelERPclienteinscricaoestadual(Model).nome;
Self.Fid_cidade         := TModelERPclienteinscricaoestadual(Model).id_cidade;
Self.Frazao_social         := TModelERPclienteinscricaoestadual(Model).razao_social;
Self.Fendereco         := TModelERPclienteinscricaoestadual(Model).endereco;
Self.Fbairro         := TModelERPclienteinscricaoestadual(Model).bairro;
Self.Fuf         := TModelERPclienteinscricaoestadual(Model).uf;
Self.Fcep         := TModelERPclienteinscricaoestadual(Model).cep;
Self.Fcaixa_postal         := TModelERPclienteinscricaoestadual(Model).caixa_postal;
Self.Ffone1         := TModelERPclienteinscricaoestadual(Model).fone1;
Self.Ffone2         := TModelERPclienteinscricaoestadual(Model).fone2;
Self.Fcelular1         := TModelERPclienteinscricaoestadual(Model).celular1;
Self.Fcnpj         := TModelERPclienteinscricaoestadual(Model).cnpj;
Self.Finscricao_estadual         := TModelERPclienteinscricaoestadual(Model).inscricao_estadual;
Self.Frg_ssp         := TModelERPclienteinscricaoestadual(Model).rg_ssp;
Self.Frg         := TModelERPclienteinscricaoestadual(Model).rg;
Self.Fcpf         := TModelERPclienteinscricaoestadual(Model).cpf;
Self.Ftitulo         := TModelERPclienteinscricaoestadual(Model).titulo;
Self.Fdata_nasc         := TModelERPclienteinscricaoestadual(Model).data_nasc;
Self.Fsexo         := TModelERPclienteinscricaoestadual(Model).sexo;
Self.Fid_natural         := TModelERPclienteinscricaoestadual(Model).id_natural;
Self.Fpai         := TModelERPclienteinscricaoestadual(Model).pai;
Self.Fmae         := TModelERPclienteinscricaoestadual(Model).mae;
Self.Fqtd_filhos         := TModelERPclienteinscricaoestadual(Model).qtd_filhos;
Self.Fconjugue         := TModelERPclienteinscricaoestadual(Model).conjugue;
Self.Fdata_nasc_conj         := TModelERPclienteinscricaoestadual(Model).data_nasc_conj;
Self.Faluguel         := TModelERPclienteinscricaoestadual(Model).aluguel;
Self.Fvalor_aluguel         := TModelERPclienteinscricaoestadual(Model).valor_aluguel;
Self.Ftemp_resid         := TModelERPclienteinscricaoestadual(Model).temp_resid;
Self.Fsalario         := TModelERPclienteinscricaoestadual(Model).salario;
Self.Fempresa         := TModelERPclienteinscricaoestadual(Model).empresa;
Self.Ffone_empresa         := TModelERPclienteinscricaoestadual(Model).fone_empresa;
Self.Fdata_admissao         := TModelERPclienteinscricaoestadual(Model).data_admissao;
Self.Fcidade_empresa         := TModelERPclienteinscricaoestadual(Model).cidade_empresa;
Self.Fuf_empresa         := TModelERPclienteinscricaoestadual(Model).uf_empresa;
Self.Ffuncao         := TModelERPclienteinscricaoestadual(Model).funcao;
Self.Freferencia_comercial         := TModelERPclienteinscricaoestadual(Model).referencia_comercial;
Self.Freferencia_bancaria         := TModelERPclienteinscricaoestadual(Model).referencia_bancaria;
Self.Fdata_consulta_spc         := TModelERPclienteinscricaoestadual(Model).data_consulta_spc;
Self.Fobs_spc         := TModelERPclienteinscricaoestadual(Model).obs_spc;
Self.Fvalor_limite         := TModelERPclienteinscricaoestadual(Model).valor_limite;
Self.Ftipo         := TModelERPclienteinscricaoestadual(Model).tipo;
Self.Fe_mail         := TModelERPclienteinscricaoestadual(Model).e_mail;
Self.Fhome_page         := TModelERPclienteinscricaoestadual(Model).home_page;
Self.Fendereco_entrega         := TModelERPclienteinscricaoestadual(Model).endereco_entrega;
Self.Fbairro_entrega         := TModelERPclienteinscricaoestadual(Model).bairro_entrega;
Self.Fcidade_entrega         := TModelERPclienteinscricaoestadual(Model).cidade_entrega;
Self.Fuf_entrega         := TModelERPclienteinscricaoestadual(Model).uf_entrega;
Self.Freferencia_entrega         := TModelERPclienteinscricaoestadual(Model).referencia_entrega;
Self.Fid_vendedor         := TModelERPclienteinscricaoestadual(Model).id_vendedor;
Self.Ficm_ipi         := TModelERPclienteinscricaoestadual(Model).icm_ipi;
Self.Fcep_entrega         := TModelERPclienteinscricaoestadual(Model).cep_entrega;
Self.Fobs_geral         := TModelERPclienteinscricaoestadual(Model).obs_geral;
Self.Festado_civil         := TModelERPclienteinscricaoestadual(Model).estado_civil;
Self.Fficha         := TModelERPclienteinscricaoestadual(Model).ficha;
Self.Ftemp_empre         := TModelERPclienteinscricaoestadual(Model).temp_empre;
Self.Fcidade         := TModelERPclienteinscricaoestadual(Model).cidade;
Self.Fid_rota         := TModelERPclienteinscricaoestadual(Model).id_rota;
Self.Fclick         := TModelERPclienteinscricaoestadual(Model).click;
Self.Fcod_anterior         := TModelERPclienteinscricaoestadual(Model).cod_anterior;
Self.Fid_atividade         := TModelERPclienteinscricaoestadual(Model).id_atividade;
Self.Fativo         := TModelERPclienteinscricaoestadual(Model).ativo;
Self.Fcapital_social         := TModelERPclienteinscricaoestadual(Model).capital_social;
Self.Fsocio1         := TModelERPclienteinscricaoestadual(Model).socio1;
Self.Fsocio2         := TModelERPclienteinscricaoestadual(Model).socio2;
Self.Fsocio3         := TModelERPclienteinscricaoestadual(Model).socio3;
Self.Fsocio1valor         := TModelERPclienteinscricaoestadual(Model).socio1valor;
Self.Fsocio2valor         := TModelERPclienteinscricaoestadual(Model).socio2valor;
Self.Fsocio3valor         := TModelERPclienteinscricaoestadual(Model).socio3valor;
Self.Ffoto         := TModelERPclienteinscricaoestadual(Model).foto;
Self.Fdia_vencimento         := TModelERPclienteinscricaoestadual(Model).dia_vencimento;
Self.Fprodutor_ativo         := TModelERPclienteinscricaoestadual(Model).produtor_ativo;
Self.Fapelido         := TModelERPclienteinscricaoestadual(Model).apelido;
Self.Ftam_meia         := TModelERPclienteinscricaoestadual(Model).tam_meia;
Self.Ftam_calcado         := TModelERPclienteinscricaoestadual(Model).tam_calcado;
Self.Ftam_cinto         := TModelERPclienteinscricaoestadual(Model).tam_cinto;
Self.Ftam_calca         := TModelERPclienteinscricaoestadual(Model).tam_calca;
Self.Ftam_camisa         := TModelERPclienteinscricaoestadual(Model).tam_camisa;
Self.Ftam_sutia         := TModelERPclienteinscricaoestadual(Model).tam_sutia;
Self.Fatacado         := TModelERPclienteinscricaoestadual(Model).atacado;
Self.Fuf_naturalidade         := TModelERPclienteinscricaoestadual(Model).uf_naturalidade;
Self.Fsistema         := TModelERPclienteinscricaoestadual(Model).sistema;
Self.Frota_ordem         := TModelERPclienteinscricaoestadual(Model).rota_ordem;
Self.Femail1         := TModelERPclienteinscricaoestadual(Model).email1;
Self.Femail2         := TModelERPclienteinscricaoestadual(Model).email2;
Self.Ftelefone1         := TModelERPclienteinscricaoestadual(Model).telefone1;
Self.Ftelefone2         := TModelERPclienteinscricaoestadual(Model).telefone2;
Self.Falergias_medicamentos         := TModelERPclienteinscricaoestadual(Model).alergias_medicamentos;
Self.Fdificuldades_disturbios         := TModelERPclienteinscricaoestadual(Model).dificuldades_disturbios;
Self.Fobservacoes_necessarias         := TModelERPclienteinscricaoestadual(Model).observacoes_necessarias;
Self.Fpagamento         := TModelERPclienteinscricaoestadual(Model).pagamento;
Self.Fdia_mensalidade         := TModelERPclienteinscricaoestadual(Model).dia_mensalidade;
Self.Fid_tabela_preco         := TModelERPclienteinscricaoestadual(Model).id_tabela_preco;
Self.Fviacentral         := TModelERPclienteinscricaoestadual(Model).viacentral;
Self.Fnao_revenda         := TModelERPclienteinscricaoestadual(Model).nao_revenda;
Self.Fcontribuinte_icms         := TModelERPclienteinscricaoestadual(Model).contribuinte_icms;
Self.Fid_servidor         := TModelERPclienteinscricaoestadual(Model).id_servidor;
Self.Fhash_local         := TModelERPclienteinscricaoestadual(Model).hash_local;
Self.Fhash_matriz         := TModelERPclienteinscricaoestadual(Model).hash_matriz;
Self.Festoque_terceiro         := TModelERPclienteinscricaoestadual(Model).estoque_terceiro;
Self.Frg_data_emissao         := TModelERPclienteinscricaoestadual(Model).rg_data_emissao;
Self.Fcnh         := TModelERPclienteinscricaoestadual(Model).cnh;
Self.Fcnh_data_emissao         := TModelERPclienteinscricaoestadual(Model).cnh_data_emissao;
Self.Fpercentual_desconto         := TModelERPclienteinscricaoestadual(Model).percentual_desconto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclienteinscricaoestadual.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclienteinscricaoestadual.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclienteinscricaoestadual.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setpessoa(const Value: Boolean);   
begin                
  Fpessoa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcaixa_postal(const Value: Boolean);   
begin                
  Fcaixa_postal := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setfone1(const Value: Boolean);   
begin                
  Ffone1 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setfone2(const Value: Boolean);   
begin                
  Ffone2 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcelular1(const Value: Boolean);   
begin                
  Fcelular1 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdata_nasc(const Value: Boolean);   
begin                
  Fdata_nasc := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsexo(const Value: Boolean);   
begin                
  Fsexo := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_natural(const Value: Boolean);   
begin                
  Fid_natural := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setpai(const Value: Boolean);   
begin                
  Fpai := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setmae(const Value: Boolean);   
begin                
  Fmae := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setqtd_filhos(const Value: Boolean);   
begin                
  Fqtd_filhos := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setconjugue(const Value: Boolean);   
begin                
  Fconjugue := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdata_nasc_conj(const Value: Boolean);   
begin                
  Fdata_nasc_conj := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setaluguel(const Value: Boolean);   
begin                
  Faluguel := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setvalor_aluguel(const Value: Boolean);   
begin                
  Fvalor_aluguel := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settemp_resid(const Value: Boolean);   
begin                
  Ftemp_resid := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsalario(const Value: Boolean);   
begin                
  Fsalario := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setempresa(const Value: Boolean);   
begin                
  Fempresa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setfone_empresa(const Value: Boolean);   
begin                
  Ffone_empresa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdata_admissao(const Value: Boolean);   
begin                
  Fdata_admissao := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcidade_empresa(const Value: Boolean);   
begin                
  Fcidade_empresa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setuf_empresa(const Value: Boolean);   
begin                
  Fuf_empresa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setfuncao(const Value: Boolean);   
begin                
  Ffuncao := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setreferencia_comercial(const Value: Boolean);   
begin                
  Freferencia_comercial := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setreferencia_bancaria(const Value: Boolean);   
begin                
  Freferencia_bancaria := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdata_consulta_spc(const Value: Boolean);   
begin                
  Fdata_consulta_spc := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setobs_spc(const Value: Boolean);   
begin                
  Fobs_spc := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setvalor_limite(const Value: Boolean);   
begin                
  Fvalor_limite := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Sete_mail(const Value: Boolean);   
begin                
  Fe_mail := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Sethome_page(const Value: Boolean);   
begin                
  Fhome_page := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setendereco_entrega(const Value: Boolean);   
begin                
  Fendereco_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setbairro_entrega(const Value: Boolean);   
begin                
  Fbairro_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcidade_entrega(const Value: Boolean);   
begin                
  Fcidade_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setuf_entrega(const Value: Boolean);   
begin                
  Fuf_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setreferencia_entrega(const Value: Boolean);   
begin                
  Freferencia_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Seticm_ipi(const Value: Boolean);   
begin                
  Ficm_ipi := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcep_entrega(const Value: Boolean);   
begin                
  Fcep_entrega := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setobs_geral(const Value: Boolean);   
begin                
  Fobs_geral := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setestado_civil(const Value: Boolean);   
begin                
  Festado_civil := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setficha(const Value: Boolean);   
begin                
  Fficha := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settemp_empre(const Value: Boolean);   
begin                
  Ftemp_empre := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_rota(const Value: Boolean);   
begin                
  Fid_rota := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcod_anterior(const Value: Boolean);   
begin                
  Fcod_anterior := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_atividade(const Value: Boolean);   
begin                
  Fid_atividade := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcapital_social(const Value: Boolean);   
begin                
  Fcapital_social := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio1(const Value: Boolean);   
begin                
  Fsocio1 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio2(const Value: Boolean);   
begin                
  Fsocio2 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio3(const Value: Boolean);   
begin                
  Fsocio3 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio1valor(const Value: Boolean);   
begin                
  Fsocio1valor := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio2valor(const Value: Boolean);   
begin                
  Fsocio2valor := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsocio3valor(const Value: Boolean);   
begin                
  Fsocio3valor := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdia_vencimento(const Value: Boolean);   
begin                
  Fdia_vencimento := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setprodutor_ativo(const Value: Boolean);   
begin                
  Fprodutor_ativo := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setapelido(const Value: Boolean);   
begin                
  Fapelido := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_meia(const Value: Boolean);   
begin                
  Ftam_meia := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_calcado(const Value: Boolean);   
begin                
  Ftam_calcado := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_cinto(const Value: Boolean);   
begin                
  Ftam_cinto := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_calca(const Value: Boolean);   
begin                
  Ftam_calca := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_camisa(const Value: Boolean);   
begin                
  Ftam_camisa := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settam_sutia(const Value: Boolean);   
begin                
  Ftam_sutia := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setuf_naturalidade(const Value: Boolean);   
begin                
  Fuf_naturalidade := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setsistema(const Value: Boolean);   
begin                
  Fsistema := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setrota_ordem(const Value: Boolean);   
begin                
  Frota_ordem := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setemail1(const Value: Boolean);   
begin                
  Femail1 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setemail2(const Value: Boolean);   
begin                
  Femail2 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settelefone1(const Value: Boolean);   
begin                
  Ftelefone1 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Settelefone2(const Value: Boolean);   
begin                
  Ftelefone2 := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setalergias_medicamentos(const Value: Boolean);   
begin                
  Falergias_medicamentos := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdificuldades_disturbios(const Value: Boolean);   
begin                
  Fdificuldades_disturbios := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setobservacoes_necessarias(const Value: Boolean);   
begin                
  Fobservacoes_necessarias := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setpagamento(const Value: Boolean);   
begin                
  Fpagamento := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setdia_mensalidade(const Value: Boolean);   
begin                
  Fdia_mensalidade := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_tabela_preco(const Value: Boolean);   
begin                
  Fid_tabela_preco := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setviacentral(const Value: Boolean);   
begin                
  Fviacentral := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setnao_revenda(const Value: Boolean);   
begin                
  Fnao_revenda := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcontribuinte_icms(const Value: Boolean);   
begin                
  Fcontribuinte_icms := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setid_servidor(const Value: Boolean);   
begin                
  Fid_servidor := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Sethash_local(const Value: Boolean);   
begin                
  Fhash_local := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Sethash_matriz(const Value: Boolean);   
begin                
  Fhash_matriz := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setestoque_terceiro(const Value: Boolean);   
begin                
  Festoque_terceiro := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setrg_data_emissao(const Value: Boolean);   
begin                
  Frg_data_emissao := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcnh(const Value: Boolean);   
begin                
  Fcnh := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setcnh_data_emissao(const Value: Boolean);   
begin                
  Fcnh_data_emissao := Value;   
end;                 

procedure TModelERPclienteinscricaoestadual.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 


end.
