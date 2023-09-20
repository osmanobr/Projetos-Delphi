
unit View.ERP.import_produtos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_produtos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportprodutos = class(TForm) 
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
    FController : TControllerERPimportprodutos; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_grupo : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Fpreco_venda : Double;
    Fpreco_atacado : Double;
    Ffracionado : Boolean;
    Fst : WideString;
    Ficms : Double;
    Freducao : Double;
    Fpromocao : Boolean;
    Fpreco_promocao : Double;
    Fippt : WideString;
    Fiat : WideString;
    Fatacado : Boolean;
    Fquantidade_atacado : Double;
    Fncm : WideString;
    Fcst : WideString;
    Fpiscofins : WideString;
    Fean : WideString;
    Fkit : Boolean;
    Fbalanca_pdv : Boolean;
    Ftabela_pdv : Boolean;
    Fpreco_custo : Double;
    Fcodigo_fabricante : WideString;
    Fespecial : WideString;
    Fcfop_interno : Integer;
    Fcfop_externo : Integer;
    Ftipo : WideString;
    Fean_caixa : WideString;
    Fean_caixa2 : WideString;
    Fean_caixa3 : WideString;
    Fembalagem_itens : Double;
    Fembalagem_itens2 : Double;
    Fembalagem_itens3 : Double;
    Fpreco_custo_nf : Double;
    Fpreco_custo_nf2 : Double;
    Fpreco_custo_nf3 : Double;
    Fvalor_unitario_item_nf : Double;
    Fvalor_unitario_item_nf2 : Double;
    Fvalor_unitario_item_nf3 : Double;
    Fgenerico : Boolean;
    Fcst_piscofins : WideString;
    Fsem_gtin : Boolean;
    Festoque_atual : Double;
    Fvenda_metade : Boolean;
    Fmetade_porcentagem : Double;
    Fcnpj : WideString;
    Fcode : WideString;
    Fcst_cofins : WideString;
    Fcst_pis : WideString;
    Fmetade_percentual : Double;
    Ftrib : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_grupo(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_atacado(const Value : Double);
    procedure Setfracionado(const Value : Boolean);
    procedure Setst(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Setreducao(const Value : Double);
    procedure Setpromocao(const Value : Boolean);
    procedure Setpreco_promocao(const Value : Double);
    procedure Setippt(const Value : WideString);
    procedure Setiat(const Value : WideString);
    procedure Setatacado(const Value : Boolean);
    procedure Setquantidade_atacado(const Value : Double);
    procedure Setncm(const Value : WideString);
    procedure Setcst(const Value : WideString);
    procedure Setpiscofins(const Value : WideString);
    procedure Setean(const Value : WideString);
    procedure Setkit(const Value : Boolean);
    procedure Setbalanca_pdv(const Value : Boolean);
    procedure Settabela_pdv(const Value : Boolean);
    procedure Setpreco_custo(const Value : Double);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setespecial(const Value : WideString);
    procedure Setcfop_interno(const Value : Integer);
    procedure Setcfop_externo(const Value : Integer);
    procedure Settipo(const Value : WideString);
    procedure Setean_caixa(const Value : WideString);
    procedure Setean_caixa2(const Value : WideString);
    procedure Setean_caixa3(const Value : WideString);
    procedure Setembalagem_itens(const Value : Double);
    procedure Setembalagem_itens2(const Value : Double);
    procedure Setembalagem_itens3(const Value : Double);
    procedure Setpreco_custo_nf(const Value : Double);
    procedure Setpreco_custo_nf2(const Value : Double);
    procedure Setpreco_custo_nf3(const Value : Double);
    procedure Setvalor_unitario_item_nf(const Value : Double);
    procedure Setvalor_unitario_item_nf2(const Value : Double);
    procedure Setvalor_unitario_item_nf3(const Value : Double);
    procedure Setgenerico(const Value : Boolean);
    procedure Setcst_piscofins(const Value : WideString);
    procedure Setsem_gtin(const Value : Boolean);
    procedure Setestoque_atual(const Value : Double);
    procedure Setvenda_metade(const Value : Boolean);
    procedure Setmetade_porcentagem(const Value : Double);
    procedure Setcnpj(const Value : WideString);
    procedure Setcode(const Value : WideString);
    procedure Setcst_cofins(const Value : WideString);
    procedure Setcst_pis(const Value : WideString);
    procedure Setmetade_percentual(const Value : Double);
    procedure Settrib(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property nome : WideString         read Fnome    write Fnome;
    property unidade : WideString         read Funidade    write Funidade;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_atacado : Double         read Fpreco_atacado    write Fpreco_atacado;
    property fracionado : Boolean         read Ffracionado    write Ffracionado;
    property st : WideString         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property reducao : Double         read Freducao    write Freducao;
    property promocao : Boolean         read Fpromocao    write Fpromocao;
    property preco_promocao : Double         read Fpreco_promocao    write Fpreco_promocao;
    property ippt : WideString         read Fippt    write Fippt;
    property iat : WideString         read Fiat    write Fiat;
    property atacado : Boolean         read Fatacado    write Fatacado;
    property quantidade_atacado : Double         read Fquantidade_atacado    write Fquantidade_atacado;
    property ncm : WideString         read Fncm    write Fncm;
    property cst : WideString         read Fcst    write Fcst;
    property piscofins : WideString         read Fpiscofins    write Fpiscofins;
    property ean : WideString         read Fean    write Fean;
    property kit : Boolean         read Fkit    write Fkit;
    property balanca_pdv : Boolean         read Fbalanca_pdv    write Fbalanca_pdv;
    property tabela_pdv : Boolean         read Ftabela_pdv    write Ftabela_pdv;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property especial : WideString         read Fespecial    write Fespecial;
    property cfop_interno : Integer         read Fcfop_interno    write Fcfop_interno;
    property cfop_externo : Integer         read Fcfop_externo    write Fcfop_externo;
    property tipo : WideString         read Ftipo    write Ftipo;
    property ean_caixa : WideString         read Fean_caixa    write Fean_caixa;
    property ean_caixa2 : WideString         read Fean_caixa2    write Fean_caixa2;
    property ean_caixa3 : WideString         read Fean_caixa3    write Fean_caixa3;
    property embalagem_itens : Double         read Fembalagem_itens    write Fembalagem_itens;
    property embalagem_itens2 : Double         read Fembalagem_itens2    write Fembalagem_itens2;
    property embalagem_itens3 : Double         read Fembalagem_itens3    write Fembalagem_itens3;
    property preco_custo_nf : Double         read Fpreco_custo_nf    write Fpreco_custo_nf;
    property preco_custo_nf2 : Double         read Fpreco_custo_nf2    write Fpreco_custo_nf2;
    property preco_custo_nf3 : Double         read Fpreco_custo_nf3    write Fpreco_custo_nf3;
    property valor_unitario_item_nf : Double         read Fvalor_unitario_item_nf    write Fvalor_unitario_item_nf;
    property valor_unitario_item_nf2 : Double         read Fvalor_unitario_item_nf2    write Fvalor_unitario_item_nf2;
    property valor_unitario_item_nf3 : Double         read Fvalor_unitario_item_nf3    write Fvalor_unitario_item_nf3;
    property generico : Boolean         read Fgenerico    write Fgenerico;
    property cst_piscofins : WideString         read Fcst_piscofins    write Fcst_piscofins;
    property sem_gtin : Boolean         read Fsem_gtin    write Fsem_gtin;
    property estoque_atual : Double         read Festoque_atual    write Festoque_atual;
    property venda_metade : Boolean         read Fvenda_metade    write Fvenda_metade;
    property metade_porcentagem : Double         read Fmetade_porcentagem    write Fmetade_porcentagem;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property code : WideString         read Fcode    write Fcode;
    property cst_cofins : WideString         read Fcst_cofins    write Fcst_cofins;
    property cst_pis : WideString         read Fcst_pis    write Fcst_pis;
    property metade_percentual : Double         read Fmetade_percentual    write Fmetade_percentual;
    property trib : WideString         read Ftrib    write Ftrib;

  end;

var
  Frm_ViewERPimportprodutos : TFrm_ViewERPimportprodutos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 54; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fracionado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ippt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iat); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].piscofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].kit); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].balanca_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tabela_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_interno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_externo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_caixa3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].embalagem_itens3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo_nf3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario_item_nf3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].generico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_piscofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sem_gtin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_metade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].metade_porcentagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].code); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].metade_percentual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].trib); 
    end; 
