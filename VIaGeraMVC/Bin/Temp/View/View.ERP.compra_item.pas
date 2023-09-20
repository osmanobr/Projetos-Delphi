
unit View.ERP.compra_grade;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.compra_grade, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcompragrade = class(TForm) 
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
    FController : TControllerERPcompragrade; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_compra : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Ffracionado : WideString;
    Fitens : Double;
    Flote : WideString;
    Funitario : Double;
    Fdesconto_percentual : Double;
    Fdesconto_valor : Double;
    Ftotal : Double;
    Ficms_percentual : Double;
    Ficms_valor : Double;
    Fipi_percentual : Double;
    Fipi_valor : Double;
    Fid_grade : Integer;
    Fvl_substituicao : Double;
    Fpreco_venda : Double;
    Fbase_icms : Double;
    Freducao : Double;
    Fcfop : WideString;
    Fcst : WideString;
    Fbase_st : Double;
    Fnt_codigo_produto : WideString;
    Fnt_codigo_fabricante : WideString;
    Fnt_unidade : WideString;
    Fnt_ncm : WideString;
    Fnt_vl_frete : Double;
    Fnt_id_fornecedor : Integer;
    Fnt_st : WideString;
    Fnt_cst_cofins : WideString;
    Fnt_vl_cofins : Double;
    Fnt_cst_pis : WideString;
    Fnt_vl_pis : Double;
    Fnt_encontrou : WideString;
    Fitem : Integer;
    Fproduto_insumo : WideString;
    Fnt_cst : WideString;
    Fnt_cfop : WideString;
    Fgrupo : Integer;
    Fsaida_st : WideString;
    Fsaida_icms : Double;
    Funitario_anterior : Double;
    Fcst_pis : WideString;
    Fcst_cofins : WideString;
    Fpicmsst : Double;
    Fcod_associacao : Integer;
    Fcod_fabricante_associacao : WideString;
    Foutras_despesas : Double;
    Fdevolucao : WideString;
    Ftipo : WideString;
    Fformacao_preco : Boolean;
    Fqtd_devol : Double;
    Fqtd_embalagem_itens : Double;
    Fqtd_metro_cubico : Double;
    Fnome_produto_nota : WideString;
    Fcst_sped : WideString;
    Fmargem_lucro_percent : Double;
    Fmargem_lucro : Double;
    Fvl_unitario_fracionado : Double;
    Fean_produto : WideString;
    Fmargem_bruta_percentual : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setfracionado(const Value : WideString);
    procedure Setitens(const Value : Double);
    procedure Setlote(const Value : WideString);
    procedure Setunitario(const Value : Double);
    procedure Setdesconto_percentual(const Value : Double);
    procedure Setdesconto_valor(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Seticms_percentual(const Value : Double);
    procedure Seticms_valor(const Value : Double);
    procedure Setipi_percentual(const Value : Double);
    procedure Setipi_valor(const Value : Double);
    procedure Setid_grade(const Value : Integer);
    procedure Setvl_substituicao(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setcfop(const Value : WideString);
    procedure Setcst(const Value : WideString);
    procedure Setbase_st(const Value : Double);
    procedure Setnt_codigo_produto(const Value : WideString);
    procedure Setnt_codigo_fabricante(const Value : WideString);
    procedure Setnt_unidade(const Value : WideString);
    procedure Setnt_ncm(const Value : WideString);
    procedure Setnt_vl_frete(const Value : Double);
    procedure Setnt_id_fornecedor(const Value : Integer);
    procedure Setnt_st(const Value : WideString);
    procedure Setnt_cst_cofins(const Value : WideString);
    procedure Setnt_vl_cofins(const Value : Double);
    procedure Setnt_cst_pis(const Value : WideString);
    procedure Setnt_vl_pis(const Value : Double);
    procedure Setnt_encontrou(const Value : WideString);
    procedure Setitem(const Value : Integer);
    procedure Setproduto_insumo(const Value : WideString);
    procedure Setnt_cst(const Value : WideString);
    procedure Setnt_cfop(const Value : WideString);
    procedure Setgrupo(const Value : Integer);
    procedure Setsaida_st(const Value : WideString);
    procedure Setsaida_icms(const Value : Double);
    procedure Setunitario_anterior(const Value : Double);
    procedure Setcst_pis(const Value : WideString);
    procedure Setcst_cofins(const Value : WideString);
    procedure Setpicmsst(const Value : Double);
    procedure Setcod_associacao(const Value : Integer);
    procedure Setcod_fabricante_associacao(const Value : WideString);
    procedure Setoutras_despesas(const Value : Double);
    procedure Setdevolucao(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setformacao_preco(const Value : Boolean);
    procedure Setqtd_devol(const Value : Double);
    procedure Setqtd_embalagem_itens(const Value : Double);
    procedure Setqtd_metro_cubico(const Value : Double);
    procedure Setnome_produto_nota(const Value : WideString);
    procedure Setcst_sped(const Value : WideString);
    procedure Setmargem_lucro_percent(const Value : Double);
    procedure Setmargem_lucro(const Value : Double);
    procedure Setvl_unitario_fracionado(const Value : Double);
    procedure Setean_produto(const Value : WideString);
    procedure Setmargem_bruta_percentual(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property fracionado : WideString         read Ffracionado    write Ffracionado;
    property itens : Double         read Fitens    write Fitens;
    property lote : WideString         read Flote    write Flote;
    property unitario : Double         read Funitario    write Funitario;
    property desconto_percentual : Double         read Fdesconto_percentual    write Fdesconto_percentual;
    property desconto_valor : Double         read Fdesconto_valor    write Fdesconto_valor;
    property total : Double         read Ftotal    write Ftotal;
    property icms_percentual : Double         read Ficms_percentual    write Ficms_percentual;
    property icms_valor : Double         read Ficms_valor    write Ficms_valor;
    property ipi_percentual : Double         read Fipi_percentual    write Fipi_percentual;
    property ipi_valor : Double         read Fipi_valor    write Fipi_valor;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property vl_substituicao : Double         read Fvl_substituicao    write Fvl_substituicao;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property reducao : Double         read Freducao    write Freducao;
    property cfop : WideString         read Fcfop    write Fcfop;
    property cst : WideString         read Fcst    write Fcst;
    property base_st : Double         read Fbase_st    write Fbase_st;
    property nt_codigo_produto : WideString         read Fnt_codigo_produto    write Fnt_codigo_produto;
    property nt_codigo_fabricante : WideString         read Fnt_codigo_fabricante    write Fnt_codigo_fabricante;
    property nt_unidade : WideString         read Fnt_unidade    write Fnt_unidade;
    property nt_ncm : WideString         read Fnt_ncm    write Fnt_ncm;
    property nt_vl_frete : Double         read Fnt_vl_frete    write Fnt_vl_frete;
    property nt_id_fornecedor : Integer         read Fnt_id_fornecedor    write Fnt_id_fornecedor;
    property nt_st : WideString         read Fnt_st    write Fnt_st;
    property nt_cst_cofins : WideString         read Fnt_cst_cofins    write Fnt_cst_cofins;
    property nt_vl_cofins : Double         read Fnt_vl_cofins    write Fnt_vl_cofins;
    property nt_cst_pis : WideString         read Fnt_cst_pis    write Fnt_cst_pis;
    property nt_vl_pis : Double         read Fnt_vl_pis    write Fnt_vl_pis;
    property nt_encontrou : WideString         read Fnt_encontrou    write Fnt_encontrou;
    property item : Integer         read Fitem    write Fitem;
    property produto_insumo : WideString         read Fproduto_insumo    write Fproduto_insumo;
    property nt_cst : WideString         read Fnt_cst    write Fnt_cst;
    property nt_cfop : WideString         read Fnt_cfop    write Fnt_cfop;
    property grupo : Integer         read Fgrupo    write Fgrupo;
    property saida_st : WideString         read Fsaida_st    write Fsaida_st;
    property saida_icms : Double         read Fsaida_icms    write Fsaida_icms;
    property unitario_anterior : Double         read Funitario_anterior    write Funitario_anterior;
    property cst_pis : WideString         read Fcst_pis    write Fcst_pis;
    property cst_cofins : WideString         read Fcst_cofins    write Fcst_cofins;
    property picmsst : Double         read Fpicmsst    write Fpicmsst;
    property cod_associacao : Integer         read Fcod_associacao    write Fcod_associacao;
    property cod_fabricante_associacao : WideString         read Fcod_fabricante_associacao    write Fcod_fabricante_associacao;
    property outras_despesas : Double         read Foutras_despesas    write Foutras_despesas;
    property devolucao : WideString         read Fdevolucao    write Fdevolucao;
    property tipo : WideString         read Ftipo    write Ftipo;
    property formacao_preco : Boolean         read Fformacao_preco    write Fformacao_preco;
    property qtd_devol : Double         read Fqtd_devol    write Fqtd_devol;
    property qtd_embalagem_itens : Double         read Fqtd_embalagem_itens    write Fqtd_embalagem_itens;
    property qtd_metro_cubico : Double         read Fqtd_metro_cubico    write Fqtd_metro_cubico;
    property nome_produto_nota : WideString         read Fnome_produto_nota    write Fnome_produto_nota;
    property cst_sped : WideString         read Fcst_sped    write Fcst_sped;
    property margem_lucro_percent : Double         read Fmargem_lucro_percent    write Fmargem_lucro_percent;
    property margem_lucro : Double         read Fmargem_lucro    write Fmargem_lucro;
    property vl_unitario_fracionado : Double         read Fvl_unitario_fracionado    write Fvl_unitario_fracionado;
    property ean_produto : WideString         read Fean_produto    write Fean_produto;
    property margem_bruta_percentual : Double         read Fmargem_bruta_percentual    write Fmargem_bruta_percentual;

  end;

var
  Frm_ViewERPcompragrade : TFrm_ViewERPcompragrade; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 64; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fracionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_codigo_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_encontrou); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nt_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].saida_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].saida_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario_anterior); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].picmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_associacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_fabricante_associacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outras_despesas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].formacao_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_devol); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_embalagem_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_metro_cubico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_sped); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_percent); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario_fracionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_bruta_percentual); 
    end; 
