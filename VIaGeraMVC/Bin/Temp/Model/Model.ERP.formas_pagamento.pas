unit Model.ERP.formacao_preco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPformacaopreco = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcondicao(const Value: WideString);
    procedure Setcaixa(const Value: WideString);
    procedure Setcheque(const Value: WideString);
    procedure Setcartao(const Value: WideString);
    procedure Setcartao_condicao(const Value: WideString);
    procedure Setcartao_taxa(const Value: Double);
    procedure Settabela_preco(const Value: WideString);
    procedure Setcomissao(const Value: WideString);
    procedure Setboleto(const Value: WideString);
    procedure Setfinanciadora(const Value: WideString);
    procedure Settaxa_financiadora(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setcarne(const Value: WideString);
    procedure Setbandeira(const Value: WideString);
    procedure Setvl_desconto(const Value: Double);
    procedure Setpdv(const Value: Boolean);
    procedure Settroco(const Value: Boolean);
    procedure Setpdv_dinheiro(const Value: Boolean);
    procedure Setpdv_cheque(const Value: Boolean);
    procedure Setpdv_ticket(const Value: Boolean);
    procedure Setpdv_valecompras(const Value: Boolean);
    procedure Setpdv_debito(const Value: Boolean);
    procedure Setpdv_credito(const Value: Boolean);
    procedure Setpdv_convenio(const Value: Boolean);
    procedure Setpdv_pos(const Value: Boolean);
    procedure Setpdv_boleto(const Value: Boolean);
    procedure Setpdv_fatura(const Value: Boolean);
    procedure Setpdv_creditos(const Value: Boolean);
    procedure Setpdv_outros(const Value: Boolean);
    procedure Setpdv_vasilhame(const Value: Boolean);
    procedure Setliberacao_venda(const Value: Boolean);
    procedure Setnfce_fin(const Value: Integer);
    procedure Setnfce_bandeira(const Value: Integer);
    procedure Setinter_dias(const Value: Integer);
    procedure Setbaixa_automatica(const Value: Boolean);
    procedure Setbaixa_intervalo(const Value: indefinido);
    procedure Setbaixa_caixa(const Value: Boolean);
    procedure Setbaixa_id_caixa(const Value: Integer);
    procedure Setbaixa_id_conta(const Value: Integer);
    procedure Setfinanceira(const Value: Boolean);
    procedure Setid_financeira(const Value: Integer);
    procedure Setdeposito_transferencia(const Value: Boolean);
    procedure Setativo(const Value: Boolean);
    procedure Setcredito(const Value: WideString);
    procedure Settaxa_adicional(const Value: Double);
    procedure Settaxa_antecipacao(const Value: Double);
    procedure Settaxa_antecipacao_qd_umaparela(const Value: Boolean);
    procedure Settaxa_credito_parcelado(const Value: Double);
    procedure Setpix(const Value: Boolean);
    procedure Setemissao_nfe_nfce_automatico(const Value: Boolean);
    procedure Setpermissao_desconto(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property condicao     : WideString read Fcondicao write Setcondicao;
    property caixa     : WideString read Fcaixa write Setcaixa;
    property cheque     : WideString read Fcheque write Setcheque;
    property cartao     : WideString read Fcartao write Setcartao;
    property cartao_condicao     : WideString read Fcartao_condicao write Setcartao_condicao;
    property cartao_taxa     : Double read Fcartao_taxa write Setcartao_taxa;
    property tabela_preco     : WideString read Ftabela_preco write Settabela_preco;
    property comissao     : WideString read Fcomissao write Setcomissao;
    property boleto     : WideString read Fboleto write Setboleto;
    property financiadora     : WideString read Ffinanciadora write Setfinanciadora;
    property taxa_financiadora     : Double read Ftaxa_financiadora write Settaxa_financiadora;
    property click     : Boolean read Fclick write Setclick;
    property carne     : WideString read Fcarne write Setcarne;
    property bandeira     : WideString read Fbandeira write Setbandeira;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property pdv     : Boolean read Fpdv write Setpdv;
    property troco     : Boolean read Ftroco write Settroco;
    property pdv_dinheiro     : Boolean read Fpdv_dinheiro write Setpdv_dinheiro;
    property pdv_cheque     : Boolean read Fpdv_cheque write Setpdv_cheque;
    property pdv_ticket     : Boolean read Fpdv_ticket write Setpdv_ticket;
    property pdv_valecompras     : Boolean read Fpdv_valecompras write Setpdv_valecompras;
    property pdv_debito     : Boolean read Fpdv_debito write Setpdv_debito;
    property pdv_credito     : Boolean read Fpdv_credito write Setpdv_credito;
    property pdv_convenio     : Boolean read Fpdv_convenio write Setpdv_convenio;
    property pdv_pos     : Boolean read Fpdv_pos write Setpdv_pos;
    property pdv_boleto     : Boolean read Fpdv_boleto write Setpdv_boleto;
    property pdv_fatura     : Boolean read Fpdv_fatura write Setpdv_fatura;
    property pdv_creditos     : Boolean read Fpdv_creditos write Setpdv_creditos;
    property pdv_outros     : Boolean read Fpdv_outros write Setpdv_outros;
    property pdv_vasilhame     : Boolean read Fpdv_vasilhame write Setpdv_vasilhame;
    property liberacao_venda     : Boolean read Fliberacao_venda write Setliberacao_venda;
    property nfce_fin     : Integer read Fnfce_fin write Setnfce_fin;
    property nfce_bandeira     : Integer read Fnfce_bandeira write Setnfce_bandeira;
    property inter_dias     : Integer read Finter_dias write Setinter_dias;
    property baixa_automatica     : Boolean read Fbaixa_automatica write Setbaixa_automatica;
    property baixa_intervalo     : indefinido read Fbaixa_intervalo write Setbaixa_intervalo;
    property baixa_caixa     : Boolean read Fbaixa_caixa write Setbaixa_caixa;
    property baixa_id_caixa     : Integer read Fbaixa_id_caixa write Setbaixa_id_caixa;
    property baixa_id_conta     : Integer read Fbaixa_id_conta write Setbaixa_id_conta;
    property financeira     : Boolean read Ffinanceira write Setfinanceira;
    property id_financeira     : Integer read Fid_financeira write Setid_financeira;
    property deposito_transferencia     : Boolean read Fdeposito_transferencia write Setdeposito_transferencia;
    property ativo     : Boolean read Fativo write Setativo;
    property credito     : WideString read Fcredito write Setcredito;
    property taxa_adicional     : Double read Ftaxa_adicional write Settaxa_adicional;
    property taxa_antecipacao     : Double read Ftaxa_antecipacao write Settaxa_antecipacao;
    property taxa_antecipacao_qd_umaparela     : Boolean read Ftaxa_antecipacao_qd_umaparela write Settaxa_antecipacao_qd_umaparela;
    property taxa_credito_parcelado     : Double read Ftaxa_credito_parcelado write Settaxa_credito_parcelado;
    property pix     : Boolean read Fpix write Setpix;
    property emissao_nfe_nfce_automatico     : Boolean read Femissao_nfe_nfce_automatico write Setemissao_nfe_nfce_automatico;
    property permissao_desconto     : Boolean read Fpermissao_desconto write Setpermissao_desconto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPformacaopreco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPformacaopreco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPformacaopreco(Model).id;
Self.Fid_empresa         := TModelERPformacaopreco(Model).id_empresa;
Self.Fnome         := TModelERPformacaopreco(Model).nome;
Self.Fcondicao         := TModelERPformacaopreco(Model).condicao;
Self.Fcaixa         := TModelERPformacaopreco(Model).caixa;
Self.Fcheque         := TModelERPformacaopreco(Model).cheque;
Self.Fcartao         := TModelERPformacaopreco(Model).cartao;
Self.Fcartao_condicao         := TModelERPformacaopreco(Model).cartao_condicao;
Self.Fcartao_taxa         := TModelERPformacaopreco(Model).cartao_taxa;
Self.Ftabela_preco         := TModelERPformacaopreco(Model).tabela_preco;
Self.Fcomissao         := TModelERPformacaopreco(Model).comissao;
Self.Fboleto         := TModelERPformacaopreco(Model).boleto;
Self.Ffinanciadora         := TModelERPformacaopreco(Model).financiadora;
Self.Ftaxa_financiadora         := TModelERPformacaopreco(Model).taxa_financiadora;
Self.Fclick         := TModelERPformacaopreco(Model).click;
Self.Fcarne         := TModelERPformacaopreco(Model).carne;
Self.Fbandeira         := TModelERPformacaopreco(Model).bandeira;
Self.Fvl_desconto         := TModelERPformacaopreco(Model).vl_desconto;
Self.Fpdv         := TModelERPformacaopreco(Model).pdv;
Self.Ftroco         := TModelERPformacaopreco(Model).troco;
Self.Fpdv_dinheiro         := TModelERPformacaopreco(Model).pdv_dinheiro;
Self.Fpdv_cheque         := TModelERPformacaopreco(Model).pdv_cheque;
Self.Fpdv_ticket         := TModelERPformacaopreco(Model).pdv_ticket;
Self.Fpdv_valecompras         := TModelERPformacaopreco(Model).pdv_valecompras;
Self.Fpdv_debito         := TModelERPformacaopreco(Model).pdv_debito;
Self.Fpdv_credito         := TModelERPformacaopreco(Model).pdv_credito;
Self.Fpdv_convenio         := TModelERPformacaopreco(Model).pdv_convenio;
Self.Fpdv_pos         := TModelERPformacaopreco(Model).pdv_pos;
Self.Fpdv_boleto         := TModelERPformacaopreco(Model).pdv_boleto;
Self.Fpdv_fatura         := TModelERPformacaopreco(Model).pdv_fatura;
Self.Fpdv_creditos         := TModelERPformacaopreco(Model).pdv_creditos;
Self.Fpdv_outros         := TModelERPformacaopreco(Model).pdv_outros;
Self.Fpdv_vasilhame         := TModelERPformacaopreco(Model).pdv_vasilhame;
Self.Fliberacao_venda         := TModelERPformacaopreco(Model).liberacao_venda;
Self.Fnfce_fin         := TModelERPformacaopreco(Model).nfce_fin;
Self.Fnfce_bandeira         := TModelERPformacaopreco(Model).nfce_bandeira;
Self.Finter_dias         := TModelERPformacaopreco(Model).inter_dias;
Self.Fbaixa_automatica         := TModelERPformacaopreco(Model).baixa_automatica;
Self.Fbaixa_intervalo         := TModelERPformacaopreco(Model).baixa_intervalo;
Self.Fbaixa_caixa         := TModelERPformacaopreco(Model).baixa_caixa;
Self.Fbaixa_id_caixa         := TModelERPformacaopreco(Model).baixa_id_caixa;
Self.Fbaixa_id_conta         := TModelERPformacaopreco(Model).baixa_id_conta;
Self.Ffinanceira         := TModelERPformacaopreco(Model).financeira;
Self.Fid_financeira         := TModelERPformacaopreco(Model).id_financeira;
Self.Fdeposito_transferencia         := TModelERPformacaopreco(Model).deposito_transferencia;
Self.Fativo         := TModelERPformacaopreco(Model).ativo;
Self.Fcredito         := TModelERPformacaopreco(Model).credito;
Self.Ftaxa_adicional         := TModelERPformacaopreco(Model).taxa_adicional;
Self.Ftaxa_antecipacao         := TModelERPformacaopreco(Model).taxa_antecipacao;
Self.Ftaxa_antecipacao_qd_umaparela         := TModelERPformacaopreco(Model).taxa_antecipacao_qd_umaparela;
Self.Ftaxa_credito_parcelado         := TModelERPformacaopreco(Model).taxa_credito_parcelado;
Self.Fpix         := TModelERPformacaopreco(Model).pix;
Self.Femissao_nfe_nfce_automatico         := TModelERPformacaopreco(Model).emissao_nfe_nfce_automatico;
Self.Fpermissao_desconto         := TModelERPformacaopreco(Model).permissao_desconto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPformacaopreco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPformacaopreco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPformacaopreco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPformacaopreco.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPformacaopreco.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPformacaopreco.Setcondicao(const Value: Boolean);   
begin                
  Fcondicao := Value;   
end;                 

procedure TModelERPformacaopreco.Setcaixa(const Value: Boolean);   
begin                
  Fcaixa := Value;   
end;                 

procedure TModelERPformacaopreco.Setcheque(const Value: Boolean);   
begin                
  Fcheque := Value;   
end;                 

procedure TModelERPformacaopreco.Setcartao(const Value: Boolean);   
begin                
  Fcartao := Value;   
end;                 

procedure TModelERPformacaopreco.Setcartao_condicao(const Value: Boolean);   
begin                
  Fcartao_condicao := Value;   
end;                 

procedure TModelERPformacaopreco.Setcartao_taxa(const Value: Boolean);   
begin                
  Fcartao_taxa := Value;   
end;                 

procedure TModelERPformacaopreco.Settabela_preco(const Value: Boolean);   
begin                
  Ftabela_preco := Value;   
end;                 

procedure TModelERPformacaopreco.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPformacaopreco.Setboleto(const Value: Boolean);   
begin                
  Fboleto := Value;   
end;                 

procedure TModelERPformacaopreco.Setfinanciadora(const Value: Boolean);   
begin                
  Ffinanciadora := Value;   
end;                 

procedure TModelERPformacaopreco.Settaxa_financiadora(const Value: Boolean);   
begin                
  Ftaxa_financiadora := Value;   
end;                 

procedure TModelERPformacaopreco.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPformacaopreco.Setcarne(const Value: Boolean);   
begin                
  Fcarne := Value;   
end;                 

procedure TModelERPformacaopreco.Setbandeira(const Value: Boolean);   
begin                
  Fbandeira := Value;   
end;                 

procedure TModelERPformacaopreco.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv(const Value: Boolean);   
begin                
  Fpdv := Value;   
end;                 

procedure TModelERPformacaopreco.Settroco(const Value: Boolean);   
begin                
  Ftroco := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_dinheiro(const Value: Boolean);   
begin                
  Fpdv_dinheiro := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_cheque(const Value: Boolean);   
begin                
  Fpdv_cheque := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_ticket(const Value: Boolean);   
begin                
  Fpdv_ticket := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_valecompras(const Value: Boolean);   
begin                
  Fpdv_valecompras := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_debito(const Value: Boolean);   
begin                
  Fpdv_debito := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_credito(const Value: Boolean);   
begin                
  Fpdv_credito := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_convenio(const Value: Boolean);   
begin                
  Fpdv_convenio := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_pos(const Value: Boolean);   
begin                
  Fpdv_pos := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_boleto(const Value: Boolean);   
begin                
  Fpdv_boleto := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_fatura(const Value: Boolean);   
begin                
  Fpdv_fatura := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_creditos(const Value: Boolean);   
begin                
  Fpdv_creditos := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_outros(const Value: Boolean);   
begin                
  Fpdv_outros := Value;   
end;                 

procedure TModelERPformacaopreco.Setpdv_vasilhame(const Value: Boolean);   
begin                
  Fpdv_vasilhame := Value;   
end;                 

procedure TModelERPformacaopreco.Setliberacao_venda(const Value: Boolean);   
begin                
  Fliberacao_venda := Value;   
end;                 

procedure TModelERPformacaopreco.Setnfce_fin(const Value: Boolean);   
begin                
  Fnfce_fin := Value;   
end;                 

procedure TModelERPformacaopreco.Setnfce_bandeira(const Value: Boolean);   
begin                
  Fnfce_bandeira := Value;   
end;                 

procedure TModelERPformacaopreco.Setinter_dias(const Value: Boolean);   
begin                
  Finter_dias := Value;   
end;                 

procedure TModelERPformacaopreco.Setbaixa_automatica(const Value: Boolean);   
begin                
  Fbaixa_automatica := Value;   
end;                 

procedure TModelERPformacaopreco.Setbaixa_intervalo(const Value: Boolean);   
begin                
  Fbaixa_intervalo := Value;   
end;                 

procedure TModelERPformacaopreco.Setbaixa_caixa(const Value: Boolean);   
begin                
  Fbaixa_caixa := Value;   
end;                 

procedure TModelERPformacaopreco.Setbaixa_id_caixa(const Value: Boolean);   
begin                
  Fbaixa_id_caixa := Value;   
end;                 

procedure TModelERPformacaopreco.Setbaixa_id_conta(const Value: Boolean);   
begin                
  Fbaixa_id_conta := Value;   
end;                 

procedure TModelERPformacaopreco.Setfinanceira(const Value: Boolean);   
begin                
  Ffinanceira := Value;   
end;                 

procedure TModelERPformacaopreco.Setid_financeira(const Value: Boolean);   
begin                
  Fid_financeira := Value;   
end;                 

procedure TModelERPformacaopreco.Setdeposito_transferencia(const Value: Boolean);   
begin                
  Fdeposito_transferencia := Value;   
end;                 

procedure TModelERPformacaopreco.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPformacaopreco.Setcredito(const Value: Boolean);   
begin                
  Fcredito := Value;   
end;                 

procedure TModelERPformacaopreco.Settaxa_adicional(const Value: Boolean);   
begin                
  Ftaxa_adicional := Value;   
end;                 

procedure TModelERPformacaopreco.Settaxa_antecipacao(const Value: Boolean);   
begin                
  Ftaxa_antecipacao := Value;   
end;                 

procedure TModelERPformacaopreco.Settaxa_antecipacao_qd_umaparela(const Value: Boolean);   
begin                
  Ftaxa_antecipacao_qd_umaparela := Value;   
end;                 

procedure TModelERPformacaopreco.Settaxa_credito_parcelado(const Value: Boolean);   
begin                
  Ftaxa_credito_parcelado := Value;   
end;                 

procedure TModelERPformacaopreco.Setpix(const Value: Boolean);   
begin                
  Fpix := Value;   
end;                 

procedure TModelERPformacaopreco.Setemissao_nfe_nfce_automatico(const Value: Boolean);   
begin                
  Femissao_nfe_nfce_automatico := Value;   
end;                 

procedure TModelERPformacaopreco.Setpermissao_desconto(const Value: Boolean);   
begin                
  Fpermissao_desconto := Value;   
end;                 


end.
