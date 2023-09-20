
unit View.ERP.empresas;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresas = class(TForm) 
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
    FController : TControllerERPempresas; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fbanco : Integer;
    Fagencia : WideString;
    Fagencia_digito : WideString;
    Fcodigo_cedente : WideString;
    Fconta : WideString;
    Fconta_digito : WideString;
    Fconvenio : WideString;
    Ftipo_inscricao : Integer;
    Flocal_pagamento : WideString;
    Fespecie_documento : WideString;
    Fespecie_moeda : WideString;
    Fcarteira : WideString;
    Fmensagem : indefinido;
    Finstrucao_1 : WideString;
    Finstrucao_2 : WideString;
    Faceite : Integer;
    Ftamanho_convenio : WideString;
    Fmensagem_padrao : Boolean;
    Ftamanho_nosso_numero : Integer;
    Fid_boleto : indefinido;
    Fremessa : WideString;
    Fidentificacao_carteira : WideString;
    Fimprimir_numero_nfe : Boolean;
    Fcodigo_protesto : Integer;
    Fdias_protesto : Integer;
    Fretorno_completo : Boolean;
    Fnumero_remessa : Integer;
    Fmodalidade : WideString;
    Fdata_ultima_remessa : TDateTime;
    Fsequencia_remessa : Integer;
    Fpasta_remessa : WideString;
    Fpasta_retorno : WideString;
    Fativo : Boolean;
    Fmulta : Double;
    Fjuros_mes : Double;
    Fjuros_dia : Double;
    Fdesc_abatimento : Double;
    Fconta_retorno : WideString;
    Fconta_digito_retorno : WideString;
    Fimprimir_juros : Boolean;
    Fimprimir_multa : Boolean;
    Fdesconto_antecipacao : Double;
    Fdias_antecipacao : Integer;
    Fid_fornecedor : Integer;
    Ftamanho_documento : Integer;
    Fimprimir_observacao_venda : Boolean;
    Fdesconto_valor : Boolean;
    Fcarencia_pgto_multa : Integer;
    Fcarencia_pgto_juros : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setbanco(const Value : Integer);
    procedure Setagencia(const Value : WideString);
    procedure Setagencia_digito(const Value : WideString);
    procedure Setcodigo_cedente(const Value : WideString);
    procedure Setconta(const Value : WideString);
    procedure Setconta_digito(const Value : WideString);
    procedure Setconvenio(const Value : WideString);
    procedure Settipo_inscricao(const Value : Integer);
    procedure Setlocal_pagamento(const Value : WideString);
    procedure Setespecie_documento(const Value : WideString);
    procedure Setespecie_moeda(const Value : WideString);
    procedure Setcarteira(const Value : WideString);
    procedure Setmensagem(const Value : indefinido);
    procedure Setinstrucao_1(const Value : WideString);
    procedure Setinstrucao_2(const Value : WideString);
    procedure Setaceite(const Value : Integer);
    procedure Settamanho_convenio(const Value : WideString);
    procedure Setmensagem_padrao(const Value : Boolean);
    procedure Settamanho_nosso_numero(const Value : Integer);
    procedure Setid_boleto(const Value : indefinido);
    procedure Setremessa(const Value : WideString);
    procedure Setidentificacao_carteira(const Value : WideString);
    procedure Setimprimir_numero_nfe(const Value : Boolean);
    procedure Setcodigo_protesto(const Value : Integer);
    procedure Setdias_protesto(const Value : Integer);
    procedure Setretorno_completo(const Value : Boolean);
    procedure Setnumero_remessa(const Value : Integer);
    procedure Setmodalidade(const Value : WideString);
    procedure Setdata_ultima_remessa(const Value : TDateTime);
    procedure Setsequencia_remessa(const Value : Integer);
    procedure Setpasta_remessa(const Value : WideString);
    procedure Setpasta_retorno(const Value : WideString);
    procedure Setativo(const Value : Boolean);
    procedure Setmulta(const Value : Double);
    procedure Setjuros_mes(const Value : Double);
    procedure Setjuros_dia(const Value : Double);
    procedure Setdesc_abatimento(const Value : Double);
    procedure Setconta_retorno(const Value : WideString);
    procedure Setconta_digito_retorno(const Value : WideString);
    procedure Setimprimir_juros(const Value : Boolean);
    procedure Setimprimir_multa(const Value : Boolean);
    procedure Setdesconto_antecipacao(const Value : Double);
    procedure Setdias_antecipacao(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Settamanho_documento(const Value : Integer);
    procedure Setimprimir_observacao_venda(const Value : Boolean);
    procedure Setdesconto_valor(const Value : Boolean);
    procedure Setcarencia_pgto_multa(const Value : Integer);
    procedure Setcarencia_pgto_juros(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property banco : Integer         read Fbanco    write Fbanco;
    property agencia : WideString         read Fagencia    write Fagencia;
    property agencia_digito : WideString         read Fagencia_digito    write Fagencia_digito;
    property codigo_cedente : WideString         read Fcodigo_cedente    write Fcodigo_cedente;
    property conta : WideString         read Fconta    write Fconta;
    property conta_digito : WideString         read Fconta_digito    write Fconta_digito;
    property convenio : WideString         read Fconvenio    write Fconvenio;
    property tipo_inscricao : Integer         read Ftipo_inscricao    write Ftipo_inscricao;
    property local_pagamento : WideString         read Flocal_pagamento    write Flocal_pagamento;
    property especie_documento : WideString         read Fespecie_documento    write Fespecie_documento;
    property especie_moeda : WideString         read Fespecie_moeda    write Fespecie_moeda;
    property carteira : WideString         read Fcarteira    write Fcarteira;
    property mensagem : indefinido         read Fmensagem    write Fmensagem;
    property instrucao_1 : WideString         read Finstrucao_1    write Finstrucao_1;
    property instrucao_2 : WideString         read Finstrucao_2    write Finstrucao_2;
    property aceite : Integer         read Faceite    write Faceite;
    property tamanho_convenio : WideString         read Ftamanho_convenio    write Ftamanho_convenio;
    property mensagem_padrao : Boolean         read Fmensagem_padrao    write Fmensagem_padrao;
    property tamanho_nosso_numero : Integer         read Ftamanho_nosso_numero    write Ftamanho_nosso_numero;
    property id_boleto : indefinido         read Fid_boleto    write Fid_boleto;
    property remessa : WideString         read Fremessa    write Fremessa;
    property identificacao_carteira : WideString         read Fidentificacao_carteira    write Fidentificacao_carteira;
    property imprimir_numero_nfe : Boolean         read Fimprimir_numero_nfe    write Fimprimir_numero_nfe;
    property codigo_protesto : Integer         read Fcodigo_protesto    write Fcodigo_protesto;
    property dias_protesto : Integer         read Fdias_protesto    write Fdias_protesto;
    property retorno_completo : Boolean         read Fretorno_completo    write Fretorno_completo;
    property numero_remessa : Integer         read Fnumero_remessa    write Fnumero_remessa;
    property modalidade : WideString         read Fmodalidade    write Fmodalidade;
    property data_ultima_remessa : TDateTime         read Fdata_ultima_remessa    write Fdata_ultima_remessa;
    property sequencia_remessa : Integer         read Fsequencia_remessa    write Fsequencia_remessa;
    property pasta_remessa : WideString         read Fpasta_remessa    write Fpasta_remessa;
    property pasta_retorno : WideString         read Fpasta_retorno    write Fpasta_retorno;
    property ativo : Boolean         read Fativo    write Fativo;
    property multa : Double         read Fmulta    write Fmulta;
    property juros_mes : Double         read Fjuros_mes    write Fjuros_mes;
    property juros_dia : Double         read Fjuros_dia    write Fjuros_dia;
    property desc_abatimento : Double         read Fdesc_abatimento    write Fdesc_abatimento;
    property conta_retorno : WideString         read Fconta_retorno    write Fconta_retorno;
    property conta_digito_retorno : WideString         read Fconta_digito_retorno    write Fconta_digito_retorno;
    property imprimir_juros : Boolean         read Fimprimir_juros    write Fimprimir_juros;
    property imprimir_multa : Boolean         read Fimprimir_multa    write Fimprimir_multa;
    property desconto_antecipacao : Double         read Fdesconto_antecipacao    write Fdesconto_antecipacao;
    property dias_antecipacao : Integer         read Fdias_antecipacao    write Fdias_antecipacao;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property tamanho_documento : Integer         read Ftamanho_documento    write Ftamanho_documento;
    property imprimir_observacao_venda : Boolean         read Fimprimir_observacao_venda    write Fimprimir_observacao_venda;
    property desconto_valor : Boolean         read Fdesconto_valor    write Fdesconto_valor;
    property carencia_pgto_multa : Integer         read Fcarencia_pgto_multa    write Fcarencia_pgto_multa;
    property carencia_pgto_juros : Integer         read Fcarencia_pgto_juros    write Fcarencia_pgto_juros;

  end;

var
  Frm_ViewERPempresas : TFrm_ViewERPempresas; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 51; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia_digito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_cedente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta_digito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].convenio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_inscricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].local_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especie_documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especie_moeda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carteira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].instrucao_1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].instrucao_2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aceite); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tamanho_convenio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagem_padrao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tamanho_nosso_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].remessa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].identificacao_carteira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_numero_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].retorno_completo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_remessa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ultima_remessa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sequencia_remessa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pasta_remessa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pasta_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros_mes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros_dia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desc_abatimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta_digito_retorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_antecipacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_antecipacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tamanho_documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imprimir_observacao_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carencia_pgto_multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carencia_pgto_juros); 
    end; 
