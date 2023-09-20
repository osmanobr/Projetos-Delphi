unit Model.ERP.palmitem;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpalmitem = class(TModelBase)

private
    Fidpedido : Integer;
    Fnumero : Integer;
    Fcliente : Integer;
    Fnome_cliente : indefinido;
    Fvendedor : Integer;
    Fdata : TDateTime;
    Fdtentrega : TDateTime;
    Fcondpagto : indefinido;
    Fvlsubtotal : Double;
    Fvldesconto : Double;
    Fvltotal : Double;
    Fgerado : indefinido;
    Fclick : Boolean;
    Fvenda : indefinido;
    Fobs : indefinido;

    procedure Setidpedido(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setcliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setvendedor(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setdtentrega(const Value: TDateTime);
    procedure Setcondpagto(const Value: indefinido);
    procedure Setvlsubtotal(const Value: Double);
    procedure Setvldesconto(const Value: Double);
    procedure Setvltotal(const Value: Double);
    procedure Setgerado(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setvenda(const Value: indefinido);
    procedure Setobs(const Value: indefinido);

public
    property idpedido     : Integer read Fidpedido write Setidpedido;
    property numero     : Integer read Fnumero write Setnumero;
    property cliente     : Integer read Fcliente write Setcliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property vendedor     : Integer read Fvendedor write Setvendedor;
    property data     : TDateTime read Fdata write Setdata;
    property dtentrega     : TDateTime read Fdtentrega write Setdtentrega;
    property condpagto     : indefinido read Fcondpagto write Setcondpagto;
    property vlsubtotal     : Double read Fvlsubtotal write Setvlsubtotal;
    property vldesconto     : Double read Fvldesconto write Setvldesconto;
    property vltotal     : Double read Fvltotal write Setvltotal;
    property gerado     : indefinido read Fgerado write Setgerado;
    property click     : Boolean read Fclick write Setclick;
    property venda     : indefinido read Fvenda write Setvenda;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpalmitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpalmitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fidpedido         := TModelERPpalmitem(Model).idpedido;
Self.Fnumero         := TModelERPpalmitem(Model).numero;
Self.Fcliente         := TModelERPpalmitem(Model).cliente;
Self.Fnome_cliente         := TModelERPpalmitem(Model).nome_cliente;
Self.Fvendedor         := TModelERPpalmitem(Model).vendedor;
Self.Fdata         := TModelERPpalmitem(Model).data;
Self.Fdtentrega         := TModelERPpalmitem(Model).dtentrega;
Self.Fcondpagto         := TModelERPpalmitem(Model).condpagto;
Self.Fvlsubtotal         := TModelERPpalmitem(Model).vlsubtotal;
Self.Fvldesconto         := TModelERPpalmitem(Model).vldesconto;
Self.Fvltotal         := TModelERPpalmitem(Model).vltotal;
Self.Fgerado         := TModelERPpalmitem(Model).gerado;
Self.Fclick         := TModelERPpalmitem(Model).click;
Self.Fvenda         := TModelERPpalmitem(Model).venda;
Self.Fobs         := TModelERPpalmitem(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpalmitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpalmitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpalmitem.Setidpedido(const Value: Boolean);   
begin                
  Fidpedido := Value;   
end;                 

procedure TModelERPpalmitem.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPpalmitem.Setcliente(const Value: Boolean);   
begin                
  Fcliente := Value;   
end;                 

procedure TModelERPpalmitem.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPpalmitem.Setvendedor(const Value: Boolean);   
begin                
  Fvendedor := Value;   
end;                 

procedure TModelERPpalmitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpalmitem.Setdtentrega(const Value: Boolean);   
begin                
  Fdtentrega := Value;   
end;                 

procedure TModelERPpalmitem.Setcondpagto(const Value: Boolean);   
begin                
  Fcondpagto := Value;   
end;                 

procedure TModelERPpalmitem.Setvlsubtotal(const Value: Boolean);   
begin                
  Fvlsubtotal := Value;   
end;                 

procedure TModelERPpalmitem.Setvldesconto(const Value: Boolean);   
begin                
  Fvldesconto := Value;   
end;                 

procedure TModelERPpalmitem.Setvltotal(const Value: Boolean);   
begin                
  Fvltotal := Value;   
end;                 

procedure TModelERPpalmitem.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPpalmitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpalmitem.Setvenda(const Value: Boolean);   
begin                
  Fvenda := Value;   
end;                 

procedure TModelERPpalmitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
