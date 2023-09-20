unit Model.ERP.parcela_receber;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPparcelareceber = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fhora : indefinido;
    Fcupom : indefinido;
    Fserie : indefinido;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_forma : Integer;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fvl_produto : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fparcelas : Integer;
    Fcomentrada : indefinido;
    Fintervalo : Integer;
    Fid_forma1 : Integer;
    Fvl_pago1 : Double;
    Fid_forma2 : Integer;
    Fvl_pago2 : Double;
    Fcancelada : indefinido;
    Fgerado : indefinido;
    Fobs : indefinido;
    Ftransmitida : indefinido;
    Fid_pdvcaixa : Integer;
    Fservidor : indefinido;
    Fid_vendedor : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Sethora(const Value: indefinido);
    procedure Setcupom(const Value: indefinido);
    procedure Setserie(const Value: indefinido);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setvl_icms(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_troco(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setparcelas(const Value: Integer);
    procedure Setcomentrada(const Value: indefinido);
    procedure Setintervalo(const Value: Integer);
    procedure Setid_forma1(const Value: Integer);
    procedure Setvl_pago1(const Value: Double);
    procedure Setid_forma2(const Value: Integer);
    procedure Setvl_pago2(const Value: Double);
    procedure Setcancelada(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Settransmitida(const Value: indefinido);
    procedure Setid_pdvcaixa(const Value: Integer);
    procedure Setservidor(const Value: indefinido);
    procedure Setid_vendedor(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property hora     : indefinido read Fhora write Sethora;
    property cupom     : indefinido read Fcupom write Setcupom;
    property serie     : indefinido read Fserie write Setserie;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_troco     : Double read Fvl_troco write Setvl_troco;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property comentrada     : indefinido read Fcomentrada write Setcomentrada;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property id_forma1     : Integer read Fid_forma1 write Setid_forma1;
    property vl_pago1     : Double read Fvl_pago1 write Setvl_pago1;
    property id_forma2     : Integer read Fid_forma2 write Setid_forma2;
    property vl_pago2     : Double read Fvl_pago2 write Setvl_pago2;
    property cancelada     : indefinido read Fcancelada write Setcancelada;
    property gerado     : indefinido read Fgerado write Setgerado;
    property obs     : indefinido read Fobs write Setobs;
    property transmitida     : indefinido read Ftransmitida write Settransmitida;
    property id_pdvcaixa     : Integer read Fid_pdvcaixa write Setid_pdvcaixa;
    property servidor     : indefinido read Fservidor write Setservidor;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPparcelareceber.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPparcelareceber) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPparcelareceber(Model).id;
Self.Fdata         := TModelERPparcelareceber(Model).data;
Self.Fhora         := TModelERPparcelareceber(Model).hora;
Self.Fcupom         := TModelERPparcelareceber(Model).cupom;
Self.Fserie         := TModelERPparcelareceber(Model).serie;
Self.Fid_caixa         := TModelERPparcelareceber(Model).id_caixa;
Self.Fid_usuario         := TModelERPparcelareceber(Model).id_usuario;
Self.Fid_cliente         := TModelERPparcelareceber(Model).id_cliente;
Self.Fnome_cliente         := TModelERPparcelareceber(Model).nome_cliente;
Self.Fid_forma         := TModelERPparcelareceber(Model).id_forma;
Self.Fvl_icms         := TModelERPparcelareceber(Model).vl_icms;
Self.Fbase_icms         := TModelERPparcelareceber(Model).base_icms;
Self.Fvl_produto         := TModelERPparcelareceber(Model).vl_produto;
Self.Fvl_desconto         := TModelERPparcelareceber(Model).vl_desconto;
Self.Fvl_pago         := TModelERPparcelareceber(Model).vl_pago;
Self.Fvl_troco         := TModelERPparcelareceber(Model).vl_troco;
Self.Fvl_total         := TModelERPparcelareceber(Model).vl_total;
Self.Fparcelas         := TModelERPparcelareceber(Model).parcelas;
Self.Fcomentrada         := TModelERPparcelareceber(Model).comentrada;
Self.Fintervalo         := TModelERPparcelareceber(Model).intervalo;
Self.Fid_forma1         := TModelERPparcelareceber(Model).id_forma1;
Self.Fvl_pago1         := TModelERPparcelareceber(Model).vl_pago1;
Self.Fid_forma2         := TModelERPparcelareceber(Model).id_forma2;
Self.Fvl_pago2         := TModelERPparcelareceber(Model).vl_pago2;
Self.Fcancelada         := TModelERPparcelareceber(Model).cancelada;
Self.Fgerado         := TModelERPparcelareceber(Model).gerado;
Self.Fobs         := TModelERPparcelareceber(Model).obs;
Self.Ftransmitida         := TModelERPparcelareceber(Model).transmitida;
Self.Fid_pdvcaixa         := TModelERPparcelareceber(Model).id_pdvcaixa;
Self.Fservidor         := TModelERPparcelareceber(Model).servidor;
Self.Fid_vendedor         := TModelERPparcelareceber(Model).id_vendedor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPparcelareceber.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPparcelareceber.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPparcelareceber.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPparcelareceber.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPparcelareceber.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPparcelareceber.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPparcelareceber.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPparcelareceber.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPparcelareceber.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_troco(const Value: Boolean);   
begin                
  Fvl_troco := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPparcelareceber.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPparcelareceber.Setcomentrada(const Value: Boolean);   
begin                
  Fcomentrada := Value;   
end;                 

procedure TModelERPparcelareceber.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_forma1(const Value: Boolean);   
begin                
  Fid_forma1 := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_pago1(const Value: Boolean);   
begin                
  Fvl_pago1 := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_forma2(const Value: Boolean);   
begin                
  Fid_forma2 := Value;   
end;                 

procedure TModelERPparcelareceber.Setvl_pago2(const Value: Boolean);   
begin                
  Fvl_pago2 := Value;   
end;                 

procedure TModelERPparcelareceber.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPparcelareceber.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPparcelareceber.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPparcelareceber.Settransmitida(const Value: Boolean);   
begin                
  Ftransmitida := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_pdvcaixa(const Value: Boolean);   
begin                
  Fid_pdvcaixa := Value;   
end;                 

procedure TModelERPparcelareceber.Setservidor(const Value: Boolean);   
begin                
  Fservidor := Value;   
end;                 

procedure TModelERPparcelareceber.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 


end.
