
unit View.ERP.formacao_preco;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.formacao_preco, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPformacaopreco = class(TForm) 
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
    FController : TControllerERPformacaopreco; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcondicao : WideString;
    Fcaixa : WideString;
    Fcheque : WideString;
    Fcartao : WideString;
    Fcartao_condicao : WideString;
    Fcartao_taxa : Double;
    Ftabela_preco : WideString;
    Fcomissao : WideString;
    Fboleto : WideString;
    Ffinanciadora : WideString;
    Ftaxa_financiadora : Double;
    Fclick : Boolean;
    Fcarne : WideString;
    Fbandeira : WideString;
    Fvl_desconto : Double;
    Fpdv : Boolean;
    Ftroco : Boolean;
    Fpdv_dinheiro : Boolean;
    Fpdv_cheque : Boolean;
    Fpdv_ticket : Boolean;
    Fpdv_valecompras : Boolean;
    Fpdv_debito : Boolean;
    Fpdv_credito : Boolean;
    Fpdv_convenio : Boolean;
    Fpdv_pos : Boolean;
    Fpdv_boleto : Boolean;
    Fpdv_fatura : Boolean;
    Fpdv_creditos : Boolean;
    Fpdv_outros : Boolean;
    Fpdv_vasilhame : Boolean;
    Fliberacao_venda : Boolean;
    Fnfce_fin : Integer;
    Fnfce_bandeira : Integer;
    Finter_dias : Integer;
    Fbaixa_automatica : Boolean;
    Fbaixa_intervalo : indefinido;
    Fbaixa_caixa : Boolean;
    Fbaixa_id_caixa : Integer;
    Fbaixa_id_conta : Integer;
    Ffinanceira : Boolean;
    Fid_financeira : Integer;
    Fdeposito_transferencia : Boolean;
    Fativo : Boolean;
    Fcredito : WideString;
    Ftaxa_adicional : Double;
    Ftaxa_antecipacao : Double;
    Ftaxa_antecipacao_qd_umaparela : Boolean;
    Ftaxa_credito_parcelado : Double;
    Fpix : Boolean;
    Femissao_nfe_nfce_automatico : Boolean;
    Fpermissao_desconto : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setcondicao(const Value : WideString);
    procedure Setcaixa(const Value : WideString);
    procedure Setcheque(const Value : WideString);
    procedure Setcartao(const Value : WideString);
    procedure Setcartao_condicao(const Value : WideString);
    procedure Setcartao_taxa(const Value : Double);
    procedure Settabela_preco(const Value : WideString);
    procedure Setcomissao(const Value : WideString);
    procedure Setboleto(const Value : WideString);
    procedure Setfinanciadora(const Value : WideString);
    procedure Settaxa_financiadora(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setcarne(const Value : WideString);
    procedure Setbandeira(const Value : WideString);
    procedure Setvl_desconto(const Value : Double);
    procedure Setpdv(const Value : Boolean);
    procedure Settroco(const Value : Boolean);
    procedure Setpdv_dinheiro(const Value : Boolean);
    procedure Setpdv_cheque(const Value : Boolean);
    procedure Setpdv_ticket(const Value : Boolean);
    procedure Setpdv_valecompras(const Value : Boolean);
    procedure Setpdv_debito(const Value : Boolean);
    procedure Setpdv_credito(const Value : Boolean);
    procedure Setpdv_convenio(const Value : Boolean);
    procedure Setpdv_pos(const Value : Boolean);
    procedure Setpdv_boleto(const Value : Boolean);
    procedure Setpdv_fatura(const Value : Boolean);
    procedure Setpdv_creditos(const Value : Boolean);
    procedure Setpdv_outros(const Value : Boolean);
    procedure Setpdv_vasilhame(const Value : Boolean);
    procedure Setliberacao_venda(const Value : Boolean);
    procedure Setnfce_fin(const Value : Integer);
    procedure Setnfce_bandeira(const Value : Integer);
    procedure Setinter_dias(const Value : Integer);
    procedure Setbaixa_automatica(const Value : Boolean);
    procedure Setbaixa_intervalo(const Value : indefinido);
    procedure Setbaixa_caixa(const Value : Boolean);
    procedure Setbaixa_id_caixa(const Value : Integer);
    procedure Setbaixa_id_conta(const Value : Integer);
    procedure Setfinanceira(const Value : Boolean);
    procedure Setid_financeira(const Value : Integer);
    procedure Setdeposito_transferencia(const Value : Boolean);
    procedure Setativo(const Value : Boolean);
    procedure Setcredito(const Value : WideString);
    procedure Settaxa_adicional(const Value : Double);
    procedure Settaxa_antecipacao(const Value : Double);
    procedure Settaxa_antecipacao_qd_umaparela(const Value : Boolean);
    procedure Settaxa_credito_parcelado(const Value : Double);
    procedure Setpix(const Value : Boolean);
    procedure Setemissao_nfe_nfce_automatico(const Value : Boolean);
    procedure Setpermissao_desconto(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property condicao : WideString         read Fcondicao    write Fcondicao;
    property caixa : WideString         read Fcaixa    write Fcaixa;
    property cheque : WideString         read Fcheque    write Fcheque;
    property cartao : WideString         read Fcartao    write Fcartao;
    property cartao_condicao : WideString         read Fcartao_condicao    write Fcartao_condicao;
    property cartao_taxa : Double         read Fcartao_taxa    write Fcartao_taxa;
    property tabela_preco : WideString         read Ftabela_preco    write Ftabela_preco;
    property comissao : WideString         read Fcomissao    write Fcomissao;
    property boleto : WideString         read Fboleto    write Fboleto;
    property financiadora : WideString         read Ffinanciadora    write Ffinanciadora;
    property taxa_financiadora : Double         read Ftaxa_financiadora    write Ftaxa_financiadora;
    property click : Boolean         read Fclick    write Fclick;
    property carne : WideString         read Fcarne    write Fcarne;
    property bandeira : WideString         read Fbandeira    write Fbandeira;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property pdv : Boolean         read Fpdv    write Fpdv;
    property troco : Boolean         read Ftroco    write Ftroco;
    property pdv_dinheiro : Boolean         read Fpdv_dinheiro    write Fpdv_dinheiro;
    property pdv_cheque : Boolean         read Fpdv_cheque    write Fpdv_cheque;
    property pdv_ticket : Boolean         read Fpdv_ticket    write Fpdv_ticket;
    property pdv_valecompras : Boolean         read Fpdv_valecompras    write Fpdv_valecompras;
    property pdv_debito : Boolean         read Fpdv_debito    write Fpdv_debito;
    property pdv_credito : Boolean         read Fpdv_credito    write Fpdv_credito;
    property pdv_convenio : Boolean         read Fpdv_convenio    write Fpdv_convenio;
    property pdv_pos : Boolean         read Fpdv_pos    write Fpdv_pos;
    property pdv_boleto : Boolean         read Fpdv_boleto    write Fpdv_boleto;
    property pdv_fatura : Boolean         read Fpdv_fatura    write Fpdv_fatura;
    property pdv_creditos : Boolean         read Fpdv_creditos    write Fpdv_creditos;
    property pdv_outros : Boolean         read Fpdv_outros    write Fpdv_outros;
    property pdv_vasilhame : Boolean         read Fpdv_vasilhame    write Fpdv_vasilhame;
    property liberacao_venda : Boolean         read Fliberacao_venda    write Fliberacao_venda;
    property nfce_fin : Integer         read Fnfce_fin    write Fnfce_fin;
    property nfce_bandeira : Integer         read Fnfce_bandeira    write Fnfce_bandeira;
    property inter_dias : Integer         read Finter_dias    write Finter_dias;
    property baixa_automatica : Boolean         read Fbaixa_automatica    write Fbaixa_automatica;
    property baixa_intervalo : indefinido         read Fbaixa_intervalo    write Fbaixa_intervalo;
    property baixa_caixa : Boolean         read Fbaixa_caixa    write Fbaixa_caixa;
    property baixa_id_caixa : Integer         read Fbaixa_id_caixa    write Fbaixa_id_caixa;
    property baixa_id_conta : Integer         read Fbaixa_id_conta    write Fbaixa_id_conta;
    property financeira : Boolean         read Ffinanceira    write Ffinanceira;
    property id_financeira : Integer         read Fid_financeira    write Fid_financeira;
    property deposito_transferencia : Boolean         read Fdeposito_transferencia    write Fdeposito_transferencia;
    property ativo : Boolean         read Fativo    write Fativo;
    property credito : WideString         read Fcredito    write Fcredito;
    property taxa_adicional : Double         read Ftaxa_adicional    write Ftaxa_adicional;
    property taxa_antecipacao : Double         read Ftaxa_antecipacao    write Ftaxa_antecipacao;
    property taxa_antecipacao_qd_umaparela : Boolean         read Ftaxa_antecipacao_qd_umaparela    write Ftaxa_antecipacao_qd_umaparela;
    property taxa_credito_parcelado : Double         read Ftaxa_credito_parcelado    write Ftaxa_credito_parcelado;
    property pix : Boolean         read Fpix    write Fpix;
    property emissao_nfe_nfce_automatico : Boolean         read Femissao_nfe_nfce_automatico    write Femissao_nfe_nfce_automatico;
    property permissao_desconto : Boolean         read Fpermissao_desconto    write Fpermissao_desconto;

  end;

var
  Frm_ViewERPformacaopreco : TFrm_ViewERPformacaopreco; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao_condicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao_taxa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tabela_preco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].financiadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_financiadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carne); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bandeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].troco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_dinheiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_cheque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_ticket); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_valecompras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_debito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_convenio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_pos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_fatura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_creditos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_outros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pdv_vasilhame); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].liberacao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_fin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_bandeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inter_dias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_automatica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].financeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_financeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].deposito_transferencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_adicional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_antecipacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_antecipacao_qd_umaparela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_credito_parcelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pix); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].emissao_nfe_nfce_automatico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].permissao_desconto); 
    end; 
