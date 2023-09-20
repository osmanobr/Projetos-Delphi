unit Model.ERP.venda_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_pedido : Integer;
    Fdata : TDateTime;
    Fhora : indefinido;
    Fnota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_vendedor : Integer;
    Fmotorista : indefinido;
    Fqtd_itens : Integer;
    Fvl_produto : Double;
    Fvl_total : Double;
    Fvl_servico : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Fserie : indefinido;
    Fid_cfop : Integer;
    Fid_transportadora : Integer;
    Fvl_icms : Double;
    Fvl_desconto : Double;
    Fbase_icms : Double;
    Fbase_substituicao : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fbase_ipi : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvl_icmsst : Double;
    Fnfe_chave : indefinido;
    Fnfe : indefinido;
    Fplaca : indefinido;
    Fnfe_protocolo : indefinido;
    Ftipo_frete : Integer;
    Fespecie : indefinido;
    Fqtd_volume : Double;
    Fnro_volume : Double;
    Fpis : Double;
    Fcofins : Double;
    Fnfe_placa : indefinido;
    Fgerado : indefinido;
    Fnfe_protocolo_cancelada : indefinido;
    Ffechada : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Sethora(const Value: indefinido);
    procedure Setnota(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setmotorista(const Value: indefinido);
    procedure Setqtd_itens(const Value: Integer);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setserie(const Value: indefinido);
    procedure Setid_cfop(const Value: Integer);
    procedure Setid_transportadora(const Value: Integer);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setbase_icms(const Value: Double);
    procedure Setbase_substituicao(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_seguro(const Value: Double);
    procedure Setvl_outras(const Value: Double);
    procedure Setbase_ipi(const Value: Double);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setvl_icmsst(const Value: Double);
    procedure Setnfe_chave(const Value: indefinido);
    procedure Setnfe(const Value: indefinido);
    procedure Setplaca(const Value: indefinido);
    procedure Setnfe_protocolo(const Value: indefinido);
    procedure Settipo_frete(const Value: Integer);
    procedure Setespecie(const Value: indefinido);
    procedure Setqtd_volume(const Value: Double);
    procedure Setnro_volume(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setnfe_placa(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setnfe_protocolo_cancelada(const Value: indefinido);
    procedure Setfechada(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property data     : TDateTime read Fdata write Setdata;
    property hora     : indefinido read Fhora write Sethora;
    property nota     : Integer read Fnota write Setnota;
    property cupom     : Integer read Fcupom write Setcupom;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property motorista     : indefinido read Fmotorista write Setmotorista;
    property qtd_itens     : Integer read Fqtd_itens write Setqtd_itens;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property serie     : indefinido read Fserie write Setserie;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property id_transportadora     : Integer read Fid_transportadora write Setid_transportadora;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property base_substituicao     : Double read Fbase_substituicao write Setbase_substituicao;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_seguro     : Double read Fvl_seguro write Setvl_seguro;
    property vl_outras     : Double read Fvl_outras write Setvl_outras;
    property base_ipi     : Double read Fbase_ipi write Setbase_ipi;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property vl_icmsst     : Double read Fvl_icmsst write Setvl_icmsst;
    property nfe_chave     : indefinido read Fnfe_chave write Setnfe_chave;
    property nfe     : indefinido read Fnfe write Setnfe;
    property placa     : indefinido read Fplaca write Setplaca;
    property nfe_protocolo     : indefinido read Fnfe_protocolo write Setnfe_protocolo;
    property tipo_frete     : Integer read Ftipo_frete write Settipo_frete;
    property especie     : indefinido read Fespecie write Setespecie;
    property qtd_volume     : Double read Fqtd_volume write Setqtd_volume;
    property nro_volume     : Double read Fnro_volume write Setnro_volume;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property nfe_placa     : indefinido read Fnfe_placa write Setnfe_placa;
    property gerado     : indefinido read Fgerado write Setgerado;
    property nfe_protocolo_cancelada     : indefinido read Fnfe_protocolo_cancelada write Setnfe_protocolo_cancelada;
    property fechada     : Boolean read Ffechada write Setfechada;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaduplicata(Model).id;
Self.Fid_pedido         := TModelERPvendaduplicata(Model).id_pedido;
Self.Fdata         := TModelERPvendaduplicata(Model).data;
Self.Fhora         := TModelERPvendaduplicata(Model).hora;
Self.Fnota         := TModelERPvendaduplicata(Model).nota;
Self.Fcupom         := TModelERPvendaduplicata(Model).cupom;
Self.Fid_cliente         := TModelERPvendaduplicata(Model).id_cliente;
Self.Fnome_cliente         := TModelERPvendaduplicata(Model).nome_cliente;
Self.Fid_vendedor         := TModelERPvendaduplicata(Model).id_vendedor;
Self.Fmotorista         := TModelERPvendaduplicata(Model).motorista;
Self.Fqtd_itens         := TModelERPvendaduplicata(Model).qtd_itens;
Self.Fvl_produto         := TModelERPvendaduplicata(Model).vl_produto;
Self.Fvl_total         := TModelERPvendaduplicata(Model).vl_total;
Self.Fvl_servico         := TModelERPvendaduplicata(Model).vl_servico;
Self.Fobs         := TModelERPvendaduplicata(Model).obs;
Self.Fclick         := TModelERPvendaduplicata(Model).click;
Self.Fserie         := TModelERPvendaduplicata(Model).serie;
Self.Fid_cfop         := TModelERPvendaduplicata(Model).id_cfop;
Self.Fid_transportadora         := TModelERPvendaduplicata(Model).id_transportadora;
Self.Fvl_icms         := TModelERPvendaduplicata(Model).vl_icms;
Self.Fvl_desconto         := TModelERPvendaduplicata(Model).vl_desconto;
Self.Fbase_icms         := TModelERPvendaduplicata(Model).base_icms;
Self.Fbase_substituicao         := TModelERPvendaduplicata(Model).base_substituicao;
Self.Fvl_frete         := TModelERPvendaduplicata(Model).vl_frete;
Self.Fvl_seguro         := TModelERPvendaduplicata(Model).vl_seguro;
Self.Fvl_outras         := TModelERPvendaduplicata(Model).vl_outras;
Self.Fbase_ipi         := TModelERPvendaduplicata(Model).base_ipi;
Self.Fpeso_bruto         := TModelERPvendaduplicata(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPvendaduplicata(Model).peso_liquido;
Self.Fvl_icmsst         := TModelERPvendaduplicata(Model).vl_icmsst;
Self.Fnfe_chave         := TModelERPvendaduplicata(Model).nfe_chave;
Self.Fnfe         := TModelERPvendaduplicata(Model).nfe;
Self.Fplaca         := TModelERPvendaduplicata(Model).placa;
Self.Fnfe_protocolo         := TModelERPvendaduplicata(Model).nfe_protocolo;
Self.Ftipo_frete         := TModelERPvendaduplicata(Model).tipo_frete;
Self.Fespecie         := TModelERPvendaduplicata(Model).especie;
Self.Fqtd_volume         := TModelERPvendaduplicata(Model).qtd_volume;
Self.Fnro_volume         := TModelERPvendaduplicata(Model).nro_volume;
Self.Fpis         := TModelERPvendaduplicata(Model).pis;
Self.Fcofins         := TModelERPvendaduplicata(Model).cofins;
Self.Fnfe_placa         := TModelERPvendaduplicata(Model).nfe_placa;
Self.Fgerado         := TModelERPvendaduplicata(Model).gerado;
Self.Fnfe_protocolo_cancelada         := TModelERPvendaduplicata(Model).nfe_protocolo_cancelada;
Self.Ffechada         := TModelERPvendaduplicata(Model).fechada;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaduplicata.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPvendaduplicata.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvendaduplicata.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPvendaduplicata.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPvendaduplicata.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPvendaduplicata.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPvendaduplicata.Setmotorista(const Value: Boolean);   
begin                
  Fmotorista := Value;   
end;                 

procedure TModelERPvendaduplicata.Setqtd_itens(const Value: Boolean);   
begin                
  Fqtd_itens := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPvendaduplicata.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPvendaduplicata.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPvendaduplicata.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPvendaduplicata.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPvendaduplicata.Setid_transportadora(const Value: Boolean);   
begin                
  Fid_transportadora := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPvendaduplicata.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPvendaduplicata.Setbase_substituicao(const Value: Boolean);   
begin                
  Fbase_substituicao := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_seguro(const Value: Boolean);   
begin                
  Fvl_seguro := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_outras(const Value: Boolean);   
begin                
  Fvl_outras := Value;   
end;                 

procedure TModelERPvendaduplicata.Setbase_ipi(const Value: Boolean);   
begin                
  Fbase_ipi := Value;   
end;                 

procedure TModelERPvendaduplicata.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPvendaduplicata.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPvendaduplicata.Setvl_icmsst(const Value: Boolean);   
begin                
  Fvl_icmsst := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPvendaduplicata.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnfe_protocolo(const Value: Boolean);   
begin                
  Fnfe_protocolo := Value;   
end;                 

procedure TModelERPvendaduplicata.Settipo_frete(const Value: Boolean);   
begin                
  Ftipo_frete := Value;   
end;                 

procedure TModelERPvendaduplicata.Setespecie(const Value: Boolean);   
begin                
  Fespecie := Value;   
end;                 

procedure TModelERPvendaduplicata.Setqtd_volume(const Value: Boolean);   
begin                
  Fqtd_volume := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnro_volume(const Value: Boolean);   
begin                
  Fnro_volume := Value;   
end;                 

procedure TModelERPvendaduplicata.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPvendaduplicata.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnfe_placa(const Value: Boolean);   
begin                
  Fnfe_placa := Value;   
end;                 

procedure TModelERPvendaduplicata.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPvendaduplicata.Setnfe_protocolo_cancelada(const Value: Boolean);   
begin                
  Fnfe_protocolo_cancelada := Value;   
end;                 

procedure TModelERPvendaduplicata.Setfechada(const Value: Boolean);   
begin                
  Ffechada := Value;   
end;                 


end.
