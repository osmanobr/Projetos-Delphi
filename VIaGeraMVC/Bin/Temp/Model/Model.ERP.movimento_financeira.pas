unit Model.ERP.movimento_caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentocaixa = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_financeira : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_usuario : Integer;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_conta : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Fhistorico : WideString;
    Fdebcre : WideString;
    Ftipo_pgto : WideString;
    Fid_compra : Integer;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_financeira(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure Sethistorico(const Value: WideString);
    procedure Setdebcre(const Value: WideString);
    procedure Settipo_pgto(const Value: WideString);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_parcela_receber(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_financeira     : Integer read Fid_financeira write Setid_financeira;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property valor     : Double read Fvalor write Setvalor;
    property historico     : WideString read Fhistorico write Sethistorico;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property tipo_pgto     : WideString read Ftipo_pgto write Settipo_pgto;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_parcela_receber     : Integer read Fid_parcela_receber write Setid_parcela_receber;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentocaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentocaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentocaixa(Model).id;
Self.Fid_empresa         := TModelERPmovimentocaixa(Model).id_empresa;
Self.Fdata         := TModelERPmovimentocaixa(Model).data;
Self.Fid_financeira         := TModelERPmovimentocaixa(Model).id_financeira;
Self.Fid_pedido         := TModelERPmovimentocaixa(Model).id_pedido;
Self.Fid_os         := TModelERPmovimentocaixa(Model).id_os;
Self.Fid_usuario         := TModelERPmovimentocaixa(Model).id_usuario;
Self.Fdocumento         := TModelERPmovimentocaixa(Model).documento;
Self.Fparcela         := TModelERPmovimentocaixa(Model).parcela;
Self.Fid_conta         := TModelERPmovimentocaixa(Model).id_conta;
Self.Fid_forma         := TModelERPmovimentocaixa(Model).id_forma;
Self.Fvalor         := TModelERPmovimentocaixa(Model).valor;
Self.Fhistorico         := TModelERPmovimentocaixa(Model).historico;
Self.Fdebcre         := TModelERPmovimentocaixa(Model).debcre;
Self.Ftipo_pgto         := TModelERPmovimentocaixa(Model).tipo_pgto;
Self.Fid_compra         := TModelERPmovimentocaixa(Model).id_compra;
Self.Fid_parcela_receber         := TModelERPmovimentocaixa(Model).id_parcela_receber;
Self.Fid_conta_receber         := TModelERPmovimentocaixa(Model).id_conta_receber;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentocaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentocaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentocaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_financeira(const Value: Boolean);   
begin                
  Fid_financeira := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmovimentocaixa.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPmovimentocaixa.Settipo_pgto(const Value: Boolean);   
begin                
  Ftipo_pgto := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_parcela_receber(const Value: Boolean);   
begin                
  Fid_parcela_receber := Value;   
end;                 

procedure TModelERPmovimentocaixa.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 


end.
