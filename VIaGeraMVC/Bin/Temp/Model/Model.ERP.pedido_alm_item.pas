unit Model.ERP.pedido_alm_entrega;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidoalmentrega = class(TModelBase)

private
    Fid : Integer;
    Fid_pedido_alm : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fitem : Integer;
    Fnome_produto : WideString;
    Fdata : indefinido;
    Funidade : indefinido;
    Fquantidade : Double;
    Funitario : Double;
    Fdesconto : Double;
    Ftotal : Double;
    Fcancelada : Boolean;
    Fid_almoxarifado : Integer;
    Fqtd_entrega : Double;
    Fentregue : Boolean;
    Fqtd_entregue : Double;
    Fid_estimativa_obra_item : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_pedido_alm(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setitem(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setdata(const Value: indefinido);
    procedure Setunidade(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setunitario(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setcancelada(const Value: Boolean);
    procedure Setid_almoxarifado(const Value: Integer);
    procedure Setqtd_entrega(const Value: Double);
    procedure Setentregue(const Value: Boolean);
    procedure Setqtd_entregue(const Value: Double);
    procedure Setid_estimativa_obra_item(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_pedido_alm     : Integer read Fid_pedido_alm write Setid_pedido_alm;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property item     : Integer read Fitem write Setitem;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property data     : indefinido read Fdata write Setdata;
    property unidade     : indefinido read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property desconto     : Double read Fdesconto write Setdesconto;
    property total     : Double read Ftotal write Settotal;
    property cancelada     : Boolean read Fcancelada write Setcancelada;
    property id_almoxarifado     : Integer read Fid_almoxarifado write Setid_almoxarifado;
    property qtd_entrega     : Double read Fqtd_entrega write Setqtd_entrega;
    property entregue     : Boolean read Fentregue write Setentregue;
    property qtd_entregue     : Double read Fqtd_entregue write Setqtd_entregue;
    property id_estimativa_obra_item     : Integer read Fid_estimativa_obra_item write Setid_estimativa_obra_item;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidoalmentrega.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidoalmentrega) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidoalmentrega(Model).id;
Self.Fid_pedido_alm         := TModelERPpedidoalmentrega(Model).id_pedido_alm;
Self.Fid_empresa         := TModelERPpedidoalmentrega(Model).id_empresa;
Self.Fid_produto         := TModelERPpedidoalmentrega(Model).id_produto;
Self.Fitem         := TModelERPpedidoalmentrega(Model).item;
Self.Fnome_produto         := TModelERPpedidoalmentrega(Model).nome_produto;
Self.Fdata         := TModelERPpedidoalmentrega(Model).data;
Self.Funidade         := TModelERPpedidoalmentrega(Model).unidade;
Self.Fquantidade         := TModelERPpedidoalmentrega(Model).quantidade;
Self.Funitario         := TModelERPpedidoalmentrega(Model).unitario;
Self.Fdesconto         := TModelERPpedidoalmentrega(Model).desconto;
Self.Ftotal         := TModelERPpedidoalmentrega(Model).total;
Self.Fcancelada         := TModelERPpedidoalmentrega(Model).cancelada;
Self.Fid_almoxarifado         := TModelERPpedidoalmentrega(Model).id_almoxarifado;
Self.Fqtd_entrega         := TModelERPpedidoalmentrega(Model).qtd_entrega;
Self.Fentregue         := TModelERPpedidoalmentrega(Model).entregue;
Self.Fqtd_entregue         := TModelERPpedidoalmentrega(Model).qtd_entregue;
Self.Fid_estimativa_obra_item         := TModelERPpedidoalmentrega(Model).id_estimativa_obra_item;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidoalmentrega.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidoalmentrega.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidoalmentrega.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setid_pedido_alm(const Value: Boolean);   
begin                
  Fid_pedido_alm := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setid_almoxarifado(const Value: Boolean);   
begin                
  Fid_almoxarifado := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setqtd_entrega(const Value: Boolean);   
begin                
  Fqtd_entrega := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setentregue(const Value: Boolean);   
begin                
  Fentregue := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setqtd_entregue(const Value: Boolean);   
begin                
  Fqtd_entregue := Value;   
end;                 

procedure TModelERPpedidoalmentrega.Setid_estimativa_obra_item(const Value: Boolean);   
begin                
  Fid_estimativa_obra_item := Value;   
end;                 


end.
