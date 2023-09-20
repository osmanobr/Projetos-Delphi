unit Model.ERP.d;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPd = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa_from_conta_receber : Integer;
    Fid_empresa_from_empresas_boleto : Integer;
    Fid_conta_receber : Integer;
    Fid_empresas_boleto : Integer;
    Fnosso_numero : WideString;
    Fpercentual_multa : Double;
    Fpercentual_desconto_abatimento : Double;
    Fdias_antecipacao_desconto : indefinido;
    Fpercentual_desconto_antecipacao : Double;
    Fvencto_original : TDateTime;
    Fcodigo_protesto : indefinido;
    Fdias_protesto : indefinido;
    Fbaixado : Boolean;
    Fdata_instrucao_baixa : TDateTime;
    Fdata_registro_baixa : TDateTime;
    Fregistrado : Boolean;
    Fdata_registro : TDateTime;
    Frejeitado : Boolean;
    Fmotivo_rejeicao : indefinido;
    Fhistorico : indefinido;
    Fdesconto_valor : Boolean;
    Fcarencia_pgto_multa : Integer;
    Fcarencia_pgto_juros : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa_from_conta_receber(const Value: Integer);
    procedure Setid_empresa_from_empresas_boleto(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setid_empresas_boleto(const Value: Integer);
    procedure Setnosso_numero(const Value: WideString);
    procedure Setpercentual_multa(const Value: Double);
    procedure Setpercentual_desconto_abatimento(const Value: Double);
    procedure Setdias_antecipacao_desconto(const Value: indefinido);
    procedure Setpercentual_desconto_antecipacao(const Value: Double);
    procedure Setvencto_original(const Value: TDateTime);
    procedure Setcodigo_protesto(const Value: indefinido);
    procedure Setdias_protesto(const Value: indefinido);
    procedure Setbaixado(const Value: Boolean);
    procedure Setdata_instrucao_baixa(const Value: TDateTime);
    procedure Setdata_registro_baixa(const Value: TDateTime);
    procedure Setregistrado(const Value: Boolean);
    procedure Setdata_registro(const Value: TDateTime);
    procedure Setrejeitado(const Value: Boolean);
    procedure Setmotivo_rejeicao(const Value: indefinido);
    procedure Sethistorico(const Value: indefinido);
    procedure Setdesconto_valor(const Value: Boolean);
    procedure Setcarencia_pgto_multa(const Value: Integer);
    procedure Setcarencia_pgto_juros(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa_from_conta_receber     : Integer read Fid_empresa_from_conta_receber write Setid_empresa_from_conta_receber;
    property id_empresa_from_empresas_boleto     : Integer read Fid_empresa_from_empresas_boleto write Setid_empresa_from_empresas_boleto;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property id_empresas_boleto     : Integer read Fid_empresas_boleto write Setid_empresas_boleto;
    property nosso_numero     : WideString read Fnosso_numero write Setnosso_numero;
    property percentual_multa     : Double read Fpercentual_multa write Setpercentual_multa;
    property percentual_desconto_abatimento     : Double read Fpercentual_desconto_abatimento write Setpercentual_desconto_abatimento;
    property dias_antecipacao_desconto     : indefinido read Fdias_antecipacao_desconto write Setdias_antecipacao_desconto;
    property percentual_desconto_antecipacao     : Double read Fpercentual_desconto_antecipacao write Setpercentual_desconto_antecipacao;
    property vencto_original     : TDateTime read Fvencto_original write Setvencto_original;
    property codigo_protesto     : indefinido read Fcodigo_protesto write Setcodigo_protesto;
    property dias_protesto     : indefinido read Fdias_protesto write Setdias_protesto;
    property baixado     : Boolean read Fbaixado write Setbaixado;
    property data_instrucao_baixa     : TDateTime read Fdata_instrucao_baixa write Setdata_instrucao_baixa;
    property data_registro_baixa     : TDateTime read Fdata_registro_baixa write Setdata_registro_baixa;
    property registrado     : Boolean read Fregistrado write Setregistrado;
    property data_registro     : TDateTime read Fdata_registro write Setdata_registro;
    property rejeitado     : Boolean read Frejeitado write Setrejeitado;
    property motivo_rejeicao     : indefinido read Fmotivo_rejeicao write Setmotivo_rejeicao;
    property historico     : indefinido read Fhistorico write Sethistorico;
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
 function TModelERPd.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPd) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPd(Model).id;
Self.Fid_empresa_from_conta_receber         := TModelERPd(Model).id_empresa_from_conta_receber;
Self.Fid_empresa_from_empresas_boleto         := TModelERPd(Model).id_empresa_from_empresas_boleto;
Self.Fid_conta_receber         := TModelERPd(Model).id_conta_receber;
Self.Fid_empresas_boleto         := TModelERPd(Model).id_empresas_boleto;
Self.Fnosso_numero         := TModelERPd(Model).nosso_numero;
Self.Fpercentual_multa         := TModelERPd(Model).percentual_multa;
Self.Fpercentual_desconto_abatimento         := TModelERPd(Model).percentual_desconto_abatimento;
Self.Fdias_antecipacao_desconto         := TModelERPd(Model).dias_antecipacao_desconto;
Self.Fpercentual_desconto_antecipacao         := TModelERPd(Model).percentual_desconto_antecipacao;
Self.Fvencto_original         := TModelERPd(Model).vencto_original;
Self.Fcodigo_protesto         := TModelERPd(Model).codigo_protesto;
Self.Fdias_protesto         := TModelERPd(Model).dias_protesto;
Self.Fbaixado         := TModelERPd(Model).baixado;
Self.Fdata_instrucao_baixa         := TModelERPd(Model).data_instrucao_baixa;
Self.Fdata_registro_baixa         := TModelERPd(Model).data_registro_baixa;
Self.Fregistrado         := TModelERPd(Model).registrado;
Self.Fdata_registro         := TModelERPd(Model).data_registro;
Self.Frejeitado         := TModelERPd(Model).rejeitado;
Self.Fmotivo_rejeicao         := TModelERPd(Model).motivo_rejeicao;
Self.Fhistorico         := TModelERPd(Model).historico;
Self.Fdesconto_valor         := TModelERPd(Model).desconto_valor;
Self.Fcarencia_pgto_multa         := TModelERPd(Model).carencia_pgto_multa;
Self.Fcarencia_pgto_juros         := TModelERPd(Model).carencia_pgto_juros;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPd.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPd.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPd.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPd.Setid_empresa_from_conta_receber(const Value: Boolean);   
begin                
  Fid_empresa_from_conta_receber := Value;   
end;                 

procedure TModelERPd.Setid_empresa_from_empresas_boleto(const Value: Boolean);   
begin                
  Fid_empresa_from_empresas_boleto := Value;   
end;                 

procedure TModelERPd.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPd.Setid_empresas_boleto(const Value: Boolean);   
begin                
  Fid_empresas_boleto := Value;   
end;                 

procedure TModelERPd.Setnosso_numero(const Value: Boolean);   
begin                
  Fnosso_numero := Value;   
end;                 

procedure TModelERPd.Setpercentual_multa(const Value: Boolean);   
begin                
  Fpercentual_multa := Value;   
end;                 

procedure TModelERPd.Setpercentual_desconto_abatimento(const Value: Boolean);   
begin                
  Fpercentual_desconto_abatimento := Value;   
end;                 

procedure TModelERPd.Setdias_antecipacao_desconto(const Value: Boolean);   
begin                
  Fdias_antecipacao_desconto := Value;   
end;                 

procedure TModelERPd.Setpercentual_desconto_antecipacao(const Value: Boolean);   
begin                
  Fpercentual_desconto_antecipacao := Value;   
end;                 

procedure TModelERPd.Setvencto_original(const Value: Boolean);   
begin                
  Fvencto_original := Value;   
end;                 

procedure TModelERPd.Setcodigo_protesto(const Value: Boolean);   
begin                
  Fcodigo_protesto := Value;   
end;                 

procedure TModelERPd.Setdias_protesto(const Value: Boolean);   
begin                
  Fdias_protesto := Value;   
end;                 

procedure TModelERPd.Setbaixado(const Value: Boolean);   
begin                
  Fbaixado := Value;   
end;                 

procedure TModelERPd.Setdata_instrucao_baixa(const Value: Boolean);   
begin                
  Fdata_instrucao_baixa := Value;   
end;                 

procedure TModelERPd.Setdata_registro_baixa(const Value: Boolean);   
begin                
  Fdata_registro_baixa := Value;   
end;                 

procedure TModelERPd.Setregistrado(const Value: Boolean);   
begin                
  Fregistrado := Value;   
end;                 

procedure TModelERPd.Setdata_registro(const Value: Boolean);   
begin                
  Fdata_registro := Value;   
end;                 

procedure TModelERPd.Setrejeitado(const Value: Boolean);   
begin                
  Frejeitado := Value;   
end;                 

procedure TModelERPd.Setmotivo_rejeicao(const Value: Boolean);   
begin                
  Fmotivo_rejeicao := Value;   
end;                 

procedure TModelERPd.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPd.Setdesconto_valor(const Value: Boolean);   
begin                
  Fdesconto_valor := Value;   
end;                 

procedure TModelERPd.Setcarencia_pgto_multa(const Value: Boolean);   
begin                
  Fcarencia_pgto_multa := Value;   
end;                 

procedure TModelERPd.Setcarencia_pgto_juros(const Value: Boolean);   
begin                
  Fcarencia_pgto_juros := Value;   
end;                 


end.