end; 

procedure TFrm_ViewERPempresas.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.banco := Edit_banco.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.agencia_digito := Edit_agencia_digito.text;
      FController.Model.codigo_cedente := Edit_codigo_cedente.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.conta_digito := Edit_conta_digito.text;
      FController.Model.convenio := Edit_convenio.text;
      FController.Model.tipo_inscricao := Edit_tipo_inscricao.text;
      FController.Model.local_pagamento := Edit_local_pagamento.text;
      FController.Model.especie_documento := Edit_especie_documento.text;
      FController.Model.especie_moeda := Edit_especie_moeda.text;
      FController.Model.carteira := Edit_carteira.text;
      FController.Model.mensagem := Edit_mensagem.text;
      FController.Model.instrucao_1 := Edit_instrucao_1.text;
      FController.Model.instrucao_2 := Edit_instrucao_2.text;
      FController.Model.aceite := Edit_aceite.text;
      FController.Model.tamanho_convenio := Edit_tamanho_convenio.text;
      FController.Model.mensagem_padrao := Edit_mensagem_padrao.text;
      FController.Model.tamanho_nosso_numero := Edit_tamanho_nosso_numero.text;
      FController.Model.id_boleto := Edit_id_boleto.text;
      FController.Model.remessa := Edit_remessa.text;
      FController.Model.identificacao_carteira := Edit_identificacao_carteira.text;
      FController.Model.imprimir_numero_nfe := Edit_imprimir_numero_nfe.text;
      FController.Model.codigo_protesto := Edit_codigo_protesto.text;
      FController.Model.dias_protesto := Edit_dias_protesto.text;
      FController.Model.retorno_completo := Edit_retorno_completo.text;
      FController.Model.numero_remessa := Edit_numero_remessa.text;
      FController.Model.modalidade := Edit_modalidade.text;
      FController.Model.data_ultima_remessa := Edit_data_ultima_remessa.text;
      FController.Model.sequencia_remessa := Edit_sequencia_remessa.text;
      FController.Model.pasta_remessa := Edit_pasta_remessa.text;
      FController.Model.pasta_retorno := Edit_pasta_retorno.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.multa := Edit_multa.text;
      FController.Model.juros_mes := Edit_juros_mes.text;
      FController.Model.juros_dia := Edit_juros_dia.text;
      FController.Model.desc_abatimento := Edit_desc_abatimento.text;
      FController.Model.conta_retorno := Edit_conta_retorno.text;
      FController.Model.conta_digito_retorno := Edit_conta_digito_retorno.text;
      FController.Model.imprimir_juros := Edit_imprimir_juros.text;
      FController.Model.imprimir_multa := Edit_imprimir_multa.text;
      FController.Model.desconto_antecipacao := Edit_desconto_antecipacao.text;
      FController.Model.dias_antecipacao := Edit_dias_antecipacao.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.tamanho_documento := Edit_tamanho_documento.text;
      FController.Model.imprimir_observacao_venda := Edit_imprimir_observacao_venda.text;
      FController.Model.desconto_valor := Edit_desconto_valor.text;
      FController.Model.carencia_pgto_multa := Edit_carencia_pgto_multa.text;
      FController.Model.carencia_pgto_juros := Edit_carencia_pgto_juros.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresas.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresas.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresas.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresas.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresas.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresas.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresas.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 51;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := banco;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := agencia_digito;  
     Grid.Cells[inttostr(i),0] := codigo_cedente;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := conta_digito;  
     Grid.Cells[inttostr(i),0] := convenio;  
     Grid.Cells[inttostr(i),0] := tipo_inscricao;  
     Grid.Cells[inttostr(i),0] := local_pagamento;  
     Grid.Cells[inttostr(i),0] := especie_documento;  
     Grid.Cells[inttostr(i),0] := especie_moeda;  
     Grid.Cells[inttostr(i),0] := carteira;  
     Grid.Cells[inttostr(i),0] := mensagem;  
     Grid.Cells[inttostr(i),0] := instrucao_1;  
     Grid.Cells[inttostr(i),0] := instrucao_2;  
     Grid.Cells[inttostr(i),0] := aceite;  
     Grid.Cells[inttostr(i),0] := tamanho_convenio;  
     Grid.Cells[inttostr(i),0] := mensagem_padrao;  
     Grid.Cells[inttostr(i),0] := tamanho_nosso_numero;  
     Grid.Cells[inttostr(i),0] := id_boleto;  
     Grid.Cells[inttostr(i),0] := remessa;  
     Grid.Cells[inttostr(i),0] := identificacao_carteira;  
     Grid.Cells[inttostr(i),0] := imprimir_numero_nfe;  
     Grid.Cells[inttostr(i),0] := codigo_protesto;  
     Grid.Cells[inttostr(i),0] := dias_protesto;  
     Grid.Cells[inttostr(i),0] := retorno_completo;  
     Grid.Cells[inttostr(i),0] := numero_remessa;  
     Grid.Cells[inttostr(i),0] := modalidade;  
     Grid.Cells[inttostr(i),0] := data_ultima_remessa;  
     Grid.Cells[inttostr(i),0] := sequencia_remessa;  
     Grid.Cells[inttostr(i),0] := pasta_remessa;  
     Grid.Cells[inttostr(i),0] := pasta_retorno;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := multa;  
     Grid.Cells[inttostr(i),0] := juros_mes;  
     Grid.Cells[inttostr(i),0] := juros_dia;  
     Grid.Cells[inttostr(i),0] := desc_abatimento;  
     Grid.Cells[inttostr(i),0] := conta_retorno;  
     Grid.Cells[inttostr(i),0] := conta_digito_retorno;  
     Grid.Cells[inttostr(i),0] := imprimir_juros;  
     Grid.Cells[inttostr(i),0] := imprimir_multa;  
     Grid.Cells[inttostr(i),0] := desconto_antecipacao;  
     Grid.Cells[inttostr(i),0] := dias_antecipacao;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := tamanho_documento;  
     Grid.Cells[inttostr(i),0] := imprimir_observacao_venda;  
     Grid.Cells[inttostr(i),0] := desconto_valor;  
     Grid.Cells[inttostr(i),0] := carencia_pgto_multa;  
     Grid.Cells[inttostr(i),0] := carencia_pgto_juros;  
