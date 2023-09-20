unit Model.ERP.carta_correcao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcartacorrecao = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setid_contacorrente(const Value: WideString);
    procedure Setagencia(const Value: WideString);
    procedure Setcartao(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setstatus(const Value: WideString);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_conta_baixa(const Value: WideString);
    procedure Setid_forma_baixa(const Value: Integer);
    procedure Settaxa_adm(const Value: Double);
    procedure Setnome_venda(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setcartao_condicao(const Value: WideString);
    procedure Setid_parcela_receber(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setvalor_recebido(const Value: Double);
    procedure Settaxa_bancaria(const Value: Double);
    procedure Setvl_taxa_bancaria(const Value: Double);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setid_sub_forma(const Value: Integer);
    procedure Setnome_forma(const Value: WideString);
    procedure Setnome_sub_forma(const Value: WideString);
    procedure Setid_uniao(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: WideString);
    procedure Setmatriz(const Value: WideString);
    procedure Setid_credito(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property id_contacorrente     : WideString read Fid_contacorrente write Setid_contacorrente;
    property agencia     : WideString read Fagencia write Setagencia;
    property cartao     : WideString read Fcartao write Setcartao;
    property valor     : Double read Fvalor write Setvalor;
    property status     : WideString read Fstatus write Setstatus;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_conta_baixa     : WideString read Fid_conta_baixa write Setid_conta_baixa;
    property id_forma_baixa     : Integer read Fid_forma_baixa write Setid_forma_baixa;
    property taxa_adm     : Double read Ftaxa_adm write Settaxa_adm;
    property nome_venda     : WideString read Fnome_venda write Setnome_venda;
    property click     : Boolean read Fclick write Setclick;
    property cartao_condicao     : WideString read Fcartao_condicao write Setcartao_condicao;
    property id_parcela_receber     : Integer read Fid_parcela_receber write Setid_parcela_receber;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property valor_recebido     : Double read Fvalor_recebido write Setvalor_recebido;
    property taxa_bancaria     : Double read Ftaxa_bancaria write Settaxa_bancaria;
    property vl_taxa_bancaria     : Double read Fvl_taxa_bancaria write Setvl_taxa_bancaria;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property id_sub_forma     : Integer read Fid_sub_forma write Setid_sub_forma;
    property nome_forma     : WideString read Fnome_forma write Setnome_forma;
    property nome_sub_forma     : WideString read Fnome_sub_forma write Setnome_sub_forma;
    property id_uniao     : Integer read Fid_uniao write Setid_uniao;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : WideString read Ffilial write Setfilial;
    property matriz     : WideString read Fmatriz write Setmatriz;
    property id_credito     : Integer read Fid_credito write Setid_credito;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcartacorrecao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcartacorrecao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcartacorrecao(Model).id;
Self.Fid_empresa         := TModelERPcartacorrecao(Model).id_empresa;
Self.Fdata_emissao         := TModelERPcartacorrecao(Model).data_emissao;
Self.Fdata_vencto         := TModelERPcartacorrecao(Model).data_vencto;
Self.Fdocumento         := TModelERPcartacorrecao(Model).documento;
Self.Fparcela         := TModelERPcartacorrecao(Model).parcela;
Self.Fid_cliente         := TModelERPcartacorrecao(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcartacorrecao(Model).nome_cliente;
Self.Fid_conta         := TModelERPcartacorrecao(Model).id_conta;
Self.Fid_caixa         := TModelERPcartacorrecao(Model).id_caixa;
Self.Fid_banco         := TModelERPcartacorrecao(Model).id_banco;
Self.Fid_contacorrente         := TModelERPcartacorrecao(Model).id_contacorrente;
Self.Fagencia         := TModelERPcartacorrecao(Model).agencia;
Self.Fcartao         := TModelERPcartacorrecao(Model).cartao;
Self.Fvalor         := TModelERPcartacorrecao(Model).valor;
Self.Fstatus         := TModelERPcartacorrecao(Model).status;
Self.Fdata_pgto         := TModelERPcartacorrecao(Model).data_pgto;
Self.Fid_forma         := TModelERPcartacorrecao(Model).id_forma;
Self.Fid_pedido         := TModelERPcartacorrecao(Model).id_pedido;
Self.Fid_os         := TModelERPcartacorrecao(Model).id_os;
Self.Fid_conta_baixa         := TModelERPcartacorrecao(Model).id_conta_baixa;
Self.Fid_forma_baixa         := TModelERPcartacorrecao(Model).id_forma_baixa;
Self.Ftaxa_adm         := TModelERPcartacorrecao(Model).taxa_adm;
Self.Fnome_venda         := TModelERPcartacorrecao(Model).nome_venda;
Self.Fclick         := TModelERPcartacorrecao(Model).click;
Self.Fcartao_condicao         := TModelERPcartacorrecao(Model).cartao_condicao;
Self.Fid_parcela_receber         := TModelERPcartacorrecao(Model).id_parcela_receber;
Self.Fid_conta_receber         := TModelERPcartacorrecao(Model).id_conta_receber;
Self.Fvalor_recebido         := TModelERPcartacorrecao(Model).valor_recebido;
Self.Ftaxa_bancaria         := TModelERPcartacorrecao(Model).taxa_bancaria;
Self.Fvl_taxa_bancaria         := TModelERPcartacorrecao(Model).vl_taxa_bancaria;
Self.Fid_movimento         := TModelERPcartacorrecao(Model).id_movimento;
Self.Fid_cupons         := TModelERPcartacorrecao(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPcartacorrecao(Model).id_pagamentos;
Self.Fid_sub_forma         := TModelERPcartacorrecao(Model).id_sub_forma;
Self.Fnome_forma         := TModelERPcartacorrecao(Model).nome_forma;
Self.Fnome_sub_forma         := TModelERPcartacorrecao(Model).nome_sub_forma;
Self.Fid_uniao         := TModelERPcartacorrecao(Model).id_uniao;
Self.Fid_usuario         := TModelERPcartacorrecao(Model).id_usuario;
Self.Fid_cliser         := TModelERPcartacorrecao(Model).id_cliser;
Self.Ffilial         := TModelERPcartacorrecao(Model).filial;
Self.Fmatriz         := TModelERPcartacorrecao(Model).matriz;
Self.Fid_credito         := TModelERPcartacorrecao(Model).id_credito;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcartacorrecao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcartacorrecao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcartacorrecao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcartacorrecao.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPcartacorrecao.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPcartacorrecao.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcartacorrecao.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcartacorrecao.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPcartacorrecao.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPcartacorrecao.Setcartao(const Value: Boolean);   
begin                
  Fcartao := Value;   
end;                 

procedure TModelERPcartacorrecao.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcartacorrecao.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPcartacorrecao.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_conta_baixa(const Value: Boolean);   
begin                
  Fid_conta_baixa := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_forma_baixa(const Value: Boolean);   
begin                
  Fid_forma_baixa := Value;   
end;                 

procedure TModelERPcartacorrecao.Settaxa_adm(const Value: Boolean);   
begin                
  Ftaxa_adm := Value;   
end;                 

procedure TModelERPcartacorrecao.Setnome_venda(const Value: Boolean);   
begin                
  Fnome_venda := Value;   
end;                 

procedure TModelERPcartacorrecao.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcartacorrecao.Setcartao_condicao(const Value: Boolean);   
begin                
  Fcartao_condicao := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_parcela_receber(const Value: Boolean);   
begin                
  Fid_parcela_receber := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPcartacorrecao.Setvalor_recebido(const Value: Boolean);   
begin                
  Fvalor_recebido := Value;   
end;                 

procedure TModelERPcartacorrecao.Settaxa_bancaria(const Value: Boolean);   
begin                
  Ftaxa_bancaria := Value;   
end;                 

procedure TModelERPcartacorrecao.Setvl_taxa_bancaria(const Value: Boolean);   
begin                
  Fvl_taxa_bancaria := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_sub_forma(const Value: Boolean);   
begin                
  Fid_sub_forma := Value;   
end;                 

procedure TModelERPcartacorrecao.Setnome_forma(const Value: Boolean);   
begin                
  Fnome_forma := Value;   
end;                 

procedure TModelERPcartacorrecao.Setnome_sub_forma(const Value: Boolean);   
begin                
  Fnome_sub_forma := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_uniao(const Value: Boolean);   
begin                
  Fid_uniao := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPcartacorrecao.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPcartacorrecao.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 

procedure TModelERPcartacorrecao.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 


end.
