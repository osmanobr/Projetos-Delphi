
unit View.ERP.os_equipamentos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os_equipamentos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPosequipamentos = class(TForm) 
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
    FController : TControllerERPosequipamentos; 
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fnro_garantia : indefinido;
    Fdata_garantia : TDateTime;
    Fid_grupo : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_fornecedor : Integer;
    Fid_vendedor : Integer;
    Fst : indefinido;
    Ficms : Double;
    Ficms_cupom : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fdiferido : indefinido;
    Fcancelada : indefinido;
    Fclick : Boolean;
    Freservado : indefinido;
    Fexpedicao : indefinido;
    Ftaxa_ibpt : Double;
    Ftaxa_valor : Double;
    Fcst : indefinido;
    Fvl_icmsst : Double;
    Fvlbc_icms : Double;
    Fbase_substituicao : Double;
    Fpis : Double;
    Fcofins : Double;
    Festoque : Boolean;
    Festoque_saida : indefinido;
    Ftaxa_federal : Double;
    Ftaxa_estadual : Double;
    Ftaxa_municipal : Double;
    Fvalor_federal : Double;
    Fvalor_estadual : Double;
    Fvalor_municipal : Double;
    Fcfop : Integer;
    Fcfop_externo : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setunidade(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setnro_garantia(const Value : indefinido);
    procedure Setdata_garantia(const Value : TDateTime);
    procedure Setid_grupo(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setst(const Value : indefinido);
    procedure Seticms(const Value : Double);
    procedure Seticms_cupom(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_ipi(const Value : Double);
    procedure Setdiferido(const Value : indefinido);
    procedure Setcancelada(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setreservado(const Value : indefinido);
    procedure Setexpedicao(const Value : indefinido);
    procedure Settaxa_ibpt(const Value : Double);
    procedure Settaxa_valor(const Value : Double);
    procedure Setcst(const Value : indefinido);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setvlbc_icms(const Value : Double);
    procedure Setbase_substituicao(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setestoque(const Value : Boolean);
    procedure Setestoque_saida(const Value : indefinido);
    procedure Settaxa_federal(const Value : Double);
    procedure Settaxa_estadual(const Value : Double);
    procedure Settaxa_municipal(const Value : Double);
    procedure Setvalor_federal(const Value : Double);
    procedure Setvalor_estadual(const Value : Double);
    procedure Setvalor_municipal(const Value : Double);
    procedure Setcfop(const Value : Integer);
    procedure Setcfop_externo(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property data : TDateTime         read Fdata    write Fdata;
    property unidade : indefinido         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property nro_garantia : indefinido         read Fnro_garantia    write Fnro_garantia;
    property data_garantia : TDateTime         read Fdata_garantia    write Fdata_garantia;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property st : indefinido         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property icms_cupom : Double         read Ficms_cupom    write Ficms_cupom;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property diferido : indefinido         read Fdiferido    write Fdiferido;
    property cancelada : indefinido         read Fcancelada    write Fcancelada;
    property click : Boolean         read Fclick    write Fclick;
    property reservado : indefinido         read Freservado    write Freservado;
    property expedicao : indefinido         read Fexpedicao    write Fexpedicao;
    property taxa_ibpt : Double         read Ftaxa_ibpt    write Ftaxa_ibpt;
    property taxa_valor : Double         read Ftaxa_valor    write Ftaxa_valor;
    property cst : indefinido         read Fcst    write Fcst;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property vlbc_icms : Double         read Fvlbc_icms    write Fvlbc_icms;
    property base_substituicao : Double         read Fbase_substituicao    write Fbase_substituicao;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property estoque : Boolean         read Festoque    write Festoque;
    property estoque_saida : indefinido         read Festoque_saida    write Festoque_saida;
    property taxa_federal : Double         read Ftaxa_federal    write Ftaxa_federal;
    property taxa_estadual : Double         read Ftaxa_estadual    write Ftaxa_estadual;
    property taxa_municipal : Double         read Ftaxa_municipal    write Ftaxa_municipal;
    property valor_federal : Double         read Fvalor_federal    write Fvalor_federal;
    property valor_estadual : Double         read Fvalor_estadual    write Fvalor_estadual;
    property valor_municipal : Double         read Fvalor_municipal    write Fvalor_municipal;
    property cfop : Integer         read Fcfop    write Fcfop;
    property cfop_externo : Integer         read Fcfop_externo    write Fcfop_externo;

  end;

var
  Frm_ViewERPosequipamentos : TFrm_ViewERPosequipamentos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 46; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reservado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_ibpt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vlbc_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_federal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_externo); 
    end; 
end; 

procedure TFrm_ViewERPosequipamentos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.data := Edit_data.text;
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
      FController.Model.reservado := Edit_reservado.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.taxa_ibpt := Edit_taxa_ibpt.text;
      FController.Model.taxa_valor := Edit_taxa_valor.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.vlbc_icms := Edit_vlbc_icms.text;
      FController.Model.base_substituicao := Edit_base_substituicao.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.estoque_saida := Edit_estoque_saida.text;
      FController.Model.taxa_federal := Edit_taxa_federal.text;
      FController.Model.taxa_estadual := Edit_taxa_estadual.text;
      FController.Model.taxa_municipal := Edit_taxa_municipal.text;
      FController.Model.valor_federal := Edit_valor_federal.text;
      FController.Model.valor_estadual := Edit_valor_estadual.text;
      FController.Model.valor_municipal := Edit_valor_municipal.text;
      FController.Model.cfop := Edit_cfop.text;
      FController.Model.cfop_externo := Edit_cfop_externo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPosequipamentos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPosequipamentos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPosequipamentos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPosequipamentos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPosequipamentos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPosequipamentos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPosequipamentos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 46;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := data;  
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
     Grid.Cells[inttostr(i),0] := reservado;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := taxa_ibpt;  
     Grid.Cells[inttostr(i),0] := taxa_valor;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := vlbc_icms;  
     Grid.Cells[inttostr(i),0] := base_substituicao;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := estoque_saida;  
     Grid.Cells[inttostr(i),0] := taxa_federal;  
     Grid.Cells[inttostr(i),0] := taxa_estadual;  
     Grid.Cells[inttostr(i),0] := taxa_municipal;  
     Grid.Cells[inttostr(i),0] := valor_federal;  
     Grid.Cells[inttostr(i),0] := valor_estadual;  
     Grid.Cells[inttostr(i),0] := valor_municipal;  
     Grid.Cells[inttostr(i),0] := cfop;  
     Grid.Cells[inttostr(i),0] := cfop_externo;  
end;

procedure TFrm_ViewERPosequipamentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPosequipamentos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPosequipamentos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_os := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.data := Grid.Cells[5,Grid.row];
    FController.Model.unidade := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[8,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[9,Grid.row];
    FController.Model.vl_total := Grid.Cells[10,Grid.row];
    FController.Model.nro_garantia := Grid.Cells[11,Grid.row];
    FController.Model.data_garantia := Grid.Cells[12,Grid.row];
    FController.Model.id_grupo := Grid.Cells[13,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[14,Grid.row];
    FController.Model.id_cliente := Grid.Cells[15,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[16,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[17,Grid.row];
    FController.Model.st := Grid.Cells[18,Grid.row];
    FController.Model.icms := Grid.Cells[19,Grid.row];
    FController.Model.icms_cupom := Grid.Cells[20,Grid.row];
    FController.Model.vl_icms := Grid.Cells[21,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[22,Grid.row];
    FController.Model.diferido := Grid.Cells[23,Grid.row];
    FController.Model.cancelada := Grid.Cells[24,Grid.row];
    FController.Model.click := Grid.Cells[25,Grid.row];
    FController.Model.reservado := Grid.Cells[26,Grid.row];
    FController.Model.expedicao := Grid.Cells[27,Grid.row];
    FController.Model.taxa_ibpt := Grid.Cells[28,Grid.row];
    FController.Model.taxa_valor := Grid.Cells[29,Grid.row];
    FController.Model.cst := Grid.Cells[30,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[31,Grid.row];
    FController.Model.vlbc_icms := Grid.Cells[32,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[33,Grid.row];
    FController.Model.pis := Grid.Cells[34,Grid.row];
    FController.Model.cofins := Grid.Cells[35,Grid.row];
    FController.Model.estoque := Grid.Cells[36,Grid.row];
    FController.Model.estoque_saida := Grid.Cells[37,Grid.row];
    FController.Model.taxa_federal := Grid.Cells[38,Grid.row];
    FController.Model.taxa_estadual := Grid.Cells[39,Grid.row];
    FController.Model.taxa_municipal := Grid.Cells[40,Grid.row];
    FController.Model.valor_federal := Grid.Cells[41,Grid.row];
    FController.Model.valor_estadual := Grid.Cells[42,Grid.row];
    FController.Model.valor_municipal := Grid.Cells[43,Grid.row];
    FController.Model.cfop := Grid.Cells[44,Grid.row];
    FController.Model.cfop_externo := Grid.Cells[45,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPosequipamentos.LimparTela;  
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

procedure TFrm_ViewERPosequipamentos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setnro_garantia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setdata_garantia(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Seticms_cupom(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setdiferido(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setcancelada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setreservado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setexpedicao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Settaxa_ibpt(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Settaxa_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setcst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvlbc_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setestoque(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setestoque_saida(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Settaxa_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Settaxa_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Settaxa_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvalor_federal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvalor_estadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setvalor_municipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setcfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosequipamentos.Setcfop_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
