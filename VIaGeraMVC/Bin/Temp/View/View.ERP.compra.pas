
unit View.ERP.composicao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.composicao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomposicao = class(TForm) 
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
    FController : TControllerERPcomposicao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fnf : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fvl_produtos : Double;
    Fvl_desconto : Double;
    Fvl_frete : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fvl_acrescimo : Double;
    Fvl_total : Double;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fjuros : WideString;
    Fcomentrada : WideString;
    Fid_conta : WideString;
    Fvl_pago : Double;
    Fid_caixa : Integer;
    Fgerado : WideString;
    Fduplicatacheque : WideString;
    Fparcelas : Integer;
    Fvl_juros : Double;
    Fintervalo : Integer;
    Fdata_entrada : TDateTime;
    Fid_forma : Integer;
    Fvl_substituicao : Double;
    Fserie : WideString;
    Fproduto_insumo : WideString;
    Festoque : WideString;
    Fid_cfop : Integer;
    Fbase_icms : Double;
    Fbase_st : Double;
    Fnfe_chave : WideString;
    Fobs_fiscal : indefinido;
    Fobs_nota : indefinido;
    Ffatura : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Fgnre_porcentagem : Double;
    Ffrete_porcentagem : Double;
    Fpeso_desossa : Double;
    Fbusca : WideString;
    Fcod_di : Integer;
    Fnumero_di : WideString;
    Fnum_acdraw : WideString;
    Fxml : indefinido;
    Fcliente_estoque_terceiro : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setnf(const Value : WideString);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setvl_produtos(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_ipi(const Value : Double);
    procedure Setvl_acrescimo(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setid_usuario(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setjuros(const Value : WideString);
    procedure Setcomentrada(const Value : WideString);
    procedure Setid_conta(const Value : WideString);
    procedure Setvl_pago(const Value : Double);
    procedure Setid_caixa(const Value : Integer);
    procedure Setgerado(const Value : WideString);
    procedure Setduplicatacheque(const Value : WideString);
    procedure Setparcelas(const Value : Integer);
    procedure Setvl_juros(const Value : Double);
    procedure Setintervalo(const Value : Integer);
    procedure Setdata_entrada(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setvl_substituicao(const Value : Double);
    procedure Setserie(const Value : WideString);
    procedure Setproduto_insumo(const Value : WideString);
    procedure Setestoque(const Value : WideString);
    procedure Setid_cfop(const Value : Integer);
    procedure Setbase_icms(const Value : Double);
    procedure Setbase_st(const Value : Double);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setobs_fiscal(const Value : indefinido);
    procedure Setobs_nota(const Value : indefinido);
    procedure Setfatura(const Value : WideString);
    procedure Setvl_pis(const Value : Double);
    procedure Setvl_cofins(const Value : Double);
    procedure Setgnre_porcentagem(const Value : Double);
    procedure Setfrete_porcentagem(const Value : Double);
    procedure Setpeso_desossa(const Value : Double);
    procedure Setbusca(const Value : WideString);
    procedure Setcod_di(const Value : Integer);
    procedure Setnumero_di(const Value : WideString);
    procedure Setnum_acdraw(const Value : WideString);
    procedure Setxml(const Value : indefinido);
    procedure Setcliente_estoque_terceiro(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property nf : WideString         read Fnf    write Fnf;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property vl_produtos : Double         read Fvl_produtos    write Fvl_produtos;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_ipi : Double         read Fvl_ipi    write Fvl_ipi;
    property vl_acrescimo : Double         read Fvl_acrescimo    write Fvl_acrescimo;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property click : Boolean         read Fclick    write Fclick;
    property juros : WideString         read Fjuros    write Fjuros;
    property comentrada : WideString         read Fcomentrada    write Fcomentrada;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property gerado : WideString         read Fgerado    write Fgerado;
    property duplicatacheque : WideString         read Fduplicatacheque    write Fduplicatacheque;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property data_entrada : TDateTime         read Fdata_entrada    write Fdata_entrada;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property vl_substituicao : Double         read Fvl_substituicao    write Fvl_substituicao;
    property serie : WideString         read Fserie    write Fserie;
    property produto_insumo : WideString         read Fproduto_insumo    write Fproduto_insumo;
    property estoque : WideString         read Festoque    write Festoque;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property base_st : Double         read Fbase_st    write Fbase_st;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property obs_fiscal : indefinido         read Fobs_fiscal    write Fobs_fiscal;
    property obs_nota : indefinido         read Fobs_nota    write Fobs_nota;
    property fatura : WideString         read Ffatura    write Ffatura;
    property vl_pis : Double         read Fvl_pis    write Fvl_pis;
    property vl_cofins : Double         read Fvl_cofins    write Fvl_cofins;
    property gnre_porcentagem : Double         read Fgnre_porcentagem    write Fgnre_porcentagem;
    property frete_porcentagem : Double         read Ffrete_porcentagem    write Ffrete_porcentagem;
    property peso_desossa : Double         read Fpeso_desossa    write Fpeso_desossa;
    property busca : WideString         read Fbusca    write Fbusca;
    property cod_di : Integer         read Fcod_di    write Fcod_di;
    property numero_di : WideString         read Fnumero_di    write Fnumero_di;
    property num_acdraw : WideString         read Fnum_acdraw    write Fnum_acdraw;
    property xml : indefinido         read Fxml    write Fxml;
    property cliente_estoque_terceiro : Integer         read Fcliente_estoque_terceiro    write Fcliente_estoque_terceiro;

  end;

var
  Frm_ViewERPcomposicao : TFrm_ViewERPcomposicao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 49; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produtos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_acrescimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comentrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].duplicatacheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_fiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fatura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gnre_porcentagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete_porcentagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_desossa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].busca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_di); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_di); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_acdraw); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente_estoque_terceiro); 
    end; 
