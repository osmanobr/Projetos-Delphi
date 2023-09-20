unit Model.ERP.conta_receber_custodia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontarecebercustodia = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fdia : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Freferente : WideString;
    Fid_servico : Integer;
    Fnome_servico : WideString;
    Fvalor_servico : Double;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fvalor_produto : Double;
    Fgera_venda : WideString;
    Fclick : Boolean;
    Fid_vendedor : Integer;
    Fnome_vendedor : WideString;
    Fcodigo_protesto : Integer;
    Fdias_protesto : Integer;
    Fvalor_cobranca : Double;
    Fid_empresas_boleto : Integer;
    Fid_contas_fixas : Integer;
    Fativo : Boolean;
    Fobs : WideString;
    Fdata_inicial_cobranca : Boolean;
    Falterar_valor_cobranca : Boolean;
    Finicio_cobranca : indefinido;
    Fdata_cobranca : indefinido;
    Fid_contador : Integer;
    Fnome_contador : WideString;
    Fpercentual_desconto_antecipacao : Double;
    Fdias_antecipacao_desconto : Integer;
    Fdesconto_valor : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setdia(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure Setreferente(const Value: WideString);
    procedure Setid_servico(const Value: Integer);
    procedure Setnome_servico(const Value: WideString);
    procedure Setvalor_servico(const Value: Double);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setvalor_produto(const Value: Double);
    procedure Setgera_venda(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setnome_vendedor(const Value: WideString);
    procedure Setcodigo_protesto(const Value: Integer);
    procedure Setdias_protesto(const Value: Integer);
    procedure Setvalor_cobranca(const Value: Double);
    procedure Setid_empresas_boleto(const Value: Integer);
    procedure Setid_contas_fixas(const Value: Integer);
    procedure Setativo(const Value: Boolean);
    procedure Setobs(const Value: WideString);
    procedure Setdata_inicial_cobranca(const Value: Boolean);
    procedure Setalterar_valor_cobranca(const Value: Boolean);
    procedure Setinicio_cobranca(const Value: indefinido);
    procedure Setdata_cobranca(const Value: indefinido);
    procedure Setid_contador(const Value: Integer);
    procedure Setnome_contador(const Value: WideString);
    procedure Setpercentual_desconto_antecipacao(const Value: Double);
    procedure Setdias_antecipacao_desconto(const Value: Integer);
    procedure Setdesconto_valor(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property dia     : WideString read Fdia write Setdia;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property valor     : Double read Fvalor write Setvalor;
    property referente     : WideString read Freferente write Setreferente;
    property id_servico     : Integer read Fid_servico write Setid_servico;
    property nome_servico     : WideString read Fnome_servico write Setnome_servico;
    property valor_servico     : Double read Fvalor_servico write Setvalor_servico;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property valor_produto     : Double read Fvalor_produto write Setvalor_produto;
    property gera_venda     : WideString read Fgera_venda write Setgera_venda;
    property click     : Boolean read Fclick write Setclick;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property nome_vendedor     : WideString read Fnome_vendedor write Setnome_vendedor;
    property codigo_protesto     : Integer read Fcodigo_protesto write Setcodigo_protesto;
    property dias_protesto     : Integer read Fdias_protesto write Setdias_protesto;
    property valor_cobranca     : Double read Fvalor_cobranca write Setvalor_cobranca;
    property id_empresas_boleto     : Integer read Fid_empresas_boleto write Setid_empresas_boleto;
    property id_contas_fixas     : Integer read Fid_contas_fixas write Setid_contas_fixas;
    property ativo     : Boolean read Fativo write Setativo;
    property obs     : WideString read Fobs write Setobs;
    property data_inicial_cobranca     : Boolean read Fdata_inicial_cobranca write Setdata_inicial_cobranca;
    property alterar_valor_cobranca     : Boolean read Falterar_valor_cobranca write Setalterar_valor_cobranca;
    property inicio_cobranca     : indefinido read Finicio_cobranca write Setinicio_cobranca;
    property data_cobranca     : indefinido read Fdata_cobranca write Setdata_cobranca;
    property id_contador     : Integer read Fid_contador write Setid_contador;
    property nome_contador     : WideString read Fnome_contador write Setnome_contador;
    property percentual_desconto_antecipacao     : Double read Fpercentual_desconto_antecipacao write Setpercentual_desconto_antecipacao;
    property dias_antecipacao_desconto     : Integer read Fdias_antecipacao_desconto write Setdias_antecipacao_desconto;
    property desconto_valor     : Boolean read Fdesconto_valor write Setdesconto_valor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontarecebercustodia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontarecebercustodia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontarecebercustodia(Model).id;
Self.Fid_cliente         := TModelERPcontarecebercustodia(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcontarecebercustodia(Model).nome_cliente;
Self.Fdia         := TModelERPcontarecebercustodia(Model).dia;
Self.Fid_forma         := TModelERPcontarecebercustodia(Model).id_forma;
Self.Fvalor         := TModelERPcontarecebercustodia(Model).valor;
Self.Freferente         := TModelERPcontarecebercustodia(Model).referente;
Self.Fid_servico         := TModelERPcontarecebercustodia(Model).id_servico;
Self.Fnome_servico         := TModelERPcontarecebercustodia(Model).nome_servico;
Self.Fvalor_servico         := TModelERPcontarecebercustodia(Model).valor_servico;
Self.Fid_produto         := TModelERPcontarecebercustodia(Model).id_produto;
Self.Fnome_produto         := TModelERPcontarecebercustodia(Model).nome_produto;
Self.Fvalor_produto         := TModelERPcontarecebercustodia(Model).valor_produto;
Self.Fgera_venda         := TModelERPcontarecebercustodia(Model).gera_venda;
Self.Fclick         := TModelERPcontarecebercustodia(Model).click;
Self.Fid_vendedor         := TModelERPcontarecebercustodia(Model).id_vendedor;
Self.Fnome_vendedor         := TModelERPcontarecebercustodia(Model).nome_vendedor;
Self.Fcodigo_protesto         := TModelERPcontarecebercustodia(Model).codigo_protesto;
Self.Fdias_protesto         := TModelERPcontarecebercustodia(Model).dias_protesto;
Self.Fvalor_cobranca         := TModelERPcontarecebercustodia(Model).valor_cobranca;
Self.Fid_empresas_boleto         := TModelERPcontarecebercustodia(Model).id_empresas_boleto;
Self.Fid_contas_fixas         := TModelERPcontarecebercustodia(Model).id_contas_fixas;
Self.Fativo         := TModelERPcontarecebercustodia(Model).ativo;
Self.Fobs         := TModelERPcontarecebercustodia(Model).obs;
Self.Fdata_inicial_cobranca         := TModelERPcontarecebercustodia(Model).data_inicial_cobranca;
Self.Falterar_valor_cobranca         := TModelERPcontarecebercustodia(Model).alterar_valor_cobranca;
Self.Finicio_cobranca         := TModelERPcontarecebercustodia(Model).inicio_cobranca;
Self.Fdata_cobranca         := TModelERPcontarecebercustodia(Model).data_cobranca;
Self.Fid_contador         := TModelERPcontarecebercustodia(Model).id_contador;
Self.Fnome_contador         := TModelERPcontarecebercustodia(Model).nome_contador;
Self.Fpercentual_desconto_antecipacao         := TModelERPcontarecebercustodia(Model).percentual_desconto_antecipacao;
Self.Fdias_antecipacao_desconto         := TModelERPcontarecebercustodia(Model).dias_antecipacao_desconto;
Self.Fdesconto_valor         := TModelERPcontarecebercustodia(Model).desconto_valor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontarecebercustodia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontarecebercustodia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontarecebercustodia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdia(const Value: Boolean);   
begin                
  Fdia := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setreferente(const Value: Boolean);   
begin                
  Freferente := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_servico(const Value: Boolean);   
begin                
  Fid_servico := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setnome_servico(const Value: Boolean);   
begin                
  Fnome_servico := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setvalor_servico(const Value: Boolean);   
begin                
  Fvalor_servico := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setvalor_produto(const Value: Boolean);   
begin                
  Fvalor_produto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setgera_venda(const Value: Boolean);   
begin                
  Fgera_venda := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setnome_vendedor(const Value: Boolean);   
begin                
  Fnome_vendedor := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setcodigo_protesto(const Value: Boolean);   
begin                
  Fcodigo_protesto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdias_protesto(const Value: Boolean);   
begin                
  Fdias_protesto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setvalor_cobranca(const Value: Boolean);   
begin                
  Fvalor_cobranca := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_empresas_boleto(const Value: Boolean);   
begin                
  Fid_empresas_boleto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_contas_fixas(const Value: Boolean);   
begin                
  Fid_contas_fixas := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdata_inicial_cobranca(const Value: Boolean);   
begin                
  Fdata_inicial_cobranca := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setalterar_valor_cobranca(const Value: Boolean);   
begin                
  Falterar_valor_cobranca := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setinicio_cobranca(const Value: Boolean);   
begin                
  Finicio_cobranca := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdata_cobranca(const Value: Boolean);   
begin                
  Fdata_cobranca := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setid_contador(const Value: Boolean);   
begin                
  Fid_contador := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setnome_contador(const Value: Boolean);   
begin                
  Fnome_contador := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setpercentual_desconto_antecipacao(const Value: Boolean);   
begin                
  Fpercentual_desconto_antecipacao := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdias_antecipacao_desconto(const Value: Boolean);   
begin                
  Fdias_antecipacao_desconto := Value;   
end;                 

procedure TModelERPcontarecebercustodia.Setdesconto_valor(const Value: Boolean);   
begin                
  Fdesconto_valor := Value;   
end;                 


end.