end; 

procedure TFrm_ViewERPformacaopreco.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.condicao := Edit_condicao.text;
      FController.Model.caixa := Edit_caixa.text;
      FController.Model.cheque := Edit_cheque.text;
      FController.Model.cartao := Edit_cartao.text;
      FController.Model.cartao_condicao := Edit_cartao_condicao.text;
      FController.Model.cartao_taxa := Edit_cartao_taxa.text;
      FController.Model.tabela_preco := Edit_tabela_preco.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.boleto := Edit_boleto.text;
      FController.Model.financiadora := Edit_financiadora.text;
      FController.Model.taxa_financiadora := Edit_taxa_financiadora.text;
      FController.Model.click := Edit_click.text;
      FController.Model.carne := Edit_carne.text;
      FController.Model.bandeira := Edit_bandeira.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.pdv := Edit_pdv.text;
      FController.Model.troco := Edit_troco.text;
      FController.Model.pdv_dinheiro := Edit_pdv_dinheiro.text;
      FController.Model.pdv_cheque := Edit_pdv_cheque.text;
      FController.Model.pdv_ticket := Edit_pdv_ticket.text;
      FController.Model.pdv_valecompras := Edit_pdv_valecompras.text;
      FController.Model.pdv_debito := Edit_pdv_debito.text;
      FController.Model.pdv_credito := Edit_pdv_credito.text;
      FController.Model.pdv_convenio := Edit_pdv_convenio.text;
      FController.Model.pdv_pos := Edit_pdv_pos.text;
      FController.Model.pdv_boleto := Edit_pdv_boleto.text;
      FController.Model.pdv_fatura := Edit_pdv_fatura.text;
      FController.Model.pdv_creditos := Edit_pdv_creditos.text;
      FController.Model.pdv_outros := Edit_pdv_outros.text;
      FController.Model.pdv_vasilhame := Edit_pdv_vasilhame.text;
      FController.Model.liberacao_venda := Edit_liberacao_venda.text;
      FController.Model.nfce_fin := Edit_nfce_fin.text;
      FController.Model.nfce_bandeira := Edit_nfce_bandeira.text;
      FController.Model.inter_dias := Edit_inter_dias.text;
      FController.Model.baixa_automatica := Edit_baixa_automatica.text;
      FController.Model.baixa_intervalo := Edit_baixa_intervalo.text;
      FController.Model.baixa_caixa := Edit_baixa_caixa.text;
      FController.Model.baixa_id_caixa := Edit_baixa_id_caixa.text;
      FController.Model.baixa_id_conta := Edit_baixa_id_conta.text;
      FController.Model.financeira := Edit_financeira.text;
      FController.Model.id_financeira := Edit_id_financeira.text;
      FController.Model.deposito_transferencia := Edit_deposito_transferencia.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.credito := Edit_credito.text;
      FController.Model.taxa_adicional := Edit_taxa_adicional.text;
      FController.Model.taxa_antecipacao := Edit_taxa_antecipacao.text;
      FController.Model.taxa_antecipacao_qd_umaparela := Edit_taxa_antecipacao_qd_umaparela.text;
      FController.Model.taxa_credito_parcelado := Edit_taxa_credito_parcelado.text;
      FController.Model.pix := Edit_pix.text;
      FController.Model.emissao_nfe_nfce_automatico := Edit_emissao_nfe_nfce_automatico.text;
      FController.Model.permissao_desconto := Edit_permissao_desconto.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPformacaopreco.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPformacaopreco.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPformacaopreco.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPformacaopreco.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPformacaopreco.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPformacaopreco.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPformacaopreco.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 54;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := condicao;  
     Grid.Cells[inttostr(i),0] := caixa;  
     Grid.Cells[inttostr(i),0] := cheque;  
     Grid.Cells[inttostr(i),0] := cartao;  
     Grid.Cells[inttostr(i),0] := cartao_condicao;  
     Grid.Cells[inttostr(i),0] := cartao_taxa;  
     Grid.Cells[inttostr(i),0] := tabela_preco;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := boleto;  
     Grid.Cells[inttostr(i),0] := financiadora;  
     Grid.Cells[inttostr(i),0] := taxa_financiadora;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := carne;  
     Grid.Cells[inttostr(i),0] := bandeira;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := pdv;  
     Grid.Cells[inttostr(i),0] := troco;  
     Grid.Cells[inttostr(i),0] := pdv_dinheiro;  
     Grid.Cells[inttostr(i),0] := pdv_cheque;  
     Grid.Cells[inttostr(i),0] := pdv_ticket;  
     Grid.Cells[inttostr(i),0] := pdv_valecompras;  
     Grid.Cells[inttostr(i),0] := pdv_debito;  
     Grid.Cells[inttostr(i),0] := pdv_credito;  
     Grid.Cells[inttostr(i),0] := pdv_convenio;  
     Grid.Cells[inttostr(i),0] := pdv_pos;  
     Grid.Cells[inttostr(i),0] := pdv_boleto;  
     Grid.Cells[inttostr(i),0] := pdv_fatura;  
     Grid.Cells[inttostr(i),0] := pdv_creditos;  
     Grid.Cells[inttostr(i),0] := pdv_outros;  
     Grid.Cells[inttostr(i),0] := pdv_vasilhame;  
     Grid.Cells[inttostr(i),0] := liberacao_venda;  
     Grid.Cells[inttostr(i),0] := nfce_fin;  
     Grid.Cells[inttostr(i),0] := nfce_bandeira;  
     Grid.Cells[inttostr(i),0] := inter_dias;  
     Grid.Cells[inttostr(i),0] := baixa_automatica;  
     Grid.Cells[inttostr(i),0] := baixa_intervalo;  
     Grid.Cells[inttostr(i),0] := baixa_caixa;  
     Grid.Cells[inttostr(i),0] := baixa_id_caixa;  
     Grid.Cells[inttostr(i),0] := baixa_id_conta;  
     Grid.Cells[inttostr(i),0] := financeira;  
     Grid.Cells[inttostr(i),0] := id_financeira;  
     Grid.Cells[inttostr(i),0] := deposito_transferencia;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := credito;  
     Grid.Cells[inttostr(i),0] := taxa_adicional;  
     Grid.Cells[inttostr(i),0] := taxa_antecipacao;  
     Grid.Cells[inttostr(i),0] := taxa_antecipacao_qd_umaparela;  
     Grid.Cells[inttostr(i),0] := taxa_credito_parcelado;  
     Grid.Cells[inttostr(i),0] := pix;  
     Grid.Cells[inttostr(i),0] := emissao_nfe_nfce_automatico;  
     Grid.Cells[inttostr(i),0] := permissao_desconto;  
