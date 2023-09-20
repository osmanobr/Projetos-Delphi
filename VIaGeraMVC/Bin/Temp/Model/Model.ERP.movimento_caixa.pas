unit Model.ERP.movimento_banco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentobanco = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_caixa : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_usuario : Integer;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fid_conta : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Fhistorico : indefinido;
    Fdebcre : indefinido;
    Ftipo_pgto : indefinido;
    Fclick : Boolean;
    Fid_compra : Integer;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fid_cliser : Integer;
    Ffilial : indefinido;
    Fmatriz : indefinido;
    Fcancelado : indefinido;
    Fid_credito_cliente : Integer;
    Fid_conta_receber_uniao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdocumento(const Value: indefinido);
    procedure Setparcela(const Value: indefinido);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure Sethistorico(const Value: indefinido);
    procedure Setdebcre(const Value: indefinido);
    procedure Settipo_pgto(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_parcela_receber(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: indefinido);
    procedure Setmatriz(const Value: indefinido);
    procedure Setcancelado(const Value: indefinido);
    procedure Setid_credito_cliente(const Value: Integer);
    procedure Setid_conta_receber_uniao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property parcela     : indefinido read Fparcela write Setparcela;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property valor     : Double read Fvalor write Setvalor;
    property historico     : indefinido read Fhistorico write Sethistorico;
    property debcre     : indefinido read Fdebcre write Setdebcre;
    property tipo_pgto     : indefinido read Ftipo_pgto write Settipo_pgto;
    property click     : Boolean read Fclick write Setclick;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_parcela_receber     : Integer read Fid_parcela_receber write Setid_parcela_receber;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : indefinido read Ffilial write Setfilial;
    property matriz     : indefinido read Fmatriz write Setmatriz;
    property cancelado     : indefinido read Fcancelado write Setcancelado;
    property id_credito_cliente     : Integer read Fid_credito_cliente write Setid_credito_cliente;
    property id_conta_receber_uniao     : Integer read Fid_conta_receber_uniao write Setid_conta_receber_uniao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentobanco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentobanco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentobanco(Model).id;
Self.Fid_empresa         := TModelERPmovimentobanco(Model).id_empresa;
Self.Fdata         := TModelERPmovimentobanco(Model).data;
Self.Fid_caixa         := TModelERPmovimentobanco(Model).id_caixa;
Self.Fid_pedido         := TModelERPmovimentobanco(Model).id_pedido;
Self.Fid_os         := TModelERPmovimentobanco(Model).id_os;
Self.Fid_usuario         := TModelERPmovimentobanco(Model).id_usuario;
Self.Fdocumento         := TModelERPmovimentobanco(Model).documento;
Self.Fparcela         := TModelERPmovimentobanco(Model).parcela;
Self.Fid_conta         := TModelERPmovimentobanco(Model).id_conta;
Self.Fid_forma         := TModelERPmovimentobanco(Model).id_forma;
Self.Fvalor         := TModelERPmovimentobanco(Model).valor;
Self.Fhistorico         := TModelERPmovimentobanco(Model).historico;
Self.Fdebcre         := TModelERPmovimentobanco(Model).debcre;
Self.Ftipo_pgto         := TModelERPmovimentobanco(Model).tipo_pgto;
Self.Fclick         := TModelERPmovimentobanco(Model).click;
Self.Fid_compra         := TModelERPmovimentobanco(Model).id_compra;
Self.Fid_parcela_receber         := TModelERPmovimentobanco(Model).id_parcela_receber;
Self.Fid_conta_receber         := TModelERPmovimentobanco(Model).id_conta_receber;
Self.Fid_movimento         := TModelERPmovimentobanco(Model).id_movimento;
Self.Fid_cupons         := TModelERPmovimentobanco(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPmovimentobanco(Model).id_pagamentos;
Self.Fid_cliser         := TModelERPmovimentobanco(Model).id_cliser;
Self.Ffilial         := TModelERPmovimentobanco(Model).filial;
Self.Fmatriz         := TModelERPmovimentobanco(Model).matriz;
Self.Fcancelado         := TModelERPmovimentobanco(Model).cancelado;
Self.Fid_credito_cliente         := TModelERPmovimentobanco(Model).id_credito_cliente;
Self.Fid_conta_receber_uniao         := TModelERPmovimentobanco(Model).id_conta_receber_uniao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentobanco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentobanco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentobanco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmovimentobanco.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmovimentobanco.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPmovimentobanco.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPmovimentobanco.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmovimentobanco.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPmovimentobanco.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPmovimentobanco.Settipo_pgto(const Value: Boolean);   
begin                
  Ftipo_pgto := Value;   
end;                 

procedure TModelERPmovimentobanco.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_parcela_receber(const Value: Boolean);   
begin                
  Fid_parcela_receber := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPmovimentobanco.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPmovimentobanco.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 

procedure TModelERPmovimentobanco.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_credito_cliente(const Value: Boolean);   
begin                
  Fid_credito_cliente := Value;   
end;                 

procedure TModelERPmovimentobanco.Setid_conta_receber_uniao(const Value: Boolean);   
begin                
  Fid_conta_receber_uniao := Value;   
end;                 


end.