end; 

procedure TFrm_ViewERPcomposicao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.nf := Edit_nf.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.vl_produtos := Edit_vl_produtos.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_ipi := Edit_vl_ipi.text;
      FController.Model.vl_acrescimo := Edit_vl_acrescimo.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.click := Edit_click.text;
      FController.Model.juros := Edit_juros.text;
      FController.Model.comentrada := Edit_comentrada.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.duplicatacheque := Edit_duplicatacheque.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.vl_juros := Edit_vl_juros.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.data_entrada := Edit_data_entrada.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.vl_substituicao := Edit_vl_substituicao.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.produto_insumo := Edit_produto_insumo.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.base_st := Edit_base_st.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.obs_fiscal := Edit_obs_fiscal.text;
      FController.Model.obs_nota := Edit_obs_nota.text;
      FController.Model.fatura := Edit_fatura.text;
      FController.Model.vl_pis := Edit_vl_pis.text;
      FController.Model.vl_cofins := Edit_vl_cofins.text;
      FController.Model.gnre_porcentagem := Edit_gnre_porcentagem.text;
      FController.Model.frete_porcentagem := Edit_frete_porcentagem.text;
      FController.Model.peso_desossa := Edit_peso_desossa.text;
      FController.Model.busca := Edit_busca.text;
      FController.Model.cod_di := Edit_cod_di.text;
      FController.Model.numero_di := Edit_numero_di.text;
      FController.Model.num_acdraw := Edit_num_acdraw.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.cliente_estoque_terceiro := Edit_cliente_estoque_terceiro.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomposicao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomposicao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomposicao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomposicao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomposicao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomposicao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomposicao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 49;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := nf;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := vl_produtos;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_ipi;  
     Grid.Cells[inttostr(i),0] := vl_acrescimo;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := juros;  
     Grid.Cells[inttostr(i),0] := comentrada;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := duplicatacheque;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := vl_juros;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := data_entrada;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := vl_substituicao;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := produto_insumo;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := base_st;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := obs_fiscal;  
     Grid.Cells[inttostr(i),0] := obs_nota;  
     Grid.Cells[inttostr(i),0] := fatura;  
     Grid.Cells[inttostr(i),0] := vl_pis;  
     Grid.Cells[inttostr(i),0] := vl_cofins;  
     Grid.Cells[inttostr(i),0] := gnre_porcentagem;  
     Grid.Cells[inttostr(i),0] := frete_porcentagem;  
     Grid.Cells[inttostr(i),0] := peso_desossa;  
     Grid.Cells[inttostr(i),0] := busca;  
     Grid.Cells[inttostr(i),0] := cod_di;  
     Grid.Cells[inttostr(i),0] := numero_di;  
     Grid.Cells[inttostr(i),0] := num_acdraw;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := cliente_estoque_terceiro;  
