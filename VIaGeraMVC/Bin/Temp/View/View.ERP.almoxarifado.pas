
unit View.ERP.agro_diagnostico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.agro_diagnostico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPagrodiagnostico = class(TForm) 
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
    FController : TControllerERPagrodiagnostico; 
    Fid : Integer;
    Fid_empresas : Integer;
    Fnome_equipamento : WideString;
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
    Fnpatrimonio : WideString;
    Fpatrimonio : Boolean;
    Fitens_embalagem : Double;
    Faplicacao : indefinido;
    Fativo : WideString;
    Fclick : Boolean;
    Fid_produto : Integer;
    Fid_insumo : Integer;
    Fpreco_venda : Double;
    Fsetor : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresas(const Value : Integer);
    procedure Setnome_equipamento(const Value : WideString);
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
    procedure Setnpatrimonio(const Value : WideString);
    procedure Setpatrimonio(const Value : Boolean);
    procedure Setitens_embalagem(const Value : Double);
    procedure Setaplicacao(const Value : indefinido);
    procedure Setativo(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setid_produto(const Value : Integer);
    procedure Setid_insumo(const Value : Integer);
    procedure Setpreco_venda(const Value : Double);
    procedure Setsetor(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresas : Integer         read Fid_empresas    write Fid_empresas;
    property nome_equipamento : WideString         read Fnome_equipamento    write Fnome_equipamento;
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
    property npatrimonio : WideString         read Fnpatrimonio    write Fnpatrimonio;
    property patrimonio : Boolean         read Fpatrimonio    write Fpatrimonio;
    property itens_embalagem : Double         read Fitens_embalagem    write Fitens_embalagem;
    property aplicacao : indefinido         read Faplicacao    write Faplicacao;
    property ativo : WideString         read Fativo    write Fativo;
    property click : Boolean         read Fclick    write Fclick;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property setor : WideString         read Fsetor    write Fsetor;

  end;

var
  Frm_ViewERPagrodiagnostico : TFrm_ViewERPagrodiagnostico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 32; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_equipamento); 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].npatrimonio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].patrimonio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].itens_embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].setor); 
    end; 
end; 

procedure TFrm_ViewERPagrodiagnostico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresas := Edit_id_empresas.text;
      FController.Model.nome_equipamento := Edit_nome_equipamento.text;
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
      FController.Model.npatrimonio := Edit_npatrimonio.text;
      FController.Model.patrimonio := Edit_patrimonio.text;
      FController.Model.itens_embalagem := Edit_itens_embalagem.text;
      FController.Model.aplicacao := Edit_aplicacao.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.setor := Edit_setor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPagrodiagnostico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPagrodiagnostico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPagrodiagnostico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPagrodiagnostico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPagrodiagnostico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPagrodiagnostico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPagrodiagnostico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 32;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresas;  
     Grid.Cells[inttostr(i),0] := nome_equipamento;  
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
     Grid.Cells[inttostr(i),0] := npatrimonio;  
     Grid.Cells[inttostr(i),0] := patrimonio;  
     Grid.Cells[inttostr(i),0] := itens_embalagem;  
     Grid.Cells[inttostr(i),0] := aplicacao;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := setor;  
end;

procedure TFrm_ViewERPagrodiagnostico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPagrodiagnostico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPagrodiagnostico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresas := Grid.Cells[1,Grid.row];
    FController.Model.nome_equipamento := Grid.Cells[2,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[3,Grid.row];
    FController.Model.unidade := Grid.Cells[4,Grid.row];
    FController.Model.validade := Grid.Cells[5,Grid.row];
    FController.Model.tp_peso := Grid.Cells[6,Grid.row];
    FController.Model.peso := Grid.Cells[7,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[8,Grid.row];
    FController.Model.estoque_minimo := Grid.Cells[9,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[10,Grid.row];
    FController.Model.preco_custo := Grid.Cells[11,Grid.row];
    FController.Model.preco_custosemfrete := Grid.Cells[12,Grid.row];
    FController.Model.preco_compra := Grid.Cells[13,Grid.row];
    FController.Model.vl_frete := Grid.Cells[14,Grid.row];
    FController.Model.perc_frete := Grid.Cells[15,Grid.row];
    FController.Model.ipi_entrada := Grid.Cells[16,Grid.row];
    FController.Model.icms_entrada := Grid.Cells[17,Grid.row];
    FController.Model.vl_substituicao := Grid.Cells[18,Grid.row];
    FController.Model.outras_despesas := Grid.Cells[19,Grid.row];
    FController.Model.fracionado := Grid.Cells[20,Grid.row];
    FController.Model.embalagem := Grid.Cells[21,Grid.row];
    FController.Model.npatrimonio := Grid.Cells[22,Grid.row];
    FController.Model.patrimonio := Grid.Cells[23,Grid.row];
    FController.Model.itens_embalagem := Grid.Cells[24,Grid.row];
    FController.Model.aplicacao := Grid.Cells[25,Grid.row];
    FController.Model.ativo := Grid.Cells[26,Grid.row];
    FController.Model.click := Grid.Cells[27,Grid.row];
    FController.Model.id_produto := Grid.Cells[28,Grid.row];
    FController.Model.id_insumo := Grid.Cells[29,Grid.row];
    FController.Model.preco_venda := Grid.Cells[30,Grid.row];
    FController.Model.setor := Grid.Cells[31,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPagrodiagnostico.LimparTela;  
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

procedure TFrm_ViewERPagrodiagnostico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setid_empresas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setnome_equipamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setvalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Settp_peso(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpeso(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setestoque_minimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpreco_custosemfrete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setperc_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setipi_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Seticms_entrada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setvl_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setoutras_despesas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setfracionado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setembalagem(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setnpatrimonio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpatrimonio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setitens_embalagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setaplicacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagrodiagnostico.Setsetor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