end; 

procedure TFrm_ViewERPcompragrade.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.fracionado := Edit_fracionado.text;
      FController.Model.itens := Edit_itens.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.desconto_percentual := Edit_desconto_percentual.text;
      FController.Model.desconto_valor := Edit_desconto_valor.text;
      FController.Model.total := Edit_total.text;
      FController.Model.icms_percentual := Edit_icms_percentual.text;
      FController.Model.icms_valor := Edit_icms_valor.text;
      FController.Model.ipi_percentual := Edit_ipi_percentual.text;
      FController.Model.ipi_valor := Edit_ipi_valor.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.vl_substituicao := Edit_vl_substituicao.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.cfop := Edit_cfop.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.base_st := Edit_base_st.text;
      FController.Model.nt_codigo_produto := Edit_nt_codigo_produto.text;
      FController.Model.nt_codigo_fabricante := Edit_nt_codigo_fabricante.text;
      FController.Model.nt_unidade := Edit_nt_unidade.text;
      FController.Model.nt_ncm := Edit_nt_ncm.text;
      FController.Model.nt_vl_frete := Edit_nt_vl_frete.text;
      FController.Model.nt_id_fornecedor := Edit_nt_id_fornecedor.text;
      FController.Model.nt_st := Edit_nt_st.text;
      FController.Model.nt_cst_cofins := Edit_nt_cst_cofins.text;
      FController.Model.nt_vl_cofins := Edit_nt_vl_cofins.text;
      FController.Model.nt_cst_pis := Edit_nt_cst_pis.text;
      FController.Model.nt_vl_pis := Edit_nt_vl_pis.text;
      FController.Model.nt_encontrou := Edit_nt_encontrou.text;
      FController.Model.item := Edit_item.text;
      FController.Model.produto_insumo := Edit_produto_insumo.text;
      FController.Model.nt_cst := Edit_nt_cst.text;
      FController.Model.nt_cfop := Edit_nt_cfop.text;
      FController.Model.grupo := Edit_grupo.text;
      FController.Model.saida_st := Edit_saida_st.text;
      FController.Model.saida_icms := Edit_saida_icms.text;
      FController.Model.unitario_anterior := Edit_unitario_anterior.text;
      FController.Model.cst_pis := Edit_cst_pis.text;
      FController.Model.cst_cofins := Edit_cst_cofins.text;
      FController.Model.picmsst := Edit_picmsst.text;
      FController.Model.cod_associacao := Edit_cod_associacao.text;
      FController.Model.cod_fabricante_associacao := Edit_cod_fabricante_associacao.text;
      FController.Model.outras_despesas := Edit_outras_despesas.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.formacao_preco := Edit_formacao_preco.text;
      FController.Model.qtd_devol := Edit_qtd_devol.text;
      FController.Model.qtd_embalagem_itens := Edit_qtd_embalagem_itens.text;
      FController.Model.qtd_metro_cubico := Edit_qtd_metro_cubico.text;
      FController.Model.nome_produto_nota := Edit_nome_produto_nota.text;
      FController.Model.cst_sped := Edit_cst_sped.text;
      FController.Model.margem_lucro_percent := Edit_margem_lucro_percent.text;
      FController.Model.margem_lucro := Edit_margem_lucro.text;
      FController.Model.vl_unitario_fracionado := Edit_vl_unitario_fracionado.text;
      FController.Model.ean_produto := Edit_ean_produto.text;
      FController.Model.margem_bruta_percentual := Edit_margem_bruta_percentual.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcompragrade.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcompragrade.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcompragrade.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcompragrade.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcompragrade.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcompragrade.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcompragrade.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 64;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := fracionado;  
     Grid.Cells[inttostr(i),0] := itens;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := desconto_percentual;  
     Grid.Cells[inttostr(i),0] := desconto_valor;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := icms_percentual;  
     Grid.Cells[inttostr(i),0] := icms_valor;  
     Grid.Cells[inttostr(i),0] := ipi_percentual;  
     Grid.Cells[inttostr(i),0] := ipi_valor;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := vl_substituicao;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := cfop;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := base_st;  
     Grid.Cells[inttostr(i),0] := nt_codigo_produto;  
     Grid.Cells[inttostr(i),0] := nt_codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := nt_unidade;  
     Grid.Cells[inttostr(i),0] := nt_ncm;  
     Grid.Cells[inttostr(i),0] := nt_vl_frete;  
     Grid.Cells[inttostr(i),0] := nt_id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nt_st;  
     Grid.Cells[inttostr(i),0] := nt_cst_cofins;  
     Grid.Cells[inttostr(i),0] := nt_vl_cofins;  
     Grid.Cells[inttostr(i),0] := nt_cst_pis;  
     Grid.Cells[inttostr(i),0] := nt_vl_pis;  
     Grid.Cells[inttostr(i),0] := nt_encontrou;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := produto_insumo;  
     Grid.Cells[inttostr(i),0] := nt_cst;  
     Grid.Cells[inttostr(i),0] := nt_cfop;  
     Grid.Cells[inttostr(i),0] := grupo;  
     Grid.Cells[inttostr(i),0] := saida_st;  
     Grid.Cells[inttostr(i),0] := saida_icms;  
     Grid.Cells[inttostr(i),0] := unitario_anterior;  
     Grid.Cells[inttostr(i),0] := cst_pis;  
     Grid.Cells[inttostr(i),0] := cst_cofins;  
     Grid.Cells[inttostr(i),0] := picmsst;  
     Grid.Cells[inttostr(i),0] := cod_associacao;  
     Grid.Cells[inttostr(i),0] := cod_fabricante_associacao;  
     Grid.Cells[inttostr(i),0] := outras_despesas;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := formacao_preco;  
     Grid.Cells[inttostr(i),0] := qtd_devol;  
     Grid.Cells[inttostr(i),0] := qtd_embalagem_itens;  
     Grid.Cells[inttostr(i),0] := qtd_metro_cubico;  
     Grid.Cells[inttostr(i),0] := nome_produto_nota;  
     Grid.Cells[inttostr(i),0] := cst_sped;  
     Grid.Cells[inttostr(i),0] := margem_lucro_percent;  
     Grid.Cells[inttostr(i),0] := margem_lucro;  
     Grid.Cells[inttostr(i),0] := vl_unitario_fracionado;  
     Grid.Cells[inttostr(i),0] := ean_produto;  
     Grid.Cells[inttostr(i),0] := margem_bruta_percentual;  