end; 

procedure TFrm_ViewERPimportprodutos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_atacado := Edit_preco_atacado.text;
      FController.Model.fracionado := Edit_fracionado.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.reducao := Edit_reducao.text;
      FController.Model.promocao := Edit_promocao.text;
      FController.Model.preco_promocao := Edit_preco_promocao.text;
      FController.Model.ippt := Edit_ippt.text;
      FController.Model.iat := Edit_iat.text;
      FController.Model.atacado := Edit_atacado.text;
      FController.Model.quantidade_atacado := Edit_quantidade_atacado.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.cst := Edit_cst.text;
      FController.Model.piscofins := Edit_piscofins.text;
      FController.Model.ean := Edit_ean.text;
      FController.Model.kit := Edit_kit.text;
      FController.Model.balanca_pdv := Edit_balanca_pdv.text;
      FController.Model.tabela_pdv := Edit_tabela_pdv.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.especial := Edit_especial.text;
      FController.Model.cfop_interno := Edit_cfop_interno.text;
      FController.Model.cfop_externo := Edit_cfop_externo.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.ean_caixa := Edit_ean_caixa.text;
      FController.Model.ean_caixa2 := Edit_ean_caixa2.text;
      FController.Model.ean_caixa3 := Edit_ean_caixa3.text;
      FController.Model.embalagem_itens := Edit_embalagem_itens.text;
      FController.Model.embalagem_itens2 := Edit_embalagem_itens2.text;
      FController.Model.embalagem_itens3 := Edit_embalagem_itens3.text;
      FController.Model.preco_custo_nf := Edit_preco_custo_nf.text;
      FController.Model.preco_custo_nf2 := Edit_preco_custo_nf2.text;
      FController.Model.preco_custo_nf3 := Edit_preco_custo_nf3.text;
      FController.Model.valor_unitario_item_nf := Edit_valor_unitario_item_nf.text;
      FController.Model.valor_unitario_item_nf2 := Edit_valor_unitario_item_nf2.text;
      FController.Model.valor_unitario_item_nf3 := Edit_valor_unitario_item_nf3.text;
      FController.Model.generico := Edit_generico.text;
      FController.Model.cst_piscofins := Edit_cst_piscofins.text;
      FController.Model.sem_gtin := Edit_sem_gtin.text;
      FController.Model.estoque_atual := Edit_estoque_atual.text;
      FController.Model.venda_metade := Edit_venda_metade.text;
      FController.Model.metade_porcentagem := Edit_metade_porcentagem.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.code := Edit_code.text;
      FController.Model.cst_cofins := Edit_cst_cofins.text;
      FController.Model.cst_pis := Edit_cst_pis.text;
      FController.Model.metade_percentual := Edit_metade_percentual.text;
      FController.Model.trib := Edit_trib.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportprodutos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportprodutos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportprodutos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportprodutos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportprodutos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportprodutos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportprodutos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 54;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_atacado;  
     Grid.Cells[inttostr(i),0] := fracionado;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := reducao;  
     Grid.Cells[inttostr(i),0] := promocao;  
     Grid.Cells[inttostr(i),0] := preco_promocao;  
     Grid.Cells[inttostr(i),0] := ippt;  
     Grid.Cells[inttostr(i),0] := iat;  
     Grid.Cells[inttostr(i),0] := atacado;  
     Grid.Cells[inttostr(i),0] := quantidade_atacado;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := cst;  
     Grid.Cells[inttostr(i),0] := piscofins;  
     Grid.Cells[inttostr(i),0] := ean;  
     Grid.Cells[inttostr(i),0] := kit;  
     Grid.Cells[inttostr(i),0] := balanca_pdv;  
     Grid.Cells[inttostr(i),0] := tabela_pdv;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := especial;  
     Grid.Cells[inttostr(i),0] := cfop_interno;  
     Grid.Cells[inttostr(i),0] := cfop_externo;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := ean_caixa;  
     Grid.Cells[inttostr(i),0] := ean_caixa2;  
     Grid.Cells[inttostr(i),0] := ean_caixa3;  
     Grid.Cells[inttostr(i),0] := embalagem_itens;  
     Grid.Cells[inttostr(i),0] := embalagem_itens2;  
     Grid.Cells[inttostr(i),0] := embalagem_itens3;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf2;  
     Grid.Cells[inttostr(i),0] := preco_custo_nf3;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf2;  
     Grid.Cells[inttostr(i),0] := valor_unitario_item_nf3;  
     Grid.Cells[inttostr(i),0] := generico;  
     Grid.Cells[inttostr(i),0] := cst_piscofins;  
     Grid.Cells[inttostr(i),0] := sem_gtin;  
     Grid.Cells[inttostr(i),0] := estoque_atual;  
     Grid.Cells[inttostr(i),0] := venda_metade;  
     Grid.Cells[inttostr(i),0] := metade_porcentagem;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := code;  
     Grid.Cells[inttostr(i),0] := cst_cofins;  
     Grid.Cells[inttostr(i),0] := cst_pis;  
     Grid.Cells[inttostr(i),0] := metade_percentual;  
     Grid.Cells[inttostr(i),0] := trib;  
