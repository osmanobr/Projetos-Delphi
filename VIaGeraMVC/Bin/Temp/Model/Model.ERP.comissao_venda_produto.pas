unit Model.ERP.comissao_venda;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaovenda = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fvl_unitario : Double;
    Fvl_tabela : Double;
    Fquantidade : Double;
    Fdesconto_produto : Double;
    Ftotal_produto : Double;
    Fvl_comissao : Double;
    Fcancelada : WideString;
    Favistaaprazo : WideString;
    Foperacao : WideString;
    Fcomissao : WideString;
    Fpago : WideString;
    Fclick : Boolean;
    Fid_supervisor : Integer;
    Fpreco_promocao : Double;
    Fvl_total_promocao : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_tabela(const Value: Double);
    procedure Setquantidade(const Value: Double);
    procedure Setdesconto_produto(const Value: Double);
    procedure Settotal_produto(const Value: Double);
    procedure Setvl_comissao(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setavistaaprazo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setcomissao(const Value: WideString);
    procedure Setpago(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_supervisor(const Value: Integer);
    procedure Setpreco_promocao(const Value: Double);
    procedure Setvl_total_promocao(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property documento     : WideString read Fdocumento write Setdocumento;
    property data     : TDateTime read Fdata write Setdata;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_tabela     : Double read Fvl_tabela write Setvl_tabela;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property desconto_produto     : Double read Fdesconto_produto write Setdesconto_produto;
    property total_produto     : Double read Ftotal_produto write Settotal_produto;
    property vl_comissao     : Double read Fvl_comissao write Setvl_comissao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property avistaaprazo     : WideString read Favistaaprazo write Setavistaaprazo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property comissao     : WideString read Fcomissao write Setcomissao;
    property pago     : WideString read Fpago write Setpago;
    property click     : Boolean read Fclick write Setclick;
    property id_supervisor     : Integer read Fid_supervisor write Setid_supervisor;
    property preco_promocao     : Double read Fpreco_promocao write Setpreco_promocao;
    property vl_total_promocao     : Double read Fvl_total_promocao write Setvl_total_promocao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaovenda.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaovenda) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaovenda(Model).id;
Self.Fid_empresa         := TModelERPcomissaovenda(Model).id_empresa;
Self.Fid_pedido         := TModelERPcomissaovenda(Model).id_pedido;
Self.Fid_os         := TModelERPcomissaovenda(Model).id_os;
Self.Fdocumento         := TModelERPcomissaovenda(Model).documento;
Self.Fdata         := TModelERPcomissaovenda(Model).data;
Self.Fid_vendedor         := TModelERPcomissaovenda(Model).id_vendedor;
Self.Fid_cliente         := TModelERPcomissaovenda(Model).id_cliente;
Self.Fid_forma         := TModelERPcomissaovenda(Model).id_forma;
Self.Fid_caixa         := TModelERPcomissaovenda(Model).id_caixa;
Self.Fid_produto         := TModelERPcomissaovenda(Model).id_produto;
Self.Fnome_produto         := TModelERPcomissaovenda(Model).nome_produto;
Self.Fvl_unitario         := TModelERPcomissaovenda(Model).vl_unitario;
Self.Fvl_tabela         := TModelERPcomissaovenda(Model).vl_tabela;
Self.Fquantidade         := TModelERPcomissaovenda(Model).quantidade;
Self.Fdesconto_produto         := TModelERPcomissaovenda(Model).desconto_produto;
Self.Ftotal_produto         := TModelERPcomissaovenda(Model).total_produto;
Self.Fvl_comissao         := TModelERPcomissaovenda(Model).vl_comissao;
Self.Fcancelada         := TModelERPcomissaovenda(Model).cancelada;
Self.Favistaaprazo         := TModelERPcomissaovenda(Model).avistaaprazo;
Self.Foperacao         := TModelERPcomissaovenda(Model).operacao;
Self.Fcomissao         := TModelERPcomissaovenda(Model).comissao;
Self.Fpago         := TModelERPcomissaovenda(Model).pago;
Self.Fclick         := TModelERPcomissaovenda(Model).click;
Self.Fid_supervisor         := TModelERPcomissaovenda(Model).id_supervisor;
Self.Fpreco_promocao         := TModelERPcomissaovenda(Model).preco_promocao;
Self.Fvl_total_promocao         := TModelERPcomissaovenda(Model).vl_total_promocao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaovenda.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaovenda.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaovenda.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaovenda.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcomissaovenda.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcomissaovenda.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPcomissaovenda.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPcomissaovenda.Setvl_tabela(const Value: Boolean);   
begin                
  Fvl_tabela := Value;   
end;                 

procedure TModelERPcomissaovenda.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcomissaovenda.Setdesconto_produto(const Value: Boolean);   
begin                
  Fdesconto_produto := Value;   
end;                 

procedure TModelERPcomissaovenda.Settotal_produto(const Value: Boolean);   
begin                
  Ftotal_produto := Value;   
end;                 

procedure TModelERPcomissaovenda.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPcomissaovenda.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcomissaovenda.Setavistaaprazo(const Value: Boolean);   
begin                
  Favistaaprazo := Value;   
end;                 

procedure TModelERPcomissaovenda.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPcomissaovenda.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaovenda.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaovenda.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcomissaovenda.Setid_supervisor(const Value: Boolean);   
begin                
  Fid_supervisor := Value;   
end;                 

procedure TModelERPcomissaovenda.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPcomissaovenda.Setvl_total_promocao(const Value: Boolean);   
begin                
  Fvl_total_promocao := Value;   
end;                 


end.
