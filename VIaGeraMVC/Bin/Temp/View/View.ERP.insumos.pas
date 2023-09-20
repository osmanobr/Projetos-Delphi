
unit View.ERP.indicacao_servico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.indicacao_servico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPindicacaoservico = class(TForm) 
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
    FController : TControllerERPindicacaoservico; 
    Fid : Integer;
    Fnome : WideString;
    Fcodigo_fabricante : WideString;
    Funidade : WideString;
    Fvalidade : WideString;
    Ftp_peso : WideString;
    Fpeso : Double;
    Fid_fornecedor : Integer;
    Festoque_minimo : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_custosemfrete : Double;
    Fpreco_compra : Double;
    Fvl_frete : Double;
    Fperc_frete : Double;
    Fipi_entrada : Double;
    Ficms_entrada : Double;
    Fvl_substituicao : Double;
    Foutras_despesas : Double;
    Ffracionado : WideString;
    Fembalagem : WideString;
    Fitens_embalagem : Double;
    Faplicacao : indefinido;
    Fativo : WideString;
    Fclick : Boolean;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fcst : WideString;
    Fst : WideString;
    Fdt_fab : TDateTime;
    Fdt_val : TDateTime;
    Fdt_ent : indefinido;
    Fmat_p : Boolean;
    Fcondicoes : WideString;
    Ftemp_mat_p : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setvalidade(const Value : WideString);
    procedure Settp_peso(const Value : WideString);
    procedure Setpeso(const Value : Double);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setestoque_minimo(const Value : Double);
    procedure Setestoque_atual(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setpreco_custosemfrete(const Value : Double);
    procedure Setpreco_compra(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setperc_frete(const Value : Double);
    procedure Setipi_entrada(const Value : Double);
    procedure Seticms_entrada(const Value : Double);
    procedure Setvl_substituicao(const Value : Double);
    procedure Setoutras_despesas(const Value : Double);
    procedure Setfracionado(const Value : WideString);
    procedure Setembalagem(const Value : WideString);
    procedure Setitens_embalagem(const Value : Double);
    procedure Setaplicacao(const Value : indefinido);
    procedure Setativo(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setid_produto(const Value : Integer);
    procedure Setid_almoxarifado(const Value : Integer);
    procedure Setcst(const Value : WideString);
    procedure Setst(const Value : WideString);
    procedure Setdt_fab(const Value : TDateTime);
    procedure Setdt_val(const Value : TDateTime);
    procedure Setdt_ent(const Value : indefinido);
    procedure Setmat_p(const Value : Boolean);
    procedure Setcondicoes(const Value : WideString);
    procedure Settemp_mat_p(const Value : Integer);
    procedure Setquantidade_empresa_terceiro(const Value : Double);
    procedure Setquantidade_terceiro_empresa(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property unidade : WideString         read Funidade    write Funidade;
    property validade : WideString         read Fvalidade    write Fvalidade;
    property tp_peso : WideString         read Ftp_peso    write Ftp_peso;
    property peso : Double         read Fpeso    write Fpeso;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property estoque_minimo : Double         read Festoque_minimo    write Festoque_minimo;
    property estoque_atual : Double         read Festoque_atual    write Festoque_atual;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property preco_custosemfrete : Double         read Fpreco_custosemfrete    write Fpreco_custosemfrete;
    property preco_compra : Double         read Fpreco_compra    write Fpreco_compra;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property perc_frete : Double         read Fperc_frete    write Fperc_frete;
    property ipi_entrada : Double         read Fipi_entrada    write Fipi_entrada;
    property icms_entrada : Double         read Ficms_entrada    write Ficms_entrada;
    property vl_substituicao : Double         read Fvl_substituicao    write Fvl_substituicao;
    property outras_despesas : Double         read Foutras_despesas    write Foutras_despesas;
    property fracionado : WideString         read Ffracionado    write Ffracionado;
    property embalagem : WideString         read Fembalagem    write Fembalagem;
    property itens_embalagem : Double         read Fitens_embalagem    write Fitens_embalagem;
    property aplicacao : indefinido         read Faplicacao    write Faplicacao;
    property ativo : WideString         read Fativo    write Fativo;
    property click : Boolean         read Fclick    write Fclick;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property id_almoxarifado : Integer         read Fid_almoxarifado    write Fid_almoxarifado;
    property cst : WideString         read Fcst    write Fcst;
    property st : WideString         read Fst    write Fst;
    property dt_fab : TDateTime         read Fdt_fab    write Fdt_fab;
    property dt_val : TDateTime         read Fdt_val    write Fdt_val;
    property dt_ent : indefinido         read Fdt_ent    write Fdt_ent;
    property mat_p : Boolean         read Fmat_p    write Fmat_p;
    property condicoes : WideString         read Fcondicoes    write Fcondicoes;
    property temp_mat_p : Integer         read Ftemp_mat_p    write Ftemp_mat_p;
    property quantidade_empresa_terceiro : Double         read Fquantidade_empresa_terceiro    write Fquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa : Double         read Fquantidade_terceiro_empresa    write Fquantidade_terceiro_empresa;

  end;

var
  Frm_ViewERPindicacaoservico : TFrm_ViewERPindicacaoservico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 37; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tp_peso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_minimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custosemfrete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].perc_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ipi_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_entrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outras_despesas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fracionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].itens_embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_fab); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_val); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_ent); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mat_p); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condicoes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].temp_mat_p); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_empresa_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_terceiro_empresa); 
    end; 