end;

procedure TFrm_ViewERPformacaopreco.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPformacaopreco.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPformacaopreco.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.condicao := Grid.Cells[3,Grid.row];
    FController.Model.caixa := Grid.Cells[4,Grid.row];
    FController.Model.cheque := Grid.Cells[5,Grid.row];
    FController.Model.cartao := Grid.Cells[6,Grid.row];
    FController.Model.cartao_condicao := Grid.Cells[7,Grid.row];
    FController.Model.cartao_taxa := Grid.Cells[8,Grid.row];
    FController.Model.tabela_preco := Grid.Cells[9,Grid.row];
    FController.Model.comissao := Grid.Cells[10,Grid.row];
    FController.Model.boleto := Grid.Cells[11,Grid.row];
    FController.Model.financiadora := Grid.Cells[12,Grid.row];
    FController.Model.taxa_financiadora := Grid.Cells[13,Grid.row];
    FController.Model.click := Grid.Cells[14,Grid.row];
    FController.Model.carne := Grid.Cells[15,Grid.row];
    FController.Model.bandeira := Grid.Cells[16,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[17,Grid.row];
    FController.Model.pdv := Grid.Cells[18,Grid.row];
    FController.Model.troco := Grid.Cells[19,Grid.row];
    FController.Model.pdv_dinheiro := Grid.Cells[20,Grid.row];
    FController.Model.pdv_cheque := Grid.Cells[21,Grid.row];
    FController.Model.pdv_ticket := Grid.Cells[22,Grid.row];
    FController.Model.pdv_valecompras := Grid.Cells[23,Grid.row];
    FController.Model.pdv_debito := Grid.Cells[24,Grid.row];
    FController.Model.pdv_credito := Grid.Cells[25,Grid.row];
    FController.Model.pdv_convenio := Grid.Cells[26,Grid.row];
    FController.Model.pdv_pos := Grid.Cells[27,Grid.row];
    FController.Model.pdv_boleto := Grid.Cells[28,Grid.row];
    FController.Model.pdv_fatura := Grid.Cells[29,Grid.row];
    FController.Model.pdv_creditos := Grid.Cells[30,Grid.row];
    FController.Model.pdv_outros := Grid.Cells[31,Grid.row];
    FController.Model.pdv_vasilhame := Grid.Cells[32,Grid.row];
    FController.Model.liberacao_venda := Grid.Cells[33,Grid.row];
    FController.Model.nfce_fin := Grid.Cells[34,Grid.row];
    FController.Model.nfce_bandeira := Grid.Cells[35,Grid.row];
    FController.Model.inter_dias := Grid.Cells[36,Grid.row];
    FController.Model.baixa_automatica := Grid.Cells[37,Grid.row];
    FController.Model.baixa_intervalo := Grid.Cells[38,Grid.row];
    FController.Model.baixa_caixa := Grid.Cells[39,Grid.row];
    FController.Model.baixa_id_caixa := Grid.Cells[40,Grid.row];
    FController.Model.baixa_id_conta := Grid.Cells[41,Grid.row];
    FController.Model.financeira := Grid.Cells[42,Grid.row];
    FController.Model.id_financeira := Grid.Cells[43,Grid.row];
    FController.Model.deposito_transferencia := Grid.Cells[44,Grid.row];
    FController.Model.ativo := Grid.Cells[45,Grid.row];
    FController.Model.credito := Grid.Cells[46,Grid.row];
    FController.Model.taxa_adicional := Grid.Cells[47,Grid.row];
    FController.Model.taxa_antecipacao := Grid.Cells[48,Grid.row];
    FController.Model.taxa_antecipacao_qd_umaparela := Grid.Cells[49,Grid.row];
    FController.Model.taxa_credito_parcelado := Grid.Cells[50,Grid.row];
    FController.Model.pix := Grid.Cells[51,Grid.row];
    FController.Model.emissao_nfe_nfce_automatico := Grid.Cells[52,Grid.row];
    FController.Model.permissao_desconto := Grid.Cells[53,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPformacaopreco.LimparTela;  
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

procedure TFrm_ViewERPformacaopreco.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcondicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcaixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcheque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcartao_condicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcartao_taxa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settabela_preco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcomissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setboleto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setfinanciadora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settaxa_financiadora(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcarne(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbandeira(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settroco(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_dinheiro(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_cheque(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_ticket(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_valecompras(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_debito(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_credito(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_convenio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_pos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_boleto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_fatura(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_creditos(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_outros(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpdv_vasilhame(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setliberacao_venda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setnfce_fin(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setnfce_bandeira(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setinter_dias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbaixa_automatica(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbaixa_intervalo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbaixa_caixa(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbaixa_id_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setbaixa_id_conta(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setfinanceira(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setid_financeira(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setdeposito_transferencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setcredito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settaxa_adicional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settaxa_antecipacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settaxa_antecipacao_qd_umaparela(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Settaxa_credito_parcelado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpix(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setemissao_nfe_nfce_automatico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformacaopreco.Setpermissao_desconto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