end;

procedure TFrm_ViewERPimportprodutos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportprodutos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportprodutos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_grupo := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.unidade := Grid.Cells[4,Grid.row];
    FController.Model.preco_venda := Grid.Cells[5,Grid.row];
    FController.Model.preco_atacado := Grid.Cells[6,Grid.row];
    FController.Model.fracionado := Grid.Cells[7,Grid.row];
    FController.Model.st := Grid.Cells[8,Grid.row];
    FController.Model.icms := Grid.Cells[9,Grid.row];
    FController.Model.reducao := Grid.Cells[10,Grid.row];
    FController.Model.promocao := Grid.Cells[11,Grid.row];
    FController.Model.preco_promocao := Grid.Cells[12,Grid.row];
    FController.Model.ippt := Grid.Cells[13,Grid.row];
    FController.Model.iat := Grid.Cells[14,Grid.row];
    FController.Model.atacado := Grid.Cells[15,Grid.row];
    FController.Model.quantidade_atacado := Grid.Cells[16,Grid.row];
    FController.Model.ncm := Grid.Cells[17,Grid.row];
    FController.Model.cst := Grid.Cells[18,Grid.row];
    FController.Model.piscofins := Grid.Cells[19,Grid.row];
    FController.Model.ean := Grid.Cells[20,Grid.row];
    FController.Model.kit := Grid.Cells[21,Grid.row];
    FController.Model.balanca_pdv := Grid.Cells[22,Grid.row];
    FController.Model.tabela_pdv := Grid.Cells[23,Grid.row];
    FController.Model.preco_custo := Grid.Cells[24,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[25,Grid.row];
    FController.Model.especial := Grid.Cells[26,Grid.row];
    FController.Model.cfop_interno := Grid.Cells[27,Grid.row];
    FController.Model.cfop_externo := Grid.Cells[28,Grid.row];
    FController.Model.tipo := Grid.Cells[29,Grid.row];
    FController.Model.ean_caixa := Grid.Cells[30,Grid.row];
    FController.Model.ean_caixa2 := Grid.Cells[31,Grid.row];
    FController.Model.ean_caixa3 := Grid.Cells[32,Grid.row];
    FController.Model.embalagem_itens := Grid.Cells[33,Grid.row];
    FController.Model.embalagem_itens2 := Grid.Cells[34,Grid.row];
    FController.Model.embalagem_itens3 := Grid.Cells[35,Grid.row];
    FController.Model.preco_custo_nf := Grid.Cells[36,Grid.row];
    FController.Model.preco_custo_nf2 := Grid.Cells[37,Grid.row];
    FController.Model.preco_custo_nf3 := Grid.Cells[38,Grid.row];
    FController.Model.valor_unitario_item_nf := Grid.Cells[39,Grid.row];
    FController.Model.valor_unitario_item_nf2 := Grid.Cells[40,Grid.row];
    FController.Model.valor_unitario_item_nf3 := Grid.Cells[41,Grid.row];
    FController.Model.generico := Grid.Cells[42,Grid.row];
    FController.Model.cst_piscofins := Grid.Cells[43,Grid.row];
    FController.Model.sem_gtin := Grid.Cells[44,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[45,Grid.row];
    FController.Model.venda_metade := Grid.Cells[46,Grid.row];
    FController.Model.metade_porcentagem := Grid.Cells[47,Grid.row];
    FController.Model.cnpj := Grid.Cells[48,Grid.row];
    FController.Model.code := Grid.Cells[49,Grid.row];
    FController.Model.cst_cofins := Grid.Cells[50,Grid.row];
    FController.Model.cst_pis := Grid.Cells[51,Grid.row];
    FController.Model.metade_percentual := Grid.Cells[52,Grid.row];
    FController.Model.trib := Grid.Cells[53,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportprodutos.LimparTela;  
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

procedure TFrm_ViewERPimportprodutos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setfracionado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setreducao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpromocao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_promocao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setippt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setiat(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setatacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setquantidade_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpiscofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setkit(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setbalanca_pdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Settabela_pdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setespecial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcfop_interno(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcfop_externo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setean_caixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setean_caixa2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setean_caixa3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setembalagem_itens(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setembalagem_itens2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setembalagem_itens3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_custo_nf(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_custo_nf2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setpreco_custo_nf3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setvalor_unitario_item_nf(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setvalor_unitario_item_nf2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setvalor_unitario_item_nf3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setgenerico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcst_piscofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setsem_gtin(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setvenda_metade(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setmetade_porcentagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcode(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcst_cofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setcst_pis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Setmetade_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutos.Settrib(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