end; 

procedure TFrm_ViewERPindicacaoservico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.validade := Edit_validade.text;
      FController.Model.tp_peso := Edit_tp_peso.text;
      FController.Model.peso := Edit_peso.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.estoque_minimo := Edit_estoque_minimo.text;
      FController.Model.estoque_atual := Edit_estoque_atual.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.preco_custosemfrete := Edit_preco_custosemfrete.text;
      FController.Model.preco_compra := Edit_preco_compra.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.perc_frete := Edit_perc_frete.text;
      FController.Model.ipi_entrada := Edit_ipi_entrada.text;
      FController.Model.icms_entrada := Edit_icms_entrada.text;
      FController.Model.vl_substituicao := Edit_vl_substituicao.text;
      FController.Model.outras_despesas := Edit_outras_despesas.text;
      FController.Model.fracionado := Edit_fracionado.text;
      FController.Model.embalagem := Edit_embalagem.text;
      FController.Model.itens_embalagem := Edit_itens_embalagem.text;
      FController.Model.aplicacao := Edit_aplicacao.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.id_almoxarifado := Edit_id_almoxarifado.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.st := Edit_st.text;
      FController.Model.dt_fab := Edit_dt_fab.text;
      FController.Model.dt_val := Edit_dt_val.text;
      FController.Model.dt_ent := Edit_dt_ent.text;
      FController.Model.mat_p := Edit_mat_p.text;
      FController.Model.condicoes := Edit_condicoes.text;
      FController.Model.temp_mat_p := Edit_temp_mat_p.text;
      FController.Model.quantidade_empresa_terceiro := Edit_quantidade_empresa_terceiro.text;
      FController.Model.quantidade_terceiro_empresa := Edit_quantidade_terceiro_empresa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPindicacaoservico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPindicacaoservico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPindicacaoservico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPindicacaoservico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPindicacaoservico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPindicacaoservico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPindicacaoservico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 37;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := validade;  
     Grid.Cells[inttostr(i),0] := tp_peso;  
     Grid.Cells[inttostr(i),0] := peso;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := estoque_minimo;  
     Grid.Cells[inttostr(i),0] := estoque_atual;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := preco_custosemfrete;  
     Grid.Cells[inttostr(i),0] := preco_compra;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := perc_frete;  
     Grid.Cells[inttostr(i),0] := ipi_entrada;  
     Grid.Cells[inttostr(i),0] := icms_entrada;  
     Grid.Cells[inttostr(i),0] := vl_substituicao;  
     Grid.Cells[inttostr(i),0] := outras_despesas;  
     Grid.Cells[inttostr(i),0] := fracionado;  
     Grid.Cells[inttostr(i),0] := embalagem;  
     Grid.Cells[inttostr(i),0] := itens_embalagem;  
     Grid.Cells[inttostr(i),0] := aplicacao;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := id_almoxarifado;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := dt_fab;  
     Grid.Cells[inttostr(i),0] := dt_val;  
     Grid.Cells[inttostr(i),0] := dt_ent;  
     Grid.Cells[inttostr(i),0] := mat_p;  
     Grid.Cells[inttostr(i),0] := condicoes;  
     Grid.Cells[inttostr(i),0] := temp_mat_p;  
     Grid.Cells[inttostr(i),0] := quantidade_empresa_terceiro;  
     Grid.Cells[inttostr(i),0] := quantidade_terceiro_empresa;  
