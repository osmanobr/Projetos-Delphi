
unit View.ERP.cliente_inscricao_estadual;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cliente_inscricao_estadual, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclienteinscricaoestadual = class(TForm) 
    Panel1: TPanel; 
    bbIncluir: TSpeedButton; 
    bbAlterar: TSpeedButton; 
    bbExcluir: TSpeedButton; 
    BBCancelar: TSpeedButton;
    BBConfirmar: TSpeedButton;

        procedure bbIncluirClick(Sender: TObject);    
        procedure bbAlterarClick(Sender: TObject);    
        procedure bbExcluirClick(Sender: TObject);    
        procedure BBCancelarClick(Sender: TObject);   
        procedure BBConfirmarClick(Sender: TObject);  

    procedure FormCreate(Sender: TObject);    
    procedure FormDestroy(Sender: TObject);    
    procedure FormShow(Sender: TObject);       

  private 
    FController : TControllerERPclienteinscricaoestadual; 
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setpessoa(const Value : WideString);
    procedure Setdata_ficha(const Value : TDateTime);
    procedure Setnome(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setrazao_social(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setcaixa_postal(const Value : WideString);
    procedure Setfone1(const Value : WideString);
    procedure Setfone2(const Value : WideString);
    procedure Setcelular1(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setinscricao_estadual(const Value : WideString);
    procedure Setrg_ssp(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Settitulo(const Value : WideString);
    procedure Setdata_nasc(const Value : TDateTime);
    procedure Setsexo(const Value : WideString);
    procedure Setid_natural(const Value : Integer);
    procedure Setpai(const Value : WideString);
    procedure Setmae(const Value : WideString);
    procedure Setqtd_filhos(const Value : Integer);
    procedure Setconjugue(const Value : WideString);
    procedure Setdata_nasc_conj(const Value : TDateTime);
    procedure Setaluguel(const Value : WideString);
    procedure Setvalor_aluguel(const Value : Double);
    procedure Settemp_resid(const Value : WideString);
    procedure Setsalario(const Value : Double);
    procedure Setempresa(const Value : WideString);
    procedure Setfone_empresa(const Value : WideString);
    procedure Setdata_admissao(const Value : TDateTime);
    procedure Setcidade_empresa(const Value : Integer);
    procedure Setuf_empresa(const Value : WideString);
    procedure Setfuncao(const Value : WideString);
    procedure Setreferencia_comercial(const Value : indefinido);
    procedure Setreferencia_bancaria(const Value : indefinido);
    procedure Setdata_consulta_spc(const Value : TDateTime);
    procedure Setobs_spc(const Value : indefinido);
    procedure Setvalor_limite(const Value : Double);
    procedure Settipo(const Value : WideString);
    procedure Sete_mail(const Value : WideString);
    procedure Sethome_page(const Value : WideString);
    procedure Setendereco_entrega(const Value : WideString);
    procedure Setbairro_entrega(const Value : WideString);
    procedure Setcidade_entrega(const Value : Integer);
    procedure Setuf_entrega(const Value : WideString);
    procedure Setreferencia_entrega(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Seticm_ipi(const Value : Double);
    procedure Setcep_entrega(const Value : WideString);
    procedure Setobs_geral(const Value : indefinido);
    procedure Setestado_civil(const Value : WideString);
    procedure Setficha(const Value : WideString);
    procedure Settemp_empre(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setid_rota(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setcod_anterior(const Value : WideString);
    procedure Setid_atividade(const Value : Integer);
    procedure Setativo(const Value : WideString);
    procedure Setcapital_social(const Value : Double);
    procedure Setsocio1(const Value : WideString);
    procedure Setsocio2(const Value : WideString);
    procedure Setsocio3(const Value : WideString);
    procedure Setsocio1valor(const Value : Double);
    procedure Setsocio2valor(const Value : Double);
    procedure Setsocio3valor(const Value : Double);
    procedure Setfoto(const Value : indefinido);
    procedure Setdia_vencimento(const Value : WideString);
    procedure Setprodutor_ativo(const Value : WideString);
    procedure Setapelido(const Value : WideString);
    procedure Settam_meia(const Value : WideString);
    procedure Settam_calcado(const Value : WideString);
    procedure Settam_cinto(const Value : WideString);
    procedure Settam_calca(const Value : WideString);
    procedure Settam_camisa(const Value : WideString);
    procedure Settam_sutia(const Value : WideString);
    procedure Setatacado(const Value : Boolean);
    procedure Setuf_naturalidade(const Value : WideString);
    procedure Setsistema(const Value : indefinido);
    procedure Setrota_ordem(const Value : Integer);
    procedure Setemail1(const Value : WideString);
    procedure Setemail2(const Value : WideString);
    procedure Settelefone1(const Value : WideString);
    procedure Settelefone2(const Value : WideString);
    procedure Setalergias_medicamentos(const Value : WideString);
    procedure Setdificuldades_disturbios(const Value : WideString);
    procedure Setobservacoes_necessarias(const Value : WideString);
    procedure Setpagamento(const Value : WideString);
    procedure Setdia_mensalidade(const Value : WideString);
    procedure Setid_tabela_preco(const Value : Integer);
    procedure Setviacentral(const Value : Boolean);
    procedure Setnao_revenda(const Value : Boolean);
    procedure Setcontribuinte_icms(const Value : Boolean);
    procedure Setid_servidor(const Value : Integer);
    procedure Sethash_local(const Value : WideString);
    procedure Sethash_matriz(const Value : WideString);
    procedure Setestoque_terceiro(const Value : Boolean);
    procedure Setrg_data_emissao(const Value : TDateTime);
    procedure Setcnh(const Value : indefinido);
    procedure Setcnh_data_emissao(const Value : TDateTime);
    procedure Setpercentual_desconto(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property pessoa : WideString         read Fpessoa    write Fpessoa;
    property data_ficha : TDateTime         read Fdata_ficha    write Fdata_ficha;
    property nome : WideString         read Fnome    write Fnome;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property razao_social : WideString         read Frazao_social    write Frazao_social;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property uf : WideString         read Fuf    write Fuf;
    property cep : WideString         read Fcep    write Fcep;
    property caixa_postal : WideString         read Fcaixa_postal    write Fcaixa_postal;
    property fone1 : WideString         read Ffone1    write Ffone1;
    property fone2 : WideString         read Ffone2    write Ffone2;
    property celular1 : WideString         read Fcelular1    write Fcelular1;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property inscricao_estadual : WideString         read Finscricao_estadual    write Finscricao_estadual;
    property rg_ssp : WideString         read Frg_ssp    write Frg_ssp;
    property rg : WideString         read Frg    write Frg;
    property cpf : WideString         read Fcpf    write Fcpf;
    property titulo : WideString         read Ftitulo    write Ftitulo;
    property data_nasc : TDateTime         read Fdata_nasc    write Fdata_nasc;
    property sexo : WideString         read Fsexo    write Fsexo;
    property id_natural : Integer         read Fid_natural    write Fid_natural;
    property pai : WideString         read Fpai    write Fpai;
    property mae : WideString         read Fmae    write Fmae;
    property qtd_filhos : Integer         read Fqtd_filhos    write Fqtd_filhos;
    property conjugue : WideString         read Fconjugue    write Fconjugue;
    property data_nasc_conj : TDateTime         read Fdata_nasc_conj    write Fdata_nasc_conj;
    property aluguel : WideString         read Faluguel    write Faluguel;
    property valor_aluguel : Double         read Fvalor_aluguel    write Fvalor_aluguel;
    property temp_resid : WideString         read Ftemp_resid    write Ftemp_resid;
    property salario : Double         read Fsalario    write Fsalario;
    property empresa : WideString         read Fempresa    write Fempresa;
    property fone_empresa : WideString         read Ffone_empresa    write Ffone_empresa;
    property data_admissao : TDateTime         read Fdata_admissao    write Fdata_admissao;
    property cidade_empresa : Integer         read Fcidade_empresa    write Fcidade_empresa;
    property uf_empresa : WideString         read Fuf_empresa    write Fuf_empresa;
    property funcao : WideString         read Ffuncao    write Ffuncao;
    property referencia_comercial : indefinido         read Freferencia_comercial    write Freferencia_comercial;
    property referencia_bancaria : indefinido         read Freferencia_bancaria    write Freferencia_bancaria;
    property data_consulta_spc : TDateTime         read Fdata_consulta_spc    write Fdata_consulta_spc;
    property obs_spc : indefinido         read Fobs_spc    write Fobs_spc;
    property valor_limite : Double         read Fvalor_limite    write Fvalor_limite;
    property tipo : WideString         read Ftipo    write Ftipo;
    property e_mail : WideString         read Fe_mail    write Fe_mail;
    property home_page : WideString         read Fhome_page    write Fhome_page;
    property endereco_entrega : WideString         read Fendereco_entrega    write Fendereco_entrega;
    property bairro_entrega : WideString         read Fbairro_entrega    write Fbairro_entrega;
    property cidade_entrega : Integer         read Fcidade_entrega    write Fcidade_entrega;
    property uf_entrega : WideString         read Fuf_entrega    write Fuf_entrega;
    property referencia_entrega : WideString         read Freferencia_entrega    write Freferencia_entrega;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property icm_ipi : Double         read Ficm_ipi    write Ficm_ipi;
    property cep_entrega : WideString         read Fcep_entrega    write Fcep_entrega;
    property obs_geral : indefinido         read Fobs_geral    write Fobs_geral;
    property estado_civil : WideString         read Festado_civil    write Festado_civil;
    property ficha : WideString         read Fficha    write Fficha;
    property temp_empre : WideString         read Ftemp_empre    write Ftemp_empre;
    property cidade : WideString         read Fcidade    write Fcidade;
    property id_rota : Integer         read Fid_rota    write Fid_rota;
    property click : Boolean         read Fclick    write Fclick;
    property cod_anterior : WideString         read Fcod_anterior    write Fcod_anterior;
    property id_atividade : Integer         read Fid_atividade    write Fid_atividade;
    property ativo : WideString         read Fativo    write Fativo;
    property capital_social : Double         read Fcapital_social    write Fcapital_social;
    property socio1 : WideString         read Fsocio1    write Fsocio1;
    property socio2 : WideString         read Fsocio2    write Fsocio2;
    property socio3 : WideString         read Fsocio3    write Fsocio3;
    property socio1valor : Double         read Fsocio1valor    write Fsocio1valor;
    property socio2valor : Double         read Fsocio2valor    write Fsocio2valor;
    property socio3valor : Double         read Fsocio3valor    write Fsocio3valor;
    property foto : indefinido         read Ffoto    write Ffoto;
    property dia_vencimento : WideString         read Fdia_vencimento    write Fdia_vencimento;
    property produtor_ativo : WideString         read Fprodutor_ativo    write Fprodutor_ativo;
    property apelido : WideString         read Fapelido    write Fapelido;
    property tam_meia : WideString         read Ftam_meia    write Ftam_meia;
    property tam_calcado : WideString         read Ftam_calcado    write Ftam_calcado;
    property tam_cinto : WideString         read Ftam_cinto    write Ftam_cinto;
    property tam_calca : WideString         read Ftam_calca    write Ftam_calca;
    property tam_camisa : WideString         read Ftam_camisa    write Ftam_camisa;
    property tam_sutia : WideString         read Ftam_sutia    write Ftam_sutia;
    property atacado : Boolean         read Fatacado    write Fatacado;
    property uf_naturalidade : WideString         read Fuf_naturalidade    write Fuf_naturalidade;
    property sistema : indefinido         read Fsistema    write Fsistema;
    property rota_ordem : Integer         read Frota_ordem    write Frota_ordem;
    property email1 : WideString         read Femail1    write Femail1;
    property email2 : WideString         read Femail2    write Femail2;
    property telefone1 : WideString         read Ftelefone1    write Ftelefone1;
    property telefone2 : WideString         read Ftelefone2    write Ftelefone2;
    property alergias_medicamentos : WideString         read Falergias_medicamentos    write Falergias_medicamentos;
    property dificuldades_disturbios : WideString         read Fdificuldades_disturbios    write Fdificuldades_disturbios;
    property observacoes_necessarias : WideString         read Fobservacoes_necessarias    write Fobservacoes_necessarias;
    property pagamento : WideString         read Fpagamento    write Fpagamento;
    property dia_mensalidade : WideString         read Fdia_mensalidade    write Fdia_mensalidade;
    property id_tabela_preco : Integer         read Fid_tabela_preco    write Fid_tabela_preco;
    property viacentral : Boolean         read Fviacentral    write Fviacentral;
    property nao_revenda : Boolean         read Fnao_revenda    write Fnao_revenda;
    property contribuinte_icms : Boolean         read Fcontribuinte_icms    write Fcontribuinte_icms;
    property id_servidor : Integer         read Fid_servidor    write Fid_servidor;
    property hash_local : WideString         read Fhash_local    write Fhash_local;
    property hash_matriz : WideString         read Fhash_matriz    write Fhash_matriz;
    property estoque_terceiro : Boolean         read Festoque_terceiro    write Festoque_terceiro;
    property rg_data_emissao : TDateTime         read Frg_data_emissao    write Frg_data_emissao;
    property cnh : indefinido         read Fcnh    write Fcnh;
    property cnh_data_emissao : TDateTime         read Fcnh_data_emissao    write Fcnh_data_emissao;
    property percentual_desconto : Double         read Fpercentual_desconto    write Fpercentual_desconto;

  end;

var
  Frm_ViewERPclienteinscricaoestadual : TFrm_ViewERPclienteinscricaoestadual; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 107; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pessoa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].razao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa_postal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_ssp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].titulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_nasc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sexo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_natural); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pai); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mae); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_filhos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conjugue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_nasc_conj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aluguel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_aluguel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].temp_resid); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_admissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].funcao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia_comercial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia_bancaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_consulta_spc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_spc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_limite); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_mail); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].home_page); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icm_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_geral); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado_civil); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].temp_empre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_rota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_anterior); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_atividade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].capital_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio1valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio2valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio3valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].foto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia_vencimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtor_ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].apelido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_meia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_calcado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_cinto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_calca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_camisa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_sutia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_naturalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sistema); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rota_ordem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alergias_medicamentos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dificuldades_disturbios); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacoes_necessarias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia_mensalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tabela_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viacentral); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nao_revenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contribuinte_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash_local); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash_matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnh); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnh_data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto); 
    end; 
