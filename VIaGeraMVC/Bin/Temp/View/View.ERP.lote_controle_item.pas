
unit View.ERP.lote_controle;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lote_controle, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlotecontrole = class(TForm) 
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
    FController : TControllerERPlotecontrole; 
    Fid : Integer;
    Fid_lote : Integer;
    Fid_venda : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Fdata_fabricacao : TDateTime;
    Fdata_validade : TDateTime;
    Funidade : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fnro_garantia : WideString;
    Fdata_garantia : TDateTime;
    Fid_grupo : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_fornecedor : Integer;
    Fid_vendedor : Integer;
    Fst : WideString;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fdiferido : WideString;
    Fcancelada : WideString;
    Fclick : Boolean;
    Festoque : WideString;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fdevolucao : WideString;
    Fid_planocelular : Integer;
    Fnro_celular : WideString;
    Ftipoplano : WideString;
    Fvalor_plano : Double;
    Fvalor_recarga : Double;
    Fdata_ativacao : TDateTime;
    Fmigracao_prepos : WideString;
    Ftroca_pospago : WideString;
    Fexpedicao : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fid_carga : Integer;
    Fqtd_entregue : Double;
    Fvl_icmsst : Double;
    Fvlbc_icms : Double;
    Fbase_substituicao : Double;
    Fpis : Double;
    Fcofins : Double;
    Flote : WideString;
    Ffpb_posologia : Double;
    Ffpb_dias : Double;
    Fcst : WideString;
    Fvl_custo : Double;
    Fprodutor_ativo : WideString;
    Fbico : WideString;
    Fipi : Double;
    Festoque_saida : WideString;
    Fquantidade_devolucao : Double;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fcfop : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fbc_st : WideString;
    Fid_pedido_alm : Integer;
    Fid_produto_alm : Integer;
    Fvl_fcp_uf_dest : Double;
    Fvl_icms_uf_dest : Double;
    Fvl_icms_uf_rem : Double;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fqdt_devolvida : Integer;
    Fcfop_externo : Integer;
    Funitario_original : Double;
    Fvl_unitario_itens_caixa : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_lote(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setdata_fabricacao(const Value : TDateTime);
    procedure Setdata_validade(const Value : TDateTime);
    procedure Setunidade(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setnro_garantia(const Value : WideString);
    procedure Setdata_garantia(const Value : TDateTime);
    procedure Setid_grupo(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setst(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Seticms_cupom(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_ipi(const Value : Double);
    procedure Setdiferido(const Value : WideString);
    procedure Setcancelada(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setestoque(const Value : WideString);
    procedure Setitem(const Value : Integer);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : WideString);
    procedure Settam_grade(const Value : WideString);
    procedure Setdevolucao(const Value : WideString);
    procedure Setid_planocelular(const Value : Integer);
    procedure Setnro_celular(const Value : WideString);
    procedure Settipoplano(const Value : WideString);
    procedure Setvalor_plano(const Value : Double);
    procedure Setvalor_recarga(const Value : Double);
    procedure Setdata_ativacao(const Value : TDateTime);
    procedure Setmigracao_prepos(const Value : WideString);
    procedure Settroca_pospago(const Value : WideString);
    procedure Setexpedicao(const Value : WideString);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setid_carga(const Value : Integer);
    procedure Setqtd_entregue(const Value : Double);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setvlbc_icms(const Value : Double);
    procedure Setbase_substituicao(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setlote(const Value : WideString);
    procedure Setfpb_posologia(const Value : Double);
    procedure Setfpb_dias(const Value : Double);
    procedure Setcst(const Value : WideString);
    procedure Setvl_custo(const Value : Double);
    procedure Setprodutor_ativo(const Value : WideString);
    procedure Setbico(const Value : WideString);
    procedure Setipi(const Value : Double);
    procedure Setestoque_saida(const Value : WideString);
    procedure Setquantidade_devolucao(const Value : Double);
    procedure Settaxa_ibpt(const Value : Double);
    procedure Settaxa_valor(const Value : Double);
    procedure Setcfop(const Value : Integer);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setbc_st(const Value : WideString);
    procedure Setid_pedido_alm(const Value : Integer);
    procedure Setid_produto_alm(const Value : Integer);
    procedure Setvl_fcp_uf_dest(const Value : Double);
    procedure Setvl_icms_uf_dest(const Value : Double);
    procedure Setvl_icms_uf_rem(const Value : Double);
    procedure Settaxa_federal(const Value : Double);
    procedure Settaxa_estadual(const Value : Double);
    procedure Settaxa_municipal(const Value : Double);
    procedure Setvalor_federal(const Value : Double);
    procedure Setvalor_estadual(const Value : Double);
    procedure Setvalor_municipal(const Value : Double);
    procedure Setqdt_devolvida(const Value : Integer);
    procedure Setcfop_externo(const Value : Integer);
    procedure Setunitario_original(const Value : Double);
    procedure Setvl_unitario_itens_caixa(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_lote : Integer         read Fid_lote    write Fid_lote;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property data : TDateTime         read Fdata    write Fdata;
    property data_fabricacao : TDateTime         read Fdata_fabricacao    write Fdata_fabricacao;
    property data_validade : TDateTime         read Fdata_validade    write Fdata_validade;
    property unidade : WideString         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property nro_garantia : WideString         read Fnro_garantia    write Fnro_garantia;
    property data_garantia : TDateTime         read Fdata_garantia    write Fdata_garantia;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property st : WideString         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property icms_cupom : Double         read Ficms_cupom    write Ficms_cupom;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property diferido : WideString         read Fdiferido    write Fdiferido;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property click : Boolean         read Fclick    write Fclick;
    property estoque : WideString         read Festoque    write Festoque;
    property item : Integer         read Fitem    write Fitem;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : WideString         read Fcor_grade    write Fcor_grade;
    property tam_grade : WideString         read Ftam_grade    write Ftam_grade;
    property devolucao : WideString         read Fdevolucao    write Fdevolucao;
    property id_planocelular : Integer         read Fid_planocelular    write Fid_planocelular;
    property nro_celular : WideString         read Fnro_celular    write Fnro_celular;
    property tipoplano : WideString         read Ftipoplano    write Ftipoplano;
    property valor_plano : Double         read Fvalor_plano    write Fvalor_plano;
    property valor_recarga : Double         read Fvalor_recarga    write Fvalor_recarga;
    property data_ativacao : TDateTime         read Fdata_ativacao    write Fdata_ativacao;
    property migracao_prepos : WideString         read Fmigracao_prepos    write Fmigracao_prepos;
    property troca_pospago : WideString         read Ftroca_pospago    write Ftroca_pospago;
    property expedicao : WideString         read Fexpedicao    write Fexpedicao;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property id_carga : Integer         read Fid_carga    write Fid_carga;
    property qtd_entregue : Double         read Fqtd_entregue    write Fqtd_entregue;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property vlbc_icms : Double         read Fvlbc_icms    write Fvlbc_icms;
    property base_substituicao : Double         read Fbase_substituicao    write Fbase_substituicao;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property lote : WideString         read Flote    write Flote;
    property fpb_posologia : Double         read Ffpb_posologia    write Ffpb_posologia;
    property fpb_dias : Double         read Ffpb_dias    write Ffpb_dias;
    property cst : WideString         read Fcst    write Fcst;
    property vl_custo : Double         read Fvl_custo    write Fvl_custo;
    property produtor_ativo : WideString         read Fprodutor_ativo    write Fprodutor_ativo;
    property bico : WideString         read Fbico    write Fbico;
    property ipi : Double         read Fipi    write Fipi;
    property estoque_saida : WideString         read Festoque_saida    write Festoque_saida;
    property quantidade_devolucao : Double         read Fquantidade_devolucao    write Fquantidade_devolucao;
    property taxa_ibpt : Double         read Ftaxa_ibpt    write Ftaxa_ibpt;
    property taxa_valor : Double         read Ftaxa_valor    write Ftaxa_valor;
    property cfop : Integer         read Fcfop    write Fcfop;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property bc_st : WideString         read Fbc_st    write Fbc_st;
    property id_pedido_alm : Integer         read Fid_pedido_alm    write Fid_pedido_alm;
    property id_produto_alm : Integer         read Fid_produto_alm    write Fid_produto_alm;
    property vl_fcp_uf_dest : Double         read Fvl_fcp_uf_dest    write Fvl_fcp_uf_dest;
    property vl_icms_uf_dest : Double         read Fvl_icms_uf_dest    write Fvl_icms_uf_dest;
    property vl_icms_uf_rem : Double         read Fvl_icms_uf_rem    write Fvl_icms_uf_rem;
    property taxa_federal : Double         read Ftaxa_federal    write Ftaxa_federal;
    property taxa_estadual : Double         read Ftaxa_estadual    write Ftaxa_estadual;
    property taxa_municipal : Double         read Ftaxa_municipal    write Ftaxa_municipal;
    property valor_federal : Double         read Fvalor_federal    write Fvalor_federal;
    property valor_estadual : Double         read Fvalor_estadual    write Fvalor_estadual;
    property valor_municipal : Double         read Fvalor_municipal    write Fvalor_municipal;
    property qdt_devolvida : Integer         read Fqdt_devolvida    write Fqdt_devolvida;
    property cfop_externo : Integer         read Fcfop_externo    write Fcfop_externo;
    property unitario_original : Double         read Funitario_original    write Funitario_original;
    property vl_unitario_itens_caixa : Double         read Fvl_unitario_itens_caixa    write Fvl_unitario_itens_caixa;

  end;

var
  Frm_ViewERPlotecontrole : TFrm_ViewERPlotecontrole; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 84; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].diferido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_planocelular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipoplano); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_plano); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_recarga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ativacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].migracao_prepos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].troca_pospago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vlbc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb_posologia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb_dias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtor_ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_ibpt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_fcp_uf_dest); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms_uf_dest); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms_uf_rem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qdt_devolvida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario_original); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario_itens_caixa); 
    end; 
