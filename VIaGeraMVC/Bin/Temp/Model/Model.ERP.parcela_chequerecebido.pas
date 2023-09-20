unit Model.ERP.parceiros;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPparceiros = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cheque : Integer;
    Fid_caixa : Integer;
    Fid_contacorrente : indefinido;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fdata_pgto : TDateTime;
    Fid_cliente : Integer;
    Fvl_juros : Double;
    Fvl_desconto : Double;
    Fvl_jurospago : Double;
    Fvl_total : Double;
    Fvl_pago : Double;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fclick : Boolean;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cheque(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_contacorrente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setid_cliente(const Value: Integer);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_jurospago(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setdocumento(const Value: indefinido);
    procedure Setparcela(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cheque     : Integer read Fid_cheque write Setid_cheque;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_contacorrente     : indefinido read Fid_contacorrente write Setid_contacorrente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_jurospago     : Double read Fvl_jurospago write Setvl_jurospago;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property parcela     : indefinido read Fparcela write Setparcela;
    property click     : Boolean read Fclick write Setclick;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPparceiros.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPparceiros) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPparceiros(Model).id;
Self.Fid_empresa         := TModelERPparceiros(Model).id_empresa;
Self.Fid_cheque         := TModelERPparceiros(Model).id_cheque;
Self.Fid_caixa         := TModelERPparceiros(Model).id_caixa;
Self.Fid_contacorrente         := TModelERPparceiros(Model).id_contacorrente;
Self.Fid_forma         := TModelERPparceiros(Model).id_forma;
Self.Fid_conta         := TModelERPparceiros(Model).id_conta;
Self.Fdata_pgto         := TModelERPparceiros(Model).data_pgto;
Self.Fid_cliente         := TModelERPparceiros(Model).id_cliente;
Self.Fvl_juros         := TModelERPparceiros(Model).vl_juros;
Self.Fvl_desconto         := TModelERPparceiros(Model).vl_desconto;
Self.Fvl_jurospago         := TModelERPparceiros(Model).vl_jurospago;
Self.Fvl_total         := TModelERPparceiros(Model).vl_total;
Self.Fvl_pago         := TModelERPparceiros(Model).vl_pago;
Self.Fdocumento         := TModelERPparceiros(Model).documento;
Self.Fparcela         := TModelERPparceiros(Model).parcela;
Self.Fclick         := TModelERPparceiros(Model).click;
Self.Fid_usuario         := TModelERPparceiros(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPparceiros.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPparceiros.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPparceiros.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPparceiros.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPparceiros.Setid_cheque(const Value: Boolean);   
begin                
  Fid_cheque := Value;   
end;                 

procedure TModelERPparceiros.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPparceiros.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPparceiros.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPparceiros.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPparceiros.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPparceiros.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPparceiros.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPparceiros.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPparceiros.Setvl_jurospago(const Value: Boolean);   
begin                
  Fvl_jurospago := Value;   
end;                 

procedure TModelERPparceiros.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPparceiros.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPparceiros.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPparceiros.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPparceiros.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPparceiros.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
