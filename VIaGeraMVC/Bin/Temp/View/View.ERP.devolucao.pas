
unit View.ERP.desdobramento_conta;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.desdobramento_conta, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdesdobramentoconta = class(TForm) 
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
    FController : TControllerERPdesdobramentoconta; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fgerado : WideString;
    Ftipo : WideString;
    Fdata : TDateTime;
    Fhora : WideString;
    Fid_cfop : Integer;
    Fnota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_vendedor : Integer;
    Fid_caixa : Integer;
    Fid_transportadora : Integer;
    Fmotorista : WideString;
    Fqtd_itens : Integer;
    Fvl_icms : Double;
    Fvl_desconto : Double;
    Fbase_icms : Double;
    Fbase_substituicao : Double;
    Fvl_produto : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fbase_ipi : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvl_total : Double;
    Fid_pedido : Integer;
    Fobs : WideString;
    Fclick : Boolean;
    Fvl_servico : Double;
    Fvl_icmsst : Double;
    Fnfe_chave : WideString;
    Fnfe : WideString;
    Fplaca : WideString;
    Fnfe_protocolo : WideString;
    Ftipo_frete : Integer;
    Fespecie : WideString;
    Fqtd_volume : Double;
    Fnro_volume : Double;
    Fpis : Double;
    Fcofins : Double;
    Fserie : WideString;
    Fnfe_placa : WideString;
    Fid_compra : Integer;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fdesconto_porcentagem : Double;
    Fnfe_protocolo_cancelada : WideString;
    Fbase_pis : Double;
    Fbase_cofins : Double;
    Fvalor_pis : Double;
    Fvalor_cofins : Double;
    Fsiscomex : Double;
    Fdeclaracao_importacao : WideString;
    Fimposto_importacao : Double;
    Fpercentual_icms : Double;
    Fid_fabricacao : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setgerado(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Sethora(const Value : WideString);
    procedure Setid_cfop(const Value : Integer);
    procedure Setnota(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_transportadora(const Value : Integer);
    procedure Setmotorista(const Value : WideString);
    procedure Setqtd_itens(const Value : Integer);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setbase_substituicao(const Value : Double);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setvl_seguro(const Value : Double);
    procedure Setvl_outras(const Value : Double);
    procedure Setbase_ipi(const Value : Double);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setid_pedido(const Value : Integer);
    procedure Setobs(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setvl_servico(const Value : Double);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setnfe(const Value : WideString);
    procedure Setplaca(const Value : WideString);
    procedure Setnfe_protocolo(const Value : WideString);
    procedure Settipo_frete(const Value : Integer);
    procedure Setespecie(const Value : WideString);
    procedure Setqtd_volume(const Value : Double);
    procedure Setnro_volume(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setserie(const Value : WideString);
    procedure Setnfe_placa(const Value : WideString);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : WideString);
    procedure Setdesconto_porcentagem(const Value : Double);
    procedure Setnfe_protocolo_cancelada(const Value : WideString);
    procedure Setbase_pis(const Value : Double);
    procedure Setbase_cofins(const Value : Double);
    procedure Setvalor_pis(const Value : Double);
    procedure Setvalor_cofins(const Value : Double);
    procedure Setsiscomex(const Value : Double);
    procedure Setdeclaracao_importacao(const Value : WideString);
    procedure Setimposto_importacao(const Value : Double);
    procedure Setpercentual_icms(const Value : Double);
    procedure Setid_fabricacao(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property gerado : WideString         read Fgerado    write Fgerado;
    property tipo : WideString         read Ftipo    write Ftipo;
    property data : TDateTime         read Fdata    write Fdata;
    property hora : WideString         read Fhora    write Fhora;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property nota : Integer         read Fnota    write Fnota;
    property cupom : Integer         read Fcupom    write Fcupom;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_transportadora : Integer         read Fid_transportadora    write Fid_transportadora;
    property motorista : WideString         read Fmotorista    write Fmotorista;
    property qtd_itens : Integer         read Fqtd_itens    write Fqtd_itens;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property base_substituicao : Double         read Fbase_substituicao    write Fbase_substituicao;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property vl_seguro : Double         read Fvl_seguro    write Fvl_seguro;
    property vl_outras : Double         read Fvl_outras    write Fvl_outras;
    property base_ipi : Double         read Fbase_ipi    write Fbase_ipi;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property obs : WideString         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property nfe : WideString         read Fnfe    write Fnfe;
    property placa : WideString         read Fplaca    write Fplaca;
    property nfe_protocolo : WideString         read Fnfe_protocolo    write Fnfe_protocolo;
    property tipo_frete : Integer         read Ftipo_frete    write Ftipo_frete;
    property especie : WideString         read Fespecie    write Fespecie;
    property qtd_volume : Double         read Fqtd_volume    write Fqtd_volume;
    property nro_volume : Double         read Fnro_volume    write Fnro_volume;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property serie : WideString         read Fserie    write Fserie;
    property nfe_placa : WideString         read Fnfe_placa    write Fnfe_placa;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : WideString         read Fnome_fornecedor    write Fnome_fornecedor;
    property desconto_porcentagem : Double         read Fdesconto_porcentagem    write Fdesconto_porcentagem;
    property nfe_protocolo_cancelada : WideString         read Fnfe_protocolo_cancelada    write Fnfe_protocolo_cancelada;
    property base_pis : Double         read Fbase_pis    write Fbase_pis;
    property base_cofins : Double         read Fbase_cofins    write Fbase_cofins;
    property valor_pis : Double         read Fvalor_pis    write Fvalor_pis;
    property valor_cofins : Double         read Fvalor_cofins    write Fvalor_cofins;
    property siscomex : Double         read Fsiscomex    write Fsiscomex;
    property declaracao_importacao : WideString         read Fdeclaracao_importacao    write Fdeclaracao_importacao;
    property imposto_importacao : Double         read Fimposto_importacao    write Fimposto_importacao;
    property percentual_icms : Double         read Fpercentual_icms    write Fpercentual_icms;
    property id_fabricacao : Integer         read Fid_fabricacao    write Fid_fabricacao;

  end;

var
  Frm_ViewERPdesdobramentoconta : TFrm_ViewERPdesdobramentoconta; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 59; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transportadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_seguro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_outras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_volume); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_volume); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_porcentagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].siscomex); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].declaracao_importacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imposto_importacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fabricacao); 
    end; 