end;

procedure TFrm_ViewERPcompragrade.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcompragrade.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcompragrade.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_compra := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.fracionado := Grid.Cells[6,Grid.row];
    FController.Model.itens := Grid.Cells[7,Grid.row];
    FController.Model.lote := Grid.Cells[8,Grid.row];
    FController.Model.unitario := Grid.Cells[9,Grid.row];
    FController.Model.desconto_percentual := Grid.Cells[10,Grid.row];
    FController.Model.desconto_valor := Grid.Cells[11,Grid.row];
    FController.Model.total := Grid.Cells[12,Grid.row];
    FController.Model.icms_percentual := Grid.Cells[13,Grid.row];
    FController.Model.icms_valor := Grid.Cells[14,Grid.row];
    FController.Model.ipi_percentual := Grid.Cells[15,Grid.row];
    FController.Model.ipi_valor := Grid.Cells[16,Grid.row];
    FController.Model.id_grade := Grid.Cells[17,Grid.row];
    FController.Model.vl_substituicao := Grid.Cells[18,Grid.row];
    FController.Model.preco_venda := Grid.Cells[19,Grid.row];
    FController.Model.base_icms := Grid.Cells[20,Grid.row];
    FController.Model.reducao := Grid.Cells[21,Grid.row];
    FController.Model.cfop := Grid.Cells[22,Grid.row];
    FController.Model.cst := Grid.Cells[23,Grid.row];
    FController.Model.base_st := Grid.Cells[24,Grid.row];
    FController.Model.nt_codigo_produto := Grid.Cells[25,Grid.row];
    FController.Model.nt_codigo_fabricante := Grid.Cells[26,Grid.row];
    FController.Model.nt_unidade := Grid.Cells[27,Grid.row];
    FController.Model.nt_ncm := Grid.Cells[28,Grid.row];
    FController.Model.nt_vl_frete := Grid.Cells[29,Grid.row];
    FController.Model.nt_id_fornecedor := Grid.Cells[30,Grid.row];
    FController.Model.nt_st := Grid.Cells[31,Grid.row];
    FController.Model.nt_cst_cofins := Grid.Cells[32,Grid.row];
    FController.Model.nt_vl_cofins := Grid.Cells[33,Grid.row];
    FController.Model.nt_cst_pis := Grid.Cells[34,Grid.row];
    FController.Model.nt_vl_pis := Grid.Cells[35,Grid.row];
    FController.Model.nt_encontrou := Grid.Cells[36,Grid.row];
    FController.Model.item := Grid.Cells[37,Grid.row];
    FController.Model.produto_insumo := Grid.Cells[38,Grid.row];
    FController.Model.nt_cst := Grid.Cells[39,Grid.row];
    FController.Model.nt_cfop := Grid.Cells[40,Grid.row];
    FController.Model.grupo := Grid.Cells[41,Grid.row];
    FController.Model.saida_st := Grid.Cells[42,Grid.row];
    FController.Model.saida_icms := Grid.Cells[43,Grid.row];
    FController.Model.unitario_anterior := Grid.Cells[44,Grid.row];
    FController.Model.cst_pis := Grid.Cells[45,Grid.row];
    FController.Model.cst_cofins := Grid.Cells[46,Grid.row];
    FController.Model.picmsst := Grid.Cells[47,Grid.row];
    FController.Model.cod_associacao := Grid.Cells[48,Grid.row];
    FController.Model.cod_fabricante_associacao := Grid.Cells[49,Grid.row];
    FController.Model.outras_despesas := Grid.Cells[50,Grid.row];
    FController.Model.devolucao := Grid.Cells[51,Grid.row];
    FController.Model.tipo := Grid.Cells[52,Grid.row];
    FController.Model.formacao_preco := Grid.Cells[53,Grid.row];
    FController.Model.qtd_devol := Grid.Cells[54,Grid.row];
    FController.Model.qtd_embalagem_itens := Grid.Cells[55,Grid.row];
    FController.Model.qtd_metro_cubico := Grid.Cells[56,Grid.row];
    FController.Model.nome_produto_nota := Grid.Cells[57,Grid.row];
    FController.Model.cst_sped := Grid.Cells[58,Grid.row];
    FController.Model.margem_lucro_percent := Grid.Cells[59,Grid.row];
    FController.Model.margem_lucro := Grid.Cells[60,Grid.row];
    FController.Model.vl_unitario_fracionado := Grid.Cells[61,Grid.row];
    FController.Model.ean_produto := Grid.Cells[62,Grid.row];
    FController.Model.margem_bruta_percentual := Grid.Cells[63,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcompragrade.LimparTela;  
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

procedure TFrm_ViewERPcompragrade.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setfracionado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setitens(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setlote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setdesconto_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setdesconto_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Seticms_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Seticms_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setipi_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setipi_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setvl_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcfop(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setbase_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_codigo_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_codigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_unidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_ncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_vl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_id_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_st(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_cst_cofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_vl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_cst_pis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_vl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_encontrou(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setproduto_insumo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_cst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnt_cfop(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setgrupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setsaida_st(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setsaida_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setunitario_anterior(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcst_pis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcst_cofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setpicmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcod_associacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcod_fabricante_associacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setoutras_despesas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setdevolucao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setformacao_preco(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setqtd_devol(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setqtd_embalagem_itens(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setqtd_metro_cubico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setnome_produto_nota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setcst_sped(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setmargem_lucro_percent(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setmargem_lucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setvl_unitario_fracionado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setean_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompragrade.Setmargem_bruta_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