end; 

procedure TFrm_ViewERPclienteinscricaoestadual.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.pessoa := Edit_pessoa.text;
      FController.Model.data_ficha := Edit_data_ficha.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.razao_social := Edit_razao_social.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.caixa_postal := Edit_caixa_postal.text;
      FController.Model.fone1 := Edit_fone1.text;
      FController.Model.fone2 := Edit_fone2.text;
      FController.Model.celular1 := Edit_celular1.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.rg_ssp := Edit_rg_ssp.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.titulo := Edit_titulo.text;
      FController.Model.data_nasc := Edit_data_nasc.text;
      FController.Model.sexo := Edit_sexo.text;
      FController.Model.id_natural := Edit_id_natural.text;
      FController.Model.pai := Edit_pai.text;
      FController.Model.mae := Edit_mae.text;
      FController.Model.qtd_filhos := Edit_qtd_filhos.text;
      FController.Model.conjugue := Edit_conjugue.text;
      FController.Model.data_nasc_conj := Edit_data_nasc_conj.text;
      FController.Model.aluguel := Edit_aluguel.text;
      FController.Model.valor_aluguel := Edit_valor_aluguel.text;
      FController.Model.temp_resid := Edit_temp_resid.text;
      FController.Model.salario := Edit_salario.text;
      FController.Model.empresa := Edit_empresa.text;
      FController.Model.fone_empresa := Edit_fone_empresa.text;
      FController.Model.data_admissao := Edit_data_admissao.text;
      FController.Model.cidade_empresa := Edit_cidade_empresa.text;
      FController.Model.uf_empresa := Edit_uf_empresa.text;
      FController.Model.funcao := Edit_funcao.text;
      FController.Model.referencia_comercial := Edit_referencia_comercial.text;
      FController.Model.referencia_bancaria := Edit_referencia_bancaria.text;
      FController.Model.data_consulta_spc := Edit_data_consulta_spc.text;
      FController.Model.obs_spc := Edit_obs_spc.text;
      FController.Model.valor_limite := Edit_valor_limite.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.e_mail := Edit_e_mail.text;
      FController.Model.home_page := Edit_home_page.text;
      FController.Model.endereco_entrega := Edit_endereco_entrega.text;
      FController.Model.bairro_entrega := Edit_bairro_entrega.text;
      FController.Model.cidade_entrega := Edit_cidade_entrega.text;
      FController.Model.uf_entrega := Edit_uf_entrega.text;
      FController.Model.referencia_entrega := Edit_referencia_entrega.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.icm_ipi := Edit_icm_ipi.text;
      FController.Model.cep_entrega := Edit_cep_entrega.text;
      FController.Model.obs_geral := Edit_obs_geral.text;
      FController.Model.estado_civil := Edit_estado_civil.text;
      FController.Model.ficha := Edit_ficha.text;
      FController.Model.temp_empre := Edit_temp_empre.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.id_rota := Edit_id_rota.text;
      FController.Model.click := Edit_click.text;
      FController.Model.cod_anterior := Edit_cod_anterior.text;
      FController.Model.id_atividade := Edit_id_atividade.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.capital_social := Edit_capital_social.text;
      FController.Model.socio1 := Edit_socio1.text;
      FController.Model.socio2 := Edit_socio2.text;
      FController.Model.socio3 := Edit_socio3.text;
      FController.Model.socio1valor := Edit_socio1valor.text;
      FController.Model.socio2valor := Edit_socio2valor.text;
      FController.Model.socio3valor := Edit_socio3valor.text;
      FController.Model.foto := Edit_foto.text;
      FController.Model.dia_vencimento := Edit_dia_vencimento.text;
      FController.Model.produtor_ativo := Edit_produtor_ativo.text;
      FController.Model.apelido := Edit_apelido.text;
      FController.Model.tam_meia := Edit_tam_meia.text;
      FController.Model.tam_calcado := Edit_tam_calcado.text;
      FController.Model.tam_cinto := Edit_tam_cinto.text;
      FController.Model.tam_calca := Edit_tam_calca.text;
      FController.Model.tam_camisa := Edit_tam_camisa.text;
      FController.Model.tam_sutia := Edit_tam_sutia.text;
      FController.Model.atacado := Edit_atacado.text;
      FController.Model.uf_naturalidade := Edit_uf_naturalidade.text;
      FController.Model.sistema := Edit_sistema.text;
      FController.Model.rota_ordem := Edit_rota_ordem.text;
      FController.Model.email1 := Edit_email1.text;
      FController.Model.email2 := Edit_email2.text;
      FController.Model.telefone1 := Edit_telefone1.text;
      FController.Model.telefone2 := Edit_telefone2.text;
      FController.Model.alergias_medicamentos := Edit_alergias_medicamentos.text;
      FController.Model.dificuldades_disturbios := Edit_dificuldades_disturbios.text;
      FController.Model.observacoes_necessarias := Edit_observacoes_necessarias.text;
      FController.Model.pagamento := Edit_pagamento.text;
      FController.Model.dia_mensalidade := Edit_dia_mensalidade.text;
      FController.Model.id_tabela_preco := Edit_id_tabela_preco.text;
      FController.Model.viacentral := Edit_viacentral.text;
      FController.Model.nao_revenda := Edit_nao_revenda.text;
      FController.Model.contribuinte_icms := Edit_contribuinte_icms.text;
      FController.Model.id_servidor := Edit_id_servidor.text;
      FController.Model.hash_local := Edit_hash_local.text;
      FController.Model.hash_matriz := Edit_hash_matriz.text;
      FController.Model.estoque_terceiro := Edit_estoque_terceiro.text;
      FController.Model.rg_data_emissao := Edit_rg_data_emissao.text;
      FController.Model.cnh := Edit_cnh.text;
      FController.Model.cnh_data_emissao := Edit_cnh_data_emissao.text;
      FController.Model.percentual_desconto := Edit_percentual_desconto.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclienteinscricaoestadual.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclienteinscricaoestadual.BBCancelarClick(Sender: TObject); 
