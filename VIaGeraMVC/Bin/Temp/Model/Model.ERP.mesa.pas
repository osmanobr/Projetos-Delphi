unit Model.ERP.mdfe_xml;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmdfexml = class(TModelBase)

private
    Fid : Integer;
    Fmesa : WideString;
    Fsituacao : WideString;
    Fdataabre : TDateTime;
    Fhoraabre : WideString;
    Fdatafecha : TDateTime;
    Fhorafecha : WideString;
    Fcupom : WideString;
    Fserie : WideString;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fvl_produto : Double;
    Fvl_desconto : Double;
    Fvl_couvert : Double;
    Fvl_consumacao : Double;
    Fvl_taxa : Double;
    Fvl_rateio : Double;
    Fvl_haver : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fvl_itens : Double;
    Fpessoas : Double;
    Fparcelas : Integer;
    Fcomentrada : WideString;
    Fintervalo : Integer;
    Fid_forma1 : Integer;
    Fvl_pago1 : Double;
    Fid_forma2 : Integer;
    Fvl_pago2 : Double;
    Fcancelada : WideString;
    Fgerado : WideString;
    Fobs : WideString;
    Ftransmitida : WideString;
    Fcartao : WideString;
    Fvl_comissao : Double;
    Fsaida : WideString;

    procedure Setid(const Value: Integer);
    procedure Setmesa(const Value: WideString);
    procedure Setsituacao(const Value: WideString);
    procedure Setdataabre(const Value: TDateTime);
    procedure Sethoraabre(const Value: WideString);
    procedure Setdatafecha(const Value: TDateTime);
    procedure Sethorafecha(const Value: WideString);
    procedure Setcupom(const Value: WideString);
    procedure Setserie(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setvl_icms(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_couvert(const Value: Double);
    procedure Setvl_consumacao(const Value: Double);
    procedure Setvl_taxa(const Value: Double);
    procedure Setvl_rateio(const Value: Double);
    procedure Setvl_haver(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_troco(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_itens(const Value: Double);
    procedure Setpessoas(const Value: Double);
    procedure Setparcelas(const Value: Integer);
    procedure Setcomentrada(const Value: WideString);
    procedure Setintervalo(const Value: Integer);
    procedure Setid_forma1(const Value: Integer);
    procedure Setvl_pago1(const Value: Double);
    procedure Setid_forma2(const Value: Integer);
    procedure Setvl_pago2(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setgerado(const Value: WideString);
    procedure Setobs(const Value: WideString);
    procedure Settransmitida(const Value: WideString);
    procedure Setcartao(const Value: WideString);
    procedure Setvl_comissao(const Value: Double);
    procedure Setsaida(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property mesa     : WideString read Fmesa write Setmesa;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property dataabre     : TDateTime read Fdataabre write Setdataabre;
    property horaabre     : WideString read Fhoraabre write Sethoraabre;
    property datafecha     : TDateTime read Fdatafecha write Setdatafecha;
    property horafecha     : WideString read Fhorafecha write Sethorafecha;
    property cupom     : WideString read Fcupom write Setcupom;
    property serie     : WideString read Fserie write Setserie;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_couvert     : Double read Fvl_couvert write Setvl_couvert;
    property vl_consumacao     : Double read Fvl_consumacao write Setvl_consumacao;
    property vl_taxa     : Double read Fvl_taxa write Setvl_taxa;
    property vl_rateio     : Double read Fvl_rateio write Setvl_rateio;
    property vl_haver     : Double read Fvl_haver write Setvl_haver;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_troco     : Double read Fvl_troco write Setvl_troco;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_itens     : Double read Fvl_itens write Setvl_itens;
    property pessoas     : Double read Fpessoas write Setpessoas;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property comentrada     : WideString read Fcomentrada write Setcomentrada;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property id_forma1     : Integer read Fid_forma1 write Setid_forma1;
    property vl_pago1     : Double read Fvl_pago1 write Setvl_pago1;
    property id_forma2     : Integer read Fid_forma2 write Setid_forma2;
    property vl_pago2     : Double read Fvl_pago2 write Setvl_pago2;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property gerado     : WideString read Fgerado write Setgerado;
    property obs     : WideString read Fobs write Setobs;
    property transmitida     : WideString read Ftransmitida write Settransmitida;
    property cartao     : WideString read Fcartao write Setcartao;
    property vl_comissao     : Double read Fvl_comissao write Setvl_comissao;
    property saida     : WideString read Fsaida write Setsaida;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmdfexml.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmdfexml) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmdfexml(Model).id;
Self.Fmesa         := TModelERPmdfexml(Model).mesa;
Self.Fsituacao         := TModelERPmdfexml(Model).situacao;
Self.Fdataabre         := TModelERPmdfexml(Model).dataabre;
Self.Fhoraabre         := TModelERPmdfexml(Model).horaabre;
Self.Fdatafecha         := TModelERPmdfexml(Model).datafecha;
Self.Fhorafecha         := TModelERPmdfexml(Model).horafecha;
Self.Fcupom         := TModelERPmdfexml(Model).cupom;
Self.Fserie         := TModelERPmdfexml(Model).serie;
Self.Fid_caixa         := TModelERPmdfexml(Model).id_caixa;
Self.Fid_usuario         := TModelERPmdfexml(Model).id_usuario;
Self.Fid_vendedor         := TModelERPmdfexml(Model).id_vendedor;
Self.Fid_cliente         := TModelERPmdfexml(Model).id_cliente;
Self.Fnome_cliente         := TModelERPmdfexml(Model).nome_cliente;
Self.Fvl_icms         := TModelERPmdfexml(Model).vl_icms;
Self.Fbase_icms         := TModelERPmdfexml(Model).base_icms;
Self.Fvl_produto         := TModelERPmdfexml(Model).vl_produto;
Self.Fvl_desconto         := TModelERPmdfexml(Model).vl_desconto;
Self.Fvl_couvert         := TModelERPmdfexml(Model).vl_couvert;
Self.Fvl_consumacao         := TModelERPmdfexml(Model).vl_consumacao;
Self.Fvl_taxa         := TModelERPmdfexml(Model).vl_taxa;
Self.Fvl_rateio         := TModelERPmdfexml(Model).vl_rateio;
Self.Fvl_haver         := TModelERPmdfexml(Model).vl_haver;
Self.Fvl_pago         := TModelERPmdfexml(Model).vl_pago;
Self.Fvl_troco         := TModelERPmdfexml(Model).vl_troco;
Self.Fvl_total         := TModelERPmdfexml(Model).vl_total;
Self.Fvl_itens         := TModelERPmdfexml(Model).vl_itens;
Self.Fpessoas         := TModelERPmdfexml(Model).pessoas;
Self.Fparcelas         := TModelERPmdfexml(Model).parcelas;
Self.Fcomentrada         := TModelERPmdfexml(Model).comentrada;
Self.Fintervalo         := TModelERPmdfexml(Model).intervalo;
Self.Fid_forma1         := TModelERPmdfexml(Model).id_forma1;
Self.Fvl_pago1         := TModelERPmdfexml(Model).vl_pago1;
Self.Fid_forma2         := TModelERPmdfexml(Model).id_forma2;
Self.Fvl_pago2         := TModelERPmdfexml(Model).vl_pago2;
Self.Fcancelada         := TModelERPmdfexml(Model).cancelada;
Self.Fgerado         := TModelERPmdfexml(Model).gerado;
Self.Fobs         := TModelERPmdfexml(Model).obs;
Self.Ftransmitida         := TModelERPmdfexml(Model).transmitida;
Self.Fcartao         := TModelERPmdfexml(Model).cartao;
Self.Fvl_comissao         := TModelERPmdfexml(Model).vl_comissao;
Self.Fsaida         := TModelERPmdfexml(Model).saida;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmdfexml.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmdfexml.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmdfexml.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmdfexml.Setmesa(const Value: Boolean);   
begin                
  Fmesa := Value;   
end;                 

procedure TModelERPmdfexml.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPmdfexml.Setdataabre(const Value: Boolean);   
begin                
  Fdataabre := Value;   
end;                 

procedure TModelERPmdfexml.Sethoraabre(const Value: Boolean);   
begin                
  Fhoraabre := Value;   
end;                 

procedure TModelERPmdfexml.Setdatafecha(const Value: Boolean);   
begin                
  Fdatafecha := Value;   
end;                 

procedure TModelERPmdfexml.Sethorafecha(const Value: Boolean);   
begin                
  Fhorafecha := Value;   
end;                 

procedure TModelERPmdfexml.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPmdfexml.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPmdfexml.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmdfexml.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmdfexml.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPmdfexml.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPmdfexml.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPmdfexml.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_couvert(const Value: Boolean);   
begin                
  Fvl_couvert := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_consumacao(const Value: Boolean);   
begin                
  Fvl_consumacao := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_taxa(const Value: Boolean);   
begin                
  Fvl_taxa := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_rateio(const Value: Boolean);   
begin                
  Fvl_rateio := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_haver(const Value: Boolean);   
begin                
  Fvl_haver := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_troco(const Value: Boolean);   
begin                
  Fvl_troco := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_itens(const Value: Boolean);   
begin                
  Fvl_itens := Value;   
end;                 

procedure TModelERPmdfexml.Setpessoas(const Value: Boolean);   
begin                
  Fpessoas := Value;   
end;                 

procedure TModelERPmdfexml.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPmdfexml.Setcomentrada(const Value: Boolean);   
begin                
  Fcomentrada := Value;   
end;                 

procedure TModelERPmdfexml.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPmdfexml.Setid_forma1(const Value: Boolean);   
begin                
  Fid_forma1 := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_pago1(const Value: Boolean);   
begin                
  Fvl_pago1 := Value;   
end;                 

procedure TModelERPmdfexml.Setid_forma2(const Value: Boolean);   
begin                
  Fid_forma2 := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_pago2(const Value: Boolean);   
begin                
  Fvl_pago2 := Value;   
end;                 

procedure TModelERPmdfexml.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPmdfexml.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPmdfexml.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPmdfexml.Settransmitida(const Value: Boolean);   
begin                
  Ftransmitida := Value;   
end;                 

procedure TModelERPmdfexml.Setcartao(const Value: Boolean);   
begin                
  Fcartao := Value;   
end;                 

procedure TModelERPmdfexml.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPmdfexml.Setsaida(const Value: Boolean);   
begin                
  Fsaida := Value;   
end;                 


end.