end; 

procedure TFrm_ViewERPlotecontrole.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_lote := Edit_id_lote.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.data := Edit_data.text;
      FController.Model.data_fabricacao := Edit_data_fabricacao.text;
      FController.Model.data_validade := Edit_data_validade.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.nro_garantia := Edit_nro_garantia.text;
      FController.Model.data_garantia := Edit_data_garantia.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.icms_cupom := Edit_icms_cupom.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_ipi := Edit_vl_ipi.text;
      FController.Model.diferido := Edit_diferido.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.click := Edit_click.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.item := Edit_item.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.id_planocelular := Edit_id_planocelular.text;
      FController.Model.nro_celular := Edit_nro_celular.text;
      FController.Model.tipoplano := Edit_tipoplano.text;
      FController.Model.valor_plano := Edit_valor_plano.text;
      FController.Model.valor_recarga := Edit_valor_recarga.text;
      FController.Model.data_ativacao := Edit_data_ativacao.text;
      FController.Model.migracao_prepos := Edit_migracao_prepos.text;
      FController.Model.troca_pospago := Edit_troca_pospago.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.id_carga := Edit_id_carga.text;
      FController.Model.qtd_entregue := Edit_qtd_entregue.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.vlbc_icms := Edit_vlbc_icms.text;
      FController.Model.base_substituicao := Edit_base_substituicao.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.fpb_posologia := Edit_fpb_posologia.text;
      FController.Model.fpb_dias := Edit_fpb_dias.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.vl_custo := Edit_vl_custo.text;
      FController.Model.produtor_ativo := Edit_produtor_ativo.text;
      FController.Model.bico := Edit_bico.text;
      FController.Model.ipi := Edit_ipi.text;
      FController.Model.estoque_saida := Edit_estoque_saida.text;
      FController.Model.quantidade_devolucao := Edit_quantidade_devolucao.text;
      FController.Model.taxa_ibpt := Edit_taxa_ibpt.text;
      FController.Model.taxa_valor := Edit_taxa_valor.text;
      FController.Model.cfop := Edit_cfop.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.bc_st := Edit_bc_st.text;
      FController.Model.id_pedido_alm := Edit_id_pedido_alm.text;
      FController.Model.id_produto_alm := Edit_id_produto_alm.text;
      FController.Model.vl_fcp_uf_dest := Edit_vl_fcp_uf_dest.text;
      FController.Model.vl_icms_uf_dest := Edit_vl_icms_uf_dest.text;
      FController.Model.vl_icms_uf_rem := Edit_vl_icms_uf_rem.text;
      FController.Model.taxa_federal := Edit_taxa_federal.text;
      FController.Model.taxa_estadual := Edit_taxa_estadual.text;
      FController.Model.taxa_municipal := Edit_taxa_municipal.text;
      FController.Model.valor_federal := Edit_valor_federal.text;
      FController.Model.valor_estadual := Edit_valor_estadual.text;
      FController.Model.valor_municipal := Edit_valor_municipal.text;
      FController.Model.qdt_devolvida := Edit_qdt_devolvida.text;
      FController.Model.cfop_externo := Edit_cfop_externo.text;
      FController.Model.unitario_original := Edit_unitario_original.text;
      FController.Model.vl_unitario_itens_caixa := Edit_vl_unitario_itens_caixa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlotecontrole.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlotecontrole.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlotecontrole.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlotecontrole.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlotecontrole.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlotecontrole.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlotecontrole.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 84;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_lote;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := data_fabricacao;  
     Grid.Cells[inttostr(i),0] := data_validade;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := nro_garantia;  
     Grid.Cells[inttostr(i),0] := data_garantia;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := icms_cupom;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_ipi;  
     Grid.Cells[inttostr(i),0] := diferido;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := id_planocelular;  
     Grid.Cells[inttostr(i),0] := nro_celular;  
     Grid.Cells[inttostr(i),0] := tipoplano;  
     Grid.Cells[inttostr(i),0] := valor_plano;  
     Grid.Cells[inttostr(i),0] := valor_recarga;  
     Grid.Cells[inttostr(i),0] := data_ativacao;  
     Grid.Cells[inttostr(i),0] := migracao_prepos;  
     Grid.Cells[inttostr(i),0] := troca_pospago;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := id_carga;  
     Grid.Cells[inttostr(i),0] := qtd_entregue;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := vlbc_icms;  
     Grid.Cells[inttostr(i),0] := base_substituicao;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := fpb_posologia;  
     Grid.Cells[inttostr(i),0] := fpb_dias;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := vl_custo;  
     Grid.Cells[inttostr(i),0] := produtor_ativo;  
     Grid.Cells[inttostr(i),0] := bico;  
     Grid.Cells[inttostr(i),0] := ipi;  
     Grid.Cells[inttostr(i),0] := estoque_saida;  
     Grid.Cells[inttostr(i),0] := quantidade_devolucao;  
     Grid.Cells[inttostr(i),0] := taxa_ibpt;  
     Grid.Cells[inttostr(i),0] := taxa_valor;  
     Grid.Cells[inttostr(i),0] := cfop;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := bc_st;  
     Grid.Cells[inttostr(i),0] := id_pedido_alm;  
     Grid.Cells[inttostr(i),0] := id_produto_alm;  
     Grid.Cells[inttostr(i),0] := vl_fcp_uf_dest;  
     Grid.Cells[inttostr(i),0] := vl_icms_uf_dest;  
     Grid.Cells[inttostr(i),0] := vl_icms_uf_rem;  
     Grid.Cells[inttostr(i),0] := taxa_federal;  
     Grid.Cells[inttostr(i),0] := taxa_estadual;  
     Grid.Cells[inttostr(i),0] := taxa_municipal;  
     Grid.Cells[inttostr(i),0] := valor_federal;  
     Grid.Cells[inttostr(i),0] := valor_estadual;  
     Grid.Cells[inttostr(i),0] := valor_municipal;  
     Grid.Cells[inttostr(i),0] := qdt_devolvida;  
     Grid.Cells[inttostr(i),0] := cfop_externo;  
     Grid.Cells[inttostr(i),0] := unitario_original;  
     Grid.Cells[inttostr(i),0] := vl_unitario_itens_caixa;  
