
unit View.ERP.updatescript;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.updatescript, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPupdatescript = class(TForm) 
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
    FController : TControllerERPupdatescript; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdt_cadastro : TDateTime;
    Fnome : WideString;
    Fsenha : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcep : WideString;
    Fid_cidade : Integer;
    Fcpf : WideString;
    Ffone_residencia : WideString;
    Ffone_celular : WideString;
    Ftipo : WideString;
    Fdesconto_venda : Double;
    Fdesconto_receber : Double;
    Faltera_prc_unit_orc : Boolean;
    Faltera_prc_produto : Boolean;
    Faltera_data_venda : Boolean;
    Faltera_data_pgto : Boolean;
    Ffecha_venda : Boolean;
    Fquitar_receber : Boolean;
    Fquitar_pagar : Boolean;
    Fexibe_resumodia : Boolean;
    Fclick : Boolean;
    Fid_caixa : Integer;
    Fid_impressora : Integer;
    Fdata_caixa : WideString;
    Fjuro_receber : WideString;
    Fjuro_pagar : indefinido;
    Faltera_valor_receber : indefinido;
    Faltera_valor_pagar : indefinido;
    Funiao_conta : indefinido;
    Fgera_conta : indefinido;
    Ftransferencia_conta : indefinido;
    Fdesdobramento : indefinido;
    Fid_vendedor : Integer;
    Fexpedicao : Boolean;
    Funiao_orcamento : indefinido;
    Fcodigo_autorizacao : indefinido;
    Fmixvenda : indefinido;
    Fvendedor_venda : indefinido;
    Faltera_cxvenda : indefinido;
    Fbloqueio_cliente : Boolean;
    Faltera_obs : indefinido;
    Fliberacao_venda : indefinido;
    Facerto_estoque_equipamento : Boolean;
    Fpermite_exclusao_fabricacao : Boolean;
    Ftransferencia_estoque : Boolean;
    Faltera_ponto : Boolean;
    Falterar_serial : Boolean;
    Falterar_cadastro_romaneio : Boolean;
    Facerto_estoque : Integer;
    Faltera_preco_consulta_rapida : Boolean;
    Ffechar_troca : Boolean;
    Fclassificacao_os : Boolean;
    Fabrir_venda_uso : Boolean;
    Feditar_inventario : Boolean;
    Falterar_entrada_prevenda : Boolean;
    Fpercentual_minimo_entrada : Double;
    Fhabilitar_lancamento_balanco : Boolean;
    Fativo : Boolean;
    Fmulta : Boolean;
    Faltera_prc_unit_orc_mais : Boolean;
    Fentrada_nota : Boolean;
    Fmulta_receber : Boolean;
    Fuf : WideString;
    Falterar_insumo_fabricacao : Boolean;
    Fdelitem : Boolean;
    Fid_sti : Integer;
    Fdesconto_especial : Boolean;
    Fvalor_limite_nfe : Double;
    Fvalor_limite_nfce : Double;
    Flogin : WideString;
    Fpassword : WideString;
    Fpermissao_exclusao_arquivo : Boolean;
    Festorno_credito_usado : Boolean;
    Ftranferencia_portador_origem_debito : Integer;
    Ftransferencia_portador_destino_credito : Integer;
    Ftranferencia_portador_origem : Integer;
    Ftransferencia_portador_destino : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdt_cadastro(const Value : TDateTime);
    procedure Setnome(const Value : WideString);
    procedure Setsenha(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setcpf(const Value : WideString);
    procedure Setfone_residencia(const Value : WideString);
    procedure Setfone_celular(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setdesconto_venda(const Value : Double);
    procedure Setdesconto_receber(const Value : Double);
    procedure Setaltera_prc_unit_orc(const Value : Boolean);
    procedure Setaltera_prc_produto(const Value : Boolean);
    procedure Setaltera_data_venda(const Value : Boolean);
    procedure Setaltera_data_pgto(const Value : Boolean);
    procedure Setfecha_venda(const Value : Boolean);
    procedure Setquitar_receber(const Value : Boolean);
    procedure Setquitar_pagar(const Value : Boolean);
    procedure Setexibe_resumodia(const Value : Boolean);
    procedure Setclick(const Value : Boolean);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_impressora(const Value : Integer);
    procedure Setdata_caixa(const Value : WideString);
    procedure Setjuro_receber(const Value : WideString);
    procedure Setjuro_pagar(const Value : indefinido);
    procedure Setaltera_valor_receber(const Value : indefinido);
    procedure Setaltera_valor_pagar(const Value : indefinido);
    procedure Setuniao_conta(const Value : indefinido);
    procedure Setgera_conta(const Value : indefinido);
    procedure Settransferencia_conta(const Value : indefinido);
    procedure Setdesdobramento(const Value : indefinido);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setexpedicao(const Value : Boolean);
    procedure Setuniao_orcamento(const Value : indefinido);
    procedure Setcodigo_autorizacao(const Value : indefinido);
    procedure Setmixvenda(const Value : indefinido);
    procedure Setvendedor_venda(const Value : indefinido);
    procedure Setaltera_cxvenda(const Value : indefinido);
    procedure Setbloqueio_cliente(const Value : Boolean);
    procedure Setaltera_obs(const Value : indefinido);
    procedure Setliberacao_venda(const Value : indefinido);
    procedure Setacerto_estoque_equipamento(const Value : Boolean);
    procedure Setpermite_exclusao_fabricacao(const Value : Boolean);
    procedure Settransferencia_estoque(const Value : Boolean);
    procedure Setaltera_ponto(const Value : Boolean);
    procedure Setalterar_serial(const Value : Boolean);
    procedure Setalterar_cadastro_romaneio(const Value : Boolean);
    procedure Setacerto_estoque(const Value : Integer);
    procedure Setaltera_preco_consulta_rapida(const Value : Boolean);
    procedure Setfechar_troca(const Value : Boolean);
    procedure Setclassificacao_os(const Value : Boolean);
    procedure Setabrir_venda_uso(const Value : Boolean);
    procedure Seteditar_inventario(const Value : Boolean);
    procedure Setalterar_entrada_prevenda(const Value : Boolean);
    procedure Setpercentual_minimo_entrada(const Value : Double);
    procedure Sethabilitar_lancamento_balanco(const Value : Boolean);
    procedure Setativo(const Value : Boolean);
    procedure Setmulta(const Value : Boolean);
    procedure Setaltera_prc_unit_orc_mais(const Value : Boolean);
    procedure Setentrada_nota(const Value : Boolean);
    procedure Setmulta_receber(const Value : Boolean);
    procedure Setuf(const Value : WideString);
    procedure Setalterar_insumo_fabricacao(const Value : Boolean);
    procedure Setdelitem(const Value : Boolean);
    procedure Setid_sti(const Value : Integer);
    procedure Setdesconto_especial(const Value : Boolean);
    procedure Setvalor_limite_nfe(const Value : Double);
    procedure Setvalor_limite_nfce(const Value : Double);
    procedure Setlogin(const Value : WideString);
    procedure Setpassword(const Value : WideString);
    procedure Setpermissao_exclusao_arquivo(const Value : Boolean);
    procedure Setestorno_credito_usado(const Value : Boolean);
    procedure Settranferencia_portador_origem_debito(const Value : Integer);
    procedure Settransferencia_portador_destino_credito(const Value : Integer);
    procedure Settranferencia_portador_origem(const Value : Integer);
    procedure Settransferencia_portador_destino(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property dt_cadastro : TDateTime         read Fdt_cadastro    write Fdt_cadastro;
    property nome : WideString         read Fnome    write Fnome;
    property senha : WideString         read Fsenha    write Fsenha;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property cep : WideString         read Fcep    write Fcep;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property cpf : WideString         read Fcpf    write Fcpf;
    property fone_residencia : WideString         read Ffone_residencia    write Ffone_residencia;
    property fone_celular : WideString         read Ffone_celular    write Ffone_celular;
    property tipo : WideString         read Ftipo    write Ftipo;
    property desconto_venda : Double         read Fdesconto_venda    write Fdesconto_venda;
    property desconto_receber : Double         read Fdesconto_receber    write Fdesconto_receber;
    property altera_prc_unit_orc : Boolean         read Faltera_prc_unit_orc    write Faltera_prc_unit_orc;
    property altera_prc_produto : Boolean         read Faltera_prc_produto    write Faltera_prc_produto;
    property altera_data_venda : Boolean         read Faltera_data_venda    write Faltera_data_venda;
    property altera_data_pgto : Boolean         read Faltera_data_pgto    write Faltera_data_pgto;
    property fecha_venda : Boolean         read Ffecha_venda    write Ffecha_venda;
    property quitar_receber : Boolean         read Fquitar_receber    write Fquitar_receber;
    property quitar_pagar : Boolean         read Fquitar_pagar    write Fquitar_pagar;
    property exibe_resumodia : Boolean         read Fexibe_resumodia    write Fexibe_resumodia;
    property click : Boolean         read Fclick    write Fclick;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_impressora : Integer         read Fid_impressora    write Fid_impressora;
    property data_caixa : WideString         read Fdata_caixa    write Fdata_caixa;
    property juro_receber : WideString         read Fjuro_receber    write Fjuro_receber;
    property juro_pagar : indefinido         read Fjuro_pagar    write Fjuro_pagar;
    property altera_valor_receber : indefinido         read Faltera_valor_receber    write Faltera_valor_receber;
    property altera_valor_pagar : indefinido         read Faltera_valor_pagar    write Faltera_valor_pagar;
    property uniao_conta : indefinido         read Funiao_conta    write Funiao_conta;
    property gera_conta : indefinido         read Fgera_conta    write Fgera_conta;
    property transferencia_conta : indefinido         read Ftransferencia_conta    write Ftransferencia_conta;
    property desdobramento : indefinido         read Fdesdobramento    write Fdesdobramento;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property expedicao : Boolean         read Fexpedicao    write Fexpedicao;
    property uniao_orcamento : indefinido         read Funiao_orcamento    write Funiao_orcamento;
    property codigo_autorizacao : indefinido         read Fcodigo_autorizacao    write Fcodigo_autorizacao;
    property mixvenda : indefinido         read Fmixvenda    write Fmixvenda;
    property vendedor_venda : indefinido         read Fvendedor_venda    write Fvendedor_venda;
    property altera_cxvenda : indefinido         read Faltera_cxvenda    write Faltera_cxvenda;
    property bloqueio_cliente : Boolean         read Fbloqueio_cliente    write Fbloqueio_cliente;
    property altera_obs : indefinido         read Faltera_obs    write Faltera_obs;
    property liberacao_venda : indefinido         read Fliberacao_venda    write Fliberacao_venda;
    property acerto_estoque_equipamento : Boolean         read Facerto_estoque_equipamento    write Facerto_estoque_equipamento;
    property permite_exclusao_fabricacao : Boolean         read Fpermite_exclusao_fabricacao    write Fpermite_exclusao_fabricacao;
    property transferencia_estoque : Boolean         read Ftransferencia_estoque    write Ftransferencia_estoque;
    property altera_ponto : Boolean         read Faltera_ponto    write Faltera_ponto;
    property alterar_serial : Boolean         read Falterar_serial    write Falterar_serial;
    property alterar_cadastro_romaneio : Boolean         read Falterar_cadastro_romaneio    write Falterar_cadastro_romaneio;
    property acerto_estoque : Integer         read Facerto_estoque    write Facerto_estoque;
    property altera_preco_consulta_rapida : Boolean         read Faltera_preco_consulta_rapida    write Faltera_preco_consulta_rapida;
    property fechar_troca : Boolean         read Ffechar_troca    write Ffechar_troca;
    property classificacao_os : Boolean         read Fclassificacao_os    write Fclassificacao_os;
    property abrir_venda_uso : Boolean         read Fabrir_venda_uso    write Fabrir_venda_uso;
    property editar_inventario : Boolean         read Feditar_inventario    write Feditar_inventario;
    property alterar_entrada_prevenda : Boolean         read Falterar_entrada_prevenda    write Falterar_entrada_prevenda;
    property percentual_minimo_entrada : Double         read Fpercentual_minimo_entrada    write Fpercentual_minimo_entrada;
    property habilitar_lancamento_balanco : Boolean         read Fhabilitar_lancamento_balanco    write Fhabilitar_lancamento_balanco;
    property ativo : Boolean         read Fativo    write Fativo;
    property multa : Boolean         read Fmulta    write Fmulta;
    property altera_prc_unit_orc_mais : Boolean         read Faltera_prc_unit_orc_mais    write Faltera_prc_unit_orc_mais;
    property entrada_nota : Boolean         read Fentrada_nota    write Fentrada_nota;
    property multa_receber : Boolean         read Fmulta_receber    write Fmulta_receber;
    property uf : WideString         read Fuf    write Fuf;
    property alterar_insumo_fabricacao : Boolean         read Falterar_insumo_fabricacao    write Falterar_insumo_fabricacao;
    property delitem : Boolean         read Fdelitem    write Fdelitem;
    property id_sti : Integer         read Fid_sti    write Fid_sti;
    property desconto_especial : Boolean         read Fdesconto_especial    write Fdesconto_especial;
    property valor_limite_nfe : Double         read Fvalor_limite_nfe    write Fvalor_limite_nfe;
    property valor_limite_nfce : Double         read Fvalor_limite_nfce    write Fvalor_limite_nfce;
    property login : WideString         read Flogin    write Flogin;
    property password : WideString         read Fpassword    write Fpassword;
    property permissao_exclusao_arquivo : Boolean         read Fpermissao_exclusao_arquivo    write Fpermissao_exclusao_arquivo;
    property estorno_credito_usado : Boolean         read Festorno_credito_usado    write Festorno_credito_usado;
    property tranferencia_portador_origem_debito : Integer         read Ftranferencia_portador_origem_debito    write Ftranferencia_portador_origem_debito;
    property transferencia_portador_destino_credito : Integer         read Ftransferencia_portador_destino_credito    write Ftransferencia_portador_destino_credito;
    property tranferencia_portador_origem : Integer         read Ftranferencia_portador_origem    write Ftranferencia_portador_origem;
    property transferencia_portador_destino : Integer         read Ftransferencia_portador_destino    write Ftransferencia_portador_destino;

  end;

var
  Frm_ViewERPupdatescript : TFrm_ViewERPupdatescript; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 80; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_cadastro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone_residencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_prc_unit_orc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_prc_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_data_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fecha_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quitar_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quitar_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].exibe_resumodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_impressora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juro_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juro_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_valor_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_valor_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uniao_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transferencia_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desdobramento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uniao_orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_autorizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mixvenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vendedor_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_cxvenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueio_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].liberacao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acerto_estoque_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].permite_exclusao_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transferencia_estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_ponto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterar_serial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterar_cadastro_romaneio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acerto_estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_preco_consulta_rapida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechar_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].classificacao_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].abrir_venda_uso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].editar_inventario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterar_entrada_prevenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_minimo_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].habilitar_lancamento_balanco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].altera_prc_unit_orc_mais); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entrada_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterar_insumo_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].delitem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_sti); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_especial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_limite_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_limite_nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].login); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].password); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].permissao_exclusao_arquivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estorno_credito_usado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tranferencia_portador_origem_debito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transferencia_portador_destino_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tranferencia_portador_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transferencia_portador_destino); 
    end; 
