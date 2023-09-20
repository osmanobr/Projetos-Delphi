unit Model.ERP.pedido_alm;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidoalm = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_pedido_alm : Integer;
    Fid_pedido_alm_item : Integer;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fcancelado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_pedido_alm(const Value: Integer);
    procedure Setid_pedido_alm_item(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setid_almoxarifado(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setunitario(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setcancelado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_pedido_alm     : Integer read Fid_pedido_alm write Setid_pedido_alm;
    property id_pedido_alm_item     : Integer read Fid_pedido_alm_item write Setid_pedido_alm_item;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property id_almoxarifado     : Integer read Fid_almoxarifado write Setid_almoxarifado;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property total     : Double read Ftotal write Settotal;
    property cancelado     : Boolean read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidoalm.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidoalm) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidoalm(Model).id;
Self.Fid_venda         := TModelERPpedidoalm(Model).id_venda;
Self.Fid_pedido_alm         := TModelERPpedidoalm(Model).id_pedido_alm;
Self.Fid_pedido_alm_item         := TModelERPpedidoalm(Model).id_pedido_alm_item;
Self.Fid_produto         := TModelERPpedidoalm(Model).id_produto;
Self.Fid_almoxarifado         := TModelERPpedidoalm(Model).id_almoxarifado;
Self.Fquantidade         := TModelERPpedidoalm(Model).quantidade;
Self.Funitario         := TModelERPpedidoalm(Model).unitario;
Self.Ftotal         := TModelERPpedidoalm(Model).total;
Self.Fcancelado         := TModelERPpedidoalm(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidoalm.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidoalm.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidoalm.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidoalm.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPpedidoalm.Setid_pedido_alm(const Value: Boolean);   
begin                
  Fid_pedido_alm := Value;   
end;                 

procedure TModelERPpedidoalm.Setid_pedido_alm_item(const Value: Boolean);   
begin                
  Fid_pedido_alm_item := Value;   
end;                 

procedure TModelERPpedidoalm.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPpedidoalm.Setid_almoxarifado(const Value: Boolean);   
begin                
  Fid_almoxarifado := Value;   
end;                 

procedure TModelERPpedidoalm.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpedidoalm.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPpedidoalm.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpedidoalm.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
