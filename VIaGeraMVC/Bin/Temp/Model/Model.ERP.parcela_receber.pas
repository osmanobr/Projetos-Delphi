unit Model.ERP.parcela_pagar;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPparcelapagar = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_receber : Integer;
    Fid_caixa : Integer;
    Fid_contacorrente : indefinido;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fdata_pgto : TDateTime;
    Fid_cliente : Integer;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_juros : Double;
    Fvl_jurospago : Double;
    Fdebcre : indefinido;
    Fid_cobrador : Integer;
    Fclick : Boolean;
    Fid_credito : Integer;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fid_usuario : Integer;
    Fbaixa_manual : indefinido;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fobs : indefinido;
    Fmulta_paga : Double;
    Fid_conta_receber_uniao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_contacorrente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setid_cliente(const Value: Integer);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_jurospago(const Value: Double);
    procedure Setdebcre(const Value: indefinido);
    procedure Setid_cobrador(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setid_credito(const Value: Integer);
    procedure Setdocumento(const Value: indefinido);
    procedure Setparcela(const Value: indefinido);
    procedure Setid_usuario(const Value: Integer);
    procedure Setbaixa_manual(const Value: indefinido);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setmulta_paga(const Value: Double);
    procedure Setid_conta_receber_uniao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_contacorrente     : indefinido read Fid_contacorrente write Setid_contacorrente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_jurospago     : Double read Fvl_jurospago write Setvl_jurospago;
    property debcre     : indefinido read Fdebcre write Setdebcre;
    property id_cobrador     : Integer read Fid_cobrador write Setid_cobrador;
    property click     : Boolean read Fclick write Setclick;
    property id_credito     : Integer read Fid_credito write Setid_credito;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property parcela     : indefinido read Fparcela write Setparcela;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property baixa_manual     : indefinido read Fbaixa_manual write Setbaixa_manual;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property obs     : indefinido read Fobs write Setobs;
    property multa_paga     : Double read Fmulta_paga write Setmulta_paga;
    property id_conta_receber_uniao     : Integer read Fid_conta_receber_uniao write Setid_conta_receber_uniao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPparcelapagar.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPparcelapagar) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPparcelapagar(Model).id;
Self.Fid_empresa         := TModelERPparcelapagar(Model).id_empresa;
Self.Fid_conta_receber         := TModelERPparcelapagar(Model).id_conta_receber;
Self.Fid_caixa         := TModelERPparcelapagar(Model).id_caixa;
Self.Fid_contacorrente         := TModelERPparcelapagar(Model).id_contacorrente;
Self.Fid_forma         := TModelERPparcelapagar(Model).id_forma;
Self.Fid_conta         := TModelERPparcelapagar(Model).id_conta;
Self.Fdata_pgto         := TModelERPparcelapagar(Model).data_pgto;
Self.Fid_cliente         := TModelERPparcelapagar(Model).id_cliente;
Self.Fvl_total         := TModelERPparcelapagar(Model).vl_total;
Self.Fvl_desconto         := TModelERPparcelapagar(Model).vl_desconto;
Self.Fvl_pago         := TModelERPparcelapagar(Model).vl_pago;
Self.Fvl_juros         := TModelERPparcelapagar(Model).vl_juros;
Self.Fvl_jurospago         := TModelERPparcelapagar(Model).vl_jurospago;
Self.Fdebcre         := TModelERPparcelapagar(Model).debcre;
Self.Fid_cobrador         := TModelERPparcelapagar(Model).id_cobrador;
Self.Fclick         := TModelERPparcelapagar(Model).click;
Self.Fid_credito         := TModelERPparcelapagar(Model).id_credito;
Self.Fdocumento         := TModelERPparcelapagar(Model).documento;
Self.Fparcela         := TModelERPparcelapagar(Model).parcela;
Self.Fid_usuario         := TModelERPparcelapagar(Model).id_usuario;
Self.Fbaixa_manual         := TModelERPparcelapagar(Model).baixa_manual;
Self.Fid_movimento         := TModelERPparcelapagar(Model).id_movimento;
Self.Fid_cupons         := TModelERPparcelapagar(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPparcelapagar(Model).id_pagamentos;
Self.Fobs         := TModelERPparcelapagar(Model).obs;
Self.Fmulta_paga         := TModelERPparcelapagar(Model).multa_paga;
Self.Fid_conta_receber_uniao         := TModelERPparcelapagar(Model).id_conta_receber_uniao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPparcelapagar.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPparcelapagar.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPparcelapagar.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPparcelapagar.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPparcelapagar.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPparcelapagar.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPparcelapagar.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPparcelapagar.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPparcelapagar.Setvl_jurospago(const Value: Boolean);   
begin                
  Fvl_jurospago := Value;   
end;                 

procedure TModelERPparcelapagar.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_cobrador(const Value: Boolean);   
begin                
  Fid_cobrador := Value;   
end;                 

procedure TModelERPparcelapagar.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 

procedure TModelERPparcelapagar.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPparcelapagar.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPparcelapagar.Setbaixa_manual(const Value: Boolean);   
begin                
  Fbaixa_manual := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPparcelapagar.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPparcelapagar.Setmulta_paga(const Value: Boolean);   
begin                
  Fmulta_paga := Value;   
end;                 

procedure TModelERPparcelapagar.Setid_conta_receber_uniao(const Value: Boolean);   
begin                
  Fid_conta_receber_uniao := Value;   
end;                 


end.
