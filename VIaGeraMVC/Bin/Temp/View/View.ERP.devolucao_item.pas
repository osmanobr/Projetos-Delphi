
unit View.ERP.devolucao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.devolucao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdevolucao = class(TForm) 
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
    FController : TControllerERPdevolucao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_devolucao : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Funidade : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fst : WideString;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fitem : Integer;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fvl_ipi : Double;
    Fvl_frete : Double;
    Fbc_icms : Double;
    Freducao : Double;
    Fp_ipi : Double;
    Fcst : WideString;
    Fdesconto : Double;
    Fbc_st : Double;
    Ficmsst : Double;
    Fpis : Double;
    Fcofins : Double;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fvl_outras : Double;
    Fid_referencia : Integer;
    Fid_cfop : Integer;
    Fdevolucao : WideString;
    Fdesconto_porcetagem : Double;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fid_insumo : Integer;
    Fqtd_caixa : Double;
    Funitario_caixa : Double;
    Funidade_tributavel : WideString;
    Fean : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setst(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Seticms_cupom(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setitem(const Value : Integer);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : WideString);
    procedure Settam_grade(const Value : WideString);
    procedure Setvl_ipi(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setbc_icms(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setp_ipi(const Value : Double);
    procedure Setcst(const Value : WideString);
    procedure Setdesconto(const Value : Double);
    procedure Setbc_st(const Value : Double);
    procedure Seticmsst(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Settaxa_ibpt(const Value : Double);
    procedure Settaxa_valor(const Value : Double);
    procedure Setvl_outras(const Value : Double);
    procedure Setid_referencia(const Value : Integer);
    procedure Setid_cfop(const Value : Integer);
    procedure Setdevolucao(const Value : WideString);
    procedure Setdesconto_porcetagem(const Value : Double);
    procedure Settaxa_federal(const Value : Double);
    procedure Settaxa_estadual(const Value : Double);
    procedure Settaxa_municipal(const Value : Double);
    procedure Setvalor_federal(const Value : Double);
    procedure Setvalor_estadual(const Value : Double);
    procedure Setvalor_municipal(const Value : Double);
    procedure Setid_insumo(const Value : Integer);
    procedure Setqtd_caixa(const Value : Double);
    procedure Setunitario_caixa(const Value : Double);
    procedure Setunidade_tributavel(const Value : WideString);
    procedure Setean(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property unidade : WideString         read Funidade    write Funidade;
    property tipo : WideString         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property st : WideString         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property icms_cupom : Double         read Ficms_cupom    write Ficms_cupom;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property item : Integer         read Fitem    write Fitem;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : WideString         read Fcor_grade    write Fcor_grade;
    property tam_grade : WideString         read Ftam_grade    write Ftam_grade;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property bc_icms : Double         read Fbc_icms    write Fbc_icms;
    property reducao : Double         read Freducao    write Freducao;
    property p_ipi : Double         read Fp_ipi    write Fp_ipi;
    property cst : WideString         read Fcst    write Fcst;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property bc_st : Double         read Fbc_st    write Fbc_st;
    property icmsst : Double         read Ficmsst    write Ficmsst;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property taxa_ibpt : Double         read Ftaxa_ibpt    write Ftaxa_ibpt;
    property taxa_valor : Double         read Ftaxa_valor    write Ftaxa_valor;
    property vl_outras : Double         read Fvl_outras    write Fvl_outras;
    property id_referencia : Integer         read Fid_referencia    write Fid_referencia;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property devolucao : WideString         read Fdevolucao    write Fdevolucao;
    property desconto_porcetagem : Double         read Fdesconto_porcetagem    write Fdesconto_porcetagem;
    property taxa_federal : Double         read Ftaxa_federal    write Ftaxa_federal;
    property taxa_estadual : Double         read Ftaxa_estadual    write Ftaxa_estadual;
    property taxa_municipal : Double         read Ftaxa_municipal    write Ftaxa_municipal;
    property valor_federal : Double         read Fvalor_federal    write Fvalor_federal;
    property valor_estadual : Double         read Fvalor_estadual    write Fvalor_estadual;
    property valor_municipal : Double         read Fvalor_municipal    write Fvalor_municipal;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property qtd_caixa : Double         read Fqtd_caixa    write Fqtd_caixa;
    property unitario_caixa : Double         read Funitario_caixa    write Funitario_caixa;
    property unidade_tributavel : WideString         read Funidade_tributavel    write Funidade_tributavel;
    property ean : WideString         read Fean    write Fean;

  end;

var
  Frm_ViewERPdevolucao : TFrm_ViewERPdevolucao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 47; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].p_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bc_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_ibpt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_outras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_porcetagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade_tributavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
    end; 
end; 

procedure TFrm_ViewERPdevolucao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.icms_cupom := Edit_icms_cupom.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.item := Edit_item.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.vl_ipi := Edit_vl_ipi.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.bc_icms := Edit_bc_icms.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.p_ipi := Edit_p_ipi.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.bc_st := Edit_bc_st.text;
      FController.Model.icmsst := Edit_icmsst.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.taxa_ibpt := Edit_taxa_ibpt.text;
      FController.Model.taxa_valor := Edit_taxa_valor.text;
      FController.Model.vl_outras := Edit_vl_outras.text;
      FController.Model.id_referencia := Edit_id_referencia.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.desconto_porcetagem := Edit_desconto_porcetagem.text;
      FController.Model.taxa_federal := Edit_taxa_federal.text;
      FController.Model.taxa_estadual := Edit_taxa_estadual.text;
      FController.Model.taxa_municipal := Edit_taxa_municipal.text;
      FController.Model.valor_federal := Edit_valor_federal.text;
      FController.Model.valor_estadual := Edit_valor_estadual.text;
      FController.Model.valor_municipal := Edit_valor_municipal.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.qtd_caixa := Edit_qtd_caixa.text;
      FController.Model.unitario_caixa := Edit_unitario_caixa.text;
      FController.Model.unidade_tributavel := Edit_unidade_tributavel.text;
      FController.Model.ean := Edit_ean.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdevolucao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdevolucao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdevolucao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdevolucao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdevolucao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdevolucao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdevolucao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 47;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := icms_cupom;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := vl_ipi;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := bc_icms;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := p_ipi;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := bc_st;  
     Grid.Cells[inttostr(i),0] := icmsst;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := taxa_ibpt;  
     Grid.Cells[inttostr(i),0] := taxa_valor;  
     Grid.Cells[inttostr(i),0] := vl_outras;  
     Grid.Cells[inttostr(i),0] := id_referencia;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := desconto_porcetagem;  
     Grid.Cells[inttostr(i),0] := taxa_federal;  
     Grid.Cells[inttostr(i),0] := taxa_estadual;  
     Grid.Cells[inttostr(i),0] := taxa_municipal;  
     Grid.Cells[inttostr(i),0] := valor_federal;  
     Grid.Cells[inttostr(i),0] := valor_estadual;  
     Grid.Cells[inttostr(i),0] := valor_municipal;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := qtd_caixa;  
     Grid.Cells[inttostr(i),0] := unitario_caixa;  
     Grid.Cells[inttostr(i),0] := unidade_tributavel;  
     Grid.Cells[inttostr(i),0] := ean;  
end;

procedure TFrm_ViewERPdevolucao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdevolucao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdevolucao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.unidade := Grid.Cells[5,Grid.row];
    FController.Model.tipo := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[8,Grid.row];
    FController.Model.vl_total := Grid.Cells[9,Grid.row];
    FController.Model.st := Grid.Cells[10,Grid.row];
    FController.Model.icms := Grid.Cells[11,Grid.row];
    FController.Model.icms_cupom := Grid.Cells[12,Grid.row];
    FController.Model.vl_icms := Grid.Cells[13,Grid.row];
    FController.Model.item := Grid.Cells[14,Grid.row];
    FController.Model.id_grade := Grid.Cells[15,Grid.row];
    FController.Model.cor_grade := Grid.Cells[16,Grid.row];
    FController.Model.tam_grade := Grid.Cells[17,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[18,Grid.row];
    FController.Model.vl_frete := Grid.Cells[19,Grid.row];
    FController.Model.bc_icms := Grid.Cells[20,Grid.row];
    FController.Model.reducao := Grid.Cells[21,Grid.row];
    FController.Model.p_ipi := Grid.Cells[22,Grid.row];
    FController.Model.cst := Grid.Cells[23,Grid.row];
    FController.Model.desconto := Grid.Cells[24,Grid.row];
    FController.Model.bc_st := Grid.Cells[25,Grid.row];
    FController.Model.icmsst := Grid.Cells[26,Grid.row];
    FController.Model.pis := Grid.Cells[27,Grid.row];
    FController.Model.cofins := Grid.Cells[28,Grid.row];
    FController.Model.taxa_ibpt := Grid.Cells[29,Grid.row];
    FController.Model.taxa_valor := Grid.Cells[30,Grid.row];
    FController.Model.vl_outras := Grid.Cells[31,Grid.row];
    FController.Model.id_referencia := Grid.Cells[32,Grid.row];
    FController.Model.id_cfop := Grid.Cells[33,Grid.row];
    FController.Model.devolucao := Grid.Cells[34,Grid.row];
    FController.Model.desconto_porcetagem := Grid.Cells[35,Grid.row];
    FController.Model.taxa_federal := Grid.Cells[36,Grid.row];
    FController.Model.taxa_estadual := Grid.Cells[37,Grid.row];
    FController.Model.taxa_municipal := Grid.Cells[38,Grid.row];
    FController.Model.valor_federal := Grid.Cells[39,Grid.row];
    FController.Model.valor_estadual := Grid.Cells[40,Grid.row];
    FController.Model.valor_municipal := Grid.Cells[41,Grid.row];
    FController.Model.id_insumo := Grid.Cells[42,Grid.row];
    FController.Model.qtd_caixa := Grid.Cells[43,Grid.row];
    FController.Model.unitario_caixa := Grid.Cells[44,Grid.row];
    FController.Model.unidade_tributavel := Grid.Cells[45,Grid.row];
    FController.Model.ean := Grid.Cells[46,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdevolucao.LimparTela;  
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

procedure TFrm_ViewERPdevolucao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Seticms_cupom(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setcor_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settam_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setbc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setp_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setbc_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Seticmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settaxa_ibpt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settaxa_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_referencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setdevolucao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setdesconto_porcetagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settaxa_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settaxa_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Settaxa_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvalor_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvalor_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setvalor_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setqtd_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setunitario_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setunidade_tributavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucao.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