end;

procedure TFrm_ViewERPempresas.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresas.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresas.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.banco := Grid.Cells[2,Grid.row];
    FController.Model.agencia := Grid.Cells[3,Grid.row];
    FController.Model.agencia_digito := Grid.Cells[4,Grid.row];
    FController.Model.codigo_cedente := Grid.Cells[5,Grid.row];
    FController.Model.conta := Grid.Cells[6,Grid.row];
    FController.Model.conta_digito := Grid.Cells[7,Grid.row];
    FController.Model.convenio := Grid.Cells[8,Grid.row];
    FController.Model.tipo_inscricao := Grid.Cells[9,Grid.row];
    FController.Model.local_pagamento := Grid.Cells[10,Grid.row];
    FController.Model.especie_documento := Grid.Cells[11,Grid.row];
    FController.Model.especie_moeda := Grid.Cells[12,Grid.row];
    FController.Model.carteira := Grid.Cells[13,Grid.row];
    FController.Model.mensagem := Grid.Cells[14,Grid.row];
    FController.Model.instrucao_1 := Grid.Cells[15,Grid.row];
    FController.Model.instrucao_2 := Grid.Cells[16,Grid.row];
    FController.Model.aceite := Grid.Cells[17,Grid.row];
    FController.Model.tamanho_convenio := Grid.Cells[18,Grid.row];
    FController.Model.mensagem_padrao := Grid.Cells[19,Grid.row];
    FController.Model.tamanho_nosso_numero := Grid.Cells[20,Grid.row];
    FController.Model.id_boleto := Grid.Cells[21,Grid.row];
    FController.Model.remessa := Grid.Cells[22,Grid.row];
    FController.Model.identificacao_carteira := Grid.Cells[23,Grid.row];
    FController.Model.imprimir_numero_nfe := Grid.Cells[24,Grid.row];
    FController.Model.codigo_protesto := Grid.Cells[25,Grid.row];
    FController.Model.dias_protesto := Grid.Cells[26,Grid.row];
    FController.Model.retorno_completo := Grid.Cells[27,Grid.row];
    FController.Model.numero_remessa := Grid.Cells[28,Grid.row];
    FController.Model.modalidade := Grid.Cells[29,Grid.row];
    FController.Model.data_ultima_remessa := Grid.Cells[30,Grid.row];
    FController.Model.sequencia_remessa := Grid.Cells[31,Grid.row];
    FController.Model.pasta_remessa := Grid.Cells[32,Grid.row];
    FController.Model.pasta_retorno := Grid.Cells[33,Grid.row];
    FController.Model.ativo := Grid.Cells[34,Grid.row];
    FController.Model.multa := Grid.Cells[35,Grid.row];
    FController.Model.juros_mes := Grid.Cells[36,Grid.row];
    FController.Model.juros_dia := Grid.Cells[37,Grid.row];
    FController.Model.desc_abatimento := Grid.Cells[38,Grid.row];
    FController.Model.conta_retorno := Grid.Cells[39,Grid.row];
    FController.Model.conta_digito_retorno := Grid.Cells[40,Grid.row];
    FController.Model.imprimir_juros := Grid.Cells[41,Grid.row];
    FController.Model.imprimir_multa := Grid.Cells[42,Grid.row];
    FController.Model.desconto_antecipacao := Grid.Cells[43,Grid.row];
    FController.Model.dias_antecipacao := Grid.Cells[44,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[45,Grid.row];
    FController.Model.tamanho_documento := Grid.Cells[46,Grid.row];
    FController.Model.imprimir_observacao_venda := Grid.Cells[47,Grid.row];
    FController.Model.desconto_valor := Grid.Cells[48,Grid.row];
    FController.Model.carencia_pgto_multa := Grid.Cells[49,Grid.row];
    FController.Model.carencia_pgto_juros := Grid.Cells[50,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresas.LimparTela;  
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

procedure TFrm_ViewERPempresas.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setbanco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setagencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setagencia_digito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setcodigo_cedente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setconta_digito(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setconvenio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Settipo_inscricao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setlocal_pagamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setespecie_documento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setespecie_moeda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setcarteira(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setmensagem(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setinstrucao_1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setinstrucao_2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setaceite(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Settamanho_convenio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setmensagem_padrao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Settamanho_nosso_numero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setid_boleto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setremessa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setidentificacao_carteira(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setimprimir_numero_nfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setcodigo_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdias_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setretorno_completo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setnumero_remessa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setmodalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdata_ultima_remessa(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setsequencia_remessa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setpasta_remessa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setpasta_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setmulta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setjuros_mes(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setjuros_dia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdesc_abatimento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setconta_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setconta_digito_retorno(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setimprimir_juros(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setimprimir_multa(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdesconto_antecipacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdias_antecipacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Settamanho_documento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setimprimir_observacao_venda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setdesconto_valor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setcarencia_pgto_multa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresas.Setcarencia_pgto_juros(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