end; 

procedure TFrm_ViewERPdesdobramentoconta.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.data := Edit_data.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_transportadora := Edit_id_transportadora.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.qtd_itens := Edit_qtd_itens.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.base_substituicao := Edit_base_substituicao.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.vl_seguro := Edit_vl_seguro.text;
      FController.Model.vl_outras := Edit_vl_outras.text;
      FController.Model.base_ipi := Edit_base_ipi.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.nfe_protocolo := Edit_nfe_protocolo.text;
      FController.Model.tipo_frete := Edit_tipo_frete.text;
      FController.Model.especie := Edit_especie.text;
      FController.Model.qtd_volume := Edit_qtd_volume.text;
      FController.Model.nro_volume := Edit_nro_volume.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.nfe_placa := Edit_nfe_placa.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.desconto_porcentagem := Edit_desconto_porcentagem.text;
      FController.Model.nfe_protocolo_cancelada := Edit_nfe_protocolo_cancelada.text;
      FController.Model.base_pis := Edit_base_pis.text;
      FController.Model.base_cofins := Edit_base_cofins.text;
      FController.Model.valor_pis := Edit_valor_pis.text;
      FController.Model.valor_cofins := Edit_valor_cofins.text;
      FController.Model.siscomex := Edit_siscomex.text;
      FController.Model.declaracao_importacao := Edit_declaracao_importacao.text;
      FController.Model.imposto_importacao := Edit_imposto_importacao.text;
      FController.Model.percentual_icms := Edit_percentual_icms.text;
      FController.Model.id_fabricacao := Edit_id_fabricacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdesdobramentoconta.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdesdobramentoconta.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdesdobramentoconta.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdesdobramentoconta.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdesdobramentoconta.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdesdobramentoconta.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdesdobramentoconta.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 59;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_transportadora;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := qtd_itens;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := base_substituicao;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := vl_seguro;  
     Grid.Cells[inttostr(i),0] := vl_outras;  
     Grid.Cells[inttostr(i),0] := base_ipi;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo;  
     Grid.Cells[inttostr(i),0] := tipo_frete;  
     Grid.Cells[inttostr(i),0] := especie;  
     Grid.Cells[inttostr(i),0] := qtd_volume;  
     Grid.Cells[inttostr(i),0] := nro_volume;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := nfe_placa;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := desconto_porcentagem;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo_cancelada;  
     Grid.Cells[inttostr(i),0] := base_pis;  
     Grid.Cells[inttostr(i),0] := base_cofins;  
     Grid.Cells[inttostr(i),0] := valor_pis;  
     Grid.Cells[inttostr(i),0] := valor_cofins;  
     Grid.Cells[inttostr(i),0] := siscomex;  
     Grid.Cells[inttostr(i),0] := declaracao_importacao;  
     Grid.Cells[inttostr(i),0] := imposto_importacao;  
     Grid.Cells[inttostr(i),0] := percentual_icms;  
     Grid.Cells[inttostr(i),0] := id_fabricacao;  