end; 

procedure TFrm_ViewERPupdatescript.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.dt_cadastro := Edit_dt_cadastro.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.senha := Edit_senha.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.fone_residencia := Edit_fone_residencia.text;
      FController.Model.fone_celular := Edit_fone_celular.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.desconto_venda := Edit_desconto_venda.text;
      FController.Model.desconto_receber := Edit_desconto_receber.text;
      FController.Model.altera_prc_unit_orc := Edit_altera_prc_unit_orc.text;
      FController.Model.altera_prc_produto := Edit_altera_prc_produto.text;
      FController.Model.altera_data_venda := Edit_altera_data_venda.text;
      FController.Model.altera_data_pgto := Edit_altera_data_pgto.text;
      FController.Model.fecha_venda := Edit_fecha_venda.text;
      FController.Model.quitar_receber := Edit_quitar_receber.text;
      FController.Model.quitar_pagar := Edit_quitar_pagar.text;
      FController.Model.exibe_resumodia := Edit_exibe_resumodia.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_impressora := Edit_id_impressora.text;
      FController.Model.data_caixa := Edit_data_caixa.text;
      FController.Model.juro_receber := Edit_juro_receber.text;
      FController.Model.juro_pagar := Edit_juro_pagar.text;
      FController.Model.altera_valor_receber := Edit_altera_valor_receber.text;
      FController.Model.altera_valor_pagar := Edit_altera_valor_pagar.text;
      FController.Model.uniao_conta := Edit_uniao_conta.text;
      FController.Model.gera_conta := Edit_gera_conta.text;
      FController.Model.transferencia_conta := Edit_transferencia_conta.text;
      FController.Model.desdobramento := Edit_desdobramento.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.uniao_orcamento := Edit_uniao_orcamento.text;
      FController.Model.codigo_autorizacao := Edit_codigo_autorizacao.text;
      FController.Model.mixvenda := Edit_mixvenda.text;
      FController.Model.vendedor_venda := Edit_vendedor_venda.text;
      FController.Model.altera_cxvenda := Edit_altera_cxvenda.text;
      FController.Model.bloqueio_cliente := Edit_bloqueio_cliente.text;
      FController.Model.altera_obs := Edit_altera_obs.text;
      FController.Model.liberacao_venda := Edit_liberacao_venda.text;
      FController.Model.acerto_estoque_equipamento := Edit_acerto_estoque_equipamento.text;
      FController.Model.permite_exclusao_fabricacao := Edit_permite_exclusao_fabricacao.text;
      FController.Model.transferencia_estoque := Edit_transferencia_estoque.text;
      FController.Model.altera_ponto := Edit_altera_ponto.text;
      FController.Model.alterar_serial := Edit_alterar_serial.text;
      FController.Model.alterar_cadastro_romaneio := Edit_alterar_cadastro_romaneio.text;
      FController.Model.acerto_estoque := Edit_acerto_estoque.text;
      FController.Model.altera_preco_consulta_rapida := Edit_altera_preco_consulta_rapida.text;
      FController.Model.fechar_troca := Edit_fechar_troca.text;
      FController.Model.classificacao_os := Edit_classificacao_os.text;
      FController.Model.abrir_venda_uso := Edit_abrir_venda_uso.text;
      FController.Model.editar_inventario := Edit_editar_inventario.text;
      FController.Model.alterar_entrada_prevenda := Edit_alterar_entrada_prevenda.text;
      FController.Model.percentual_minimo_entrada := Edit_percentual_minimo_entrada.text;
      FController.Model.habilitar_lancamento_balanco := Edit_habilitar_lancamento_balanco.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.multa := Edit_multa.text;
      FController.Model.altera_prc_unit_orc_mais := Edit_altera_prc_unit_orc_mais.text;
      FController.Model.entrada_nota := Edit_entrada_nota.text;
      FController.Model.multa_receber := Edit_multa_receber.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.alterar_insumo_fabricacao := Edit_alterar_insumo_fabricacao.text;
      FController.Model.delitem := Edit_delitem.text;
      FController.Model.id_sti := Edit_id_sti.text;
      FController.Model.desconto_especial := Edit_desconto_especial.text;
      FController.Model.valor_limite_nfe := Edit_valor_limite_nfe.text;
      FController.Model.valor_limite_nfce := Edit_valor_limite_nfce.text;
      FController.Model.login := Edit_login.text;
      FController.Model.password := Edit_password.text;
      FController.Model.permissao_exclusao_arquivo := Edit_permissao_exclusao_arquivo.text;
      FController.Model.estorno_credito_usado := Edit_estorno_credito_usado.text;
      FController.Model.tranferencia_portador_origem_debito := Edit_tranferencia_portador_origem_debito.text;
      FController.Model.transferencia_portador_destino_credito := Edit_transferencia_portador_destino_credito.text;
      FController.Model.tranferencia_portador_origem := Edit_tranferencia_portador_origem.text;
      FController.Model.transferencia_portador_destino := Edit_transferencia_portador_destino.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPupdatescript.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPupdatescript.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPupdatescript.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPupdatescript.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPupdatescript.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPupdatescript.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPupdatescript.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 80;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := dt_cadastro;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := senha;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := fone_residencia;  
     Grid.Cells[inttostr(i),0] := fone_celular;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := desconto_venda;  
     Grid.Cells[inttostr(i),0] := desconto_receber;  
     Grid.Cells[inttostr(i),0] := altera_prc_unit_orc;  
     Grid.Cells[inttostr(i),0] := altera_prc_produto;  
     Grid.Cells[inttostr(i),0] := altera_data_venda;  
     Grid.Cells[inttostr(i),0] := altera_data_pgto;  
     Grid.Cells[inttostr(i),0] := fecha_venda;  
     Grid.Cells[inttostr(i),0] := quitar_receber;  
     Grid.Cells[inttostr(i),0] := quitar_pagar;  
     Grid.Cells[inttostr(i),0] := exibe_resumodia;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_impressora;  
     Grid.Cells[inttostr(i),0] := data_caixa;  
     Grid.Cells[inttostr(i),0] := juro_receber;  
     Grid.Cells[inttostr(i),0] := juro_pagar;  
     Grid.Cells[inttostr(i),0] := altera_valor_receber;  
     Grid.Cells[inttostr(i),0] := altera_valor_pagar;  
     Grid.Cells[inttostr(i),0] := uniao_conta;  
     Grid.Cells[inttostr(i),0] := gera_conta;  
     Grid.Cells[inttostr(i),0] := transferencia_conta;  
     Grid.Cells[inttostr(i),0] := desdobramento;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := uniao_orcamento;  
     Grid.Cells[inttostr(i),0] := codigo_autorizacao;  
     Grid.Cells[inttostr(i),0] := mixvenda;  
     Grid.Cells[inttostr(i),0] := vendedor_venda;  
     Grid.Cells[inttostr(i),0] := altera_cxvenda;  
     Grid.Cells[inttostr(i),0] := bloqueio_cliente;  
     Grid.Cells[inttostr(i),0] := altera_obs;  
     Grid.Cells[inttostr(i),0] := liberacao_venda;  
     Grid.Cells[inttostr(i),0] := acerto_estoque_equipamento;  
     Grid.Cells[inttostr(i),0] := permite_exclusao_fabricacao;  
     Grid.Cells[inttostr(i),0] := transferencia_estoque;  
     Grid.Cells[inttostr(i),0] := altera_ponto;  
     Grid.Cells[inttostr(i),0] := alterar_serial;  
     Grid.Cells[inttostr(i),0] := alterar_cadastro_romaneio;  
     Grid.Cells[inttostr(i),0] := acerto_estoque;  
     Grid.Cells[inttostr(i),0] := altera_preco_consulta_rapida;  
     Grid.Cells[inttostr(i),0] := fechar_troca;  
     Grid.Cells[inttostr(i),0] := classificacao_os;  
     Grid.Cells[inttostr(i),0] := abrir_venda_uso;  
     Grid.Cells[inttostr(i),0] := editar_inventario;  
     Grid.Cells[inttostr(i),0] := alterar_entrada_prevenda;  
     Grid.Cells[inttostr(i),0] := percentual_minimo_entrada;  
     Grid.Cells[inttostr(i),0] := habilitar_lancamento_balanco;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := multa;  
     Grid.Cells[inttostr(i),0] := altera_prc_unit_orc_mais;  
     Grid.Cells[inttostr(i),0] := entrada_nota;  
     Grid.Cells[inttostr(i),0] := multa_receber;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := alterar_insumo_fabricacao;  
     Grid.Cells[inttostr(i),0] := delitem;  
     Grid.Cells[inttostr(i),0] := id_sti;  
     Grid.Cells[inttostr(i),0] := desconto_especial;  
     Grid.Cells[inttostr(i),0] := valor_limite_nfe;  
     Grid.Cells[inttostr(i),0] := valor_limite_nfce;  
     Grid.Cells[inttostr(i),0] := login;  
     Grid.Cells[inttostr(i),0] := password;  
     Grid.Cells[inttostr(i),0] := permissao_exclusao_arquivo;  
     Grid.Cells[inttostr(i),0] := estorno_credito_usado;  
     Grid.Cells[inttostr(i),0] := tranferencia_portador_origem_debito;  
     Grid.Cells[inttostr(i),0] := transferencia_portador_destino_credito;  
     Grid.Cells[inttostr(i),0] := tranferencia_portador_origem;  
     Grid.Cells[inttostr(i),0] := transferencia_portador_destino;  
