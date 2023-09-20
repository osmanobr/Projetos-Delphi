
unit View.ERP.financeira;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.financeira, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfinanceira = class(TForm) 
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
    FController : TControllerERPfinanceira; 
    Fid : Integer;
    Fdata : TDateTime;
    Fpreco_compra : Double;
    Fvalor_frete : Double;
    Ffrete_percentual : Double;
    Fipi_entrada_percentual : Double;
    Fvalor_ipi : Double;
    Fcredito_icms : Double;
    Fcredito_percentual : Double;
    Fcusto_financeiro : Double;
    Fcusto_financeiro_percentual : Double;
    Foutras_despesas : Double;
    Foutras_despesas_percentual : Double;
    Fsubstituicao : Double;
    Fsubstituicao_percentual : Double;
    Ficms_saida : Double;
    Ficms_saida_percentual : Double;
    Ficms_saida_atacado : Double;
    Ficms_saida_atac_percentual : Double;
    Fipi : Double;
    Fipi_percentual : Double;
    Fcofins : Double;
    Fcofins_percentual : Double;
    Fpis : Double;
    Fpis_percentual : Double;
    Firpj : Double;
    Firpj_percentual : Double;
    Fcont_social : Double;
    Fcont_social_percentual : Double;
    Foutros_encargos : Double;
    Foutros_encargos_percentual : Double;
    Fencargos_fedarais : Double;
    Fencargos_federais_percentual : Double;
    Fsimples_nacional : Double;
    Fsimples_nacional_percentual : Double;
    Fcusto_operacional : Double;
    Fcusto_operacional_percentual : Double;
    Fcomissao_venda : Double;
    Fcomissao_venda_percentual : Double;
    Fcomissao_servico : Double;
    Fcomissao_servico_percentual : Double;
    Fmargem_lucro : Double;
    Fmargem_lucro_percentual : Double;
    Fmargem_lucro_atacado : Double;
    Fmargem_lucro_atacado_percentual : Double;
    Fsugestao_venda : Double;
    Fsugestao_venda_atacado : Double;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_compra : Integer;
    Fmargem_lucro_varejo : Double;
    Fpreco_venda_atual_varejo : Double;
    Fpreco_venda_atual_atacado : Double;
    Fmargem_lucro_atacado2 : Double;
    Fvl_pmz : Double;
    Fpreco_custo : Double;
    Fpreco_custo_atacado : Double;
    Fdata_inicial : TDateTime;
    Fdata_final : TDateTime;
    Fquantidade : Double;
    Fmedia_venda : Double;
    Ftotal : Double;
    Fxpmz : Double;
    Finadimplencia : Double;
    Fid_grupo : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setpreco_compra(const Value : Double);
    procedure Setvalor_frete(const Value : Double);
    procedure Setfrete_percentual(const Value : Double);
    procedure Setipi_entrada_percentual(const Value : Double);
    procedure Setvalor_ipi(const Value : Double);
    procedure Setcredito_icms(const Value : Double);
    procedure Setcredito_percentual(const Value : Double);
    procedure Setcusto_financeiro(const Value : Double);
    procedure Setcusto_financeiro_percentual(const Value : Double);
    procedure Setoutras_despesas(const Value : Double);
    procedure Setoutras_despesas_percentual(const Value : Double);
    procedure Setsubstituicao(const Value : Double);
    procedure Setsubstituicao_percentual(const Value : Double);
    procedure Seticms_saida(const Value : Double);
    procedure Seticms_saida_percentual(const Value : Double);
    procedure Seticms_saida_atacado(const Value : Double);
    procedure Seticms_saida_atac_percentual(const Value : Double);
    procedure Setipi(const Value : Double);
    procedure Setipi_percentual(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setcofins_percentual(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setpis_percentual(const Value : Double);
    procedure Setirpj(const Value : Double);
    procedure Setirpj_percentual(const Value : Double);
    procedure Setcont_social(const Value : Double);
    procedure Setcont_social_percentual(const Value : Double);
    procedure Setoutros_encargos(const Value : Double);
    procedure Setoutros_encargos_percentual(const Value : Double);
    procedure Setencargos_fedarais(const Value : Double);
    procedure Setencargos_federais_percentual(const Value : Double);
    procedure Setsimples_nacional(const Value : Double);
    procedure Setsimples_nacional_percentual(const Value : Double);
    procedure Setcusto_operacional(const Value : Double);
    procedure Setcusto_operacional_percentual(const Value : Double);
    procedure Setcomissao_venda(const Value : Double);
    procedure Setcomissao_venda_percentual(const Value : Double);
    procedure Setcomissao_servico(const Value : Double);
    procedure Setcomissao_servico_percentual(const Value : Double);
    procedure Setmargem_lucro(const Value : Double);
    procedure Setmargem_lucro_percentual(const Value : Double);
    procedure Setmargem_lucro_atacado(const Value : Double);
    procedure Setmargem_lucro_atacado_percentual(const Value : Double);
    procedure Setsugestao_venda(const Value : Double);
    procedure Setsugestao_venda_atacado(const Value : Double);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setid_compra(const Value : Integer);
    procedure Setmargem_lucro_varejo(const Value : Double);
    procedure Setpreco_venda_atual_varejo(const Value : Double);
    procedure Setpreco_venda_atual_atacado(const Value : Double);
    procedure Setmargem_lucro_atacado2(const Value : Double);
    procedure Setvl_pmz(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setpreco_custo_atacado(const Value : Double);
    procedure Setdata_inicial(const Value : TDateTime);
    procedure Setdata_final(const Value : TDateTime);
    procedure Setquantidade(const Value : Double);
    procedure Setmedia_venda(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setxpmz(const Value : Double);
    procedure Setinadimplencia(const Value : Double);
    procedure Setid_grupo(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property preco_compra : Double         read Fpreco_compra    write Fpreco_compra;
    property valor_frete : Double         read Fvalor_frete    write Fvalor_frete;
    property frete_percentual : Double         read Ffrete_percentual    write Ffrete_percentual;
    property ipi_entrada_percentual : Double         read Fipi_entrada_percentual    write Fipi_entrada_percentual;
    property valor_ipi : Double         read Fvalor_ipi    write Fvalor_ipi;
    property credito_icms : Double         read Fcredito_icms    write Fcredito_icms;
    property credito_percentual : Double         read Fcredito_percentual    write Fcredito_percentual;
    property custo_financeiro : Double         read Fcusto_financeiro    write Fcusto_financeiro;
    property custo_financeiro_percentual : Double         read Fcusto_financeiro_percentual    write Fcusto_financeiro_percentual;
    property outras_despesas : Double         read Foutras_despesas    write Foutras_despesas;
    property outras_despesas_percentual : Double         read Foutras_despesas_percentual    write Foutras_despesas_percentual;
    property substituicao : Double         read Fsubstituicao    write Fsubstituicao;
    property substituicao_percentual : Double         read Fsubstituicao_percentual    write Fsubstituicao_percentual;
    property icms_saida : Double         read Ficms_saida    write Ficms_saida;
    property icms_saida_percentual : Double         read Ficms_saida_percentual    write Ficms_saida_percentual;
    property icms_saida_atacado : Double         read Ficms_saida_atacado    write Ficms_saida_atacado;
    property icms_saida_atac_percentual : Double         read Ficms_saida_atac_percentual    write Ficms_saida_atac_percentual;
    property ipi : Double         read Fipi    write Fipi;
    property ipi_percentual : Double         read Fipi_percentual    write Fipi_percentual;
    property cofins : Double         read Fcofins    write Fcofins;
    property cofins_percentual : Double         read Fcofins_percentual    write Fcofins_percentual;
    property pis : Double         read Fpis    write Fpis;
    property pis_percentual : Double         read Fpis_percentual    write Fpis_percentual;
    property irpj : Double         read Firpj    write Firpj;
    property irpj_percentual : Double         read Firpj_percentual    write Firpj_percentual;
    property cont_social : Double         read Fcont_social    write Fcont_social;
    property cont_social_percentual : Double         read Fcont_social_percentual    write Fcont_social_percentual;
    property outros_encargos : Double         read Foutros_encargos    write Foutros_encargos;
    property outros_encargos_percentual : Double         read Foutros_encargos_percentual    write Foutros_encargos_percentual;
    property encargos_fedarais : Double         read Fencargos_fedarais    write Fencargos_fedarais;
    property encargos_federais_percentual : Double         read Fencargos_federais_percentual    write Fencargos_federais_percentual;
    property simples_nacional : Double         read Fsimples_nacional    write Fsimples_nacional;
    property simples_nacional_percentual : Double         read Fsimples_nacional_percentual    write Fsimples_nacional_percentual;
    property custo_operacional : Double         read Fcusto_operacional    write Fcusto_operacional;
    property custo_operacional_percentual : Double         read Fcusto_operacional_percentual    write Fcusto_operacional_percentual;
    property comissao_venda : Double         read Fcomissao_venda    write Fcomissao_venda;
    property comissao_venda_percentual : Double         read Fcomissao_venda_percentual    write Fcomissao_venda_percentual;
    property comissao_servico : Double         read Fcomissao_servico    write Fcomissao_servico;
    property comissao_servico_percentual : Double         read Fcomissao_servico_percentual    write Fcomissao_servico_percentual;
    property margem_lucro : Double         read Fmargem_lucro    write Fmargem_lucro;
    property margem_lucro_percentual : Double         read Fmargem_lucro_percentual    write Fmargem_lucro_percentual;
    property margem_lucro_atacado : Double         read Fmargem_lucro_atacado    write Fmargem_lucro_atacado;
    property margem_lucro_atacado_percentual : Double         read Fmargem_lucro_atacado_percentual    write Fmargem_lucro_atacado_percentual;
    property sugestao_venda : Double         read Fsugestao_venda    write Fsugestao_venda;
    property sugestao_venda_atacado : Double         read Fsugestao_venda_atacado    write Fsugestao_venda_atacado;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property margem_lucro_varejo : Double         read Fmargem_lucro_varejo    write Fmargem_lucro_varejo;
    property preco_venda_atual_varejo : Double         read Fpreco_venda_atual_varejo    write Fpreco_venda_atual_varejo;
    property preco_venda_atual_atacado : Double         read Fpreco_venda_atual_atacado    write Fpreco_venda_atual_atacado;
    property margem_lucro_atacado2 : Double         read Fmargem_lucro_atacado2    write Fmargem_lucro_atacado2;
    property vl_pmz : Double         read Fvl_pmz    write Fvl_pmz;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property preco_custo_atacado : Double         read Fpreco_custo_atacado    write Fpreco_custo_atacado;
    property data_inicial : TDateTime         read Fdata_inicial    write Fdata_inicial;
    property data_final : TDateTime         read Fdata_final    write Fdata_final;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property media_venda : Double         read Fmedia_venda    write Fmedia_venda;
    property total : Double         read Ftotal    write Ftotal;
    property xpmz : Double         read Fxpmz    write Fxpmz;
    property inadimplencia : Double         read Finadimplencia    write Finadimplencia;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;

  end;

var
  Frm_ViewERPfinanceira : TFrm_ViewERPfinanceira; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 65; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_entrada_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credito_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credito_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_financeiro_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outras_despesas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outras_despesas_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].substituicao_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_saida_atac_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].irpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].irpj_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cont_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cont_social_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outros_encargos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outros_encargos_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].encargos_fedarais); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].encargos_federais_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples_nacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].simples_nacional_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_operacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_operacional_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_venda_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_servico_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_atacado_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sugestao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sugestao_venda_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_varejo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_atual_varejo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_atual_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_atacado2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pmz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].media_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xpmz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inadimplencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
    end; 