end;

procedure TFrm_ViewERPcomposicao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomposicao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomposicao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.nf := Grid.Cells[3,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[4,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[5,Grid.row];
    FController.Model.vl_produtos := Grid.Cells[6,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[7,Grid.row];
    FController.Model.vl_frete := Grid.Cells[8,Grid.row];
    FController.Model.vl_icms := Grid.Cells[9,Grid.row];
    FController.Model.vl_ipi := Grid.Cells[10,Grid.row];
    FController.Model.vl_acrescimo := Grid.Cells[11,Grid.row];
    FController.Model.vl_total := Grid.Cells[12,Grid.row];
    FController.Model.id_usuario := Grid.Cells[13,Grid.row];
    FController.Model.click := Grid.Cells[14,Grid.row];
    FController.Model.juros := Grid.Cells[15,Grid.row];
    FController.Model.comentrada := Grid.Cells[16,Grid.row];
    FController.Model.id_conta := Grid.Cells[17,Grid.row];
    FController.Model.vl_pago := Grid.Cells[18,Grid.row];
    FController.Model.id_caixa := Grid.Cells[19,Grid.row];
    FController.Model.gerado := Grid.Cells[20,Grid.row];
    FController.Model.duplicatacheque := Grid.Cells[21,Grid.row];
    FController.Model.parcelas := Grid.Cells[22,Grid.row];
    FController.Model.vl_juros := Grid.Cells[23,Grid.row];
    FController.Model.intervalo := Grid.Cells[24,Grid.row];
    FController.Model.data_entrada := Grid.Cells[25,Grid.row];
    FController.Model.id_forma := Grid.Cells[26,Grid.row];
    FController.Model.vl_substituicao := Grid.Cells[27,Grid.row];
    FController.Model.serie := Grid.Cells[28,Grid.row];
    FController.Model.produto_insumo := Grid.Cells[29,Grid.row];
    FController.Model.estoque := Grid.Cells[30,Grid.row];
    FController.Model.id_cfop := Grid.Cells[31,Grid.row];
    FController.Model.base_icms := Grid.Cells[32,Grid.row];
    FController.Model.base_st := Grid.Cells[33,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[34,Grid.row];
    FController.Model.obs_fiscal := Grid.Cells[35,Grid.row];
    FController.Model.obs_nota := Grid.Cells[36,Grid.row];
    FController.Model.fatura := Grid.Cells[37,Grid.row];
    FController.Model.vl_pis := Grid.Cells[38,Grid.row];
    FController.Model.vl_cofins := Grid.Cells[39,Grid.row];
    FController.Model.gnre_porcentagem := Grid.Cells[40,Grid.row];
    FController.Model.frete_porcentagem := Grid.Cells[41,Grid.row];
    FController.Model.peso_desossa := Grid.Cells[42,Grid.row];
    FController.Model.busca := Grid.Cells[43,Grid.row];
    FController.Model.cod_di := Grid.Cells[44,Grid.row];
    FController.Model.numero_di := Grid.Cells[45,Grid.row];
    FController.Model.num_acdraw := Grid.Cells[46,Grid.row];
    FController.Model.xml := Grid.Cells[47,Grid.row];
    FController.Model.cliente_estoque_terceiro := Grid.Cells[48,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomposicao.LimparTela;  
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

procedure TFrm_ViewERPcomposicao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setnf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_produtos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_acrescimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setjuros(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setcomentrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setduplicatacheque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setdata_entrada(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setproduto_insumo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setbase_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setobs_fiscal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setobs_nota(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setfatura(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setvl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setgnre_porcentagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setfrete_porcentagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setpeso_desossa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setbusca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setcod_di(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setnumero_di(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setnum_acdraw(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomposicao.Setcliente_estoque_terceiro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
