unit Model.ERP.pedido_compra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidocompra = class(TModelBase)

private
    Fid : Integer;
    Fid_pedido : Integer;
    Fdata : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fdata_vencto : TDateTime;
    Fvl_total : Double;
    Fid_forma : Integer;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setvl_total(const Value: Double);
    procedure Setid_forma(const Value: Integer);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property data     : TDateTime read Fdata write Setdata;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidocompra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidocompra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidocompra(Model).id;
Self.Fid_pedido         := TModelERPpedidocompra(Model).id_pedido;
Self.Fdata         := TModelERPpedidocompra(Model).data;
Self.Fdocumento         := TModelERPpedidocompra(Model).documento;
Self.Fparcela         := TModelERPpedidocompra(Model).parcela;
Self.Fdata_vencto         := TModelERPpedidocompra(Model).data_vencto;
Self.Fvl_total         := TModelERPpedidocompra(Model).vl_total;
Self.Fid_forma         := TModelERPpedidocompra(Model).id_forma;
Self.Fobs         := TModelERPpedidocompra(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidocompra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidocompra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidocompra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidocompra.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPpedidocompra.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpedidocompra.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPpedidocompra.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPpedidocompra.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPpedidocompra.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPpedidocompra.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPpedidocompra.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