end; 

procedure TFrm_ViewERPfinanceira.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.preco_compra := Edit_preco_compra.text;
      FController.Model.valor_frete := Edit_valor_frete.text;
      FController.Model.frete_percentual := Edit_frete_percentual.text;
      FController.Model.ipi_entrada_percentual := Edit_ipi_entrada_percentual.text;
      FController.Model.valor_ipi := Edit_valor_ipi.text;
      FController.Model.credito_icms := Edit_credito_icms.text;
      FController.Model.credito_percentual := Edit_credito_percentual.text;
      FController.Model.custo_financeiro := Edit_custo_financeiro.text;
      FController.Model.custo_financeiro_percentual := Edit_custo_financeiro_percentual.text;
      FController.Model.outras_despesas := Edit_outras_despesas.text;
      FController.Model.outras_despesas_percentual := Edit_outras_despesas_percentual.text;
      FController.Model.substituicao := Edit_substituicao.text;
      FController.Model.substituicao_percentual := Edit_substituicao_percentual.text;
      FController.Model.icms_saida := Edit_icms_saida.text;
      FController.Model.icms_saida_percentual := Edit_icms_saida_percentual.text;
      FController.Model.icms_saida_atacado := Edit_icms_saida_atacado.text;
      FController.Model.icms_saida_atac_percentual := Edit_icms_saida_atac_percentual.text;
      FController.Model.ipi := Edit_ipi.text;
      FController.Model.ipi_percentual := Edit_ipi_percentual.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.cofins_percentual := Edit_cofins_percentual.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.pis_percentual := Edit_pis_percentual.text;
      FController.Model.irpj := Edit_irpj.text;
      FController.Model.irpj_percentual := Edit_irpj_percentual.text;
      FController.Model.cont_social := Edit_cont_social.text;
      FController.Model.cont_social_percentual := Edit_cont_social_percentual.text;
      FController.Model.outros_encargos := Edit_outros_encargos.text;
      FController.Model.outros_encargos_percentual := Edit_outros_encargos_percentual.text;
      FController.Model.encargos_fedarais := Edit_encargos_fedarais.text;
      FController.Model.encargos_federais_percentual := Edit_encargos_federais_percentual.text;
      FController.Model.simples_nacional := Edit_simples_nacional.text;
      FController.Model.simples_nacional_percentual := Edit_simples_nacional_percentual.text;
      FController.Model.custo_operacional := Edit_custo_operacional.text;
      FController.Model.custo_operacional_percentual := Edit_custo_operacional_percentual.text;
      FController.Model.comissao_venda := Edit_comissao_venda.text;
      FController.Model.comissao_venda_percentual := Edit_comissao_venda_percentual.text;
      FController.Model.comissao_servico := Edit_comissao_servico.text;
      FController.Model.comissao_servico_percentual := Edit_comissao_servico_percentual.text;
      FController.Model.margem_lucro := Edit_margem_lucro.text;
      FController.Model.margem_lucro_percentual := Edit_margem_lucro_percentual.text;
      FController.Model.margem_lucro_atacado := Edit_margem_lucro_atacado.text;
      FController.Model.margem_lucro_atacado_percentual := Edit_margem_lucro_atacado_percentual.text;
      FController.Model.sugestao_venda := Edit_sugestao_venda.text;
      FController.Model.sugestao_venda_atacado := Edit_sugestao_venda_atacado.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.margem_lucro_varejo := Edit_margem_lucro_varejo.text;
      FController.Model.preco_venda_atual_varejo := Edit_preco_venda_atual_varejo.text;
      FController.Model.preco_venda_atual_atacado := Edit_preco_venda_atual_atacado.text;
      FController.Model.margem_lucro_atacado2 := Edit_margem_lucro_atacado2.text;
      FController.Model.vl_pmz := Edit_vl_pmz.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.preco_custo_atacado := Edit_preco_custo_atacado.text;
      FController.Model.data_inicial := Edit_data_inicial.text;
      FController.Model.data_final := Edit_data_final.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.media_venda := Edit_media_venda.text;
      FController.Model.total := Edit_total.text;
      FController.Model.xpmz := Edit_xpmz.text;
      FController.Model.inadimplencia := Edit_inadimplencia.text;
      FController.Model.id_grupo := Edit_id_grupo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfinanceira.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfinanceira.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfinanceira.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfinanceira.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfinanceira.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfinanceira.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfinanceira.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 65;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := preco_compra;  
     Grid.Cells[inttostr(i),0] := valor_frete;  
     Grid.Cells[inttostr(i),0] := frete_percentual;  
     Grid.Cells[inttostr(i),0] := ipi_entrada_percentual;  
     Grid.Cells[inttostr(i),0] := valor_ipi;  
     Grid.Cells[inttostr(i),0] := credito_icms;  
     Grid.Cells[inttostr(i),0] := credito_percentual;  
     Grid.Cells[inttostr(i),0] := custo_financeiro;  
     Grid.Cells[inttostr(i),0] := custo_financeiro_percentual;  
     Grid.Cells[inttostr(i),0] := outras_despesas;  
     Grid.Cells[inttostr(i),0] := outras_despesas_percentual;  
     Grid.Cells[inttostr(i),0] := substituicao;  
     Grid.Cells[inttostr(i),0] := substituicao_percentual;  
     Grid.Cells[inttostr(i),0] := icms_saida;  
     Grid.Cells[inttostr(i),0] := icms_saida_percentual;  
     Grid.Cells[inttostr(i),0] := icms_saida_atacado;  
     Grid.Cells[inttostr(i),0] := icms_saida_atac_percentual;  
     Grid.Cells[inttostr(i),0] := ipi;  
     Grid.Cells[inttostr(i),0] := ipi_percentual;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := cofins_percentual;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := pis_percentual;  
     Grid.Cells[inttostr(i),0] := irpj;  
     Grid.Cells[inttostr(i),0] := irpj_percentual;  
     Grid.Cells[inttostr(i),0] := cont_social;  
     Grid.Cells[inttostr(i),0] := cont_social_percentual;  
     Grid.Cells[inttostr(i),0] := outros_encargos;  
     Grid.Cells[inttostr(i),0] := outros_encargos_percentual;  
     Grid.Cells[inttostr(i),0] := encargos_fedarais;  
     Grid.Cells[inttostr(i),0] := encargos_federais_percentual;  
     Grid.Cells[inttostr(i),0] := simples_nacional;  
     Grid.Cells[inttostr(i),0] := simples_nacional_percentual;  
     Grid.Cells[inttostr(i),0] := custo_operacional;  
     Grid.Cells[inttostr(i),0] := custo_operacional_percentual;  
     Grid.Cells[inttostr(i),0] := comissao_venda;  
     Grid.Cells[inttostr(i),0] := comissao_venda_percentual;  
     Grid.Cells[inttostr(i),0] := comissao_servico;  
     Grid.Cells[inttostr(i),0] := comissao_servico_percentual;  
     Grid.Cells[inttostr(i),0] := margem_lucro;  
     Grid.Cells[inttostr(i),0] := margem_lucro_percentual;  
     Grid.Cells[inttostr(i),0] := margem_lucro_atacado;  
     Grid.Cells[inttostr(i),0] := margem_lucro_atacado_percentual;  
     Grid.Cells[inttostr(i),0] := sugestao_venda;  
     Grid.Cells[inttostr(i),0] := sugestao_venda_atacado;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := margem_lucro_varejo;  
     Grid.Cells[inttostr(i),0] := preco_venda_atual_varejo;  
     Grid.Cells[inttostr(i),0] := preco_venda_atual_atacado;  
     Grid.Cells[inttostr(i),0] := margem_lucro_atacado2;  
     Grid.Cells[inttostr(i),0] := vl_pmz;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := preco_custo_atacado;  
     Grid.Cells[inttostr(i),0] := data_inicial;  
     Grid.Cells[inttostr(i),0] := data_final;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := media_venda;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := xpmz;  
     Grid.Cells[inttostr(i),0] := inadimplencia;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