end;

procedure TFrm_ViewERPlotecontrole.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlotecontrole.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlotecontrole.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_lote := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.id_empresa := Grid.Cells[3,Grid.row];
    FController.Model.id_produto := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.data := Grid.Cells[6,Grid.row];
    FController.Model.data_fabricacao := Grid.Cells[7,Grid.row];
    FController.Model.data_validade := Grid.Cells[8,Grid.row];
    FController.Model.unidade := Grid.Cells[9,Grid.row];
    FController.Model.quantidade := Grid.Cells[10,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[11,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[12,Grid.row];
    FController.Model.vl_total := Grid.Cells[13,Grid.row];
    FController.Model.nro_garantia := Grid.Cells[14,Grid.row];
    FController.Model.data_garantia := Grid.Cells[15,Grid.row];
    FController.Model.id_grupo := Grid.Cells[16,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[17,Grid.row];
    FController.Model.id_cliente := Grid.Cells[18,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[19,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[20,Grid.row];
    FController.Model.st := Grid.Cells[21,Grid.row];
    FController.Model.icms := Grid.Cells[22,Grid.row];
    FController.Model.icms_cupom := Grid.Cells[23,Grid.row];
    FController.Model.vl_icms := Grid.Cells[24,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[25,Grid.row];
    FController.Model.diferido := Grid.Cells[26,Grid.row];
    FController.Model.cancelada := Grid.Cells[27,Grid.row];
    FController.Model.click := Grid.Cells[28,Grid.row];
    FController.Model.estoque := Grid.Cells[29,Grid.row];
    FController.Model.item := Grid.Cells[30,Grid.row];
    FController.Model.id_grade := Grid.Cells[31,Grid.row];
    FController.Model.cor_grade := Grid.Cells[32,Grid.row];
    FController.Model.tam_grade := Grid.Cells[33,Grid.row];
    FController.Model.devolucao := Grid.Cells[34,Grid.row];
    FController.Model.id_planocelular := Grid.Cells[35,Grid.row];
    FController.Model.nro_celular := Grid.Cells[36,Grid.row];
    FController.Model.tipoplano := Grid.Cells[37,Grid.row];
    FController.Model.valor_plano := Grid.Cells[38,Grid.row];
    FController.Model.valor_recarga := Grid.Cells[39,Grid.row];
    FController.Model.data_ativacao := Grid.Cells[40,Grid.row];
    FController.Model.migracao_prepos := Grid.Cells[41,Grid.row];
    FController.Model.troca_pospago := Grid.Cells[42,Grid.row];
    FController.Model.expedicao := Grid.Cells[43,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[44,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[45,Grid.row];
    FController.Model.id_carga := Grid.Cells[46,Grid.row];
    FController.Model.qtd_entregue := Grid.Cells[47,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[48,Grid.row];
    FController.Model.vlbc_icms := Grid.Cells[49,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[50,Grid.row];
    FController.Model.pis := Grid.Cells[51,Grid.row];
    FController.Model.cofins := Grid.Cells[52,Grid.row];
    FController.Model.lote := Grid.Cells[53,Grid.row];
    FController.Model.fpb_posologia := Grid.Cells[54,Grid.row];
    FController.Model.fpb_dias := Grid.Cells[55,Grid.row];
    FController.Model.cst := Grid.Cells[56,Grid.row];
    FController.Model.vl_custo := Grid.Cells[57,Grid.row];
    FController.Model.produtor_ativo := Grid.Cells[58,Grid.row];
    FController.Model.bico := Grid.Cells[59,Grid.row];
    FController.Model.ipi := Grid.Cells[60,Grid.row];
    FController.Model.estoque_saida := Grid.Cells[61,Grid.row];
    FController.Model.quantidade_devolucao := Grid.Cells[62,Grid.row];
    FController.Model.taxa_ibpt := Grid.Cells[63,Grid.row];
    FController.Model.taxa_valor := Grid.Cells[64,Grid.row];
    FController.Model.cfop := Grid.Cells[65,Grid.row];
    FController.Model.id_movimento := Grid.Cells[66,Grid.row];
    FController.Model.id_cupons := Grid.Cells[67,Grid.row];
    FController.Model.bc_st := Grid.Cells[68,Grid.row];
    FController.Model.id_pedido_alm := Grid.Cells[69,Grid.row];
    FController.Model.id_produto_alm := Grid.Cells[70,Grid.row];
    FController.Model.vl_fcp_uf_dest := Grid.Cells[71,Grid.row];
    FController.Model.vl_icms_uf_dest := Grid.Cells[72,Grid.row];
    FController.Model.vl_icms_uf_rem := Grid.Cells[73,Grid.row];
    FController.Model.taxa_federal := Grid.Cells[74,Grid.row];
    FController.Model.taxa_estadual := Grid.Cells[75,Grid.row];
    FController.Model.taxa_municipal := Grid.Cells[76,Grid.row];
    FController.Model.valor_federal := Grid.Cells[77,Grid.row];
    FController.Model.valor_estadual := Grid.Cells[78,Grid.row];
    FController.Model.valor_municipal := Grid.Cells[79,Grid.row];
    FController.Model.qdt_devolvida := Grid.Cells[80,Grid.row];
    FController.Model.cfop_externo := Grid.Cells[81,Grid.row];
    FController.Model.unitario_original := Grid.Cells[82,Grid.row];
    FController.Model.vl_unitario_itens_caixa := Grid.Cells[83,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlotecontrole.LimparTela;  
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

procedure TFrm_ViewERPlotecontrole.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdata_fabricacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdata_validade(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setnro_garantia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdata_garantia(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Seticms_cupom(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdiferido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcor_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settam_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdevolucao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_planocelular(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setnro_celular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settipoplano(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvalor_plano(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvalor_recarga(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setdata_ativacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setmigracao_prepos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settroca_pospago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setexpedicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_carga(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setqtd_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvlbc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setlote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setfpb_posologia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setfpb_dias(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setprodutor_ativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setbico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setestoque_saida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setquantidade_devolucao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settaxa_ibpt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settaxa_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setbc_st(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_pedido_alm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setid_produto_alm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_fcp_uf_dest(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_icms_uf_dest(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_icms_uf_rem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settaxa_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settaxa_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Settaxa_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvalor_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvalor_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvalor_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setqdt_devolvida(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setcfop_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setunitario_original(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrole.Setvl_unitario_itens_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