end;

procedure TFrm_ViewERPdesdobramentoconta.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdesdobramentoconta.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdesdobramentoconta.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.gerado := Grid.Cells[2,Grid.row];
    FController.Model.tipo := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.hora := Grid.Cells[5,Grid.row];
    FController.Model.id_cfop := Grid.Cells[6,Grid.row];
    FController.Model.nota := Grid.Cells[7,Grid.row];
    FController.Model.cupom := Grid.Cells[8,Grid.row];
    FController.Model.id_cliente := Grid.Cells[9,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[10,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[11,Grid.row];
    FController.Model.id_caixa := Grid.Cells[12,Grid.row];
    FController.Model.id_transportadora := Grid.Cells[13,Grid.row];
    FController.Model.motorista := Grid.Cells[14,Grid.row];
    FController.Model.qtd_itens := Grid.Cells[15,Grid.row];
    FController.Model.vl_icms := Grid.Cells[16,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[17,Grid.row];
    FController.Model.base_icms := Grid.Cells[18,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[19,Grid.row];
    FController.Model.vl_produto := Grid.Cells[20,Grid.row];
    FController.Model.vl_frete := Grid.Cells[21,Grid.row];
    FController.Model.vl_seguro := Grid.Cells[22,Grid.row];
    FController.Model.vl_outras := Grid.Cells[23,Grid.row];
    FController.Model.base_ipi := Grid.Cells[24,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[25,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[26,Grid.row];
    FController.Model.vl_total := Grid.Cells[27,Grid.row];
    FController.Model.id_pedido := Grid.Cells[28,Grid.row];
    FController.Model.obs := Grid.Cells[29,Grid.row];
    FController.Model.click := Grid.Cells[30,Grid.row];
    FController.Model.vl_servico := Grid.Cells[31,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[32,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[33,Grid.row];
    FController.Model.nfe := Grid.Cells[34,Grid.row];
    FController.Model.placa := Grid.Cells[35,Grid.row];
    FController.Model.nfe_protocolo := Grid.Cells[36,Grid.row];
    FController.Model.tipo_frete := Grid.Cells[37,Grid.row];
    FController.Model.especie := Grid.Cells[38,Grid.row];
    FController.Model.qtd_volume := Grid.Cells[39,Grid.row];
    FController.Model.nro_volume := Grid.Cells[40,Grid.row];
    FController.Model.pis := Grid.Cells[41,Grid.row];
    FController.Model.cofins := Grid.Cells[42,Grid.row];
    FController.Model.serie := Grid.Cells[43,Grid.row];
    FController.Model.nfe_placa := Grid.Cells[44,Grid.row];
    FController.Model.id_compra := Grid.Cells[45,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[46,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[47,Grid.row];
    FController.Model.desconto_porcentagem := Grid.Cells[48,Grid.row];
    FController.Model.nfe_protocolo_cancelada := Grid.Cells[49,Grid.row];
    FController.Model.base_pis := Grid.Cells[50,Grid.row];
    FController.Model.base_cofins := Grid.Cells[51,Grid.row];
    FController.Model.valor_pis := Grid.Cells[52,Grid.row];
    FController.Model.valor_cofins := Grid.Cells[53,Grid.row];
    FController.Model.siscomex := Grid.Cells[54,Grid.row];
    FController.Model.declaracao_importacao := Grid.Cells[55,Grid.row];
    FController.Model.imposto_importacao := Grid.Cells[56,Grid.row];
    FController.Model.percentual_icms := Grid.Cells[57,Grid.row];
    FController.Model.id_fabricacao := Grid.Cells[58,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdesdobramentoconta.LimparTela;  
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

procedure TFrm_ViewERPdesdobramentoconta.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Sethora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_transportadora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setmotorista(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setqtd_itens(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_seguro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setbase_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setplaca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnfe_protocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Settipo_frete(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setespecie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setqtd_volume(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnro_volume(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnfe_placa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnome_fornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setdesconto_porcentagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setnfe_protocolo_cancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setbase_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setbase_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvalor_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setvalor_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setsiscomex(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setdeclaracao_importacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setimposto_importacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setpercentual_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdesdobramentoconta.Setid_fabricacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