end;

procedure TFrm_ViewERPfinanceira.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfinanceira.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfinanceira.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.preco_compra := Grid.Cells[2,Grid.row];
    FController.Model.valor_frete := Grid.Cells[3,Grid.row];
    FController.Model.frete_percentual := Grid.Cells[4,Grid.row];
    FController.Model.ipi_entrada_percentual := Grid.Cells[5,Grid.row];
    FController.Model.valor_ipi := Grid.Cells[6,Grid.row];
    FController.Model.credito_icms := Grid.Cells[7,Grid.row];
    FController.Model.credito_percentual := Grid.Cells[8,Grid.row];
    FController.Model.custo_financeiro := Grid.Cells[9,Grid.row];
    FController.Model.custo_financeiro_percentual := Grid.Cells[10,Grid.row];
    FController.Model.outras_despesas := Grid.Cells[11,Grid.row];
    FController.Model.outras_despesas_percentual := Grid.Cells[12,Grid.row];
    FController.Model.substituicao := Grid.Cells[13,Grid.row];
    FController.Model.substituicao_percentual := Grid.Cells[14,Grid.row];
    FController.Model.icms_saida := Grid.Cells[15,Grid.row];
    FController.Model.icms_saida_percentual := Grid.Cells[16,Grid.row];
    FController.Model.icms_saida_atacado := Grid.Cells[17,Grid.row];
    FController.Model.icms_saida_atac_percentual := Grid.Cells[18,Grid.row];
    FController.Model.ipi := Grid.Cells[19,Grid.row];
    FController.Model.ipi_percentual := Grid.Cells[20,Grid.row];
    FController.Model.cofins := Grid.Cells[21,Grid.row];
    FController.Model.cofins_percentual := Grid.Cells[22,Grid.row];
    FController.Model.pis := Grid.Cells[23,Grid.row];
    FController.Model.pis_percentual := Grid.Cells[24,Grid.row];
    FController.Model.irpj := Grid.Cells[25,Grid.row];
    FController.Model.irpj_percentual := Grid.Cells[26,Grid.row];
    FController.Model.cont_social := Grid.Cells[27,Grid.row];
    FController.Model.cont_social_percentual := Grid.Cells[28,Grid.row];
    FController.Model.outros_encargos := Grid.Cells[29,Grid.row];
    FController.Model.outros_encargos_percentual := Grid.Cells[30,Grid.row];
    FController.Model.encargos_fedarais := Grid.Cells[31,Grid.row];
    FController.Model.encargos_federais_percentual := Grid.Cells[32,Grid.row];
    FController.Model.simples_nacional := Grid.Cells[33,Grid.row];
    FController.Model.simples_nacional_percentual := Grid.Cells[34,Grid.row];
    FController.Model.custo_operacional := Grid.Cells[35,Grid.row];
    FController.Model.custo_operacional_percentual := Grid.Cells[36,Grid.row];
    FController.Model.comissao_venda := Grid.Cells[37,Grid.row];
    FController.Model.comissao_venda_percentual := Grid.Cells[38,Grid.row];
    FController.Model.comissao_servico := Grid.Cells[39,Grid.row];
    FController.Model.comissao_servico_percentual := Grid.Cells[40,Grid.row];
    FController.Model.margem_lucro := Grid.Cells[41,Grid.row];
    FController.Model.margem_lucro_percentual := Grid.Cells[42,Grid.row];
    FController.Model.margem_lucro_atacado := Grid.Cells[43,Grid.row];
    FController.Model.margem_lucro_atacado_percentual := Grid.Cells[44,Grid.row];
    FController.Model.sugestao_venda := Grid.Cells[45,Grid.row];
    FController.Model.sugestao_venda_atacado := Grid.Cells[46,Grid.row];
    FController.Model.id_produto := Grid.Cells[47,Grid.row];
    FController.Model.nome_produto := Grid.Cells[48,Grid.row];
    FController.Model.id_compra := Grid.Cells[49,Grid.row];
    FController.Model.margem_lucro_varejo := Grid.Cells[50,Grid.row];
    FController.Model.preco_venda_atual_varejo := Grid.Cells[51,Grid.row];
    FController.Model.preco_venda_atual_atacado := Grid.Cells[52,Grid.row];
    FController.Model.margem_lucro_atacado2 := Grid.Cells[53,Grid.row];
    FController.Model.vl_pmz := Grid.Cells[54,Grid.row];
    FController.Model.preco_custo := Grid.Cells[55,Grid.row];
    FController.Model.preco_custo_atacado := Grid.Cells[56,Grid.row];
    FController.Model.data_inicial := Grid.Cells[57,Grid.row];
    FController.Model.data_final := Grid.Cells[58,Grid.row];
    FController.Model.quantidade := Grid.Cells[59,Grid.row];
    FController.Model.media_venda := Grid.Cells[60,Grid.row];
    FController.Model.total := Grid.Cells[61,Grid.row];
    FController.Model.xpmz := Grid.Cells[62,Grid.row];
    FController.Model.inadimplencia := Grid.Cells[63,Grid.row];
    FController.Model.id_grupo := Grid.Cells[64,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfinanceira.LimparTela;  
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

procedure TFrm_ViewERPfinanceira.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setvalor_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setfrete_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setipi_entrada_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setvalor_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcredito_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcredito_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcusto_financeiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcusto_financeiro_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setoutras_despesas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setoutras_despesas_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsubstituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsubstituicao_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Seticms_saida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Seticms_saida_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Seticms_saida_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Seticms_saida_atac_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setipi_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcofins_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpis_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setirpj(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setirpj_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcont_social(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcont_social_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setoutros_encargos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setoutros_encargos_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setencargos_fedarais(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setencargos_federais_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsimples_nacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsimples_nacional_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcusto_operacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcusto_operacional_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcomissao_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcomissao_venda_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcomissao_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setcomissao_servico_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro_atacado_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsugestao_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setsugestao_venda_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro_varejo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpreco_venda_atual_varejo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpreco_venda_atual_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmargem_lucro_atacado2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setvl_pmz(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setpreco_custo_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setdata_inicial(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setdata_final(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setmedia_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setxpmz(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setinadimplencia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfinanceira.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
