unit Model.ERP.movimentacao_almoxarifado_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentacaoalmoxarifadoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_banco : Integer;
    Fagencia : indefinido;
    Fcheque : indefinido;
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
    Fid_contacorrente : indefinido;
    Ftipo_pgto : indefinido;
    Fclick : Boolean;
    Fid_compra : Integer;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;
    Fid_credito : Integer;
    Fativo : Boolean;
    Fid_conta_receber_uniao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_banco(const Value: Integer);
    procedure Setagencia(const Value: indefinido);
    procedure Setcheque(const Value: indefinido);
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
    procedure Setid_contacorrente(const Value: indefinido);
    procedure Settipo_pgto(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_parcela_receber(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setid_credito(const Value: Integer);
    procedure Setativo(const Value: Boolean);
    procedure Setid_conta_receber_uniao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property agencia     : indefinido read Fagencia write Setagencia;
    property cheque     : indefinido read Fcheque write Setcheque;
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
    property id_contacorrente     : indefinido read Fid_contacorrente write Setid_contacorrente;
    property tipo_pgto     : indefinido read Ftipo_pgto write Settipo_pgto;
    property click     : Boolean read Fclick write Setclick;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_parcela_receber     : Integer read Fid_parcela_receber write Setid_parcela_receber;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property id_credito     : Integer read Fid_credito write Setid_credito;
    property ativo     : Boolean read Fativo write Setativo;
    property id_conta_receber_uniao     : Integer read Fid_conta_receber_uniao write Setid_conta_receber_uniao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentacaoalmoxarifadoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentacaoalmoxarifadoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentacaoalmoxarifadoitem(Model).id;
Self.Fid_empresa         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_empresa;
Self.Fdata         := TModelERPmovimentacaoalmoxarifadoitem(Model).data;
Self.Fid_banco         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_banco;
Self.Fagencia         := TModelERPmovimentacaoalmoxarifadoitem(Model).agencia;
Self.Fcheque         := TModelERPmovimentacaoalmoxarifadoitem(Model).cheque;
Self.Fid_pedido         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_pedido;
Self.Fid_os         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_os;
Self.Fid_usuario         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_usuario;
Self.Fdocumento         := TModelERPmovimentacaoalmoxarifadoitem(Model).documento;
Self.Fparcela         := TModelERPmovimentacaoalmoxarifadoitem(Model).parcela;
Self.Fid_conta         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_conta;
Self.Fid_forma         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_forma;
Self.Fvalor         := TModelERPmovimentacaoalmoxarifadoitem(Model).valor;
Self.Fhistorico         := TModelERPmovimentacaoalmoxarifadoitem(Model).historico;
Self.Fdebcre         := TModelERPmovimentacaoalmoxarifadoitem(Model).debcre;
Self.Fid_contacorrente         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_contacorrente;
Self.Ftipo_pgto         := TModelERPmovimentacaoalmoxarifadoitem(Model).tipo_pgto;
Self.Fclick         := TModelERPmovimentacaoalmoxarifadoitem(Model).click;
Self.Fid_compra         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_compra;
Self.Fid_parcela_receber         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_parcela_receber;
Self.Fid_conta_receber         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_conta_receber;
Self.Fid_credito         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_credito;
Self.Fativo         := TModelERPmovimentacaoalmoxarifadoitem(Model).ativo;
Self.Fid_conta_receber_uniao         := TModelERPmovimentacaoalmoxarifadoitem(Model).id_conta_receber_uniao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentacaoalmoxarifadoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setcheque(const Value: Boolean);   
begin                
  Fcheque := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Settipo_pgto(const Value: Boolean);   
begin                
  Ftipo_pgto := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_parcela_receber(const Value: Boolean);   
begin                
  Fid_parcela_receber := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifadoitem.Setid_conta_receber_uniao(const Value: Boolean);   
begin                
  Fid_conta_receber_uniao := Value;   
end;                 


end.
