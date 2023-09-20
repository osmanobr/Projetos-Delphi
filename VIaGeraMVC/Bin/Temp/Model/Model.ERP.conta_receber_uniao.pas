unit Model.ERP.conta_receber_transferencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontarecebertransferencia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fmotivo : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_conta : WideString;
    Fvl_bruto : Double;
    Fvl_juros : Double;
    Fvl_liquido : Double;
    Fdata_vencto : TDateTime;
    Fid_forma : Integer;
    Fdocumento : WideString;
    Fid_caixa : Integer;
    Fmulta : Double;
    Fvl_desconto : Double;
    Fvl_credito : Double;
    Fvl_pago : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario(const Value: Integer);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setvl_bruto(const Value: Double);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_liquido(const Value: Double);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setmulta(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_credito(const Value: Double);
    procedure Setvl_pago(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property vl_bruto     : Double read Fvl_bruto write Setvl_bruto;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_liquido     : Double read Fvl_liquido write Setvl_liquido;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property documento     : WideString read Fdocumento write Setdocumento;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property multa     : Double read Fmulta write Setmulta;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_credito     : Double read Fvl_credito write Setvl_credito;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontarecebertransferencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontarecebertransferencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontarecebertransferencia(Model).id;
Self.Fid_empresa         := TModelERPcontarecebertransferencia(Model).id_empresa;
Self.Fdata         := TModelERPcontarecebertransferencia(Model).data;
Self.Fid_usuario         := TModelERPcontarecebertransferencia(Model).id_usuario;
Self.Fmotivo         := TModelERPcontarecebertransferencia(Model).motivo;
Self.Fid_cliente         := TModelERPcontarecebertransferencia(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcontarecebertransferencia(Model).nome_cliente;
Self.Fid_conta         := TModelERPcontarecebertransferencia(Model).id_conta;
Self.Fvl_bruto         := TModelERPcontarecebertransferencia(Model).vl_bruto;
Self.Fvl_juros         := TModelERPcontarecebertransferencia(Model).vl_juros;
Self.Fvl_liquido         := TModelERPcontarecebertransferencia(Model).vl_liquido;
Self.Fdata_vencto         := TModelERPcontarecebertransferencia(Model).data_vencto;
Self.Fid_forma         := TModelERPcontarecebertransferencia(Model).id_forma;
Self.Fdocumento         := TModelERPcontarecebertransferencia(Model).documento;
Self.Fid_caixa         := TModelERPcontarecebertransferencia(Model).id_caixa;
Self.Fmulta         := TModelERPcontarecebertransferencia(Model).multa;
Self.Fvl_desconto         := TModelERPcontarecebertransferencia(Model).vl_desconto;
Self.Fvl_credito         := TModelERPcontarecebertransferencia(Model).vl_credito;
Self.Fvl_pago         := TModelERPcontarecebertransferencia(Model).vl_pago;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontarecebertransferencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontarecebertransferencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontarecebertransferencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_bruto(const Value: Boolean);   
begin                
  Fvl_bruto := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_liquido(const Value: Boolean);   
begin                
  Fvl_liquido := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setmulta(const Value: Boolean);   
begin                
  Fmulta := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_credito(const Value: Boolean);   
begin                
  Fvl_credito := Value;   
end;                 

procedure TModelERPcontarecebertransferencia.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 


end.