end;

procedure TFrm_ViewERPindicacaoservico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPindicacaoservico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPindicacaoservico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[2,Grid.row];
    FController.Model.unidade := Grid.Cells[3,Grid.row];
    FController.Model.validade := Grid.Cells[4,Grid.row];
    FController.Model.tp_peso := Grid.Cells[5,Grid.row];
    FController.Model.peso := Grid.Cells[6,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[7,Grid.row];
    FController.Model.estoque_minimo := Grid.Cells[8,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[9,Grid.row];
    FController.Model.preco_custo := Grid.Cells[10,Grid.row];
    FController.Model.preco_custosemfrete := Grid.Cells[11,Grid.row];
    FController.Model.preco_compra := Grid.Cells[12,Grid.row];
    FController.Model.vl_frete := Grid.Cells[13,Grid.row];
    FController.Model.perc_frete := Grid.Cells[14,Grid.row];
    FController.Model.ipi_entrada := Grid.Cells[15,Grid.row];
    FController.Model.icms_entrada := Grid.Cells[16,Grid.row];
    FController.Model.vl_substituicao := Grid.Cells[17,Grid.row];
    FController.Model.outras_despesas := Grid.Cells[18,Grid.row];
    FController.Model.fracionado := Grid.Cells[19,Grid.row];
    FController.Model.embalagem := Grid.Cells[20,Grid.row];
    FController.Model.itens_embalagem := Grid.Cells[21,Grid.row];
    FController.Model.aplicacao := Grid.Cells[22,Grid.row];
    FController.Model.ativo := Grid.Cells[23,Grid.row];
    FController.Model.click := Grid.Cells[24,Grid.row];
    FController.Model.id_produto := Grid.Cells[25,Grid.row];
    FController.Model.id_almoxarifado := Grid.Cells[26,Grid.row];
    FController.Model.cst := Grid.Cells[27,Grid.row];
    FController.Model.st := Grid.Cells[28,Grid.row];
    FController.Model.dt_fab := Grid.Cells[29,Grid.row];
    FController.Model.dt_val := Grid.Cells[30,Grid.row];
    FController.Model.dt_ent := Grid.Cells[31,Grid.row];
    FController.Model.mat_p := Grid.Cells[32,Grid.row];
    FController.Model.condicoes := Grid.Cells[33,Grid.row];
    FController.Model.temp_mat_p := Grid.Cells[34,Grid.row];
    FController.Model.quantidade_empresa_terceiro := Grid.Cells[35,Grid.row];
    FController.Model.quantidade_terceiro_empresa := Grid.Cells[36,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPindicacaoservico.LimparTela;  
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

procedure TFrm_ViewERPindicacaoservico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setvalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Settp_peso(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setpeso(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setestoque_minimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setpreco_custosemfrete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setperc_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setipi_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Seticms_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setvl_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setoutras_despesas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setfracionado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setembalagem(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setitens_embalagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setaplicacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setid_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setdt_fab(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setdt_val(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setdt_ent(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setmat_p(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setcondicoes(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Settemp_mat_p(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setquantidade_empresa_terceiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPindicacaoservico.Setquantidade_terceiro_empresa(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
