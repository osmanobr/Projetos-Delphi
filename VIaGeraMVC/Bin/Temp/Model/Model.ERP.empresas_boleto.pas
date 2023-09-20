unit Model.ERP.empresas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresas = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setbanco(const Value: Integer);
    procedure Setagencia(const Value: WideString);
    procedure Setagencia_digito(const Value: WideString);
    procedure Setcodigo_cedente(const Value: WideString);
    procedure Setconta(const Value: WideString);
    procedure Setconta_digito(const Value: WideString);
    procedure Setconvenio(const Value: WideString);
    procedure Settipo_inscricao(const Value: Integer);
    procedure Setlocal_pagamento(const Value: WideString);
    procedure Setespecie_documento(const Value: WideString);
    procedure Setespecie_moeda(const Value: WideString);
    procedure Setcarteira(const Value: WideString);
    procedure Setmensagem(const Value: indefinido);
    procedure Setinstrucao_1(const Value: WideString);
    procedure Setinstrucao_2(const Value: WideString);
    procedure Setaceite(const Value: Integer);
    procedure Settamanho_convenio(const Value: WideString);
    procedure Setmensagem_padrao(const Value: Boolean);
    procedure Settamanho_nosso_numero(const Value: Integer);
    procedure Setid_boleto(const Value: indefinido);
    procedure Setremessa(const Value: WideString);
    procedure Setidentificacao_carteira(const Value: WideString);
    procedure Setimprimir_numero_nfe(const Value: Boolean);
    procedure Setcodigo_protesto(const Value: Integer);
    procedure Setdias_protesto(const Value: Integer);
    procedure Setretorno_completo(const Value: Boolean);
    procedure Setnumero_remessa(const Value: Integer);
    procedure Setmodalidade(const Value: WideString);
    procedure Setdata_ultima_remessa(const Value: TDateTime);
    procedure Setsequencia_remessa(const Value: Integer);
    procedure Setpasta_remessa(const Value: WideString);
    procedure Setpasta_retorno(const Value: WideString);
    procedure Setativo(const Value: Boolean);
    procedure Setmulta(const Value: Double);
    procedure Setjuros_mes(const Value: Double);
    procedure Setjuros_dia(const Value: Double);
    procedure Setdesc_abatimento(const Value: Double);
    procedure Setconta_retorno(const Value: WideString);
    procedure Setconta_digito_retorno(const Value: WideString);
    procedure Setimprimir_juros(const Value: Boolean);
    procedure Setimprimir_multa(const Value: Boolean);
    procedure Setdesconto_antecipacao(const Value: Double);
    procedure Setdias_antecipacao(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Settamanho_documento(const Value: Integer);
    procedure Setimprimir_observacao_venda(const Value: Boolean);
    procedure Setdesconto_valor(const Value: Boolean);
    procedure Setcarencia_pgto_multa(const Value: Integer);
    procedure Setcarencia_pgto_juros(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property banco     : Integer read Fbanco write Setbanco;
    property agencia     : WideString read Fagencia write Setagencia;
    property agencia_digito     : WideString read Fagencia_digito write Setagencia_digito;
    property codigo_cedente     : WideString read Fcodigo_cedente write Setcodigo_cedente;
    property conta     : WideString read Fconta write Setconta;
    property conta_digito     : WideString read Fconta_digito write Setconta_digito;
    property convenio     : WideString read Fconvenio write Setconvenio;
    property tipo_inscricao     : Integer read Ftipo_inscricao write Settipo_inscricao;
    property local_pagamento     : WideString read Flocal_pagamento write Setlocal_pagamento;
    property especie_documento     : WideString read Fespecie_documento write Setespecie_documento;
    property especie_moeda     : WideString read Fespecie_moeda write Setespecie_moeda;
    property carteira     : WideString read Fcarteira write Setcarteira;
    property mensagem     : indefinido read Fmensagem write Setmensagem;
    property instrucao_1     : WideString read Finstrucao_1 write Setinstrucao_1;
    property instrucao_2     : WideString read Finstrucao_2 write Setinstrucao_2;
    property aceite     : Integer read Faceite write Setaceite;
    property tamanho_convenio     : WideString read Ftamanho_convenio write Settamanho_convenio;
    property mensagem_padrao     : Boolean read Fmensagem_padrao write Setmensagem_padrao;
    property tamanho_nosso_numero     : Integer read Ftamanho_nosso_numero write Settamanho_nosso_numero;
    property id_boleto     : indefinido read Fid_boleto write Setid_boleto;
    property remessa     : WideString read Fremessa write Setremessa;
    property identificacao_carteira     : WideString read Fidentificacao_carteira write Setidentificacao_carteira;
    property imprimir_numero_nfe     : Boolean read Fimprimir_numero_nfe write Setimprimir_numero_nfe;
    property codigo_protesto     : Integer read Fcodigo_protesto write Setcodigo_protesto;
    property dias_protesto     : Integer read Fdias_protesto write Setdias_protesto;
    property retorno_completo     : Boolean read Fretorno_completo write Setretorno_completo;
    property numero_remessa     : Integer read Fnumero_remessa write Setnumero_remessa;
    property modalidade     : WideString read Fmodalidade write Setmodalidade;
    property data_ultima_remessa     : TDateTime read Fdata_ultima_remessa write Setdata_ultima_remessa;
    property sequencia_remessa     : Integer read Fsequencia_remessa write Setsequencia_remessa;
    property pasta_remessa     : WideString read Fpasta_remessa write Setpasta_remessa;
    property pasta_retorno     : WideString read Fpasta_retorno write Setpasta_retorno;
    property ativo     : Boolean read Fativo write Setativo;
    property multa     : Double read Fmulta write Setmulta;
    property juros_mes     : Double read Fjuros_mes write Setjuros_mes;
    property juros_dia     : Double read Fjuros_dia write Setjuros_dia;
    property desc_abatimento     : Double read Fdesc_abatimento write Setdesc_abatimento;
    property conta_retorno     : WideString read Fconta_retorno write Setconta_retorno;
    property conta_digito_retorno     : WideString read Fconta_digito_retorno write Setconta_digito_retorno;
    property imprimir_juros     : Boolean read Fimprimir_juros write Setimprimir_juros;
    property imprimir_multa     : Boolean read Fimprimir_multa write Setimprimir_multa;
    property desconto_antecipacao     : Double read Fdesconto_antecipacao write Setdesconto_antecipacao;
    property dias_antecipacao     : Integer read Fdias_antecipacao write Setdias_antecipacao;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property tamanho_documento     : Integer read Ftamanho_documento write Settamanho_documento;
    property imprimir_observacao_venda     : Boolean read Fimprimir_observacao_venda write Setimprimir_observacao_venda;
    property desconto_valor     : Boolean read Fdesconto_valor write Setdesconto_valor;
    property carencia_pgto_multa     : Integer read Fcarencia_pgto_multa write Setcarencia_pgto_multa;
    property carencia_pgto_juros     : Integer read Fcarencia_pgto_juros write Setcarencia_pgto_juros;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresas(Model).id;
Self.Fid_empresa         := TModelERPempresas(Model).id_empresa;
Self.Fbanco         := TModelERPempresas(Model).banco;
Self.Fagencia         := TModelERPempresas(Model).agencia;
Self.Fagencia_digito         := TModelERPempresas(Model).agencia_digito;
Self.Fcodigo_cedente         := TModelERPempresas(Model).codigo_cedente;
Self.Fconta         := TModelERPempresas(Model).conta;
Self.Fconta_digito         := TModelERPempresas(Model).conta_digito;
Self.Fconvenio         := TModelERPempresas(Model).convenio;
Self.Ftipo_inscricao         := TModelERPempresas(Model).tipo_inscricao;
Self.Flocal_pagamento         := TModelERPempresas(Model).local_pagamento;
Self.Fespecie_documento         := TModelERPempresas(Model).especie_documento;
Self.Fespecie_moeda         := TModelERPempresas(Model).especie_moeda;
Self.Fcarteira         := TModelERPempresas(Model).carteira;
Self.Fmensagem         := TModelERPempresas(Model).mensagem;
Self.Finstrucao_1         := TModelERPempresas(Model).instrucao_1;
Self.Finstrucao_2         := TModelERPempresas(Model).instrucao_2;
Self.Faceite         := TModelERPempresas(Model).aceite;
Self.Ftamanho_convenio         := TModelERPempresas(Model).tamanho_convenio;
Self.Fmensagem_padrao         := TModelERPempresas(Model).mensagem_padrao;
Self.Ftamanho_nosso_numero         := TModelERPempresas(Model).tamanho_nosso_numero;
Self.Fid_boleto         := TModelERPempresas(Model).id_boleto;
Self.Fremessa         := TModelERPempresas(Model).remessa;
Self.Fidentificacao_carteira         := TModelERPempresas(Model).identificacao_carteira;
Self.Fimprimir_numero_nfe         := TModelERPempresas(Model).imprimir_numero_nfe;
Self.Fcodigo_protesto         := TModelERPempresas(Model).codigo_protesto;
Self.Fdias_protesto         := TModelERPempresas(Model).dias_protesto;
Self.Fretorno_completo         := TModelERPempresas(Model).retorno_completo;
Self.Fnumero_remessa         := TModelERPempresas(Model).numero_remessa;
Self.Fmodalidade         := TModelERPempresas(Model).modalidade;
Self.Fdata_ultima_remessa         := TModelERPempresas(Model).data_ultima_remessa;
Self.Fsequencia_remessa         := TModelERPempresas(Model).sequencia_remessa;
Self.Fpasta_remessa         := TModelERPempresas(Model).pasta_remessa;
Self.Fpasta_retorno         := TModelERPempresas(Model).pasta_retorno;
Self.Fativo         := TModelERPempresas(Model).ativo;
Self.Fmulta         := TModelERPempresas(Model).multa;
Self.Fjuros_mes         := TModelERPempresas(Model).juros_mes;
Self.Fjuros_dia         := TModelERPempresas(Model).juros_dia;
Self.Fdesc_abatimento         := TModelERPempresas(Model).desc_abatimento;
Self.Fconta_retorno         := TModelERPempresas(Model).conta_retorno;
Self.Fconta_digito_retorno         := TModelERPempresas(Model).conta_digito_retorno;
Self.Fimprimir_juros         := TModelERPempresas(Model).imprimir_juros;
Self.Fimprimir_multa         := TModelERPempresas(Model).imprimir_multa;
Self.Fdesconto_antecipacao         := TModelERPempresas(Model).desconto_antecipacao;
Self.Fdias_antecipacao         := TModelERPempresas(Model).dias_antecipacao;
Self.Fid_fornecedor         := TModelERPempresas(Model).id_fornecedor;
Self.Ftamanho_documento         := TModelERPempresas(Model).tamanho_documento;
Self.Fimprimir_observacao_venda         := TModelERPempresas(Model).imprimir_observacao_venda;
Self.Fdesconto_valor         := TModelERPempresas(Model).desconto_valor;
Self.Fcarencia_pgto_multa         := TModelERPempresas(Model).carencia_pgto_multa;
Self.Fcarencia_pgto_juros         := TModelERPempresas(Model).carencia_pgto_juros;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresas.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresas.Setbanco(const Value: Boolean);   
begin                
  Fbanco := Value;   
end;                 

procedure TModelERPempresas.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPempresas.Setagencia_digito(const Value: Boolean);   
begin                
  Fagencia_digito := Value;   
end;                 

procedure TModelERPempresas.Setcodigo_cedente(const Value: Boolean);   
begin                
  Fcodigo_cedente := Value;   
end;                 

procedure TModelERPempresas.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPempresas.Setconta_digito(const Value: Boolean);   
begin                
  Fconta_digito := Value;   
end;                 

procedure TModelERPempresas.Setconvenio(const Value: Boolean);   
begin                
  Fconvenio := Value;   
end;                 

procedure TModelERPempresas.Settipo_inscricao(const Value: Boolean);   
begin                
  Ftipo_inscricao := Value;   
end;                 

procedure TModelERPempresas.Setlocal_pagamento(const Value: Boolean);   
begin                
  Flocal_pagamento := Value;   
end;                 

procedure TModelERPempresas.Setespecie_documento(const Value: Boolean);   
begin                
  Fespecie_documento := Value;   
end;                 

procedure TModelERPempresas.Setespecie_moeda(const Value: Boolean);   
begin                
  Fespecie_moeda := Value;   
end;                 

procedure TModelERPempresas.Setcarteira(const Value: Boolean);   
begin                
  Fcarteira := Value;   
end;                 

procedure TModelERPempresas.Setmensagem(const Value: Boolean);   
begin                
  Fmensagem := Value;   
end;                 

procedure TModelERPempresas.Setinstrucao_1(const Value: Boolean);   
begin                
  Finstrucao_1 := Value;   
end;                 

procedure TModelERPempresas.Setinstrucao_2(const Value: Boolean);   
begin                
  Finstrucao_2 := Value;   
end;                 

procedure TModelERPempresas.Setaceite(const Value: Boolean);   
begin                
  Faceite := Value;   
end;                 

procedure TModelERPempresas.Settamanho_convenio(const Value: Boolean);   
begin                
  Ftamanho_convenio := Value;   
end;                 

procedure TModelERPempresas.Setmensagem_padrao(const Value: Boolean);   
begin                
  Fmensagem_padrao := Value;   
end;                 

procedure TModelERPempresas.Settamanho_nosso_numero(const Value: Boolean);   
begin                
  Ftamanho_nosso_numero := Value;   
end;                 

procedure TModelERPempresas.Setid_boleto(const Value: Boolean);   
begin                
  Fid_boleto := Value;   
end;                 

procedure TModelERPempresas.Setremessa(const Value: Boolean);   
begin                
  Fremessa := Value;   
end;                 

procedure TModelERPempresas.Setidentificacao_carteira(const Value: Boolean);   
begin                
  Fidentificacao_carteira := Value;   
end;                 

procedure TModelERPempresas.Setimprimir_numero_nfe(const Value: Boolean);   
begin                
  Fimprimir_numero_nfe := Value;   
end;                 

procedure TModelERPempresas.Setcodigo_protesto(const Value: Boolean);   
begin                
  Fcodigo_protesto := Value;   
end;                 

procedure TModelERPempresas.Setdias_protesto(const Value: Boolean);   
begin                
  Fdias_protesto := Value;   
end;                 

procedure TModelERPempresas.Setretorno_completo(const Value: Boolean);   
begin                
  Fretorno_completo := Value;   
end;                 

procedure TModelERPempresas.Setnumero_remessa(const Value: Boolean);   
begin                
  Fnumero_remessa := Value;   
end;                 

procedure TModelERPempresas.Setmodalidade(const Value: Boolean);   
begin                
  Fmodalidade := Value;   
end;                 

procedure TModelERPempresas.Setdata_ultima_remessa(const Value: Boolean);   
begin                
  Fdata_ultima_remessa := Value;   
end;                 

procedure TModelERPempresas.Setsequencia_remessa(const Value: Boolean);   
begin                
  Fsequencia_remessa := Value;   
end;                 

procedure TModelERPempresas.Setpasta_remessa(const Value: Boolean);   
begin                
  Fpasta_remessa := Value;   
end;                 

procedure TModelERPempresas.Setpasta_retorno(const Value: Boolean);   
begin                
  Fpasta_retorno := Value;   
end;                 

procedure TModelERPempresas.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPempresas.Setmulta(const Value: Boolean);   
begin                
  Fmulta := Value;   
end;                 

procedure TModelERPempresas.Setjuros_mes(const Value: Boolean);   
begin                
  Fjuros_mes := Value;   
end;                 

procedure TModelERPempresas.Setjuros_dia(const Value: Boolean);   
begin                
  Fjuros_dia := Value;   
end;                 

procedure TModelERPempresas.Setdesc_abatimento(const Value: Boolean);   
begin                
  Fdesc_abatimento := Value;   
end;                 

procedure TModelERPempresas.Setconta_retorno(const Value: Boolean);   
begin                
  Fconta_retorno := Value;   
end;                 

procedure TModelERPempresas.Setconta_digito_retorno(const Value: Boolean);   
begin                
  Fconta_digito_retorno := Value;   
end;                 

procedure TModelERPempresas.Setimprimir_juros(const Value: Boolean);   
begin                
  Fimprimir_juros := Value;   
end;                 

procedure TModelERPempresas.Setimprimir_multa(const Value: Boolean);   
begin                
  Fimprimir_multa := Value;   
end;                 

procedure TModelERPempresas.Setdesconto_antecipacao(const Value: Boolean);   
begin                
  Fdesconto_antecipacao := Value;   
end;                 

procedure TModelERPempresas.Setdias_antecipacao(const Value: Boolean);   
begin                
  Fdias_antecipacao := Value;   
end;                 

procedure TModelERPempresas.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPempresas.Settamanho_documento(const Value: Boolean);   
begin                
  Ftamanho_documento := Value;   
end;                 

procedure TModelERPempresas.Setimprimir_observacao_venda(const Value: Boolean);   
begin                
  Fimprimir_observacao_venda := Value;   
end;                 

procedure TModelERPempresas.Setdesconto_valor(const Value: Boolean);   
begin                
  Fdesconto_valor := Value;   
end;                 

procedure TModelERPempresas.Setcarencia_pgto_multa(const Value: Boolean);   
begin                
  Fcarencia_pgto_multa := Value;   
end;                 

procedure TModelERPempresas.Setcarencia_pgto_juros(const Value: Boolean);   
begin                
  Fcarencia_pgto_juros := Value;   
end;                 


end.