end;

procedure TFrm_ViewERPupdatescript.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPupdatescript.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPupdatescript.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.dt_cadastro := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.senha := Grid.Cells[4,Grid.row];
    FController.Model.endereco := Grid.Cells[5,Grid.row];
    FController.Model.bairro := Grid.Cells[6,Grid.row];
    FController.Model.cep := Grid.Cells[7,Grid.row];
    FController.Model.id_cidade := Grid.Cells[8,Grid.row];
    FController.Model.cpf := Grid.Cells[9,Grid.row];
    FController.Model.fone_residencia := Grid.Cells[10,Grid.row];
    FController.Model.fone_celular := Grid.Cells[11,Grid.row];
    FController.Model.tipo := Grid.Cells[12,Grid.row];
    FController.Model.desconto_venda := Grid.Cells[13,Grid.row];
    FController.Model.desconto_receber := Grid.Cells[14,Grid.row];
    FController.Model.altera_prc_unit_orc := Grid.Cells[15,Grid.row];
    FController.Model.altera_prc_produto := Grid.Cells[16,Grid.row];
    FController.Model.altera_data_venda := Grid.Cells[17,Grid.row];
    FController.Model.altera_data_pgto := Grid.Cells[18,Grid.row];
    FController.Model.fecha_venda := Grid.Cells[19,Grid.row];
    FController.Model.quitar_receber := Grid.Cells[20,Grid.row];
    FController.Model.quitar_pagar := Grid.Cells[21,Grid.row];
    FController.Model.exibe_resumodia := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
    FController.Model.id_caixa := Grid.Cells[24,Grid.row];
    FController.Model.id_impressora := Grid.Cells[25,Grid.row];
    FController.Model.data_caixa := Grid.Cells[26,Grid.row];
    FController.Model.juro_receber := Grid.Cells[27,Grid.row];
    FController.Model.juro_pagar := Grid.Cells[28,Grid.row];
    FController.Model.altera_valor_receber := Grid.Cells[29,Grid.row];
    FController.Model.altera_valor_pagar := Grid.Cells[30,Grid.row];
    FController.Model.uniao_conta := Grid.Cells[31,Grid.row];
    FController.Model.gera_conta := Grid.Cells[32,Grid.row];
    FController.Model.transferencia_conta := Grid.Cells[33,Grid.row];
    FController.Model.desdobramento := Grid.Cells[34,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[35,Grid.row];
    FController.Model.expedicao := Grid.Cells[36,Grid.row];
    FController.Model.uniao_orcamento := Grid.Cells[37,Grid.row];
    FController.Model.codigo_autorizacao := Grid.Cells[38,Grid.row];
    FController.Model.mixvenda := Grid.Cells[39,Grid.row];
    FController.Model.vendedor_venda := Grid.Cells[40,Grid.row];
    FController.Model.altera_cxvenda := Grid.Cells[41,Grid.row];
    FController.Model.bloqueio_cliente := Grid.Cells[42,Grid.row];
    FController.Model.altera_obs := Grid.Cells[43,Grid.row];
    FController.Model.liberacao_venda := Grid.Cells[44,Grid.row];
    FController.Model.acerto_estoque_equipamento := Grid.Cells[45,Grid.row];
    FController.Model.permite_exclusao_fabricacao := Grid.Cells[46,Grid.row];
    FController.Model.transferencia_estoque := Grid.Cells[47,Grid.row];
    FController.Model.altera_ponto := Grid.Cells[48,Grid.row];
    FController.Model.alterar_serial := Grid.Cells[49,Grid.row];
    FController.Model.alterar_cadastro_romaneio := Grid.Cells[50,Grid.row];
    FController.Model.acerto_estoque := Grid.Cells[51,Grid.row];
    FController.Model.altera_preco_consulta_rapida := Grid.Cells[52,Grid.row];
    FController.Model.fechar_troca := Grid.Cells[53,Grid.row];
    FController.Model.classificacao_os := Grid.Cells[54,Grid.row];
    FController.Model.abrir_venda_uso := Grid.Cells[55,Grid.row];
    FController.Model.editar_inventario := Grid.Cells[56,Grid.row];
    FController.Model.alterar_entrada_prevenda := Grid.Cells[57,Grid.row];
    FController.Model.percentual_minimo_entrada := Grid.Cells[58,Grid.row];
    FController.Model.habilitar_lancamento_balanco := Grid.Cells[59,Grid.row];
    FController.Model.ativo := Grid.Cells[60,Grid.row];
    FController.Model.multa := Grid.Cells[61,Grid.row];
    FController.Model.altera_prc_unit_orc_mais := Grid.Cells[62,Grid.row];
    FController.Model.entrada_nota := Grid.Cells[63,Grid.row];
    FController.Model.multa_receber := Grid.Cells[64,Grid.row];
    FController.Model.uf := Grid.Cells[65,Grid.row];
    FController.Model.alterar_insumo_fabricacao := Grid.Cells[66,Grid.row];
    FController.Model.delitem := Grid.Cells[67,Grid.row];
    FController.Model.id_sti := Grid.Cells[68,Grid.row];
    FController.Model.desconto_especial := Grid.Cells[69,Grid.row];
    FController.Model.valor_limite_nfe := Grid.Cells[70,Grid.row];
    FController.Model.valor_limite_nfce := Grid.Cells[71,Grid.row];
    FController.Model.login := Grid.Cells[72,Grid.row];
    FController.Model.password := Grid.Cells[73,Grid.row];
    FController.Model.permissao_exclusao_arquivo := Grid.Cells[74,Grid.row];
    FController.Model.estorno_credito_usado := Grid.Cells[75,Grid.row];
    FController.Model.tranferencia_portador_origem_debito := Grid.Cells[76,Grid.row];
    FController.Model.transferencia_portador_destino_credito := Grid.Cells[77,Grid.row];
    FController.Model.tranferencia_portador_origem := Grid.Cells[78,Grid.row];
    FController.Model.transferencia_portador_destino := Grid.Cells[79,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPupdatescript.LimparTela;  
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

procedure TFrm_ViewERPupdatescript.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdt_cadastro(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setsenha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setfone_residencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setfone_celular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdesconto_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdesconto_receber(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_prc_unit_orc(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_prc_produto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_data_venda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_data_pgto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setfecha_venda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setquitar_receber(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setquitar_pagar(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setexibe_resumodia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_impressora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdata_caixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setjuro_receber(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setjuro_pagar(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_valor_receber(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_valor_pagar(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setuniao_conta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setgera_conta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settransferencia_conta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdesdobramento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setexpedicao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setuniao_orcamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setcodigo_autorizacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setmixvenda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setvendedor_venda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_cxvenda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setbloqueio_cliente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_obs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setliberacao_venda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setacerto_estoque_equipamento(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setpermite_exclusao_fabricacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settransferencia_estoque(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_ponto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setalterar_serial(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setalterar_cadastro_romaneio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setacerto_estoque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_preco_consulta_rapida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setfechar_troca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setclassificacao_os(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setabrir_venda_uso(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Seteditar_inventario(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setalterar_entrada_prevenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setpercentual_minimo_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Sethabilitar_lancamento_balanco(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setmulta(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setaltera_prc_unit_orc_mais(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setentrada_nota(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setmulta_receber(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setalterar_insumo_fabricacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdelitem(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setid_sti(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setdesconto_especial(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setvalor_limite_nfe(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setvalor_limite_nfce(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setlogin(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setpassword(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setpermissao_exclusao_arquivo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Setestorno_credito_usado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settranferencia_portador_origem_debito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settransferencia_portador_destino_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settranferencia_portador_origem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdatescript.Settransferencia_portador_destino(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
