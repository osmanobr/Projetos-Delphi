
unit View.ERP.carta_correcao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.carta_correcao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcartacorrecao = class(TForm) 
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
    FController : TControllerERPcartacorrecao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_contacorrente : WideString;
    Fagencia : WideString;
    Fcartao : WideString;
    Fvalor : Double;
    Fstatus : WideString;
    Fdata_pgto : TDateTime;
    Fid_forma : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_conta_baixa : WideString;
    Fid_forma_baixa : Integer;
    Ftaxa_adm : Double;
    Fnome_venda : WideString;
    Fclick : Boolean;
    Fcartao_condicao : WideString;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;
    Fvalor_recebido : Double;
    Ftaxa_bancaria : Double;
    Fvl_taxa_bancaria : Double;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fid_sub_forma : Integer;
    Fnome_forma : WideString;
    Fnome_sub_forma : WideString;
    Fid_uniao : Integer;
    Fid_usuario : Integer;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;
    Fid_credito : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_banco(const Value : Integer);
    procedure Setid_contacorrente(const Value : WideString);
    procedure Setagencia(const Value : WideString);
    procedure Setcartao(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setstatus(const Value : WideString);
    procedure Setdata_pgto(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_conta_baixa(const Value : WideString);
    procedure Setid_forma_baixa(const Value : Integer);
    procedure Settaxa_adm(const Value : Double);
    procedure Setnome_venda(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setcartao_condicao(const Value : WideString);
    procedure Setid_parcela_receber(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Setvalor_recebido(const Value : Double);
    procedure Settaxa_bancaria(const Value : Double);
    procedure Setvl_taxa_bancaria(const Value : Double);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setid_pagamentos(const Value : Integer);
    procedure Setid_sub_forma(const Value : Integer);
    procedure Setnome_forma(const Value : WideString);
    procedure Setnome_sub_forma(const Value : WideString);
    procedure Setid_uniao(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_cliser(const Value : Integer);
    procedure Setfilial(const Value : WideString);
    procedure Setmatriz(const Value : WideString);
    procedure Setid_credito(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property id_contacorrente : WideString         read Fid_contacorrente    write Fid_contacorrente;
    property agencia : WideString         read Fagencia    write Fagencia;
    property cartao : WideString         read Fcartao    write Fcartao;
    property valor : Double         read Fvalor    write Fvalor;
    property status : WideString         read Fstatus    write Fstatus;
    property data_pgto : TDateTime         read Fdata_pgto    write Fdata_pgto;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_conta_baixa : WideString         read Fid_conta_baixa    write Fid_conta_baixa;
    property id_forma_baixa : Integer         read Fid_forma_baixa    write Fid_forma_baixa;
    property taxa_adm : Double         read Ftaxa_adm    write Ftaxa_adm;
    property nome_venda : WideString         read Fnome_venda    write Fnome_venda;
    property click : Boolean         read Fclick    write Fclick;
    property cartao_condicao : WideString         read Fcartao_condicao    write Fcartao_condicao;
    property id_parcela_receber : Integer         read Fid_parcela_receber    write Fid_parcela_receber;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property valor_recebido : Double         read Fvalor_recebido    write Fvalor_recebido;
    property taxa_bancaria : Double         read Ftaxa_bancaria    write Ftaxa_bancaria;
    property vl_taxa_bancaria : Double         read Fvl_taxa_bancaria    write Fvl_taxa_bancaria;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property id_pagamentos : Integer         read Fid_pagamentos    write Fid_pagamentos;
    property id_sub_forma : Integer         read Fid_sub_forma    write Fid_sub_forma;
    property nome_forma : WideString         read Fnome_forma    write Fnome_forma;
    property nome_sub_forma : WideString         read Fnome_sub_forma    write Fnome_sub_forma;
    property id_uniao : Integer         read Fid_uniao    write Fid_uniao;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_cliser : Integer         read Fid_cliser    write Fid_cliser;
    property filial : WideString         read Ffilial    write Ffilial;
    property matriz : WideString         read Fmatriz    write Fmatriz;
    property id_credito : Integer         read Fid_credito    write Fid_credito;

  end;

var
  Frm_ViewERPcartacorrecao : TFrm_ViewERPcartacorrecao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 43; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_adm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao_condicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_parcela_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_recebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_bancaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_taxa_bancaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pagamentos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_sub_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_sub_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliser); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].filial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].matriz); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
    end; 
end; 

procedure TFrm_ViewERPcartacorrecao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.cartao := Edit_cartao.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.status := Edit_status.text;
      FController.Model.data_pgto := Edit_data_pgto.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_conta_baixa := Edit_id_conta_baixa.text;
      FController.Model.id_forma_baixa := Edit_id_forma_baixa.text;
      FController.Model.taxa_adm := Edit_taxa_adm.text;
      FController.Model.nome_venda := Edit_nome_venda.text;
      FController.Model.click := Edit_click.text;
      FController.Model.cartao_condicao := Edit_cartao_condicao.text;
      FController.Model.id_parcela_receber := Edit_id_parcela_receber.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.valor_recebido := Edit_valor_recebido.text;
      FController.Model.taxa_bancaria := Edit_taxa_bancaria.text;
      FController.Model.vl_taxa_bancaria := Edit_vl_taxa_bancaria.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.id_pagamentos := Edit_id_pagamentos.text;
      FController.Model.id_sub_forma := Edit_id_sub_forma.text;
      FController.Model.nome_forma := Edit_nome_forma.text;
      FController.Model.nome_sub_forma := Edit_nome_sub_forma.text;
      FController.Model.id_uniao := Edit_id_uniao.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_cliser := Edit_id_cliser.text;
      FController.Model.filial := Edit_filial.text;
      FController.Model.matriz := Edit_matriz.text;
      FController.Model.id_credito := Edit_id_credito.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcartacorrecao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcartacorrecao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcartacorrecao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcartacorrecao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcartacorrecao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcartacorrecao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcartacorrecao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 43;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := cartao;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := data_pgto;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_conta_baixa;  
     Grid.Cells[inttostr(i),0] := id_forma_baixa;  
     Grid.Cells[inttostr(i),0] := taxa_adm;  
     Grid.Cells[inttostr(i),0] := nome_venda;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := cartao_condicao;  
     Grid.Cells[inttostr(i),0] := id_parcela_receber;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := valor_recebido;  
     Grid.Cells[inttostr(i),0] := taxa_bancaria;  
     Grid.Cells[inttostr(i),0] := vl_taxa_bancaria;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := id_pagamentos;  
     Grid.Cells[inttostr(i),0] := id_sub_forma;  
     Grid.Cells[inttostr(i),0] := nome_forma;  
     Grid.Cells[inttostr(i),0] := nome_sub_forma;  
     Grid.Cells[inttostr(i),0] := id_uniao;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_cliser;  
     Grid.Cells[inttostr(i),0] := filial;  
     Grid.Cells[inttostr(i),0] := matriz;  
     Grid.Cells[inttostr(i),0] := id_credito;  
end;

procedure TFrm_ViewERPcartacorrecao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcartacorrecao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcartacorrecao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_emissao := Grid.Cells[2,Grid.row];
    FController.Model.data_vencto := Grid.Cells[3,Grid.row];
    FController.Model.documento := Grid.Cells[4,Grid.row];
    FController.Model.parcela := Grid.Cells[5,Grid.row];
    FController.Model.id_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.id_conta := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.id_banco := Grid.Cells[10,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[11,Grid.row];
    FController.Model.agencia := Grid.Cells[12,Grid.row];
    FController.Model.cartao := Grid.Cells[13,Grid.row];
    FController.Model.valor := Grid.Cells[14,Grid.row];
    FController.Model.status := Grid.Cells[15,Grid.row];
    FController.Model.data_pgto := Grid.Cells[16,Grid.row];
    FController.Model.id_forma := Grid.Cells[17,Grid.row];
    FController.Model.id_pedido := Grid.Cells[18,Grid.row];
    FController.Model.id_os := Grid.Cells[19,Grid.row];
    FController.Model.id_conta_baixa := Grid.Cells[20,Grid.row];
    FController.Model.id_forma_baixa := Grid.Cells[21,Grid.row];
    FController.Model.taxa_adm := Grid.Cells[22,Grid.row];
    FController.Model.nome_venda := Grid.Cells[23,Grid.row];
    FController.Model.click := Grid.Cells[24,Grid.row];
    FController.Model.cartao_condicao := Grid.Cells[25,Grid.row];
    FController.Model.id_parcela_receber := Grid.Cells[26,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[27,Grid.row];
    FController.Model.valor_recebido := Grid.Cells[28,Grid.row];
    FController.Model.taxa_bancaria := Grid.Cells[29,Grid.row];
    FController.Model.vl_taxa_bancaria := Grid.Cells[30,Grid.row];
    FController.Model.id_movimento := Grid.Cells[31,Grid.row];
    FController.Model.id_cupons := Grid.Cells[32,Grid.row];
    FController.Model.id_pagamentos := Grid.Cells[33,Grid.row];
    FController.Model.id_sub_forma := Grid.Cells[34,Grid.row];
    FController.Model.nome_forma := Grid.Cells[35,Grid.row];
    FController.Model.nome_sub_forma := Grid.Cells[36,Grid.row];
    FController.Model.id_uniao := Grid.Cells[37,Grid.row];
    FController.Model.id_usuario := Grid.Cells[38,Grid.row];
    FController.Model.id_cliser := Grid.Cells[39,Grid.row];
    FController.Model.filial := Grid.Cells[40,Grid.row];
    FController.Model.matriz := Grid.Cells[41,Grid.row];
    FController.Model.id_credito := Grid.Cells[42,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcartacorrecao.LimparTela;  
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

procedure TFrm_ViewERPcartacorrecao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_contacorrente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setagencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setcartao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setdata_pgto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_conta_baixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_forma_baixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Settaxa_adm(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setnome_venda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setcartao_condicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_parcela_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setvalor_recebido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Settaxa_bancaria(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setvl_taxa_bancaria(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_pagamentos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_sub_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setnome_forma(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setnome_sub_forma(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_cliser(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setfilial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setmatriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcartacorrecao.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