begin                         
  LimparTela;                 
end;                          

Function  SoNumeros(Texto: String):Boolean;   
var Resultado:Boolean;                        
    nContador:Integer;                        
begin                                         
  Resultado := false;                         
  For nContador:=1 to Length(Texto) do        
    begin                                     
      {Verifica sé é uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPclienteinscricaoestadual.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a gravação dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
  begin                                              
    ScreenToModel;                                   
    if Self.FController.Status = vsInsert then       
    begin                                            
      Self.FController.Post;                         
    end                                              
    else                                             
      begin                                          
        Self.FController.Update;                     
      end;                                           
    MessageInfo('Dados gravados com sucesso.');    
    Self.FController.Model.id := 0;                  
    Self.FController.Get;                            
    ModelToScreen;                                   
  end;                                               
end;                                                 

procedure TFrm_ViewERPclienteinscricaoestadual.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclienteinscricaoestadual.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclienteinscricaoestadual.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclienteinscricaoestadual.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 107;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := pessoa;  
     Grid.Cells[inttostr(i),0] := data_ficha;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := razao_social;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := caixa_postal;  
     Grid.Cells[inttostr(i),0] := fone1;  
     Grid.Cells[inttostr(i),0] := fone2;  
     Grid.Cells[inttostr(i),0] := celular1;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := rg_ssp;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := titulo;  
     Grid.Cells[inttostr(i),0] := data_nasc;  
     Grid.Cells[inttostr(i),0] := sexo;  
     Grid.Cells[inttostr(i),0] := id_natural;  
     Grid.Cells[inttostr(i),0] := pai;  
     Grid.Cells[inttostr(i),0] := mae;  
     Grid.Cells[inttostr(i),0] := qtd_filhos;  
     Grid.Cells[inttostr(i),0] := conjugue;  
     Grid.Cells[inttostr(i),0] := data_nasc_conj;  
     Grid.Cells[inttostr(i),0] := aluguel;  
     Grid.Cells[inttostr(i),0] := valor_aluguel;  
     Grid.Cells[inttostr(i),0] := temp_resid;  
     Grid.Cells[inttostr(i),0] := salario;  
     Grid.Cells[inttostr(i),0] := empresa;  
     Grid.Cells[inttostr(i),0] := fone_empresa;  
     Grid.Cells[inttostr(i),0] := data_admissao;  
     Grid.Cells[inttostr(i),0] := cidade_empresa;  
     Grid.Cells[inttostr(i),0] := uf_empresa;  
     Grid.Cells[inttostr(i),0] := funcao;  
     Grid.Cells[inttostr(i),0] := referencia_comercial;  
     Grid.Cells[inttostr(i),0] := referencia_bancaria;  
     Grid.Cells[inttostr(i),0] := data_consulta_spc;  
     Grid.Cells[inttostr(i),0] := obs_spc;  
     Grid.Cells[inttostr(i),0] := valor_limite;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := e_mail;  
     Grid.Cells[inttostr(i),0] := home_page;  
     Grid.Cells[inttostr(i),0] := endereco_entrega;  
     Grid.Cells[inttostr(i),0] := bairro_entrega;  
     Grid.Cells[inttostr(i),0] := cidade_entrega;  
     Grid.Cells[inttostr(i),0] := uf_entrega;  
     Grid.Cells[inttostr(i),0] := referencia_entrega;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := icm_ipi;  
     Grid.Cells[inttostr(i),0] := cep_entrega;  
     Grid.Cells[inttostr(i),0] := obs_geral;  
     Grid.Cells[inttostr(i),0] := estado_civil;  
     Grid.Cells[inttostr(i),0] := ficha;  
     Grid.Cells[inttostr(i),0] := temp_empre;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := id_rota;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := cod_anterior;  
     Grid.Cells[inttostr(i),0] := id_atividade;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := capital_social;  
     Grid.Cells[inttostr(i),0] := socio1;  
     Grid.Cells[inttostr(i),0] := socio2;  
     Grid.Cells[inttostr(i),0] := socio3;  
     Grid.Cells[inttostr(i),0] := socio1valor;  
     Grid.Cells[inttostr(i),0] := socio2valor;  
     Grid.Cells[inttostr(i),0] := socio3valor;  
     Grid.Cells[inttostr(i),0] := foto;  
     Grid.Cells[inttostr(i),0] := dia_vencimento;  
     Grid.Cells[inttostr(i),0] := produtor_ativo;  
     Grid.Cells[inttostr(i),0] := apelido;  
     Grid.Cells[inttostr(i),0] := tam_meia;  
     Grid.Cells[inttostr(i),0] := tam_calcado;  
     Grid.Cells[inttostr(i),0] := tam_cinto;  
     Grid.Cells[inttostr(i),0] := tam_calca;  
     Grid.Cells[inttostr(i),0] := tam_camisa;  
     Grid.Cells[inttostr(i),0] := tam_sutia;  
     Grid.Cells[inttostr(i),0] := atacado;  
     Grid.Cells[inttostr(i),0] := uf_naturalidade;  
     Grid.Cells[inttostr(i),0] := sistema;  
     Grid.Cells[inttostr(i),0] := rota_ordem;  
     Grid.Cells[inttostr(i),0] := email1;  
     Grid.Cells[inttostr(i),0] := email2;  
     Grid.Cells[inttostr(i),0] := telefone1;  
     Grid.Cells[inttostr(i),0] := telefone2;  
     Grid.Cells[inttostr(i),0] := alergias_medicamentos;  
     Grid.Cells[inttostr(i),0] := dificuldades_disturbios;  
     Grid.Cells[inttostr(i),0] := observacoes_necessarias;  
     Grid.Cells[inttostr(i),0] := pagamento;  
     Grid.Cells[inttostr(i),0] := dia_mensalidade;  
     Grid.Cells[inttostr(i),0] := id_tabela_preco;  
     Grid.Cells[inttostr(i),0] := viacentral;  
     Grid.Cells[inttostr(i),0] := nao_revenda;  
     Grid.Cells[inttostr(i),0] := contribuinte_icms;  
     Grid.Cells[inttostr(i),0] := id_servidor;  
     Grid.Cells[inttostr(i),0] := hash_local;  
     Grid.Cells[inttostr(i),0] := hash_matriz;  
     Grid.Cells[inttostr(i),0] := estoque_terceiro;  
     Grid.Cells[inttostr(i),0] := rg_data_emissao;  
     Grid.Cells[inttostr(i),0] := cnh;  
     Grid.Cells[inttostr(i),0] := cnh_data_emissao;  
     Grid.Cells[inttostr(i),0] := percentual_desconto;  
end;

procedure TFrm_ViewERPclienteinscricaoestadual.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclienteinscricaoestadual.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclienteinscricaoestadual.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.pessoa := Grid.Cells[2,Grid.row];
    FController.Model.data_ficha := Grid.Cells[3,Grid.row];
    FController.Model.nome := Grid.Cells[4,Grid.row];
    FController.Model.id_cidade := Grid.Cells[5,Grid.row];
    FController.Model.razao_social := Grid.Cells[6,Grid.row];
    FController.Model.endereco := Grid.Cells[7,Grid.row];
    FController.Model.bairro := Grid.Cells[8,Grid.row];
    FController.Model.uf := Grid.Cells[9,Grid.row];
    FController.Model.cep := Grid.Cells[10,Grid.row];
    FController.Model.caixa_postal := Grid.Cells[11,Grid.row];
    FController.Model.fone1 := Grid.Cells[12,Grid.row];
    FController.Model.fone2 := Grid.Cells[13,Grid.row];
    FController.Model.celular1 := Grid.Cells[14,Grid.row];
    FController.Model.cnpj := Grid.Cells[15,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[16,Grid.row];
    FController.Model.rg_ssp := Grid.Cells[17,Grid.row];
    FController.Model.rg := Grid.Cells[18,Grid.row];
    FController.Model.cpf := Grid.Cells[19,Grid.row];
    FController.Model.titulo := Grid.Cells[20,Grid.row];
    FController.Model.data_nasc := Grid.Cells[21,Grid.row];
    FController.Model.sexo := Grid.Cells[22,Grid.row];
    FController.Model.id_natural := Grid.Cells[23,Grid.row];
    FController.Model.pai := Grid.Cells[24,Grid.row];
    FController.Model.mae := Grid.Cells[25,Grid.row];
    FController.Model.qtd_filhos := Grid.Cells[26,Grid.row];
    FController.Model.conjugue := Grid.Cells[27,Grid.row];
    FController.Model.data_nasc_conj := Grid.Cells[28,Grid.row];
    FController.Model.aluguel := Grid.Cells[29,Grid.row];
    FController.Model.valor_aluguel := Grid.Cells[30,Grid.row];
    FController.Model.temp_resid := Grid.Cells[31,Grid.row];
    FController.Model.salario := Grid.Cells[32,Grid.row];
    FController.Model.empresa := Grid.Cells[33,Grid.row];
    FController.Model.fone_empresa := Grid.Cells[34,Grid.row];
    FController.Model.data_admissao := Grid.Cells[35,Grid.row];
    FController.Model.cidade_empresa := Grid.Cells[36,Grid.row];
    FController.Model.uf_empresa := Grid.Cells[37,Grid.row];
    FController.Model.funcao := Grid.Cells[38,Grid.row];
    FController.Model.referencia_comercial := Grid.Cells[39,Grid.row];
    FController.Model.referencia_bancaria := Grid.Cells[40,Grid.row];
    FController.Model.data_consulta_spc := Grid.Cells[41,Grid.row];
    FController.Model.obs_spc := Grid.Cells[42,Grid.row];
    FController.Model.valor_limite := Grid.Cells[43,Grid.row];
    FController.Model.tipo := Grid.Cells[44,Grid.row];
    FController.Model.e_mail := Grid.Cells[45,Grid.row];
    FController.Model.home_page := Grid.Cells[46,Grid.row];
    FController.Model.endereco_entrega := Grid.Cells[47,Grid.row];
    FController.Model.bairro_entrega := Grid.Cells[48,Grid.row];
    FController.Model.cidade_entrega := Grid.Cells[49,Grid.row];
    FController.Model.uf_entrega := Grid.Cells[50,Grid.row];
    FController.Model.referencia_entrega := Grid.Cells[51,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[52,Grid.row];
    FController.Model.icm_ipi := Grid.Cells[53,Grid.row];
    FController.Model.cep_entrega := Grid.Cells[54,Grid.row];
    FController.Model.obs_geral := Grid.Cells[55,Grid.row];
    FController.Model.estado_civil := Grid.Cells[56,Grid.row];
    FController.Model.ficha := Grid.Cells[57,Grid.row];
    FController.Model.temp_empre := Grid.Cells[58,Grid.row];
    FController.Model.cidade := Grid.Cells[59,Grid.row];
    FController.Model.id_rota := Grid.Cells[60,Grid.row];
    FController.Model.click := Grid.Cells[61,Grid.row];
    FController.Model.cod_anterior := Grid.Cells[62,Grid.row];
    FController.Model.id_atividade := Grid.Cells[63,Grid.row];
    FController.Model.ativo := Grid.Cells[64,Grid.row];
    FController.Model.capital_social := Grid.Cells[65,Grid.row];
    FController.Model.socio1 := Grid.Cells[66,Grid.row];
    FController.Model.socio2 := Grid.Cells[67,Grid.row];
    FController.Model.socio3 := Grid.Cells[68,Grid.row];
    FController.Model.socio1valor := Grid.Cells[69,Grid.row];
    FController.Model.socio2valor := Grid.Cells[70,Grid.row];
    FController.Model.socio3valor := Grid.Cells[71,Grid.row];
    FController.Model.foto := Grid.Cells[72,Grid.row];
    FController.Model.dia_vencimento := Grid.Cells[73,Grid.row];
    FController.Model.produtor_ativo := Grid.Cells[74,Grid.row];
    FController.Model.apelido := Grid.Cells[75,Grid.row];
    FController.Model.tam_meia := Grid.Cells[76,Grid.row];
    FController.Model.tam_calcado := Grid.Cells[77,Grid.row];
    FController.Model.tam_cinto := Grid.Cells[78,Grid.row];
    FController.Model.tam_calca := Grid.Cells[79,Grid.row];
    FController.Model.tam_camisa := Grid.Cells[80,Grid.row];
    FController.Model.tam_sutia := Grid.Cells[81,Grid.row];
    FController.Model.atacado := Grid.Cells[82,Grid.row];
    FController.Model.uf_naturalidade := Grid.Cells[83,Grid.row];
    FController.Model.sistema := Grid.Cells[84,Grid.row];
    FController.Model.rota_ordem := Grid.Cells[85,Grid.row];
    FController.Model.email1 := Grid.Cells[86,Grid.row];
    FController.Model.email2 := Grid.Cells[87,Grid.row];
    FController.Model.telefone1 := Grid.Cells[88,Grid.row];
    FController.Model.telefone2 := Grid.Cells[89,Grid.row];
    FController.Model.alergias_medicamentos := Grid.Cells[90,Grid.row];
    FController.Model.dificuldades_disturbios := Grid.Cells[91,Grid.row];
    FController.Model.observacoes_necessarias := Grid.Cells[92,Grid.row];
    FController.Model.pagamento := Grid.Cells[93,Grid.row];
    FController.Model.dia_mensalidade := Grid.Cells[94,Grid.row];
    FController.Model.id_tabela_preco := Grid.Cells[95,Grid.row];
    FController.Model.viacentral := Grid.Cells[96,Grid.row];
    FController.Model.nao_revenda := Grid.Cells[97,Grid.row];
    FController.Model.contribuinte_icms := Grid.Cells[98,Grid.row];
    FController.Model.id_servidor := Grid.Cells[99,Grid.row];
    FController.Model.hash_local := Grid.Cells[100,Grid.row];
    FController.Model.hash_matriz := Grid.Cells[101,Grid.row];
    FController.Model.estoque_terceiro := Grid.Cells[102,Grid.row];
    FController.Model.rg_data_emissao := Grid.Cells[103,Grid.row];
    FController.Model.cnh := Grid.Cells[104,Grid.row];
    FController.Model.cnh_data_emissao := Grid.Cells[105,Grid.row];
    FController.Model.percentual_desconto := Grid.Cells[106,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclienteinscricaoestadual.LimparTela;  
var   
  I: Integer;  
begin       
  for i := 0 to ComponentCount -1 do   
    BEGIN                              
      if Components[i] is TEdit then   
      begin                            
        TEdit(Components[i]).Text := ''; 
      end; 
    END;   
end;       

procedure TFrm_ViewERPclienteinscricaoestadual.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setpessoa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdata_ficha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setrazao_social(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcaixa_postal(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setfone1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setfone2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcelular1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setinscricao_estadual(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setrg_ssp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settitulo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdata_nasc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsexo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_natural(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setpai(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setmae(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setqtd_filhos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setconjugue(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdata_nasc_conj(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setaluguel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setvalor_aluguel(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settemp_resid(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsalario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setempresa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setfone_empresa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdata_admissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcidade_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setuf_empresa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setfuncao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setreferencia_comercial(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setreferencia_bancaria(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdata_consulta_spc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setobs_spc(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setvalor_limite(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Sete_mail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Sethome_page(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setendereco_entrega(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setbairro_entrega(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcidade_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setuf_entrega(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setreferencia_entrega(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Seticm_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcep_entrega(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setobs_geral(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setestado_civil(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setficha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settemp_empre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_rota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcod_anterior(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_atividade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcapital_social(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio1valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio2valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsocio3valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setfoto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdia_vencimento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setprodutor_ativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setapelido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_meia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_calcado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_cinto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_calca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_camisa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settam_sutia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setatacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setuf_naturalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setsistema(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setrota_ordem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setemail1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setemail2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settelefone1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Settelefone2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setalergias_medicamentos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdificuldades_disturbios(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setobservacoes_necessarias(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setpagamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setdia_mensalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_tabela_preco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setviacentral(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setnao_revenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcontribuinte_icms(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setid_servidor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Sethash_local(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Sethash_matriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setestoque_terceiro(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setrg_data_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcnh(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setcnh_data_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclienteinscricaoestadual.Setpercentual_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
